#pragma once

namespace rings_fx {


enum Format {
  FORMAT_12_BIT,
  FORMAT_16_BIT,
  FORMAT_32_BIT
};

enum LFOIndex {
  LFO_1,
  LFO_2
};

template<Format format>
struct DataType { };

template<>
struct DataType<FORMAT_12_BIT> {
  typedef uint16_t T;
  
  static inline float Decompress(T value) {
    return static_cast<float>(static_cast<int16_t>(value)) / 4096.0f;
  }
  
  static inline T Compress(float value) {
    return static_cast<uint16_t>(
        stmlib::Clip16(static_cast<int32_t>(value * 4096.0f)));
  }
};

template<>
struct DataType<FORMAT_16_BIT> {
  typedef uint16_t T;
  
  static inline float Decompress(T value) {
    return static_cast<float>(static_cast<int16_t>(value)) / 32768.0f;
  }
  
  static inline T Compress(float value) {
    return static_cast<uint16_t>(
        stmlib::Clip16(static_cast<int32_t>(value * 32768.0f)));
  }
};

template<>
struct DataType<FORMAT_32_BIT> {
  typedef float T;
  
  static inline float Decompress(T value) {
    return value;;
  }
  
  static inline T Compress(float value) {
    return value;
  }
};

template<
    size_t size,
    Format format = FORMAT_12_BIT>
class FxEngine {
 public:
  typedef typename DataType<format>::T T;
  FxEngine() { }
  ~FxEngine() { }

  void Init(T* buffer) {
    buffer_ = buffer;
    Clear();
  }
  
  void Clear() {
    std::fill(&buffer_[0], &buffer_[size], 0);
    write_ptr_ = 0;
  }

  struct Empty { };
  
  template<int32_t l, typename T = Empty>
  struct Reserve {
    typedef T Tail;
    enum {
      length = l
    };
  };
  
  template<typename Memory, int32_t index>
  struct DelayLine {
    enum {
      length = DelayLine<typename Memory::Tail, index - 1>::length,
      base = DelayLine<Memory, index - 1>::base + DelayLine<Memory, index - 1>::length + 1
    };
  };

  template<typename Memory>
  struct DelayLine<Memory, 0> {
    enum {
      length = Memory::length,
      base = 0
    };
  };

  class Context {
   friend class FxEngine;
   public:
    Context() { }
    ~Context() { }
    
    inline void Load(float value) {
      accumulator_ = value;
    }

    inline void Read(float value, float scale) {
      accumulator_ += value * scale;
    }

    inline void Read(float value) {
      accumulator_ += value;
    }

    inline void Write(float& value) {
      value = accumulator_;
    }

    inline void Write(float& value, float scale) {
      value = accumulator_;
      accumulator_ *= scale;
    }
    
    template<typename D>
    inline void Write(D& d, int32_t offset, float scale) {
      STATIC_ASSERT(D::base + D::length <= size, delay_memory_full);
      T w = DataType<format>::Compress(accumulator_);
      if (offset == -1) {
        buffer_[(write_ptr_ + D::base + D::length - 1) & MASK] = w;
      } else {
        buffer_[(write_ptr_ + D::base + offset) & MASK] = w;
      }
      accumulator_ *= scale;
    }
    
    template<typename D>
    inline void Write(D& d, float scale) {
      Write(d, 0, scale);
    }

    template<typename D>
    inline void WriteAllPass(D& d, int32_t offset, float scale) {
      Write(d, offset, scale);
      accumulator_ += previous_read_;
    }
    
    template<typename D>
    inline void WriteAllPass(D& d, float scale) {
      WriteAllPass(d, 0, scale);
    }
    
    template<typename D>
    inline void Read(D& d, int32_t offset, float scale) {
      STATIC_ASSERT(D::base + D::length <= size, delay_memory_full);
      T r;
      if (offset == -1) {
        r = buffer_[(write_ptr_ + D::base + D::length - 1) & MASK];
      } else {
        r = buffer_[(write_ptr_ + D::base + offset) & MASK];
      }
      float r_f = DataType<format>::Decompress(r);
      previous_read_ = r_f;
      accumulator_ += r_f * scale;
    }
    
    template<typename D>
    inline void Read(D& d, float scale) {
      Read(d, 0, scale);
    }
    
    inline void Lp(float& state, float coefficient) {
      state += coefficient * (accumulator_ - state);
      accumulator_ = state;
    }

    inline void Hp(float& state, float coefficient) {
      state += coefficient * (accumulator_ - state);
      accumulator_ -= state;
    }
    
    template<typename D>
    inline void Interpolate(D& d, float offset, float scale) {
      STATIC_ASSERT(D::base + D::length <= size, delay_memory_full);
      MAKE_INTEGRAL_FRACTIONAL(offset);
      float a = DataType<format>::Decompress(
          buffer_[(write_ptr_ + offset_integral + D::base) & MASK]);
      float b = DataType<format>::Decompress(
          buffer_[(write_ptr_ + offset_integral + D::base + 1) & MASK]);
      float x = a + (b - a) * offset_fractional;
      previous_read_ = x;
      accumulator_ += x * scale;
    }
    
    template<typename D>
    inline void Interpolate(
        D& d, float offset, LFOIndex index, float amplitude, float scale) {
      STATIC_ASSERT(D::base + D::length <= size, delay_memory_full);
      offset += amplitude * lfo_value_[index];
      MAKE_INTEGRAL_FRACTIONAL(offset);
      float a = DataType<format>::Decompress(
          buffer_[(write_ptr_ + offset_integral + D::base) & MASK]);
      float b = DataType<format>::Decompress(
          buffer_[(write_ptr_ + offset_integral + D::base + 1) & MASK]);
      float x = a + (b - a) * offset_fractional;
      previous_read_ = x;
      accumulator_ += x * scale;
    }
    
   private:
    float accumulator_;
    float previous_read_;
    float lfo_value_[2];
    T* buffer_;
    int32_t write_ptr_;

    DISALLOW_COPY_AND_ASSIGN(Context);
  };
  
  inline void SetLFOFrequency(LFOIndex index, float frequency) {
    lfo_[index].template Init<stmlib::COSINE_OSCILLATOR_APPROXIMATE>(frequency * 32.0f);
  }
  
  inline void Start(Context* c) {
    --write_ptr_;
    if (write_ptr_ < 0) {
      write_ptr_ += size;
    }
    c->accumulator_ = 0.0f;
    c->previous_read_ = 0.0f;
    c->buffer_ = buffer_;
    c->write_ptr_ = write_ptr_;
    if ((write_ptr_ & 31) == 0) {
      c->lfo_value_[0] = lfo_[0].Next();
      c->lfo_value_[1] = lfo_[1].Next();
    } else {
      c->lfo_value_[0] = lfo_[0].value();
      c->lfo_value_[1] = lfo_[1].value();
    }
  }
  
 private:
  enum {
    MASK = size - 1
  };
  
  int32_t write_ptr_;
  T* buffer_;
  stmlib::CosineOscillator lfo_[2];
  
  DISALLOW_COPY_AND_ASSIGN(FxEngine);
};


class Chorus {
 public:
  Chorus() { }
  ~Chorus() { }
  
  void Init(uint16_t* buffer) {
    engine_.Init(buffer);
    phase_1_ = 0;
    phase_2_ = 0;
  }
  
  void Process(float* left, float* right, size_t size) {
    typedef E::Reserve<2047> Memory;
    E::DelayLine<Memory, 0> line;
    E::Context c;
    
    while (size--) {
      engine_.Start(&c);
      float dry_amount = 1.0f - amount_ * 0.5f;
    
      // Update LFO.
      phase_1_ += 4.17e-06f;
      if (phase_1_ >= 1.0f) {
        phase_1_ -= 1.0f;
      }
      phase_2_ += 5.417e-06f;
      if (phase_2_ >= 1.0f) {
        phase_2_ -= 1.0f;
      }
      float sin_1 = stmlib::Interpolate(lut_sine, phase_1_, 4096.0f);
      float cos_1 = stmlib::Interpolate(lut_sine, phase_1_ + 0.25f, 4096.0f);
      float sin_2 = stmlib::Interpolate(lut_sine, phase_2_, 4096.0f);
      float cos_2 = stmlib::Interpolate(lut_sine, phase_2_ + 0.25f, 4096.0f);
    
      float wet;
    
      // Sum L & R channel to send to chorus line.
      c.Read(*left, 0.5f);
      c.Read(*right, 0.5f);
      c.Write(line, 0.0f);
    
      c.Interpolate(line, sin_1 * depth_ + 1200, 0.5f);
      c.Interpolate(line, sin_2 * depth_ + 800, 0.5f);
      c.Write(wet, 0.0f);
      *left = wet * amount_ + *left * dry_amount;
      
      c.Interpolate(line, cos_1 * depth_ + 800 + cos_2 * 0, 0.5f);
      c.Interpolate(line, cos_2 * depth_ + 1200, 0.5f);
      c.Write(wet, 0.0f);
      *right = wet * amount_ + *right * dry_amount;
      left++;
      right++;
    }
  }
  
  inline void set_amount(float amount) {
    amount_ = amount;
  }
  
  inline void set_depth(float depth) {
    depth_ = depth * 384.0f;
  }
  
 private:
  typedef FxEngine<2048, FORMAT_16_BIT> E;
  E engine_;
  
  float amount_;
  float depth_;
  
  float phase_1_;
  float phase_2_;
  
  DISALLOW_COPY_AND_ASSIGN(Chorus);
};


class Reverb {
 public:
  Reverb() { }
  ~Reverb() { }
  
  void Init(uint16_t* buffer) {
    engine_.Init(buffer);
    engine_.SetLFOFrequency(LFO_1, 0.5f / 48000.0f);
    engine_.SetLFOFrequency(LFO_2, 0.3f / 48000.0f);
    lp_ = 0.7f;
    diffusion_ = 0.625f;
  }
  
  void Process(float* left, float* right, size_t size) {
    // This is the Griesinger topology described in the Dattorro paper
    // (4 AP diffusers on the input, then a loop of 2x 2AP+1Delay).
    // Modulation is applied in the loop of the first diffuser AP for additional
    // smearing; and to the two long delays for a slow shimmer/chorus effect.
    typedef E::Reserve<150,
      E::Reserve<214,
      E::Reserve<319,
      E::Reserve<527,
      E::Reserve<2182,
      E::Reserve<2690,
      E::Reserve<4501,
      E::Reserve<2525,
      E::Reserve<2197,
      E::Reserve<6312> > > > > > > > > > Memory;
    E::DelayLine<Memory, 0> ap1;
    E::DelayLine<Memory, 1> ap2;
    E::DelayLine<Memory, 2> ap3;
    E::DelayLine<Memory, 3> ap4;
    E::DelayLine<Memory, 4> dap1a;
    E::DelayLine<Memory, 5> dap1b;
    E::DelayLine<Memory, 6> del1;
    E::DelayLine<Memory, 7> dap2a;
    E::DelayLine<Memory, 8> dap2b;
    E::DelayLine<Memory, 9> del2;
    E::Context c;

    const float kap = diffusion_;
    const float klp = lp_;
    const float krt = reverb_time_;
    const float amount = amount_;
    const float gain = input_gain_;

    float lp_1 = lp_decay_1_;
    float lp_2 = lp_decay_2_;

    while (size--) {
      float wet;
      float apout = 0.0f;
      engine_.Start(&c);
      
      // Smear AP1 inside the loop.
      //c.Interpolate(ap1, 10.0f, LFO_1, 80.0f, 1.0f);
      //c.Write(ap1, 100, 0.0f);
      
      c.Read(*left + *right, gain);

      // Diffuse through 4 allpasses.
      c.Read(ap1 TAIL, kap);
      c.WriteAllPass(ap1, -kap);
      c.Read(ap2 TAIL, kap);
      c.WriteAllPass(ap2, -kap);
      c.Read(ap3 TAIL, kap);
      c.WriteAllPass(ap3, -kap);
      c.Read(ap4 TAIL, kap);
      c.WriteAllPass(ap4, -kap);
      c.Write(apout);
      
      // Main reverb loop.
      c.Load(apout);
      c.Interpolate(del2, 6261.0f, LFO_2, 50.0f, krt);
      c.Lp(lp_1, klp);
      c.Read(dap1a TAIL, -kap);
      c.WriteAllPass(dap1a, kap);
      c.Read(dap1b TAIL, kap);
      c.WriteAllPass(dap1b, -kap);
      c.Write(del1, 2.0f);
      c.Write(wet, 0.0f);

      *left += (wet - *left) * amount;

      c.Load(apout);
      c.Interpolate(del1, 4460.0f, LFO_1, 40.0f, krt);
      c.Lp(lp_2, klp);
      c.Read(dap2a TAIL, kap);
      c.WriteAllPass(dap2a, -kap);
      c.Read(dap2b TAIL, -kap);
      c.WriteAllPass(dap2b, kap);
      c.Write(del2, 2.0f);
      c.Write(wet, 0.0f);

      *right += (wet - *right) * amount;
      
      ++left;
      ++right;
    }
    
    lp_decay_1_ = lp_1;
    lp_decay_2_ = lp_2;
  }
  
  inline void set_amount(float amount) {
    amount_ = amount;
  }
  
  inline void set_input_gain(float input_gain) {
    input_gain_ = input_gain;
  }

  inline void set_time(float reverb_time) {
    reverb_time_ = reverb_time;
  }
  
  inline void set_diffusion(float diffusion) {
    diffusion_ = diffusion;
  }
  
  inline void set_lp(float lp) {
    lp_ = lp;
  }
  
  inline void Clear() {
    engine_.Clear();
  }
  
 private:
  typedef FxEngine<32768, FORMAT_16_BIT> E;
  E engine_;
  
  float amount_;
  float input_gain_;
  float reverb_time_;
  float diffusion_;
  float lp_;
  
  float lp_decay_1_;
  float lp_decay_2_;
  
  DISALLOW_COPY_AND_ASSIGN(Reverb);
};


class Ensemble {
 public:
  Ensemble() { }
  ~Ensemble() { }
  
  void Init(uint16_t* buffer) {
    engine_.Init(buffer);
    phase_1_ = 0;
    phase_2_ = 0;
  }
  
  void Process(float* left, float* right, size_t size) {
    typedef E::Reserve<2047, E::Reserve<2047> > Memory;
    E::DelayLine<Memory, 0> line_l;
    E::DelayLine<Memory, 1> line_r;
    E::Context c;
    
    while (size--) {
      engine_.Start(&c);
      float dry_amount = 1.0f - amount_ * 0.5f;
    
      // Update LFO.
      phase_1_ += 1.57e-05f;
      if (phase_1_ >= 1.0f) {
        phase_1_ -= 1.0f;
      }
      phase_2_ += 1.37e-04f;
      if (phase_2_ >= 1.0f) {
        phase_2_ -= 1.0f;
      }
      int32_t phi_1 = (phase_1_ * 4096.0f);
      float slow_0 = lut_sine[phi_1 & 4095];
      float slow_120 = lut_sine[(phi_1 + 1365) & 4095];
      float slow_240 = lut_sine[(phi_1 + 2730) & 4095];
      int32_t phi_2 = (phase_2_ * 4096.0f);
      float fast_0 = lut_sine[phi_2 & 4095];
      float fast_120 = lut_sine[(phi_2 + 1365) & 4095];
      float fast_240 = lut_sine[(phi_2 + 2730) & 4095];
      
      float a = depth_ * 1.0f;
      float b = depth_ * 0.1f;
      
      float mod_1 = slow_0 * a + fast_0 * b;
      float mod_2 = slow_120 * a + fast_120 * b;
      float mod_3 = slow_240 * a + fast_240 * b;
    
      float wet = 0.0f;
    
      // Sum L & R channel to send to chorus line.
      c.Read(*left, 1.0f);
      c.Write(line_l, 0.0f);
      c.Read(*right, 1.0f);
      c.Write(line_r, 0.0f);
    
      c.Interpolate(line_l, mod_1 + 1024, 0.33f);
      c.Interpolate(line_l, mod_2 + 1024, 0.33f);
      c.Interpolate(line_r, mod_3 + 1024, 0.33f);
      c.Write(wet, 0.0f);
      *left = wet * amount_ + *left * dry_amount;
      
      c.Interpolate(line_r, mod_1 + 1024, 0.33f);
      c.Interpolate(line_r, mod_2 + 1024, 0.33f);
      c.Interpolate(line_l, mod_3 + 1024, 0.33f);
      c.Write(wet, 0.0f);
      *right = wet * amount_ + *right * dry_amount;
      left++;
      right++;
    }
  }
  
  inline void set_amount(float amount) {
    amount_ = amount;
  }
  
  inline void set_depth(float depth) {
    depth_ = depth * 128.0f;
  }
  
 private:
  typedef FxEngine<4096, FORMAT_16_BIT> E;
  E engine_;
  
  float amount_;
  float depth_;
  
  float phase_1_;
  float phase_2_;
  
  DISALLOW_COPY_AND_ASSIGN(Ensemble);
};


}  // namespace rings_deriv
