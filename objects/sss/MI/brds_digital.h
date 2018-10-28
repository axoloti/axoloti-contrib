#ifndef BRDS_DIGITAL_
#define BRDS_DIGITAL_

namespace braids_digital_deriv {

static const size_t kWGBridgeLength = 1024;
static const size_t kWGNeckLength = 4096;
static const size_t kWGBoreLength = 2048;
static const size_t kWGJetLength = 1024;
static const size_t kWGFBoreLength = 4096;
static const size_t kCombDelayLength = 8192;

static const size_t kNumFormants = 5;
static const size_t kNumPluckVoices = 3;
static const size_t kNumOverlappingFof = 3;
static const size_t kNumBellPartials = 11;
static const size_t kNumDrumPartials = 6;
static const size_t kNumAdditiveHarmonics = 12;

static const uint16_t kHighestNote = 140 * 128;
static const uint16_t kPitchTableStart = 128 * 128;
static const uint16_t kOctave = 12 * 128;

class DigitalOscillator {
 public:
  inline void set_pitch(int16_t pitch) {
      pitch_ = pitch;
  } 
   inline void set_parameters(
      int16_t parameter_1,
      int16_t parameter_2) {
    parameter_[0] = parameter_1;
    parameter_[1] = parameter_2;
  }
  
  void Init() {
	  phase_ = 0;
  }
  
 uint32_t ComputePhaseIncrement(int16_t midi_pitch) {
  if (midi_pitch >= kPitchTableStart) {
    midi_pitch = kPitchTableStart - 1;
  }
  
  int32_t ref_pitch = midi_pitch;
  ref_pitch -= kPitchTableStart;
  
  size_t num_shifts = 0;
  while (ref_pitch < 0) {
    ref_pitch += kOctave;
    ++num_shifts;
  }
  
  uint32_t a = braids::lut_oscillator_increments[ref_pitch >> 4];
  uint32_t b = braids::lut_oscillator_increments[(ref_pitch >> 4) + 1];
  uint32_t phase_increment = a + \
      (static_cast<int32_t>(b - a) * (ref_pitch & 0xf) >> 4);
  phase_increment >>= num_shifts;
  return phase_increment;
}

uint32_t ComputeDelay(int16_t midi_pitch) {
  if (midi_pitch >= kHighestNote - kOctave) {
    midi_pitch = kHighestNote - kOctave;
  }
  
  int32_t ref_pitch = midi_pitch;
  ref_pitch -= kPitchTableStart;
  
  size_t num_shifts = 0;
  while (ref_pitch < 0) {
    ref_pitch += kOctave;
    ++num_shifts;
  }
  
  uint32_t a = braids::lut_oscillator_delays[ref_pitch >> 4];
  uint32_t b = braids::lut_oscillator_delays[(ref_pitch >> 4) + 1];
  uint32_t delay = a + (static_cast<int32_t>(b - a) * (ref_pitch & 0xf) >> 4);  
  delay >>= 12 - num_shifts;
  return delay;
}

  uint32_t phase_;
  uint32_t phase_increment_;
  int16_t pitch_;
  int16_t parameter_[2];
  int16_t previous_parameter_[2];
  int32_t smoothed_parameter_;  
};

class TripleRingMod : public DigitalOscillator {
  uint32_t modulator_phase = 0;
  uint32_t modulator_phase_2 = 0;
  public:
void Render(
    const int32_t* sync,
    int32_t* buffer,
    size_t size) {
  phase_increment_ = ComputePhaseIncrement(pitch_);
  uint32_t phase = phase_ + (1L << 30);
  uint32_t increment = phase_increment_;
  uint32_t modulator_phase_increment = ComputePhaseIncrement(
    pitch_ + ((parameter_[0] - 16384) >> 2)
  );
  uint32_t modulator_phase_increment_2 = ComputePhaseIncrement(
    pitch_ + ((parameter_[1] - 16384) >> 2)
  );
  
  while (size--) {
    phase += increment;
    if (sync) {
    if (*sync++) {
      phase = 0;
      modulator_phase = 0;
      modulator_phase_2 = 0;
    }
	}
    modulator_phase += modulator_phase_increment;
    modulator_phase_2 += modulator_phase_increment_2;
    int16_t result = stmlib::Interpolate824(braids::wav_sine, phase);
    result = result * stmlib::Interpolate824(braids::wav_sine, modulator_phase) >> 16;
    result = result * stmlib::Interpolate824(braids::wav_sine, modulator_phase_2) >> 16;
    result = stmlib::Interpolate88(braids::ws_moderate_overdrive, result + 32768);
    *buffer++ = result<<11;
  }
  phase_ = phase - (1L << 30);
}
};

class SawSwarm :  public DigitalOscillator {
  private:
    uint32_t sphase_[6];
    int32_t lp_;
    int32_t bp_;	
  public:
void Render(
    const int32_t* sync,
    int32_t* buffer,
    size_t size,
	bool strike) {
  phase_increment_ = ComputePhaseIncrement(pitch_);
  int32_t detune = parameter_[0] + 1024;
  detune = (detune * detune) >> 9;
  uint32_t increments[7];
  for (int16_t i = 0; i < 7; ++i) {
    int32_t saw_detune = detune * (i - 3);
    int32_t detune_integral = saw_detune >> 16;
    int32_t detune_fractional = saw_detune & 0xffff;
    int32_t increment_a = ComputePhaseIncrement(pitch_ + detune_integral);
    int32_t increment_b = ComputePhaseIncrement(pitch_ + detune_integral + 1);
    increments[i] = increment_a + \
        (((increment_b - increment_a) * detune_fractional) >> 16);
  }
  if (strike) {
    for (size_t i = 0; i < 6; ++i) {
      sphase_[i] = stmlib::Random::GetWord();
    }
  }
  int32_t hp_cutoff = pitch_;
  if (parameter_[1] < 10922) {
    hp_cutoff += ((parameter_[1] - 10922) * 24) >> 5;
  } else {
    hp_cutoff += ((parameter_[1] - 10922) * 12) >> 5;
  }
  if (hp_cutoff < 0) {
    hp_cutoff = 0;
  } else if (hp_cutoff > 32767) {
    hp_cutoff = 32767;
  }
  
  int32_t f = stmlib::Interpolate824(braids::lut_svf_cutoff, hp_cutoff << 17);
  int32_t damp = braids::lut_svf_damp[0];
  int32_t bp = bp_;
  int32_t lp = lp_;

  while (size--) {
    if (*sync++) {
      for (size_t i = 0; i < 6; ++i) {
        sphase_[i] = 0;
      }
    }
    int32_t notch, hp, sample;
    
    phase_ += increments[0];
    sphase_[0] += increments[1];
    sphase_[1] += increments[2];
    sphase_[2] += increments[3];
    sphase_[3] += increments[4];
    sphase_[4] += increments[5];
    sphase_[5] += increments[6];
    
    // Compute a sample.
    sample = -28672;
    sample += phase_ >> 19;
    sample += sphase_[0] >> 19;
    sample += sphase_[1] >> 19;
    sample += sphase_[2] >> 19;
    sample += sphase_[3] >> 19;
    sample += sphase_[4] >> 19;
    sample += sphase_[5] >> 19;
    sample = stmlib::Interpolate88(braids::ws_moderate_overdrive, sample + 32768);
    
    notch = sample - (bp * damp >> 15);
    lp += f * bp >> 15;
    CLIP(lp)
    hp = notch - lp;
    bp += f * hp >> 15;
    
    int32_t result = hp;
    CLIP(result)
    *buffer++ = result<<11;
  }
  lp_ = lp;
  bp_ = bp;
}
};


class Comb :  public DigitalOscillator {
	private:
	const size_t kCombDelayLength = 8192;
	int16_t previous_sample_=0;
	int16_t *dl_;
//	int16_t dl_[8192];
	public:
    void Init(){
		previous_sample_=0;
		phase_ = 0;
   	  dl_ = (int16_t *)sdram_malloc(sizeof(int16_t[kCombDelayLength]));
	  int i;
	  for(i=0;i<kCombDelayLength;i++){
		  dl_[i] = 0;
	  }
	}
	
  void Render(
     const int32_t* inbuffer,
     int32_t* outbuffer,
     size_t size) {
  // Filter the delay time to avoid clicks/glitches.
  int32_t pitch = pitch_;
  int32_t filtered_pitch = previous_sample_;
  filtered_pitch = (15 * filtered_pitch + pitch) >> 4;
  previous_sample_ = filtered_pitch;
  
  //int16_t* dl = delay_lines_->comb;
  uint32_t delay = ComputeDelay(filtered_pitch);
  if (delay > (kCombDelayLength << 16)) {
    delay = kCombDelayLength << 16;
  }
  uint32_t delay_integral = delay >> 16;
  int32_t delay_fractional = delay & 0xffff;

  // Warp the resonance curve to have a more precise adjustment in the extrema.
  int16_t resonance = (parameter_[1] << 1) - 32768;
  resonance = stmlib::Interpolate88(braids::ws_moderate_overdrive, resonance + 32768);
  
  uint32_t delay_ptr = phase_;
  delay_ptr =  delay_ptr % kCombDelayLength;
  while (size--) {
    int32_t in = (*inbuffer++)>>13;
    uint32_t offset = delay_ptr + 2 * kCombDelayLength - delay_integral;
    int32_t a = dl_[offset % kCombDelayLength];
    int32_t b = dl_[(offset - 1) % kCombDelayLength];
    int32_t delayed_sample = a + (((b - a) * (delay_fractional >> 1)) >> 15);
    int32_t feedback = (delayed_sample * resonance >> 15) + (in >> 1);
    feedback = __SSAT(feedback,16);
    dl_[delay_ptr] = feedback;
    int32_t out = (in + (delayed_sample << 1)) >> 1;
    out = __SSAT(out,16);
	*outbuffer++ = out<<11;
    delay_ptr = (delay_ptr + 1) % kCombDelayLength;
  }
  phase_ = delay_ptr;
}
};


class Toy :  public DigitalOscillator {
  private:
  uint8_t held_sample_;
  uint16_t decimation_counter_;
  
  public:
void Render(
    const int32_t* sync,
    int32_t* buffer,
    size_t size) {
  phase_increment_ = ComputePhaseIncrement(pitch_);

  static const uint32_t kFIR4Coefficients[4] = { 10530, 14751, 16384, 14751 };
  static const uint32_t kFIR4DcOffset = 28208;

	// 4 times oversampling.
  phase_increment_ >>= 2;
  
  uint32_t phase_increment = phase_increment_;
  uint32_t phase = phase_;
  
  uint16_t decimation_counter = decimation_counter_;
  uint16_t decimation_count = 512 - (parameter_[0] >> 6);

  uint8_t held_sample = held_sample_;
  while (size--) {
    int32_t filtered_sample = 0;
    if (*sync++) {
      phase = 0;
    } 
    for (size_t tap = 0; tap < 4; ++tap) {
      phase += phase_increment;
      if (decimation_counter >= decimation_count) {
        uint8_t x = parameter_[1] >> 8;
        held_sample = (((phase >> 24) ^ (x << 1)) & (~x)) + (x >> 1);
        decimation_counter = 0;
      }
      filtered_sample += kFIR4Coefficients[tap] * held_sample;
      ++decimation_counter;
    }
    *buffer++ = ((filtered_sample >> 8) - kFIR4DcOffset)<<11;
  }
  held_sample_ = held_sample;
  decimation_counter_ = decimation_counter;
  phase_ = phase;
}
};


class DigitalFilter :  public DigitalOscillator {
private:
  uint32_t modulator_phase_increment_;
  uint32_t modulator_phase_;
  uint32_t square_modulator_phase_;
  int32_t integrator_;
  bool polarity_;
  
  public:
void Render(
    const int32_t* sync,
    int32_t* buffer,
    size_t size,
	uint8_t filter_type // 0: LP, 1: PK, 2: BP, 3: HP 
	) {

	static const uint32_t kPhaseReset[] = {
	  0,
	  0x80000000,
	  0x40000000,
	  0x80000000
	};		
		
  phase_increment_ = ComputePhaseIncrement(pitch_);
		
  int16_t shifted_pitch = pitch_ + ((parameter_[0] - 2048) >> 1);
  if (shifted_pitch > 16383) {
    shifted_pitch = 16383;
  }
  uint32_t modulator_phase = modulator_phase_;
  uint32_t square_modulator_phase = square_modulator_phase_;
  int32_t square_integrator = integrator_;
  
  uint32_t modulator_phase_increment = modulator_phase_increment_;
  uint32_t target_increment = ComputePhaseIncrement(shifted_pitch);
  uint32_t modulator_phase_increment_increment = 
    modulator_phase_increment < target_increment
    ? (target_increment - modulator_phase_increment) / size
    : ~((modulator_phase_increment - target_increment) / size);
    
  while (size--) {
    phase_ += phase_increment_;
    modulator_phase_increment += modulator_phase_increment_increment;
    modulator_phase += modulator_phase_increment;
    uint16_t integrator_gain = (modulator_phase_increment >> 14);
    
	if (sync) {
    if (*sync++) {
      polarity_ = 1;
      phase_ = 0;
      modulator_phase = 0;
      square_modulator_phase = 0;
      square_integrator = 0;
    }
	}
    
    square_modulator_phase += modulator_phase_increment;
    if (phase_ < phase_increment_) {
      modulator_phase = kPhaseReset[filter_type];
    }
    if ((phase_ << 1) < (phase_increment_ << 1)) {
      polarity_ = !polarity_;
      square_modulator_phase = kPhaseReset[(filter_type & 1) + 2];
    }
    
    int32_t carrier = stmlib::Interpolate824(braids::wav_sine, modulator_phase);
    int32_t square_carrier = stmlib::Interpolate824(braids::wav_sine, square_modulator_phase);
    
    uint16_t saw = ~(phase_ >> 16);
    uint16_t double_saw = ~(phase_ >> 15);
    uint16_t triangle = (phase_ >> 15) ^ (phase_ & 0x80000000 ? 0xffff : 0x0000);
    uint16_t window = parameter_[1] < 16384 ? saw : triangle;

    int32_t pulse = (square_carrier * double_saw) >> 16;
    if (polarity_) {
      pulse = -pulse;
    }
    square_integrator += (pulse * integrator_gain) >> 16;
    CLIP(square_integrator)
    
    int16_t saw_tri_signal;
    int16_t square_signal;
    
    if (filter_type & 2) {
      saw_tri_signal = (carrier * window) >> 16;
      square_signal = pulse;
    } else {
      saw_tri_signal = (window * (carrier + 32768) >> 16) - 32768;
      square_signal = square_integrator;
      if (filter_type == 1) {
        square_signal = (pulse + square_integrator) >> 1;
      }
    }
    uint16_t balance = (parameter_[1] < 16384 ? 
                        parameter_[1] : ~parameter_[1]) << 2;
    *buffer++ = stmlib::Mix(saw_tri_signal, square_signal, balance)<<11;
  }
  modulator_phase_ = modulator_phase;
  square_modulator_phase_ = square_modulator_phase;
  integrator_ = square_integrator;
  modulator_phase_increment_ = modulator_phase_increment;
}
};

class Vosim :  public DigitalOscillator {
  private:
  uint32_t formant_phase_[2];
  public:
void Render(
    const int32_t* sync,
    int32_t* buffer,
    size_t size) {
  phase_increment_ = ComputePhaseIncrement(pitch_);

	uint32_t formant_increment[2];
  for (size_t i = 0; i < 2; ++i) {
    formant_increment[i] = ComputePhaseIncrement(parameter_[i] >> 1);
  }
  while (size--) {
    phase_ += phase_increment_;
    if (*sync++) {
      phase_ = 0;
    }
    int32_t sample = 16384 + 8192;
    formant_phase_[0] += formant_increment[0];
    sample += stmlib::Interpolate824(braids::wav_sine, formant_phase_[0]) >> 1;
    
    formant_phase_[1] += formant_increment[1];
    sample += stmlib::Interpolate824(braids::wav_sine, formant_phase_[1]) >> 2;
    
    sample = sample * (stmlib::Interpolate824(braids::lut_bell, phase_) >> 1) >> 15;
    if (phase_ < phase_increment_) {
      formant_phase_[0] = 0;
      formant_phase_[1] = 0;
      sample = 0;
    }
    sample -= 16384 + 8192;
    *buffer++ = sample<<11;
  }
}
};


class Vowel :  public DigitalOscillator {
  private:

struct PhonemeDefinition {
  uint8_t formant_frequency[3];
  uint8_t formant_amplitude[3];
};
uint32_t formant_increment_[3];
uint32_t formant_phase_[3];
uint32_t formant_amplitude_[3];
uint32_t consonant_frames_;
uint16_t noise_;
  public:
void Render(
    const int32_t* sync,
    int32_t* buffer,
    size_t size,
	bool strike) {
		  phase_increment_ = ComputePhaseIncrement(pitch_);


static const PhonemeDefinition vowels_data[9] = {
    { { 27,  40,  89 }, { 15,  13,  1 } },
    { { 18,  51,  62 }, { 13,  12,  6 } },
    { { 15,  69,  93 }, { 14,  12,  7 } },
    { { 10,  84, 110 }, { 13,  10,  8 } },
    { { 23,  44,  87 }, { 15,  12,  1 } },
    { { 13,  29,  80 }, { 13,   8,  0 } },
    { {  6,  46,  81 }, { 12,   3,  0 } },
    { {  9,  51,  95 }, { 15,   3,  0 } },
    { {  6,  73,  99 }, {  7,   3,  14 } }
};

static const PhonemeDefinition consonant_data[8] = {
    { { 6, 54, 121 }, { 9,  9,  0 } },
    { { 18, 50, 51 }, { 12,  10,  5 } },
    { { 11, 24, 70 }, { 13,  8,  0 } },
    { { 15, 69, 74 }, { 14,  12,  7 } },
    { { 16, 37, 111 }, { 14,  8,  1 } },
    { { 18, 51, 62 }, { 14,  12,  6 } },
    { { 6, 26, 81 }, { 5,  5,  5 } },
    { { 6, 73, 99 }, { 7,  10,  14 } },
};  		
		
  size_t vowel_index = parameter_[0] >> 12;
  uint16_t balance = parameter_[0] & 0x0fff;
  uint16_t formant_shift = (200 + (parameter_[1] >> 6));
  if (strike) {
    consonant_frames_ = 160;
    uint16_t index = (stmlib::Random::GetSample() + 1) & 7;
    for (size_t i = 0; i < 3; ++i) {
      formant_increment_[i] = \
          static_cast<uint32_t>(consonant_data[index].formant_frequency[i]) * \
          0x1000 * formant_shift;
      formant_amplitude_[i] = consonant_data[index].formant_amplitude[i];
    }
    noise_ = index >= 6 ? 4095 : 0;
  }
  
  if (consonant_frames_) {
    --consonant_frames_;
  } else {
    for (size_t i = 0; i < 3; ++i) {
      formant_increment_[i] = 
          (vowels_data[vowel_index].formant_frequency[i] * (0x1000 - balance) + \
           vowels_data[vowel_index + 1].formant_frequency[i] * balance) * \
           formant_shift;
      formant_amplitude_[i] =
          (vowels_data[vowel_index].formant_amplitude[i] * (0x1000 - balance) + \
           vowels_data[vowel_index + 1].formant_amplitude[i] * balance) >> 12;
    }
    noise_ = 0;
  }
  int32_t noise = noise_;
  
  while (size--) {
    phase_ += phase_increment_;
    size_t phaselet;
    int16_t sample = 0;
    formant_phase_[0] += formant_increment_[0];
    phaselet = (formant_phase_[0] >> 24) & 0xf0;
    sample += braids::wav_formant_sine[phaselet | formant_amplitude_[0]];

    formant_phase_[1] += formant_increment_[1];
    phaselet = (formant_phase_[1] >> 24) & 0xf0;
    sample += braids::wav_formant_sine[phaselet | formant_amplitude_[1]];
    
    formant_phase_[2] += formant_increment_[2];
    phaselet = (formant_phase_[2] >> 24) & 0xf0;
    sample += braids::wav_formant_square[phaselet | formant_amplitude_[2]];
    
    sample *= 255 - (phase_ >> 24);
    int32_t phase_noise = stmlib::Random::GetSample() * noise;
    if ((phase_ + phase_noise) < phase_increment_) {
      formant_phase_[0] = 0;
      formant_phase_[1] = 0;
      formant_phase_[2] = 0;
      sample = 0;
    }
    sample = stmlib::Interpolate88(braids::ws_moderate_overdrive, sample + 32768);
    *buffer++ = sample<<11;
  }
}
};


class VowelFof :  public DigitalOscillator {
  private:

  static const size_t kNumFormants = 5;
   int32_t next_saw_sample_;
  int16_t previous_sample_;
  int32_t svf_lp_[kNumFormants];
  int32_t svf_bp_[kNumFormants];
  
int16_t InterpolateFormantParameter(
    const int16_t table[][kNumFormants][kNumFormants],
    int16_t x,
    int16_t y,
    uint8_t formant) {
  uint16_t x_index = x >> 13;
  uint16_t x_mix = x << 3;
  uint16_t y_index = y >> 13;
  uint16_t y_mix = y << 3;
  int16_t a = table[x_index][y_index][formant];
  int16_t b = table[x_index + 1][y_index][formant];
  int16_t c = table[x_index][y_index + 1][formant];
  int16_t d = table[x_index + 1][y_index + 1][formant];
  a = a + ((b - a) * x_mix >> 16);
  c = c + ((d - c) * x_mix >> 16);
  return a + ((c - a) * y_mix >> 16);
}  
  public:
void Init(){
	  for (size_t i = 0; i < kNumFormants; ++i) {
      svf_lp_[i] = 0;
      svf_bp_[i] = 0;
	  }
}	
  
void Render(
  int32_t* buffer,
  size_t size) {

  		  phase_increment_ = ComputePhaseIncrement(pitch_);

static const int16_t formant_f_data[kNumFormants][kNumFormants][kNumFormants] = {
  // bass
  {
    { 9519, 10738, 12448, 12636, 12892 }, // a
    { 8620, 11720, 12591, 12932, 13158 }, // e
    { 7579, 11891, 12768, 13122, 13323 }, // i
    { 8620, 10013, 12591, 12768, 13010 }, // o
    { 8324, 9519, 12591, 12831, 13048 } // u
  },
  // tenor
  {
    { 9696, 10821, 12810, 13010, 13263 }, // a
    { 8620, 11827, 12768, 13228, 13477 }, // e
    { 7908, 12038, 12932, 13263, 13452 }, // i
    { 8620, 10156, 12768, 12932, 13085 }, // o
    { 8324, 9519, 12852, 13010, 13296 } // u
  },
  // countertenor
  {
    { 9730, 10902, 12892, 13085, 13330 }, // a
    { 8832, 11953, 12852, 13085, 13296 }, // e
    { 7749, 12014, 13010, 13330, 13483 }, // i
    { 8781, 10211, 12852, 13085, 13296 }, // o
    { 8448, 9627, 12892, 13085, 13363 } // u
  },
  // alto
  {
    { 10156, 10960, 12932, 13427, 14195 }, // a
    { 8620, 11692, 12852, 13296, 14195 }, // e
    { 8324, 11827, 12852, 13550, 14195 }, // i
    { 8881, 10156, 12956, 13427, 14195 }, // o
    { 8160, 9860, 12708, 13427, 14195 } // u
  },
  // soprano
  {
    { 10156, 10960, 13010, 13667, 14195 }, // a
    { 8324, 12187, 12932, 13489, 14195 }, // e
    { 7749, 12337, 13048, 13667, 14195 }, // i
    { 8881, 10156, 12956, 13609, 14195 }, // o
    { 8160, 9860, 12852, 13609, 14195 } // u
  }
};

static const int16_t formant_a_data[kNumFormants][kNumFormants][kNumFormants] = {
  // bass
  {
    { 16384, 7318, 5813, 5813, 1638 }, // a
    { 16384, 4115, 5813, 4115, 2062 }, // e
    { 16384, 518, 2596, 1301, 652 }, // i
    { 16384, 4617, 1460, 1638, 163 }, // o
    { 16384, 1638, 411, 652, 259 } // u
  },
  // tenor
  {
    { 16384, 8211, 7318, 6522, 1301 }, // a
    { 16384, 3269, 4115, 3269, 1638 }, // e
    { 16384, 2913, 2062, 1638, 518 }, // i
    { 16384, 5181, 4115, 4115, 821 }, // o
    { 16384, 1638, 2314, 3269, 821 } // u
  },
  // countertenor
  {
    { 16384, 8211, 1159, 1033, 206 }, // a
    { 16384, 3269, 2062, 1638, 1638 }, // e
    { 16384, 1033, 1033, 259, 259 }, // i
    { 16384, 5181, 821, 1301, 326 }, // o
    { 16384, 1638, 1159, 518, 326 } // u
  },
  // alto
  {
    { 16384, 10337, 1638, 259, 16 }, // a
    { 16384, 1033, 518, 291, 16 }, // e
    { 16384, 1638, 518, 259, 16 }, // i
    { 16384, 5813, 2596, 652, 29 }, // o
    { 16384, 4115, 518, 163, 10 } // u
  },
  // soprano
  {
    { 16384, 8211, 411, 1638, 51 }, // a
    { 16384, 1638, 2913, 163, 25 }, // e
    { 16384, 4115, 821, 821, 103 }, // i
    { 16384, 4617, 1301, 1301, 51 }, // o
    { 16384, 2596, 291, 163, 16 } // u
  }
};

  
  // The original implementation used FOF but we live in the future and it's
  // less computationally expensive to render a proper bank of 5 SVF.

  int16_t amplitudes[kNumFormants];
  int32_t svf_lp[kNumFormants];
  int32_t svf_bp[kNumFormants];
  int16_t svf_f[kNumFormants];
  
  for (size_t i = 0; i < kNumFormants; ++i) {
    int32_t frequency = InterpolateFormantParameter(
        formant_f_data,
        parameter_[1],
        parameter_[0],
        i) + (12 << 7);
    svf_f[i] = stmlib::Interpolate824(braids::lut_svf_cutoff, frequency << 17);
    amplitudes[i] = InterpolateFormantParameter(
        formant_a_data,
        parameter_[1],
        parameter_[0],
        i);
      svf_lp[i] = svf_lp_[i];
      svf_bp[i] = svf_bp_[i];
  }
  
  
  uint32_t phase = phase_;
  int32_t previous_sample = previous_sample_;
  int32_t next_saw_sample = next_saw_sample_;
  uint32_t increment = phase_increment_ << 1;
  while (size) {
    int32_t this_saw_sample = next_saw_sample;
    next_saw_sample = 0;
    phase += increment;
    if (phase < increment) {
      uint32_t t = phase / (increment >> 16);
      if (t > 65535) {
        t = 65535;
      }
      this_saw_sample -= static_cast<int32_t>(t * t >> 18);
      t = 65535 - t;
      next_saw_sample -= -static_cast<int32_t>(t * t >> 18);
    }
    next_saw_sample += phase >> 17;
    int32_t in = this_saw_sample;
    int32_t out = 0;
    for (int32_t i = 0; i < 5; ++i) {
      int32_t notch = in - (svf_bp[i] >> 6);
      svf_lp[i] += svf_f[i] * svf_bp[i] >> 15;
      CLIP(svf_lp[i])
      int32_t hp = notch - svf_lp[i];
      svf_bp[i] += svf_f[i] * hp >> 15;
      CLIP(svf_bp[i])
      out += svf_bp[i] * amplitudes[0] >> 17;
    }
    CLIP(out);
    *buffer++ = out<<11;
    previous_sample = out;
    size --;
  }
  phase_ = phase;
  next_saw_sample_ = next_saw_sample;
  previous_sample_ = previous_sample;
  for (size_t i = 0; i < kNumFormants; ++i) {
    svf_lp_[i] = svf_lp[i];
    svf_bp_[i] = svf_bp[i];
  }
}
};


class Fm :  public DigitalOscillator {
  uint32_t modulator_phase_;
	
  public:
void Render(
    const int32_t* sync,
    int32_t* buffer,
    size_t size) {
  phase_increment_ = ComputePhaseIncrement(pitch_);
		
  uint32_t modulator_phase = modulator_phase_;
  uint32_t modulator_phase_increment = ComputePhaseIncrement(
      (12 << 7) + pitch_ + ((parameter_[1] - 16384) >> 1)) >> 1;
  
  BEGIN_INTERPOLATE_PARAMETER_0    
  
  while (size--) {
    INTERPOLATE_PARAMETER_0
    
    phase_ += phase_increment_;
	if (sync) {
    if (*sync++) {
      phase_ = modulator_phase = 0;
    }
	}
    modulator_phase += modulator_phase_increment;

    uint32_t pm = (
        stmlib::Interpolate824(braids::wav_sine, modulator_phase) * parameter_0) << 2;
    *buffer++ = stmlib::Interpolate824(braids::wav_sine, phase_ + pm)<<11;
  }
  
  END_INTERPOLATE_PARAMETER_0
  
  previous_parameter_[0] = parameter_[0];
  modulator_phase_ = modulator_phase;
}
};


class FeedbackFm : public DigitalOscillator {
  uint32_t modulator_phase_;
  int16_t previous_sample_;
public :
void Render(
    const int32_t* sync,
    int32_t* buffer,
    size_t size) {
  phase_increment_ = ComputePhaseIncrement(pitch_);

  int16_t previous_sample = previous_sample_;
  uint32_t modulator_phase = modulator_phase_;

  int32_t attenuation = pitch_ - (72 << 7) + ((parameter_[1] - 16384) >> 1);
  attenuation = 32767 - attenuation * 4;
  if (attenuation < 0) attenuation = 0;
  if (attenuation > 32767) attenuation = 32767;
  
  uint32_t modulator_phase_increment = ComputePhaseIncrement(
      (12 << 7) + pitch_ + ((parameter_[1] - 16384) >> 1)) >> 1;
  
  BEGIN_INTERPOLATE_PARAMETER_0    
  
  while (size--) {
    INTERPOLATE_PARAMETER_0
    
    phase_ += phase_increment_;
	if (sync) {
    if (*sync++) {
      phase_ = modulator_phase = 0;
    }
	}
    
    modulator_phase += modulator_phase_increment;

    int32_t pm;
    int32_t p = parameter_0 * attenuation >> 15;
    pm = previous_sample << 14;
    pm = (
        stmlib::Interpolate824(braids::wav_sine, modulator_phase + pm) * p) << 1;
    previous_sample = stmlib::Interpolate824(braids::wav_sine, phase_ + pm);
    *buffer++ = previous_sample<<11;
  }
  
  END_INTERPOLATE_PARAMETER_0
  
  previous_sample_ = previous_sample;
  modulator_phase_ = modulator_phase;
}
};

class ChaoticFeedbackFm :  public DigitalOscillator {
  uint32_t modulator_phase_;
  int16_t previous_sample_;
	
  public:
void Render(
    const int32_t* sync,
    int32_t* buffer,
    size_t size) {
  phase_increment_ = ComputePhaseIncrement(pitch_);

  uint32_t modulator_phase_increment = ComputePhaseIncrement(
      (12 << 7) + pitch_ + ((parameter_[1] - 16384) >> 1)) >> 1;
  int16_t previous_sample = previous_sample_;
  uint32_t modulator_phase = modulator_phase_;
  
  BEGIN_INTERPOLATE_PARAMETER_0
  
  while (size--) {
    INTERPOLATE_PARAMETER_0
    
    phase_ += phase_increment_;
	if (sync) {	
    if (*sync++) {
      phase_ = modulator_phase = 0;
    }
	}
    
    int32_t pm;
    pm = (stmlib::Interpolate824(braids::wav_sine, modulator_phase) * parameter_0) << 1;
    previous_sample = stmlib::Interpolate824(braids::wav_sine, phase_ + pm);
    *buffer++ = previous_sample<<11;
    modulator_phase += (modulator_phase_increment >> 8) * \
        (129 + (previous_sample >> 9));
  }
  
  END_INTERPOLATE_PARAMETER_0
  
  previous_sample_ = previous_sample;
  modulator_phase_ = modulator_phase;
}
};



static const int16_t kDrumPartials[] = {
  0, 0, 1041, 1747, 1846, 3072
};

static const int16_t kDrumPartialAmplitude[] = {
  16986, 2654, 3981, 5308, 3981, 2985
};

static const uint16_t kDrumPartialDecayLong[] = {
  65533, 65531, 65531, 65531, 65531, 65516
};

static const uint16_t kDrumPartialDecayShort[] = {
  65083, 64715, 64715, 64715, 64715, 62312
};

class StruckBell :  public DigitalOscillator {
	static const size_t kNumBellPartials = 11;
  uint32_t partial_phase_[kNumBellPartials];
  uint32_t partial_phase_increment_[kNumBellPartials];
  int32_t partial_amplitude_[kNumBellPartials];
  int16_t previous_sample_;
  size_t current_partial_;
  public:
void Render(
    int32_t* buffer,
    size_t size,
	bool strike
	) {
  
static const int16_t kBellPartials[] = {
  -1284, -1283, -184, -183, 385, 1175, 1536, 2233, 2434, 2934, 3110
};

static const int16_t kBellPartialAmplitudes[] = {
  8192, 5488, 8192, 14745, 21872, 13680, 11960, 10895, 10895, 6144, 10895
};

static const uint16_t kBellPartialDecayLong[] = {
  65533, 65533, 65533, 65532, 65531, 65531, 65530, 65529, 65527, 65523, 65519
};

static const uint16_t kBellPartialDecayShort[] = {
  65308, 65283, 65186, 65123, 64839, 64889, 64632, 64409, 64038, 63302, 62575
};
  // To save some CPU cycles, do not refresh the frequency of all partials at
  // the same time. This create a kind of "arpeggiation" with high frequency
  // CV though...
  size_t first_partial = current_partial_;
  size_t last_partial = std::min(
      current_partial_ + 3,
      kNumBellPartials);
  current_partial_ = (first_partial + 3) % kNumBellPartials;
  
  if (strike) {
    for (size_t i = 0; i < kNumBellPartials; ++i) {
      partial_amplitude_[i] = kBellPartialAmplitudes[i];
      partial_phase_[i] = (1L << 30);
    }
    first_partial = 0;
    last_partial = kNumBellPartials;
  }
  
  for (size_t i = first_partial; i < last_partial; ++i) {
    int16_t partial_pitch = pitch_ + kBellPartials[i];
    if (i & 1) {
      partial_pitch += parameter_[1] >> 7;
    } else {
      partial_pitch -= parameter_[1] >> 7;
    }
    partial_phase_increment_[i] = \
        ComputePhaseIncrement(partial_pitch) << 1;
  }
  
  // Allow a "droning" bell with no energy loss when the parameter is set to
  // its maximum value
  if (parameter_[0] < 32000) {
    for (size_t i = 0; i < kNumBellPartials; ++i) {
      int32_t decay_long = kBellPartialDecayLong[i];
      int32_t decay_short = kBellPartialDecayShort[i];
      int16_t balance = (32767 - parameter_[0]) >> 8;
      balance = balance * balance >> 7;
      int32_t decay = decay_long - ((decay_long - decay_short) * balance >> 7);
      partial_amplitude_[i] = \
          partial_amplitude_[i] * decay >> 16;
    }
  }
  
  int16_t previous_sample = previous_sample_;
  while (size--) {
    int32_t out = 0;
    for (size_t i = 0; i < kNumBellPartials; ++i) {
      partial_phase_[i] += partial_phase_increment_[i];
      int32_t partial = stmlib::Interpolate824(braids::wav_sine, partial_phase_[i]);
      out += partial * partial_amplitude_[i] >> 17;
    }
    CLIP(out)
    *buffer++ = out<<11;
    previous_sample = out;
  }
  previous_sample_ = previous_sample;
}
};


class Harmonics :  public DigitalOscillator {
static const size_t kNumAdditiveHarmonics = 12;	
int32_t amplitude_[kNumAdditiveHarmonics];	

  public:
void Render(
    const int32_t* sync,
    int32_t* buffer,
    size_t size) {
  phase_increment_ = ComputePhaseIncrement(pitch_);
  uint32_t phase = phase_;
  uint32_t phase_increment = phase_increment_ << 1;
  int32_t target_amplitude[kNumAdditiveHarmonics];
  int32_t amplitude[kNumAdditiveHarmonics];
  
  int32_t peak = (kNumAdditiveHarmonics * parameter_[0]) >> 7;
  int32_t second_peak = (peak >> 1) + kNumAdditiveHarmonics * 128;
  int32_t second_peak_amount = parameter_[1] * parameter_[1] >> 15;

  int32_t sqrtsqrt_width = parameter_[1] < 16384
      ? parameter_[1] >> 6 : 511 - (parameter_[1] >> 6);
  int32_t sqrt_width = sqrtsqrt_width * sqrtsqrt_width >> 10;
  int32_t width = sqrt_width * sqrt_width + 4;
  int32_t total = 0;
  for (size_t i = 0; i < kNumAdditiveHarmonics; ++i) {
    int32_t x = i << 8;
    int32_t d, g;

    d = (x - peak);
    g = 32768 * 128 / (128 + d * d / width);
    
    d = (x - second_peak);
    g += second_peak_amount * 128 / (128 + d * d / width);
    total += g;
    target_amplitude[i] = g;
  }
  
  int32_t attenuation = 2147483647 / total;
  for (size_t i = 0; i < kNumAdditiveHarmonics; ++i) {
    if ((phase_increment >> 16) * (i + 1) > 0x4000) {
      target_amplitude[i] = 0;
    } else {
      target_amplitude[i] = target_amplitude[i] * attenuation >> 16;
    }
    amplitude[i] = amplitude_[i];
  }
  
  while (size--) {
    int32_t out;
    
    phase += phase_increment;
	if (sync) {
    if (*sync++) {
      phase = 0;
    }
	}
    out = 0;
    for (size_t i = 0; i < kNumAdditiveHarmonics; ++i) {
      out += stmlib::Interpolate824(braids::wav_sine, phase * (i + 1)) * amplitude[i] >> 15;
      amplitude[i] += (target_amplitude[i] - amplitude[i]) >> 8;
    }
    CLIP(out)
    *buffer++ = out<<11;
  }
  phase_ = phase;
  for (size_t i = 0; i < kNumAdditiveHarmonics; ++i) {
    amplitude_[i] = amplitude[i];
  }
}
};


class StruckDrum :  public DigitalOscillator {
//static const size_t kNumAdditiveHarmonics = 12;
static const size_t kNumDrumPartials = 6;
  uint32_t partial_phase_[kNumDrumPartials];
  uint32_t partial_phase_increment_[kNumDrumPartials];
  int32_t partial_amplitude_[kNumDrumPartials];
  int32_t target_partial_amplitude_[kNumDrumPartials];
  //int16_t previous_sample;
  //size_t current_partial;
  int32_t lp_noise_[3];
  
  public:
void Render(
    int32_t* buffer,
    size_t size,
	bool strike)	{
  
  if (strike) {
    bool reset_phase = partial_amplitude_[0] < 1024;
    for (size_t i = 0; i < kNumDrumPartials; ++i) {
      target_partial_amplitude_[i] = kDrumPartialAmplitude[i];
      if (reset_phase) {
        partial_phase_[i] = (1L << 30);
      }
    }
  } else {
    if (parameter_[0] < 32000) {
      for (size_t i = 0; i < kNumDrumPartials; ++i) {
        int32_t decay_long = kDrumPartialDecayLong[i];
        int32_t decay_short = kDrumPartialDecayShort[i];
        int16_t balance = (32767 - parameter_[0]) >> 8;
        balance = balance * balance >> 7;
        int32_t decay = decay_long - ((decay_long - decay_short) * balance >> 7);
        target_partial_amplitude_[i] = \
            partial_amplitude_[i] * decay >> 16;
      }
    }
  }
  
  for (size_t i = 0; i < kNumDrumPartials; ++i) {
    int16_t partial_pitch = pitch_ + kDrumPartials[i];
    partial_phase_increment_[i] = ComputePhaseIncrement(partial_pitch) << 1;
  }
  
  int32_t cutoff = (pitch_ - 12 * 128) + (parameter_[1] >> 2);
  if (cutoff < 0) {
    cutoff = 0;
  } else if (cutoff > 32767) {
    cutoff = 32767;
  }
  int32_t f = stmlib::Interpolate824(braids::lut_svf_cutoff, cutoff << 16);
  int32_t lp_state_0 = lp_noise_[0];
  int32_t lp_state_1 = lp_noise_[1];
  int32_t lp_state_2 = lp_noise_[2];
  int32_t harmonics_gain = parameter_[1] < 12888 ? (parameter_[1] + 4096) : 16384;
  int32_t noise_mode_gain = parameter_[1] < 16384 ? 0 : parameter_[1] - 16384;
  noise_mode_gain = noise_mode_gain * 12888 >> 14;

  int32_t fade_increment = 65536 / size;
  int32_t fade = 0;
  while (size--) {
    fade += fade_increment;
    int32_t harmonics = 0;

    int32_t noise = stmlib::Random::GetSample();
    if (noise > 16384) {
      noise = 16384;
    }
    if (noise < -16384) {
      noise = -16384;
    }
    lp_state_0 += (noise - lp_state_0) * f >> 15;
    lp_state_1 += (lp_state_0 - lp_state_1) * f >> 15;
    lp_state_2 += (lp_state_1 - lp_state_2) * f >> 15;

    int32_t partials[kNumDrumPartials];
    for (size_t i = 0; i < kNumDrumPartials; ++i) {
      partial_phase_[i] += partial_phase_increment_[i];
      int32_t partial = stmlib::Interpolate824(braids::wav_sine, partial_phase_[i]);
      int32_t amplitude = partial_amplitude_[i] + \
          (((target_partial_amplitude_[i] - partial_amplitude_[i]) * fade) >> 15);
      partial = partial * amplitude >> 16;
      harmonics += partial;
      partials[i] = partial;
    }
    int32_t sample = partials[0];
    int32_t noise_mode_1 = partials[1] * lp_state_2 >> 8;
    int32_t noise_mode_2 = partials[3] * lp_state_2 >> 9;
    sample += noise_mode_1 * (12288 - noise_mode_gain) >> 14;
    sample += noise_mode_2 * noise_mode_gain >> 14;
    sample += harmonics * harmonics_gain >> 14;
    CLIP(sample)
    //sample = stmlib::Interpolate88(ws_moderate_overdrive, sample + 32768);
    *buffer++ = sample<<11; 
  }
  lp_noise_[0] = lp_state_0;
  lp_noise_[1] = lp_state_1;
  lp_noise_[2] = lp_state_2;
  for (size_t i = 0; i < kNumDrumPartials; ++i) {
    partial_amplitude_[i] = target_partial_amplitude_[i];
  }
}
};

class Plucked :  public DigitalOscillator {
	
	struct PluckState {
  size_t size;
  size_t write_ptr;
  size_t shift;
  size_t mask;
  size_t pluck_position;
  size_t initialization_ptr;
  uint32_t phase;
  uint32_t phase_increment;
  uint32_t max_phase_increment;
  int16_t previous_sample;
  uint8_t polyphony_assigner;
};

static const size_t kNumPluckVoices = 3;
  uint8_t active_voice_=0;	
  PluckState plk_[4];
  	int16_t *ks_;
  public:
  
void Init() {
	ks_ = (int16_t *)sdram_malloc(sizeof(int16_t[1025 * 4]));
	int i;
	for(i=0;i<1025 * 4;i++){
		ks_[i]=0;
	}
}
  
void Render(
    int32_t* buffer,
    size_t size,
	bool strike)	{

  phase_increment_ = ComputePhaseIncrement(pitch_);

	phase_increment_ <<= 1;
  if (strike) {
    ++active_voice_;
    if (active_voice_ >= kNumPluckVoices) {
      active_voice_ = 0;
    }
    // Find the optimal oversampling rate.
    PluckState* p = &plk_[active_voice_];
    int32_t increment = phase_increment_;
    p->shift = 0;
    while (increment > (2 << 22)) {
      increment >>= 1;
      ++p->shift;
    }
    p->size = 1024 >> p->shift;
    p->mask = p->size - 1;
    p->write_ptr = 0;
    p->max_phase_increment = phase_increment_ << 1;
    p->phase_increment = phase_increment_;
    int32_t width = parameter_[1];
    width = (3 * width) >> 1;
    p->initialization_ptr = p->size * (8192 + width) >> 16;
  }
  
  PluckState* current_string = &plk_[active_voice_];
  
  // Update the phase increment of the latest note, but do not transpose too
  // high above the original pitch.
  current_string->phase_increment = std::min(
      phase_increment_,
      current_string->max_phase_increment);
  
  // Compute loss and stretching factors.
  uint32_t update_probability = parameter_[0] < 16384
      ? 65535
      : 131072 - (parameter_[0] >> 3) * 31;
  int16_t loss = 4096 - (phase_increment_ >> 14);
  if (loss < 256) {
    loss = 256;
  }
  if (parameter_[0] < 16384) {
    loss = loss * (16384 - parameter_[0]) >> 14;
  } else {
    loss = 0;
  }
  
  while (size) {
    int32_t sample = 0;
    for (size_t i = 0; i < kNumPluckVoices; ++i) {
      PluckState* p = &plk_[i];
      int16_t* dl = ks_ + i * 1025;
      // Initialization: Just use a white noise sample and fill the delay
      // line.
      if (p->initialization_ptr) {
        --p->initialization_ptr;
        int32_t excitation_sample = (dl[p->initialization_ptr] + \
            3 * stmlib::Random::GetSample()) >> 2;
        dl[p->initialization_ptr] = excitation_sample;
        sample += excitation_sample;
      } else {
        p->phase += p->phase_increment;
        size_t read_ptr = ((p->phase >> (22 + p->shift)) + 2) & p->mask;
        size_t write_ptr = p->write_ptr;
        size_t num_loops = 0;
        while (write_ptr != read_ptr) {
          ++num_loops;
          size_t next = (write_ptr + 1) & p->mask;
          int32_t a = dl[write_ptr];
          int32_t b = dl[next];
          uint32_t probability = stmlib::Random::GetWord();
          if ((probability & 0xffff) <= update_probability) {
            int32_t sum = (a + b);
            sum = sum < 0 ? -(-sum >> 1) : (sum >> 1);
            if (loss) {
              sum = sum * (32768 - loss) >> 15;
            }
            dl[write_ptr] = sum;
          }
          if (write_ptr == 0) {
            dl[p->size] = dl[0];
          }
          write_ptr = next;
        }
        p->write_ptr = write_ptr;
        sample += stmlib::Interpolate1022(dl, p->phase >> p->shift);
      }
    }
    CLIP(sample);
    *buffer++ = sample<<11;
    size --;
  }
}
};




class Bowed :  public DigitalOscillator {

static const int32_t kBridgeLPGain = 14008;
static const int32_t kBridgeLPPole1 = 18022;
static const int32_t kBiquadGain = 6553;
static const int32_t kBiquadPole1 = 6948;
static const int32_t kBiquadPole2 = -2959;
	
struct PhysicalModellingState {
  uint16_t delay_ptr;
  uint16_t excitation_ptr;
  int32_t lp_state;
  int32_t filter_state[2];
  int16_t previous_sample;
};
static const size_t kWGBridgeLength = 1024;
static const size_t kWGNeckLength = 4096;

	PhysicalModellingState phy_;
    int8_t *bridge_;
    int8_t *neck_;
	size_t delay_ptr;
  public:
void Init(){
	bridge_ = (int8_t*)sdram_malloc(kWGBridgeLength);
	neck_ = (int8_t*)sdram_malloc(kWGNeckLength);
    memset(bridge_, 0, sizeof(int8_t[kWGBridgeLength]));
    memset(neck_, 0, sizeof(int8_t[kWGNeckLength]));
	phy_.delay_ptr = 0;
	phy_.excitation_ptr = 0;
	phy_.lp_state = 0;
	phy_.filter_state[0] = 0;
	phy_.filter_state[1] = 0;	
	phy_.previous_sample = 0;
}
  
void Render(
    int32_t* buffer,
    size_t size,
	bool strike) {
  int8_t* dl_b = bridge_;
  int8_t* dl_n = neck_;
  
  if (strike) {
    memset(bridge_, 0, sizeof(int8_t[kWGBridgeLength]));
    memset(neck_, 0, sizeof(int8_t[kWGNeckLength]));
	phy_.delay_ptr = 0;
	phy_.excitation_ptr = 0;
	phy_.lp_state = 0;
	phy_.filter_state[0] = 0;
	phy_.filter_state[1] = 0;	
	phy_.previous_sample = 0;
  }
  int16_t parameter_0 = 172 - (parameter_[0]  >> 8);
  int16_t parameter_1 = 6 + (parameter_[1]  >> 9);

  uint16_t delay_ptr = phy_.delay_ptr;
  uint16_t excitation_ptr = phy_.excitation_ptr;
  int32_t lp_state = phy_.lp_state;

  int32_t biquad_y0 = phy_.filter_state[0];
  int32_t biquad_y1 = phy_.filter_state[1];
  // Setup delay times and interpolation coefficients.
  uint32_t delay = (ComputeDelay(pitch_) >> 1) - (2 << 16);  // Compensation for 1-pole delay
  uint32_t bridge_delay = (delay >> 8) * parameter_1;
  // Transpose one octave up when the note is too low to fit in the delays.
  while ((delay - bridge_delay) > ((kWGNeckLength - 1) << 16)
         || bridge_delay > ((kWGBridgeLength - 1) << 16)) {
    delay >>= 1;
    bridge_delay >>= 1;
  }
  uint16_t bridge_delay_integral = bridge_delay >> 16;
  uint16_t bridge_delay_fractional = bridge_delay & 0xffff;
  uint32_t neck_delay = delay - bridge_delay;
  uint32_t neck_delay_integral = neck_delay >> 16;
  uint16_t neck_delay_fractional = neck_delay & 0xffff;
  int16_t previous_sample = phy_.previous_sample;
  // Rendered at half the sample rate (for avoiding big rounding error in
  // coefficients of body IIR filter).
  while (size) {
    phase_ += phase_increment_;
    
    int32_t new_velocity, friction;
    uint16_t bridge_delay_ptr = delay_ptr + 2 * kWGBridgeLength \
        - bridge_delay_integral;
    uint16_t neck_delay_ptr = delay_ptr + 2 * kWGNeckLength \
        - neck_delay_integral;
    int16_t bridge_dl_a = dl_b[bridge_delay_ptr % kWGBridgeLength];
    int16_t bridge_dl_b = dl_b[(bridge_delay_ptr - 1) % kWGBridgeLength];
    int16_t nut_dl_a = dl_n[neck_delay_ptr % kWGNeckLength];
    int16_t nut_dl_b = dl_n[(neck_delay_ptr - 1) % kWGNeckLength];
    int32_t bridge_value = stmlib::Mix(
        bridge_dl_a, bridge_dl_b, bridge_delay_fractional) << 8;
    int32_t nut_value = stmlib::Mix(nut_dl_a, nut_dl_b, neck_delay_fractional) << 8;
    lp_state = (bridge_value * kBridgeLPGain + lp_state * kBridgeLPPole1) >> 15;
    int32_t bridge_reflection = -lp_state;
    int32_t nut_reflection = -nut_value;
    int32_t string_velocity = bridge_reflection + nut_reflection;
    int32_t bow_velocity = braids::lut_bowing_envelope[excitation_ptr >> 1];
    bow_velocity += braids::lut_bowing_envelope[(excitation_ptr + 1) >> 1];
    bow_velocity >>= 1;
    int32_t velocity_delta = bow_velocity - string_velocity;
    
    friction = velocity_delta * parameter_0 >> 5;
    if (friction < 0) {
      friction = -friction;
    }
    if (friction >= (1 << 17)) {
      friction = (1 << 17) - 1;
    }
    //friction = stmlib::Interpolate824(lut_bowing_friction, friction << 15);
    friction = braids::lut_bowing_friction[friction >> 9];
    new_velocity = friction * velocity_delta >> 15;
    dl_n[delay_ptr % kWGNeckLength] = (bridge_reflection + new_velocity) >> 8;
    dl_b[delay_ptr % kWGBridgeLength] = (nut_reflection + new_velocity) >> 8;
    ++delay_ptr;
    
    int32_t temp = bridge_value * kBiquadGain >> 15;
    temp += biquad_y0 * kBiquadPole1 >> 12;
    temp += biquad_y1 * kBiquadPole2 >> 12;
    int32_t out = temp - biquad_y1;
    biquad_y1 = biquad_y0;
    biquad_y0 = temp;

    CLIP(out)
    *buffer++ = out<<11;
    ++excitation_ptr;
    size --;
  }
  if ((excitation_ptr >> 1) >= braids::LUT_BOWING_ENVELOPE_SIZE - 32) {
    excitation_ptr = (braids::LUT_BOWING_ENVELOPE_SIZE - 32) << 1;
  }
  phy_.delay_ptr = delay_ptr % kWGNeckLength;
  phy_.excitation_ptr = excitation_ptr;
  phy_.lp_state = lp_state;
  phy_.filter_state[0] = biquad_y0;
  phy_.filter_state[1] = biquad_y1;
  phy_.previous_sample = previous_sample;
}
};



class Blown :  public DigitalOscillator {

static const uint16_t kBreathPressure = 26214;
static const int16_t kReflectionCoefficient = -3891;
static const int16_t kReedSlope = -1229;
static const int16_t kReedOffset = 22938;
	static const size_t kWGBoreLength = 2048;

struct PhysicalModellingState {
  uint16_t delay_ptr;
  uint16_t excitation_ptr;
  int32_t lp_state;
  int32_t filter_state[1];
  int16_t previous_sample;
};

	PhysicalModellingState phy_;
    int16_t *bore_;
	size_t delay_ptr;
  public:
void Init(){
	bore_ = (int16_t*)sdram_malloc(sizeof(int16_t[kWGBoreLength]));
    memset((void *)bore_, 0, sizeof(int16_t[kWGBoreLength]));
	phy_.delay_ptr = 0;
	phy_.excitation_ptr = 0;
	phy_.lp_state = 0;
	phy_.filter_state[0] = 0;
	phy_.filter_state[1] = 0;	
	phy_.previous_sample = 0;
}	
void Render(
    int32_t* buffer,
    size_t size,
	bool strike) {
  uint16_t delay_ptr = phy_.delay_ptr;
  int32_t lp_state = phy_.lp_state;
  
  int16_t* dl = bore_;
  if (strike) {
    memset(dl, 0, sizeof(int16_t[kWGBoreLength]));
  }

  uint32_t delay = (ComputeDelay(pitch_) >> 1) - (1 << 16);
  while (delay > ((kWGBoreLength - 1) << 16)) {
    delay >>= 1;
  }
  uint16_t bore_delay_integral = delay >> 16;
  uint16_t bore_delay_fractional = delay & 0xffff;
  uint16_t parameter = 28000 - (parameter_[0] >> 1);
  int16_t filter_state = phy_.filter_state[0];
  int16_t normalized_pitch = (pitch_ - 8192 + (parameter_[1] >> 1)) >> 7;
  if (normalized_pitch < 0) {
    normalized_pitch = 0;
  } else if (normalized_pitch > 127) {
    normalized_pitch = 127;
  }
  uint16_t filter_coefficient = braids::lut_flute_body_filter[normalized_pitch];
  while (size--) {
    phase_ += phase_increment_;
    
    int32_t breath_pressure = stmlib::Random::GetSample() * parameter >> 15;
    breath_pressure = breath_pressure * kBreathPressure >> 15;
    breath_pressure += kBreathPressure;
    
    uint16_t bore_delay_ptr = delay_ptr + 2 * kWGBoreLength \
        - bore_delay_integral;
    int16_t dl_a = dl[bore_delay_ptr % kWGBoreLength];
    int16_t dl_b = dl[(bore_delay_ptr - 1) % kWGBoreLength];
    int32_t dl_value = stmlib::Mix(dl_a, dl_b, bore_delay_fractional);
    
    int32_t pressure_delta = (dl_value >> 1) + lp_state;
    lp_state = dl_value >> 1;
    
    pressure_delta = kReflectionCoefficient * pressure_delta >> 12;
    pressure_delta -= breath_pressure;
    int32_t reed = (pressure_delta * kReedSlope >> 12) + kReedOffset;
    CLIP(reed)
    int32_t out = pressure_delta * reed >> 15;
    out += breath_pressure;
    CLIP(out)
    dl[delay_ptr++ % kWGBoreLength] = out;
    filter_state = (filter_coefficient * out + \
        (4096 - filter_coefficient) * filter_state) >> 12;
    *buffer++ = filter_state<<11;
  }
  phy_.filter_state[0] = filter_state;
  phy_.delay_ptr = delay_ptr % kWGBoreLength;
  phy_.lp_state = lp_state;
}
};

class Fluted :  public DigitalOscillator {

static const uint16_t kRandomPressure = 0.22 * 4096;
static const uint16_t kDCBlockingPole = 0.99 * 4096;
static const size_t kWGJetLength = 1024;
static const size_t kWGFBoreLength = 4096;

struct PhysicalModellingState {
  uint16_t delay_ptr;
  uint16_t excitation_ptr;
  int32_t lp_state;
  int32_t filter_state[2];
  int16_t previous_sample;
};

	PhysicalModellingState phy_;
    int8_t *jet_;
    int8_t *bore_;
	size_t delay_ptr;
  public:
void Init(){
	bore_ = (int8_t*)sdram_malloc(sizeof(int8_t[kWGFBoreLength]));
	jet_ = (int8_t*)sdram_malloc(sizeof(int8_t[kWGJetLength]));
    memset((void *)bore_, 0, sizeof(int8_t[kWGFBoreLength]));
    memset((void *)jet_, 0, sizeof(int8_t[kWGJetLength]));
	phy_.delay_ptr = 0;
	phy_.excitation_ptr = 0;
	phy_.lp_state = 0;
	phy_.filter_state[0] = 0;
	phy_.filter_state[1] = 0;	
	phy_.previous_sample = 0;
}

void Render(
    int32_t* buffer,
    size_t size,
	bool strike) {
  uint16_t delay_ptr = phy_.delay_ptr;
  uint16_t excitation_ptr = phy_.excitation_ptr;

  int32_t lp_state = phy_.lp_state;
  int32_t dc_blocking_x0 = phy_.filter_state[0];
  int32_t dc_blocking_y0 = phy_.filter_state[1];

  int8_t* dl_b = bore_;
  int8_t* dl_j = jet_;
  
  if (strike) {
    excitation_ptr = 0;
    memset(dl_b, 0, sizeof(int8_t[kWGFBoreLength]));
    memset(dl_j, 0, sizeof(int8_t[kWGJetLength]));
    lp_state = 0;
  }

  // Setup delay times and interpolation coefficients.
  uint32_t bore_delay = (ComputeDelay(pitch_) << 1) - (2 << 16);
  uint32_t jet_delay = (bore_delay >> 8) * (48 + (parameter_[1]  >> 10));
  bore_delay -= jet_delay;
  while (bore_delay > ((kWGFBoreLength - 1) << 16)
         || jet_delay > ((kWGJetLength - 1) << 16)) {
    bore_delay >>= 1;
    jet_delay >>= 1;
  }
  uint16_t bore_delay_integral = bore_delay >> 16;
  uint16_t bore_delay_fractional = bore_delay & 0xffff;
  uint32_t jet_delay_integral = jet_delay >> 16;
  uint16_t jet_delay_fractional = jet_delay & 0xffff;
  
  uint16_t breath_intensity = 2100 - (parameter_[0] >> 4);
  uint16_t filter_coefficient = braids::lut_flute_body_filter[pitch_ >> 7];
  while (size--) {
    phase_ += phase_increment_;
    
    uint16_t bore_delay_ptr = delay_ptr + 2 * kWGFBoreLength \
        - bore_delay_integral;
    uint16_t jet_delay_ptr = delay_ptr + 2 * kWGJetLength \
        - jet_delay_integral;
    int16_t bore_dl_a = dl_b[bore_delay_ptr % kWGFBoreLength];
    int16_t bore_dl_b = dl_b[(bore_delay_ptr - 1) % kWGFBoreLength];
    int16_t jet_dl_a = dl_j[jet_delay_ptr % kWGJetLength];
    int16_t jet_dl_b = dl_j[(jet_delay_ptr - 1) % kWGJetLength];
    int32_t bore_value = stmlib::Mix(bore_dl_a, bore_dl_b, bore_delay_fractional) << 9;
    int32_t jet_value = stmlib::Mix(jet_dl_a, jet_dl_b, jet_delay_fractional) << 9;
        
    int32_t breath_pressure = braids::lut_blowing_envelope[excitation_ptr];
    breath_pressure <<= 1;
    int32_t random_pressure = stmlib::Random::GetSample() * breath_intensity >> 12;
    random_pressure = random_pressure * breath_pressure >> 15;
    breath_pressure += random_pressure;
    
    lp_state = (-filter_coefficient * bore_value + \
        (4096 - filter_coefficient) * lp_state) >> 12;
    int32_t reflection = lp_state;
    dc_blocking_y0 = (kDCBlockingPole * dc_blocking_y0 >> 12);
    dc_blocking_y0 += reflection - dc_blocking_x0;
    dc_blocking_x0 = reflection;
    reflection = dc_blocking_y0;
    
    int32_t pressure_delta = breath_pressure - (reflection >> 1);
    dl_j[delay_ptr % kWGJetLength] = pressure_delta >> 9;
    
    pressure_delta = jet_value;
    int32_t jet_table_index = pressure_delta;
    if (jet_table_index < 0) {
      jet_table_index = 0;
    }
    if (jet_table_index > 65535) {
      jet_table_index = 65535;
    }
    pressure_delta = static_cast<int16_t>(
        braids::lut_blowing_jet[jet_table_index >> 8]) + (reflection >> 1);
    dl_b[delay_ptr % kWGFBoreLength] = pressure_delta >> 9;
    ++delay_ptr;
    
    int32_t out = bore_value >> 1;
    CLIP(out)
    *buffer++ = out<<11;
    if (size & 3) {
      ++excitation_ptr;
    }
  }
  if (excitation_ptr >= braids::LUT_BLOWING_ENVELOPE_SIZE - 32) {
    excitation_ptr = braids::LUT_BLOWING_ENVELOPE_SIZE - 32;
  }
  phy_.delay_ptr = delay_ptr;
  phy_.excitation_ptr = excitation_ptr;
  phy_.lp_state = lp_state;
  phy_.filter_state[0] = dc_blocking_x0;
  phy_.filter_state[1] = dc_blocking_y0;
}
};


struct WavetableDefinition {
  uint8_t num_steps;
  uint8_t wave_index[17];
};

static const WavetableDefinition wavetable_definitions[] = {
// 01 male
{ 16 , { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 15 } },
// 02 female
{ 16 , { 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 31 } },
// 03 choir
{ 16 , { 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 47 } },
// 04 space_voice
{ 16 , { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 63 } },
// 05 tampura
{ 16 , { 64, 65, 66, 67, 68, 68, 69, 70, 71, 72, 73, 73, 74, 75, 75, 76, 76 } },
// 06 shamus
{ 16 , { 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 92 } },
// 07 swept_string
{ 16 , { 93, 94, 95, 96, 97, 98, 99, 100, 101,
         102, 103, 104, 105, 106, 107, 108, 108 } },
// 08 bowed
{ 16 , { 109, 110, 111, 112, 113, 114, 115, 116,
         117, 118, 119, 120, 121, 122, 123, 124, 124 } },
// 09 cello
{ 16 , { 125, 126, 127, 128, 129, 130, 131, 132,
         132, 132, 132, 132, 132, 132, 132, 132, 132 } },
// 10 vibes
{ 16 , { 133, 134, 135, 136, 137, 138, 139, 140,
         141, 142, 143, 144, 144, 144, 145, 145, 145 } },
// 11 slap
{ 16 , { 146, 147, 148, 149, 150, 151, 151, 151,
         152, 152, 152, 152, 153, 153, 153, 153, 153 } },
// 12 piano
{ 8 , { 154, 154, 154, 154, 154, 154, 155, 156, 156 } },
// 13 organ!
{ 16 , { 176, 157, 158, 159, 160, 161, 162, 163,
         164, 165, 166, 167, 168, 169, 170, 171, 171 } },
// 14 waves!
{ 16 , { 172, 173, 174, 175, 176, 177, 178, 179,
         180, 181, 182, 183, 184, 185, 186, 187, 187 } },
// 15 digital
{ 16 , { 176, 188, 189, 190, 191, 192, 193, 194,
         195, 196, 197, 198, 199, 200, 201, 202, 202 } },
// 16 drone 1
{ 16 , { 203, 205, 204, 205, 212, 206, 207, 208,
         208, 209, 210, 210, 211, 211, 212, 212, 212 } },
// 17 drone 2
{ 8 , { 213, 213, 213, 214, 215, 216, 217, 218, 219 } },
// 18 metallic
{ 16 , { 220, 221, 222, 223, 224, 225, 226, 227,
         228, 229, 230, 231, 232, 233, 234, 235, 235 } },
// 19 fantasy
{ 16 , { 236, 237, 238, 239, 240, 241, 242, 243,
         244, 245, 246, 247, 248, 249, 250, 251, 251 } },
// 20 bell
{ 4 , { 252, 253, 254, 255, 254 } },
};


class Wavetables :  public DigitalOscillator {
	
  public:
void Render(
    const int32_t* sync,
    int32_t* buffer,
    size_t size) {

	phase_increment_ = ComputePhaseIncrement(pitch_);

  // removed hysteresis
  uint32_t wavetable_index = static_cast<uint32_t>(parameter_[1]) * 20;
  wavetable_index >>= 15;
  
  uint32_t wave_pointer;
  const uint8_t* wave[2];
  const WavetableDefinition& wt = wavetable_definitions[wavetable_index];
  
  wave_pointer = (parameter_[0] << 1) * wt.num_steps;
  for (size_t i = 0; i < 2; ++i) {
    size_t wave_index = wt.wave_index[(wave_pointer >> 16) + i];
    wave[i] = braids::wt_waves + wave_index * 129;
  }

  uint32_t phase_increment = phase_increment_ >> 1;
  while (size--) {
    int16_t sample;
    // 2x naive oversampling.
    phase_ += phase_increment;
	if (sync) {
    if (*sync++) {
      phase_ = 0;
    }
	}
    
    sample = stmlib::Crossfade(wave[0], wave[1], phase_ >> 1, wave_pointer) >> 1;
    phase_ += phase_increment;
    sample += stmlib::Crossfade(wave[0], wave[1], phase_ >> 1, wave_pointer) >> 1;
    *buffer++ = sample<<11;
  }
}
};



class WaveMap :  public DigitalOscillator {
	
  public:
void Render(
    const int32_t* sync,
    int32_t* buffer,
    size_t size) {
  		  phase_increment_ = ComputePhaseIncrement(pitch_);

  // The grid is 16x16; so there are 15 interpolation squares.
  uint16_t p[2];
  uint16_t wave_xfade[2];
  uint16_t wave_coordinate[2];

  p[0] = parameter_[0] * 15 >> 4;
  p[1] = parameter_[1] * 15 >> 4;
  wave_xfade[0] = p[0] << 5;
  wave_xfade[1] = p[1] << 5;
  wave_coordinate[0] = p[0] >> 11;
  wave_coordinate[1] = p[1] >> 11;

  const uint8_t* wave[2][2];
  
  for (size_t i = 0; i < 2; ++i) {
    for (size_t j = 0; j < 2; ++j) {
      uint16_t wave_index = \
          (wave_coordinate[0] + i) * 16 + (wave_coordinate[1] + j);
      wave[i][j] = braids::wt_waves + braids::wt_map[wave_index] * 129;
    }
  }

  uint32_t phase_increment = phase_increment_ >> 1;
  while (size--) {
    int16_t sample;
    // 2x naive oversampling.
    phase_ += phase_increment;
	if (sync) {
    if (*sync++) {
      phase_ = 0;
    }
	}
    
    sample = stmlib::Mix(
        stmlib::Crossfade(wave[0][0], wave[0][1], phase_ >> 1, wave_xfade[1]),
        stmlib::Crossfade(wave[1][0], wave[1][1], phase_ >> 1, wave_xfade[1]),
        wave_xfade[0]) >> 1;
    phase_ += phase_increment;
    sample += stmlib::Mix(
        stmlib::Crossfade(wave[0][0], wave[0][1], phase_ >> 1, wave_xfade[1]),
        stmlib::Crossfade(wave[1][0], wave[1][1], phase_ >> 1, wave_xfade[1]),
        wave_xfade[0]) >> 1;
    *buffer++ = sample<<11;
  }
}
};


class WaveLine :  public DigitalOscillator {

	
  public:
void Render(
    const int32_t* sync,
    int32_t* buffer,
    size_t size) {

		  phase_increment_ = ComputePhaseIncrement(pitch_);

static const uint8_t wave_line[] = {
  187, 179, 154, 155, 135, 134, 137, 19, 24, 3, 8, 66, 79, 25, 180, 174, 64,
  127, 198, 15, 10, 7, 11, 0, 191, 192, 115, 238, 237, 236, 241, 47, 70, 76,
  235, 26, 133, 208, 34, 175, 183, 146, 147, 148, 150, 151, 152, 153, 117,
  138, 32, 33, 35, 125, 199, 201, 30, 31, 193, 27, 29, 21, 18, 182
};


static const uint8_t mini_wave_line[] = {
  157, 161, 171, 188, 189, 191, 192, 193, 196, 198, 201, 234, 232,
  229, 226, 224, 1, 2, 3, 4, 5, 8, 12, 32, 36, 42, 47, 252, 254, 141, 139,
  135, 174
};
	smoothed_parameter_ = (3 * smoothed_parameter_ + (parameter_[0] << 1)) >> 2;

  uint16_t scan = smoothed_parameter_;
  const uint8_t* wave_0 = braids::wt_waves + wave_line[previous_parameter_[0] >> 9] * 129;
  const uint8_t* wave_1 = braids::wt_waves + wave_line[scan >> 10] * 129;
  const uint8_t* wave_2 = braids::wt_waves + wave_line[(scan >> 10) + 1] * 129;

  uint16_t smooth_xfade = scan << 6;
  uint16_t rough_xfade = 0;
  uint16_t rough_xfade_increment = 32768 / size;
  uint32_t balance = parameter_[1] << 3;

  uint32_t phase = phase_;
  uint32_t phase_increment = phase_increment_ >> 1;
  
  int16_t rough, smooth;
  
  if (parameter_[1] < 8192) {
    while (size--) {
		if (sync) {
      if (*sync++) {
        phase = 0;
      }
		}
      int32_t sample = 0;
      
      rough = stmlib::Crossfade(wave_0, wave_1, (phase >> 1) & 0xfe000000, rough_xfade);
      smooth = stmlib::Crossfade(wave_0, wave_1, phase >> 1, rough_xfade);
      sample += stmlib::Mix(rough, smooth, balance);
      phase += phase_increment;
      rough_xfade += rough_xfade_increment;
      
      rough = stmlib::Crossfade(wave_0, wave_1, (phase >> 1) & 0xfe000000, rough_xfade);
      smooth = stmlib::Crossfade(wave_0, wave_1, phase >> 1, rough_xfade);
      sample += stmlib::Mix(rough, smooth, balance);
      phase += phase_increment;
      rough_xfade += rough_xfade_increment;
      
      *buffer++ = sample << 10;
    }
  } else if (parameter_[1] < 16384) {
    while (size--) {
		if (sync) {
			if (*sync++) {
        phase = 0;
      }
		}
      int32_t sample = 0;
      
      rough = stmlib::Crossfade(wave_0, wave_1, phase >> 1, rough_xfade);
      smooth = stmlib::Crossfade(wave_1, wave_2, phase >> 1, smooth_xfade);
      sample += stmlib::Mix(rough, smooth, balance);
      phase += phase_increment;
      rough_xfade += rough_xfade_increment;
      
      rough = stmlib::Crossfade(wave_0, wave_1, phase >> 1, rough_xfade);
      smooth = stmlib::Crossfade(wave_1, wave_2, phase >> 1, smooth_xfade);
      sample += stmlib::Mix(rough, smooth, balance);
      phase += phase_increment;
      rough_xfade += rough_xfade_increment;

      *buffer++ = sample << 10;
    }
  } else if (parameter_[1] < 24576) {
    while (size--) {
		if (sync) {		
      if (*sync++) {
        phase = 0;
      }
		}
      int32_t sample = 0;
      
      smooth = stmlib::Crossfade(wave_1, wave_2, phase >> 1, smooth_xfade);
      rough = stmlib::Crossfade(wave_1, wave_2, (phase >> 1) & 0xfe000000, smooth_xfade);
      sample += stmlib::Mix(smooth, rough, balance);
      phase += phase_increment;

      smooth = stmlib::Crossfade(wave_1, wave_2, phase >> 1, smooth_xfade);
      rough = stmlib::Crossfade(wave_1, wave_2, (phase >> 1) & 0xfe000000, smooth_xfade);
      sample += stmlib::Mix(smooth, rough, balance);
      phase += phase_increment;

      *buffer++ = sample << 10;
    }
  } else {
    while (size--) {
		if (sync) {
			if (*sync++) {
        phase = 0;
      }
		}
      int32_t sample = 0;
      smooth = stmlib::Crossfade(wave_1, wave_2, (phase >> 1) & 0xfe000000, smooth_xfade);
      rough = stmlib::Crossfade(wave_1, wave_2, (phase >> 1) & 0xf8000000, smooth_xfade);
      sample += stmlib::Mix(smooth, rough, balance);
      phase += phase_increment;

      smooth = stmlib::Crossfade(wave_1, wave_2, (phase >> 1) & 0xfe000000, smooth_xfade);
      rough = stmlib::Crossfade(wave_1, wave_2, (phase >> 1) & 0xf8000000, smooth_xfade);
      sample += stmlib::Mix(smooth, rough, balance);
      phase += phase_increment;

      *buffer++ = sample << 10;
    }
  }
  phase_ = phase;
  previous_parameter_[0] = smoothed_parameter_ >> 1;
}
};

#if 0


#define SEMI * 128

static const uint16_t chords[17][3] = {
  { 2, 4, 6 },
  { 16, 32, 48 },
  { 2 SEMI, 7 SEMI, 12 SEMI },
  { 3 SEMI, 7 SEMI, 10 SEMI },
  { 3 SEMI, 7 SEMI, 12 SEMI },
  { 3 SEMI, 7 SEMI, 14 SEMI },
  { 3 SEMI, 7 SEMI, 17 SEMI },
  { 7 SEMI, 12 SEMI, 19 SEMI },
  { 7 SEMI, 3 + 12 SEMI, 5 + 19 SEMI },
  { 4 SEMI, 7 SEMI, 17 SEMI },
  { 4 SEMI, 7 SEMI, 14 SEMI },
  { 4 SEMI, 7 SEMI, 12 SEMI },
  { 4 SEMI, 7 SEMI, 11 SEMI },
  { 5 SEMI, 7 SEMI, 12 SEMI },
  { 4, 7 SEMI, 12 SEMI },
  { 4, 4 + 12 SEMI, 12 SEMI },
  { 4, 4 + 12 SEMI, 12 SEMI },
};



class WaveParaphonic :  public DigitalOscillator {
  private:
    uint32_t phase_[6];
  public:
void Render(
    const uint8_t* sync,
    int16_t* buffer,
    size_t size,
	bool strike) {
  if (strike) {
    for (size_t i = 0; i < 4; ++i) {
      state_.phase[i] = stmlib::Random::GetWord();
    }
  }
  
  // Do not use an array here to allow these to be kept in arbitrary registers.
  uint32_t phase_0, phase_1, phase_2, phase_3;
  uint32_t phase_increment[3];
  uint32_t phase_increment_0;

  phase_increment_0 = phase_increment_;
  phase_0 = phase_[0];
  phase_1 = phase_[1];
  phase_2 = phase_[2];
  phase_3 = phase_[3];
  
  uint16_t chord_integral = parameter_[1] >> 11;
  uint16_t chord_fractional = parameter_[1] << 5;
  if (chord_fractional < 30720) {
    chord_fractional = 0;
  } else if (chord_fractional >= 34816) {
    chord_fractional = 65535;
  } else {
    chord_fractional = (chord_fractional - 30720) * 16;
  }
  
  for (size_t i = 0; i < 3; ++i) {
    uint16_t detune_1 = chords[chord_integral][i];
    uint16_t detune_2 = chords[chord_integral + 1][i];
    uint16_t detune = detune_1 + ((detune_2 - detune_1) * chord_fractional >> 16);
    phase_increment[i] = ComputePhaseIncrement(pitch_ + detune);
  }

  const uint8_t* wave_1 = wt_waves + mini_wave_line[parameter_[0] >> 10] * 129;
  const uint8_t* wave_2 = wt_waves + mini_wave_line[(parameter_[0] >> 10) + 1] * 129;
  uint16_t wave_xfade = parameter_[0] << 6;
  
  while (size) {
    int32_t sample = 0;
    
    phase_0 += phase_increment_0;
    phase_1 += phase_increment[0];
    phase_2 += phase_increment[1];
    phase_3 += phase_increment[2];

    sample += Crossfade(wave_1, wave_2, phase_0 >> 1, wave_xfade);
    sample += Crossfade(wave_1, wave_2, phase_1 >> 1, wave_xfade);
    sample += Crossfade(wave_1, wave_2, phase_2 >> 1, wave_xfade);
    sample += Crossfade(wave_1, wave_2, phase_3 >> 1, wave_xfade);
    *buffer++ = sample >> 2;
    
    phase_0 += phase_increment_0;
    phase_1 += phase_increment[0];
    phase_2 += phase_increment[1];
    phase_3 += phase_increment[2];
    
    sample = 0;
    sample += Crossfade(wave_1, wave_2, phase_0 >> 1, wave_xfade);
    sample += Crossfade(wave_1, wave_2, phase_1 >> 1, wave_xfade);
    sample += Crossfade(wave_1, wave_2, phase_2 >> 1, wave_xfade);
    sample += Crossfade(wave_1, wave_2, phase_3 >> 1, wave_xfade);
    *buffer++ = sample >> 2;
    size -= 2;
  }
  
  phase_[0] = phase_0;
  phase_[1] = phase_1;
  phase_[2] = phase_2;
  phase_[3] = phase_3;

}
};

#endif


class FilteredNoise :  public DigitalOscillator {
  private:
  int32_t bp_;
  int32_t lp_;  
  public:
void Render(
    int32_t* buffer,
    size_t size) {
  int32_t f = stmlib::Interpolate824(braids::lut_svf_cutoff, pitch_ << 17);
  int32_t damp = stmlib::Interpolate824(braids::lut_svf_damp, parameter_[0] << 17);
  int32_t scale = stmlib::Interpolate824(braids::lut_svf_scale, parameter_[0] << 17);
  int32_t bp = bp_;
  int32_t lp = lp_;
  int32_t bp_gain, lp_gain, hp_gain;
  
  // Morph between LP, BP, HP.
  if (parameter_[1] < 16384) {
    bp_gain = parameter_[1];
    lp_gain = 16384 - bp_gain;
    hp_gain = 0;
  } else {
    bp_gain = 32767 - parameter_[1];
    hp_gain = parameter_[1] - 16384;
    lp_gain = 0;
  }
  
  int32_t gain_correction = f > scale ? scale * 32767 / f : 32767;
  while (size--) {
    int32_t notch, hp, in;
    
    in = stmlib::Random::GetSample() >> 1;
    notch = in - (bp * damp >> 15);
    lp += f * bp >> 15;
    CLIP(lp)
    hp = notch - lp;
    bp += f * hp >> 15;
    
    int32_t result = 0;
    result += (lp_gain * lp) >> 14;
    result += (bp_gain * bp) >> 14;
    result += (hp_gain * hp) >> 14;
    CLIP(result)
    result = result * gain_correction >> 15;
    *buffer++ = stmlib::Interpolate88(braids::ws_moderate_overdrive, result + 32768)<<11;
  }
  lp_ = lp;
  bp_ = bp;
}
};

struct ParticleNoiseState {
  uint16_t amplitude;
  int32_t filter_state[3][2];
  int32_t filter_scale[3];
  int32_t filter_coefficient[3];
};

class TwinPeaksNoise :  public DigitalOscillator {
	ParticleNoiseState pno_;
  public:
void Render(
    int32_t* buffer,
    size_t size) {
  int32_t sample;
  int32_t y10, y20;
  int32_t y11 = pno_.filter_state[0][0];
  int32_t y12 = pno_.filter_state[0][1];
  int32_t y21 = pno_.filter_state[1][0];
  int32_t y22 = pno_.filter_state[1][1];
  uint32_t q = 65240 + (parameter_[0] >> 7);
  int32_t q_squared = q * q >> 17;
  int16_t p1 = pitch_;

  CONSTRAIN(p1, 0, 16383)
  int32_t c1 = stmlib::Interpolate824(braids::lut_resonator_coefficient, p1 << 17);
  int32_t s1 = stmlib::Interpolate824(braids::lut_resonator_scale, p1 << 17);
  
  int16_t p2 = pitch_ + ((parameter_[1] - 16384) >> 1);
  CONSTRAIN(p2, 0, 16383)
  int32_t c2 = stmlib::Interpolate824(braids::lut_resonator_coefficient, p2 << 17);
  int32_t s2 = stmlib::Interpolate824(braids::lut_resonator_scale, p2 << 17);

  c1 = c1 * q >> 16;
  c2 = c2 * q >> 16;

  int32_t makeup_gain = 8191 - (parameter_[0] >> 2);
  
  while (size) {    
    sample = stmlib::Random::GetSample() >> 1;
    
    if (sample > 0) {
      y10 = sample * s1 >> 16;
      y20 = sample * s2 >> 16;
    } else {
      y10 = -((-sample) * s1 >> 16);
      y20 = -((-sample) * s2 >> 16);
    }
    
    y10 += y11 * c1 >> 15;
    y10 -= y12 * q_squared >> 15;
    CLIP(y10)
    y12 = y11;
    y11 = y10;
    
    y20 += y21 * c2 >> 15;
    y20 -= y22 * q_squared >> 15;
    CLIP(y20)
    y22 = y21;
    y21 = y20;
    
    y10 += y20;
    y10 += (y10 * makeup_gain >> 13);
    CLIP(y10)
    sample = y10;
    sample = stmlib::Interpolate88(braids::ws_moderate_overdrive, sample + 32768);
    
    *buffer++ = sample<<11;
    size --;
  }
  
  pno_.filter_state[0][0] = y11;
  pno_.filter_state[0][1] = y12;
  pno_.filter_state[1][0] = y21;
  pno_.filter_state[1][1] = y22;
}
};


class ClockedNoise :  public DigitalOscillator {
	
struct ClockedNoiseState {
  uint32_t cycle_phase;
  uint32_t cycle_phase_increment;
  uint32_t rng_state;
  int32_t seed;
  int16_t sample;
};

ClockedNoiseState clk_;

  public:
void Render(
    const int32_t* sync,
    int32_t* buffer,
    size_t size,
	bool strike) {
	phase_increment_ = ComputePhaseIncrement(pitch_);
		
  ClockedNoiseState* state = &clk_;
  
  if ((parameter_[1] > previous_parameter_[1] + 64) ||
      (parameter_[1] < previous_parameter_[1] - 64)) {
    previous_parameter_[1] = parameter_[1];
  }
  if ((parameter_[0] > previous_parameter_[0] + 16) ||
      (parameter_[0] < previous_parameter_[0] - 16)) {
    previous_parameter_[0] = parameter_[0];
  }
  
  
  if (strike) {
    state->seed = stmlib::Random::GetWord();
  }
  
  // Shift the range of the Coarse knob to reach higher clock rates, close
  // to the sample rate.
  uint32_t phase = phase_;
  uint32_t phase_increment = phase_increment_;
  for (size_t i = 0; i < 3; ++i) {
    if (phase_increment < (1UL << 31)) {
      phase_increment <<= 1;
    }
  }
  
  // Compute the period of the random generator.
  state->cycle_phase_increment = ComputePhaseIncrement(
      previous_parameter_[0] - 16384) << 1;
  
  // Compute the number of quantization steps
  uint32_t num_steps = 1 + (previous_parameter_[1] >> 10);
  if (num_steps == 1) {
    num_steps = 2;
  }
  uint32_t quantizer_divider = 65536 / num_steps;
  while (size--) {
    phase += phase_increment;
	if (sync) {
    if (*sync++) {
      phase = 0;
    }
    }
    
    // Clock.
    if (phase < phase_increment) {
      state->rng_state = state->rng_state * 1664525L + 1013904223L;
      state->cycle_phase += state->cycle_phase_increment;
      // Enforce period
      if (state->cycle_phase < state->cycle_phase_increment) {
        state->rng_state = state->seed;
        // Make the period an integer.
        state->cycle_phase = state->cycle_phase_increment;
      }
      uint16_t sample = state->rng_state;
      sample -= sample % quantizer_divider;
      sample += quantizer_divider >> 1;
      state->sample = sample;
      // Make the clock rate an exact divisor of the sample rate.
      phase = phase_increment;
    }
    *buffer++ = state->sample<<11;
  }
  phase_ = phase;
}
};

class GranularCloud :  public DigitalOscillator {
	struct Grain {
  uint32_t phase;
  uint32_t phase_increment;
  uint32_t envelope_phase;
  uint32_t envelope_phase_increment;
};

Grain grain_[4];

  public:
void Render(
    int32_t* buffer,
    size_t size) {
	phase_increment_ = ComputePhaseIncrement(pitch_);
  
  for (size_t i = 0; i < 4; ++i) {
    Grain* g = &grain_[i];
    // If a grain has reached the end of its envelope, reset it.
    if (g->envelope_phase > (1 << 24) ||
        g->envelope_phase_increment == 0) {
      g->envelope_phase_increment = 0;
      if ((stmlib::Random::GetWord() & 0xffff) < 0x4000) {
        g->envelope_phase_increment = \
            braids::lut_granular_envelope_rate[parameter_[0] >> 7] << 3;
        g->envelope_phase = 0;
        g->phase_increment = phase_increment_;
        int32_t pitch_mod = stmlib::Random::GetSample() * parameter_[1] >> 16;
        int32_t phi = phase_increment_ >> 8;
        if (pitch_mod < 0) {
          g->phase_increment += phi * (pitch_mod >> 8);
        } else {
          g->phase_increment += phi * (pitch_mod >> 7);
        }
      }
    }
  }
  
  // TODO(pichenettes): Check if it's possible to interpolate envelope
  // increment too!
  while (size--) {
    int32_t sample = 0;
    grain_[0].phase += grain_[0].phase_increment;
    grain_[0].envelope_phase += grain_[0].envelope_phase_increment;
    sample += stmlib::Interpolate824(braids::wav_sine, grain_[0].phase) * \
        braids::lut_granular_envelope[grain_[0].envelope_phase >> 16] >> 17;

    grain_[1].phase += grain_[1].phase_increment;
    grain_[1].envelope_phase += grain_[1].envelope_phase_increment;
    sample += stmlib::Interpolate824(braids::wav_sine, grain_[1].phase) * \
        braids::lut_granular_envelope[grain_[1].envelope_phase >> 16] >> 17;

    grain_[2].phase += grain_[2].phase_increment;
    grain_[2].envelope_phase += grain_[2].envelope_phase_increment;
    sample += stmlib::Interpolate824(braids::wav_sine, grain_[2].phase) * \
        braids::lut_granular_envelope[grain_[2].envelope_phase >> 16] >> 17;

    grain_[3].phase += grain_[3].phase_increment;
    grain_[3].envelope_phase += grain_[3].envelope_phase_increment;
    sample += stmlib::Interpolate824(braids::wav_sine, grain_[3].phase) * \
        braids::lut_granular_envelope[grain_[3].envelope_phase >> 16] >> 17;
    
    if (sample < -32768) {
      sample = -32768;
    }
    if (sample > 32767) {
      sample = 32767;
    }
    *buffer++ = sample<<11;
  } 
}
};

class ParticleNoise :  public DigitalOscillator {
	ParticleNoiseState pno_;	
  public:
void Render(
    int32_t* buffer,
    size_t size) {

static const uint16_t kParticleNoiseDecay = 64763;
static const int32_t kResonanceSquared = 32768 * 0.996 * 0.996;
static const int32_t kResonanceFactor = 32768 * 0.996;
		
		
  uint16_t amplitude = pno_.amplitude;
  uint32_t density = 1024 + parameter_[0];
  int32_t sample;
  
  int32_t y10, y20, y30;
  int32_t y11 = pno_.filter_state[0][0];
  int32_t y12 = pno_.filter_state[0][1];
  int32_t s1 = pno_.filter_scale[0];
  int32_t c1 = pno_.filter_coefficient[0];
  int32_t y21 = pno_.filter_state[1][0];
  int32_t y22 = pno_.filter_state[1][1];
  int32_t s2 = pno_.filter_scale[1];
  int32_t c2 = pno_.filter_coefficient[1];
  int32_t y31 = pno_.filter_state[2][0];
  int32_t y32 = pno_.filter_state[2][1];
  int32_t s3 = pno_.filter_scale[2];
  int32_t c3 = pno_.filter_coefficient[2];

  while (size) {
    uint32_t noise = stmlib::Random::GetWord();
    if ((noise & 0x7fffff) < density) {
      amplitude = 65535;
      int16_t noise_a = (noise & 0x0fff) - 0x800;
      int16_t noise_b = ((noise >> 15) & 0x1fff) - 0x1000;
      int16_t p1 = pitch_ + (3 * noise_a * parameter_[1] >> 17) + 0x600;

      CONSTRAIN(p1, 0, 16383)
      c1 = stmlib::Interpolate824(braids::lut_resonator_coefficient, p1 << 17);
      s1 = stmlib::Interpolate824(braids::lut_resonator_scale, p1 << 17);

      int16_t p2 = pitch_ + (noise_a * parameter_[1] >> 15) + 0x980;
      CONSTRAIN(p2, 0, 16383)
      c2 = stmlib::Interpolate824(braids::lut_resonator_coefficient, p2 << 17);
      s2 = stmlib::Interpolate824(braids::lut_resonator_scale, p2 << 17);

      int16_t p3 = pitch_ + (noise_b * parameter_[1] >> 16) + 0x790;
      CONSTRAIN(p3, 0, 16383)
      c3 = stmlib::Interpolate824(braids::lut_resonator_coefficient, p3 << 17);
      s3 = stmlib::Interpolate824(braids::lut_resonator_scale, p3 << 17);
      
      c1 = c1 * kResonanceFactor >> 15;
      c2 = c2 * kResonanceFactor >> 15;
      c3 = c3 * kResonanceFactor >> 15;
    }
    sample = (static_cast<int16_t>(noise) * amplitude) >> 16;
    amplitude = (amplitude * kParticleNoiseDecay) >> 16;
    
    if (sample > 0) {
      y10 = sample * s1 >> 16;
      y20 = sample * s2 >> 16;
      y30 = sample * s3 >> 16;
    } else {
      y10 = -((-sample) * s1 >> 16);
      y20 = -((-sample) * s2 >> 16);
      y30 = -((-sample) * s3 >> 16);
    }
    
    y10 += y11 * c1 >> 15;
    y10 -= y12 * kResonanceSquared >> 15;
    CLIP(y10);
    y12 = y11;
    y11 = y10;
    
    y20 += y21 * c2 >> 15;
    y20 -= y22 * kResonanceSquared >> 15;
    CLIP(y20);
    y22 = y21;
    y21 = y20;
    
    y30 += y31 * c3 >> 15;
    y30 -= y32 * kResonanceSquared >> 15;
    CLIP(y30);
    y32 = y31;
    y31 = y30;
    
    y10 += y20 + y30;
    CLIP(y10)
    *buffer++ = y10<<11;
    size --;
  }
  
  pno_.amplitude = amplitude;
  pno_.filter_state[0][0] = y11;
  pno_.filter_state[0][1] = y12;
  pno_.filter_scale[0] = s1;
  pno_.filter_coefficient[0] = c1;
  pno_.filter_state[1][0] = y21;
  pno_.filter_state[1][1] = y22;
  pno_.filter_scale[1] = s2;
  pno_.filter_coefficient[1] = c2;
  pno_.filter_state[2][0] = y31;
  pno_.filter_state[2][1] = y32;
  pno_.filter_scale[2] = s3;
  pno_.filter_coefficient[2] = c3;
}
};



class DigitalModulation :  public DigitalOscillator {

struct DigitalModulationState {
  uint32_t symbol_phase;
  uint16_t symbol_count;
  int32_t filter_state;
  uint8_t data_byte;
};
  DigitalModulationState dmd_;
		
  public:
void Render(
    int32_t* buffer,
    size_t size,
	bool strike) {
	phase_increment_ = ComputePhaseIncrement(pitch_);

static const int32_t kConstellationQ[] = { 23100, -23100, -23100, 23100 };
static const int32_t kConstellationI[] = { 23100, 23100, -23100, -23100 };

	uint32_t phase = phase_;
  uint32_t increment = phase_increment_;
  
  uint32_t symbol_stream_phase = dmd_.symbol_phase;
  uint32_t symbol_stream_phase_increment = ComputePhaseIncrement(
      pitch_ - 1536 + ((parameter_[0] - 32767) >> 3));
  uint8_t data_byte = dmd_.data_byte;
  
  if (strike) {
    dmd_.symbol_count = 0;
  }
  
  while (size--) {
    phase += increment;
    symbol_stream_phase += symbol_stream_phase_increment;
    if (symbol_stream_phase < symbol_stream_phase_increment) {
      ++dmd_.symbol_count;
      if (!(dmd_.symbol_count & 3)) {
        if (dmd_.symbol_count >= (64 + 4 * 256)) {
          dmd_.symbol_count = 0;
        }
        if (dmd_.symbol_count < 32) {
          data_byte = 0x00;
        } else if (dmd_.symbol_count < 48) {
          data_byte = 0x99;
        } else if (dmd_.symbol_count < 64) {
          data_byte = 0xcc;
        } else {
          dmd_.filter_state = (dmd_.filter_state * 3 + \
              static_cast<int32_t>(parameter_[1])) >> 2;
          data_byte = dmd_.filter_state >> 7;
        }
      } else {
        data_byte >>= 2;
      }
    }
    int16_t i = stmlib::Interpolate824(braids::wav_sine, phase);
    int16_t q = stmlib::Interpolate824(braids::wav_sine, phase + (1 << 30));
    *buffer++ = ((kConstellationQ[data_byte & 3] * q >> 15) + \
        (kConstellationI[data_byte & 3] * i >> 15))<<11;
  }
  phase_ = phase;
  dmd_.symbol_phase = symbol_stream_phase;
  dmd_.data_byte = data_byte;
}
};


class QuestionMark :  public DigitalOscillator {
struct ClockedNoiseState {
  uint32_t cycle_phase;
  uint32_t cycle_phase_increment;
  uint32_t rng_state;
  int32_t seed;
  int16_t sample;
};

ClockedNoiseState clk_;
	
  public:
void Render(
    int32_t* buffer,
    size_t size,
	bool strike) {
	phase_increment_ = ComputePhaseIncrement(pitch_);
  ClockedNoiseState* state = &clk_;
  
  if (strike) {
    state->rng_state = 0;
    state->cycle_phase = 0;
    state->sample = 10;
    state->cycle_phase_increment = -1;
    state->seed = 32767;
  }
  
  uint32_t phase = phase_;
  uint32_t increment = phase_increment_;
  uint32_t dit_duration = 3600 + ((32767 - parameter_[0]) >> 2);
  int32_t noise_threshold = 1024 + (parameter_[1] >> 3);
  while (size--) {
    phase += increment;
    int32_t sample;
    if (state->rng_state) {
      sample = (stmlib::Interpolate824(braids::wav_sine, phase) * 3) >> 2;
    } else {
      sample = 0;
    }
    if (++state->cycle_phase > dit_duration) {
      --state->sample;
      if (state->sample == 0) {
        ++state->cycle_phase_increment;
        state->rng_state = !state->rng_state;

        size_t address = state->cycle_phase_increment >> 2;
        size_t shift = (state->cycle_phase_increment & 0x3) << 1;
        state->sample = (2 << ((braids::wt_code[address] >> shift) & 3)) - 1;
        if (state->sample == 15) {
          state->sample = 100;
          state->rng_state = 0;
          state->cycle_phase_increment = - 1;
        }
        phase = 1L << 30;
      }
      state->cycle_phase = 0;
    }
    state->seed += stmlib::Random::GetSample() >> 2;
    int32_t noise_intensity = state->seed >> 8;
    if (noise_intensity < 0) {
      noise_intensity = -noise_intensity;
    }
    if (noise_intensity < noise_threshold) {
      noise_intensity = noise_threshold;
    }
    if (noise_intensity > 16000) {
      noise_intensity = 16000;
    }
    int32_t noise = (stmlib::Random::GetSample() * noise_intensity >> 15);
    noise = noise * braids::wav_sine[(phase >> 22) & 0xff] >> 15;
    sample += noise;
    CLIP(sample);
    int32_t distorted = sample * sample >> 14;
    sample += distorted * parameter_[1] >> 4;
    CLIP(sample);
    *buffer++ = sample<<11;
  }
  phase_ = phase;
}
};


class Excitation {
 public:
  Excitation() { }
  ~Excitation() { }

  void Init() {
    delay_ = 0;
    decay_ = 4093;
    counter_ = 0;
    state_ = 0;
  }

  void set_delay(uint16_t delay) {
    delay_ = delay;
  }
  
  void set_decay(uint16_t decay) {
    decay_ = decay;
  }
  
  void Trigger(int32_t level) {
    level_ = level;
    counter_ = delay_ + 1;
  }
  
  bool done() {
    return counter_ == 0;
  }
  
  inline int32_t Process() {
    state_ = (state_ * decay_ >> 12);
    if (counter_ > 0) {
      --counter_;
      if (counter_ == 0) {
        state_ += level_ < 0 ? -level_ : level_;
      }
    }
    return level_ < 0 ? -state_ : state_;
  }
  
 private:
  uint32_t delay_;
  uint32_t decay_;
  int32_t counter_;
  int32_t state_;
  int32_t level_;

  DISALLOW_COPY_AND_ASSIGN(Excitation);
};


enum SvfMode {
  SVF_MODE_LP,
  SVF_MODE_BP,
  SVF_MODE_HP
};

class Svf {
 public:
  Svf() { }
  ~Svf() { }
  
  void Init() {
    lp_ = 0;
    bp_ = 0;
    frequency_ = 33 << 7;
    resonance_ = 16384;
    dirty_ = true;
    punch_ = 0;
    mode_ = SVF_MODE_BP;
  }
  
  void set_frequency(int16_t frequency) {
    dirty_ = dirty_ || (frequency_ != frequency);
    frequency_ = frequency;
  }
  
  void set_resonance(int16_t resonance) {
    resonance_ = resonance;
    dirty_ = true;
  }
  
  void set_punch(uint16_t punch) {
    punch_ = (static_cast<uint32_t>(punch) * punch) >> 24;
  }
  
  void set_mode(SvfMode mode) {
    mode_ = mode;
  }

  inline int32_t Process(int32_t in) {
    if (dirty_) {
      f_ = stmlib::Interpolate824(braids::lut_svf_cutoff, frequency_ << 17);
      damp_ = stmlib::Interpolate824(braids::lut_svf_damp, resonance_ << 17);
      dirty_ = false;
    }
    int32_t f = f_;
    int32_t damp = damp_;
    if (punch_) {
      int32_t punch_signal = lp_ > 4096 ? lp_ : 2048;
      f += ((punch_signal >> 4) * punch_) >> 9;
      damp += ((punch_signal - 2048) >> 3);
    }
    int32_t notch = in - (bp_ * damp >> 15);
    lp_ += f * bp_ >> 15;
    CLIP(lp_)
    int32_t hp = notch - lp_;
    bp_ += f * hp >> 15;
    CLIP(bp_)
    return mode_ == SVF_MODE_BP ? bp_ : (mode_ == SVF_MODE_HP ? hp : lp_);
  }
  
  bool dirty_;
  
  int16_t frequency_;
  int16_t resonance_;
  
  int32_t punch_;
  int32_t f_;
  int32_t damp_;

  int32_t lp_;
  int32_t bp_;
  
  SvfMode mode_;

  DISALLOW_COPY_AND_ASSIGN(Svf);
};

class Kick :  public DigitalOscillator {
  
	Excitation pulse_[3];
	Svf svf_[1];	
  public:
  
void Init(){
    pulse_[0].Init();
    pulse_[0].set_delay(0);
    pulse_[0].set_decay(3340);

    pulse_[1].Init();
    pulse_[1].set_delay(1.0e-3 * 48000);
    pulse_[1].set_decay(3072);

    pulse_[2].Init();
    pulse_[2].set_delay(4.0e-3 * 48000);
    pulse_[2].set_decay(4093);

    svf_[0].Init();
    svf_[0].set_punch(32768);
    svf_[0].set_mode(SVF_MODE_BP);
}	
  
void Render(
    int32_t* buffer,
    size_t size,
	bool strike) {
  
  if (strike) {
    pulse_[0].Trigger(12 * 32768 * 0.7);
    pulse_[1].Trigger(-19662 * 0.7);
    pulse_[2].Trigger(18000);
    svf_[0].set_punch(24000);
  }
  
  uint32_t decay = parameter_[0];
  uint32_t scaled = 65535 - (decay << 1);
  uint32_t squared = scaled * scaled >> 16;
  scaled = squared * scaled >> 18;
  svf_[0].set_resonance(32768 - 128 - scaled);
  
  uint32_t coefficient = parameter_[1];
  coefficient = coefficient * coefficient >> 15;
  coefficient = coefficient * coefficient >> 15;
  int32_t lp_coefficient = 128 + (coefficient >> 1) * 3;
  int32_t lp_state = svf_[0].lp_;
  
  while (size) {
    int32_t excitation = 0;
    excitation += pulse_[0].Process();
    excitation += !pulse_[1].done() ? 16384 : 0;
    excitation += pulse_[1].Process();
    pulse_[2].Process();
    svf_[0].set_frequency(pitch_ + (pulse_[2].done() ? 0 : 17 << 7));
    
	int32_t out = 0;
    for (int32_t j = 0; j < 2; ++j) {
      int32_t resonator_output, output;
      resonator_output = (excitation >> 4) + svf_[0].Process(excitation);
      lp_state += (resonator_output - lp_state) * lp_coefficient >> 15;
      CLIP(lp_state);
      output = lp_state;
      *buffer++ = output<<11;
    }
    size -= 2;
  }
  
  svf_[0].lp_ = lp_state;
}
};


class Snare :  public DigitalOscillator {
		Excitation pulse_[4];
	Svf svf_[3];	
	public:
  
void Init(){
    pulse_[0].Init();
    pulse_[0].set_delay(0);
    pulse_[0].set_decay(1536);

    pulse_[1].Init();
    pulse_[1].set_delay(1e-3 * 48000);
    pulse_[1].set_decay(3072);

    pulse_[2].Init();
    pulse_[2].set_delay(1e-3 * 48000);
    pulse_[2].set_decay(1200);
  
    pulse_[3].Init();
    pulse_[3].set_delay(0);
  
    svf_[0].Init();

    svf_[1].Init();

    svf_[2].Init();
    svf_[2].set_resonance(2000);
    svf_[2].set_mode(SVF_MODE_BP);
}
  
void Render(
    int32_t* buffer,
    size_t size,
	bool strike) {
  
  if (strike) {
    int32_t decay = 49152 - pitch_;
    decay += parameter_[1] < 16384 ? 0 : parameter_[1] - 16384;
    if (decay > 65535) {
      decay = 65535;
    }
    svf_[0].set_resonance(29000 + (decay >> 5));
    svf_[1].set_resonance(26500 + (decay >> 5));
    pulse_[3].set_decay(4092 + (decay >> 14));
    
    pulse_[0].Trigger(15 * 32768);
    pulse_[1].Trigger(-1 * 32768);
    pulse_[2].Trigger(13107);
    int32_t snappy = parameter_[1];
    if (snappy >= 14336) {
      snappy = 14336;
    }
    pulse_[3].Trigger(512 + (snappy << 1));
  }
  
  svf_[0].set_frequency(pitch_ + (12 << 7));
  svf_[1].set_frequency(pitch_ + (24 << 7));
  svf_[2].set_frequency(pitch_ + (60 << 7));
  
  int32_t g_1 = 22000 - (parameter_[0] >> 1);
  int32_t g_2 = 22000 + (parameter_[0] >> 1);

  while (size) {
    int32_t excitation_1 = 0;
    excitation_1 += pulse_[0].Process();
    excitation_1 += pulse_[1].Process();
    excitation_1 += !pulse_[1].done() ? 2621 : 0;
    
    int32_t excitation_2 = 0;
    excitation_2 += pulse_[2].Process();
    excitation_2 += !pulse_[2].done() ? 13107 : 0;
    
    int32_t noise_sample = stmlib::Random::GetSample() * pulse_[3].Process() >> 15;
    
    int32_t sd = 0;
    sd += (svf_[0].Process(excitation_1) + (excitation_1 >> 4)) * g_1 >> 15;
    sd += (svf_[1].Process(excitation_2) + (excitation_2 >> 4)) * g_2 >> 15;
    sd += svf_[2].Process(noise_sample);
    CLIP(sd);
    
    *buffer++ = sd<<11;
    size --;
  }
}
};


class Cymbal :  public DigitalOscillator {
	  uint32_t hphase_[6];
  uint32_t rng_state_;
  	Svf svf_[2];	
  public:
void Init(){
    svf_[0].Init();
    svf_[0].set_mode(SVF_MODE_BP);
    svf_[0].set_resonance(12000);
    svf_[1].Init();
    svf_[1].set_mode(SVF_MODE_HP);
    svf_[1].set_resonance(2000);
	
}	
  
void Render(
    int32_t* buffer,
    size_t size) {
  

  uint32_t increments[7];
  int32_t note = (40 << 7) + (pitch_ >> 1);
  increments[0] = ComputePhaseIncrement(note);
  
  uint32_t root = increments[0] >> 10;
  increments[1] = root * 24273 >> 4;
  increments[2] = root * 12561 >> 4;
  increments[3] = root * 18417 >> 4;
  increments[4] = root * 22452 >> 4;
  increments[5] = root * 31858 >> 4;
  increments[6] = increments[0] * 24;

  int32_t xfade = parameter_[1];
  svf_[0].set_frequency(parameter_[0] >> 1);
  svf_[1].set_frequency(parameter_[0] >> 1);
  
  while (size--) {
    phase_ += increments[6];
    if (phase_ < increments[6]) {
      rng_state_ = rng_state_ * 1664525L + 1013904223L;
    }
    hphase_[0] += increments[0];
    hphase_[1] += increments[1];
    hphase_[2] += increments[2];
    hphase_[3] += increments[3];
    hphase_[4] += increments[4];
    hphase_[5] += increments[5];
    
    int32_t hat_noise = 0;
    hat_noise += hphase_[0] >> 31;
    hat_noise += hphase_[1] >> 31;
    hat_noise += hphase_[2] >> 31;
    hat_noise += hphase_[3] >> 31;
    hat_noise += hphase_[4] >> 31;
    hat_noise += hphase_[5] >> 31;
    hat_noise -= 3;
    hat_noise *= 5461;
    hat_noise = svf_[0].Process(hat_noise);
    CLIP(hat_noise)
    
    int32_t noise = (rng_state_ >> 16) - 32768;
    noise = svf_[1].Process(noise >> 1);
    CLIP(noise)
    
    *buffer++ = (hat_noise + ((noise - hat_noise) * xfade >> 15))<<11;
  }
}
};

}

#endif