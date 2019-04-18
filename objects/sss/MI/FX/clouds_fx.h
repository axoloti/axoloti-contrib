#pragma once

namespace clouds_deriv {

// from frame.h

const int32_t kMaxNumChannels = 2;
const size_t kMaxBlockSize = 32;

typedef struct { short l; short r; } ShortFrame;
typedef struct { float l; float r; } FloatFrame;


// from fx_engine.h


#define TAIL , -1

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
    lfo_[index].template Init<stmlib::COSINE_OSCILLATOR_APPROXIMATE>(
        frequency * 32.0f);
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

// from diffuser.h


class Diffuser {
 public:
  Diffuser() { }
  ~Diffuser() { }
  
  void Init(float* buffer) {
    engine_.Init(buffer);
  }
  
  void Process(FloatFrame* in_out, size_t size) {
    typedef E::Reserve<126,
      E::Reserve<180,
      E::Reserve<269,
      E::Reserve<444,
      E::Reserve<151,
      E::Reserve<205,
      E::Reserve<245,
      E::Reserve<405> > > > > > > > Memory;
    E::DelayLine<Memory, 0> apl1;
    E::DelayLine<Memory, 1> apl2;
    E::DelayLine<Memory, 2> apl3;
    E::DelayLine<Memory, 3> apl4;
    E::DelayLine<Memory, 4> apr1;
    E::DelayLine<Memory, 5> apr2;
    E::DelayLine<Memory, 6> apr3;
    E::DelayLine<Memory, 7> apr4;
    E::Context c;
    const float kap = 0.625f;
    while (size--) {
      engine_.Start(&c);
      
      float wet = 0.0f;
      c.Read(in_out->l);
      c.Read(apl1 TAIL, kap);
      c.WriteAllPass(apl1, -kap);
      c.Read(apl2 TAIL, kap);
      c.WriteAllPass(apl2, -kap);
      c.Read(apl3 TAIL, kap);
      c.WriteAllPass(apl3, -kap);
      c.Read(apl4 TAIL, kap);
      c.WriteAllPass(apl4, -kap);
      c.Write(wet, 0.0f);
      in_out->l += amount_ * (wet - in_out->l);
      
      c.Read(in_out->r);
      c.Read(apr1 TAIL, kap);
      c.WriteAllPass(apr1, -kap);
      c.Read(apr2 TAIL, kap);
      c.WriteAllPass(apr2, -kap);
      c.Read(apr3 TAIL, kap);
      c.WriteAllPass(apr3, -kap);
      c.Read(apr4 TAIL, kap);
      c.WriteAllPass(apr4, -kap);
      c.Write(wet, 0.0f);
      in_out->r += amount_ * (wet - in_out->r);

      ++in_out;
    }
  }
  
  void set_amount(float amount) {
    amount_ = amount;
  }
  
 private:
  typedef FxEngine<2048, FORMAT_32_BIT> E;
  E engine_;
  
  float amount_;
  DISALLOW_COPY_AND_ASSIGN(Diffuser);
};

// from pitch_shifter.h


class PitchShifter {
 public:
  PitchShifter() { }
  ~PitchShifter() { }
  
  void Init(uint16_t* buffer) {
    engine_.Init(buffer);
    phase_ = 0;
    size_ = 2047.0f;
  }
  
  void Clear() {
    engine_.Clear();
  }

  inline void Process(FloatFrame* input_output, size_t size) {
    while (size--) {
      Process(input_output);
      ++input_output;
    }
  }
  
  void Process(FloatFrame* input_output) {
    typedef E::Reserve<2047, E::Reserve<2047> > Memory;
    E::DelayLine<Memory, 0> left;
    E::DelayLine<Memory, 1> right;
    E::Context c;
    engine_.Start(&c);
    
    phase_ += (1.0f - ratio_) / size_;
    if (phase_ >= 1.0f) {
      phase_ -= 1.0f;
    }
    if (phase_ <= 0.0f) {
      phase_ += 1.0f;
    }
    float tri = 2.0f * (phase_ >= 0.5f ? 1.0f - phase_ : phase_);
    float phase = phase_ * size_;
    float half = phase + size_ * 0.5f;
    if (half >= size_) {
      half -= size_;
    }
    
    c.Read(input_output->l, 1.0f);
    c.Write(left, 0.0f);
    c.Interpolate(left, phase, tri);
    c.Interpolate(left, half, 1.0f - tri);
    c.Write(input_output->l, 0.0f);

    c.Read(input_output->r, 1.0f);
    c.Write(right, 0.0f);
    c.Interpolate(right, phase, tri);
    c.Interpolate(right, half, 1.0f - tri);
    c.Write(input_output->r, 0.0f);
  }
  
  inline void set_ratio(float ratio) {
    ratio_ = ratio;
  }
  
  inline void set_size(float size) {
    float target_size = 128.0f + (2047.0f - 128.0f) * size * size * size;
    ONE_POLE(size_, target_size, 0.05f)
  }
  
 private:
  typedef FxEngine<4096, FORMAT_16_BIT> E;
  E engine_;
  float phase_;
  float ratio_;
  float size_;
  
  DISALLOW_COPY_AND_ASSIGN(PitchShifter);
};

// from reverb.h


class Reverb {
 public:
  Reverb() { }
  ~Reverb() { }
  
  void Init(uint16_t* buffer) {
    engine_.Init(buffer);
    engine_.SetLFOFrequency(LFO_1, 0.5f / 32000.0f);
    engine_.SetLFOFrequency(LFO_2, 0.3f / 32000.0f);
    lp_ = 0.7f;
    diffusion_ = 0.625f;
  }
  
  void Process(FloatFrame* in_out, size_t size) {
    // This is the Griesinger topology described in the Dattorro paper
    // (4 AP diffusers on the input, then a loop of 2x 2AP+1Delay).
    // Modulation is applied in the loop of the first diffuser AP for additional
    // smearing; and to the two long delays for a slow shimmer/chorus effect.
    typedef E::Reserve<113,
      E::Reserve<162,
      E::Reserve<241,
      E::Reserve<399,
      E::Reserve<1653,
      E::Reserve<2038,
      E::Reserve<3411,
      E::Reserve<1913,
      E::Reserve<1663,
      E::Reserve<4782> > > > > > > > > > Memory;
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
      c.Interpolate(ap1, 10.0f, LFO_1, 60.0f, 1.0f);
      c.Write(ap1, 100, 0.0f);
      
      c.Read(in_out->l + in_out->r, gain);

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
      c.Interpolate(del2, 4680.0f, LFO_2, 100.0f, krt);
      c.Lp(lp_1, klp);
      c.Read(dap1a TAIL, -kap);
      c.WriteAllPass(dap1a, kap);
      c.Read(dap1b TAIL, kap);
      c.WriteAllPass(dap1b, -kap);
      c.Write(del1, 2.0f);
      c.Write(wet, 0.0f);

      in_out->l += (wet - in_out->l) * amount;

      c.Load(apout);
      // c.Interpolate(del1, 4450.0f, LFO_1, 50.0f, krt);
      c.Read(del1 TAIL, krt);
      c.Lp(lp_2, klp);
      c.Read(dap2a TAIL, kap);
      c.WriteAllPass(dap2a, -kap);
      c.Read(dap2b TAIL, -kap);
      c.WriteAllPass(dap2b, kap);
      c.Write(del2, 2.0f);
      c.Write(wet, 0.0f);

      in_out->r += (wet - in_out->r) * amount;
      
      ++in_out;
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
  
 private:
  typedef FxEngine<16384, FORMAT_12_BIT> E;
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



}  // namespace clouds
