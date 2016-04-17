#ifndef JHO_FILTER_h
#define JHO_FILTER_h

#include "axoloti_filters.h"

#define JHO_ONE(qn) (1 << (32-(qn)))

__attribute__ ( ( always_inline ) ) __STATIC_INLINE int32_t jho_invert(int32_t x)
{
  float r = (INT32_MAX >> 2) / (float(x));
  return (int32_t)(INT32_MAX * r);	
}

__attribute__ ( ( always_inline ) ) __STATIC_INLINE int32_t jho_invert_i(int32_t one, int32_t x)
{
  float r = float(one) / float(x);
  return (int32_t)(one * r);	
}

/* Notch filter - see http://www.musicdsp.org/files/Audio-EQ-Cookbook.txt

notch:      H(s) = (s^2 + 1) / (s^2 + s/Q + 1)

            a0 =   1 + alpha
            a1 =  -2*cos(w0)
            a2 =   1 - alpha
            b0 =   1
            b1 =  -2*cos(w0)
            b2 =   1
*/
__attribute__ ((noinline)) void jho_biquad_notch_coefs(biquad_coefficients *coefs,
                                                uint32_t filter_W0,
                                                uint32_t q_inv) {
//  (constant 0 dB peak gain)
  filter_W0 = filter_W0 >> 1;
  if (filter_W0 > (INT32_MAX / 4))
    filter_W0 = INT32_MAX / 4;
//    filter_W0 = filter_W0<<2;

  int32_t sinW0 = arm_sin_q31(filter_W0); //q31
  int32_t cosW0 = arm_cos_q31(filter_W0); //q31
//    int32_t sinW0 = fsini(filter_W0);
//    int32_t cosW0 = fsini(filter_W0+(INT32_MAX>>2));
  int32_t alpha = ___SMMUL(sinW0, q_inv); //q30
//    int32_t alpha = sinW0>>8;
  int32_t a0_inv_q31 = jho_invert(HALFQ31 + alpha); //q30

  coefs->cyn_1 = ___SMMUL((-cosW0), a0_inv_q31); //q28 *2
  coefs->cyn_2 = ___SMMUL((HALFQ31 - alpha), a0_inv_q31); //q28
  coefs->cxn_0 = ___SMMUL(HALFQ31, a0_inv_q31); //q28
  coefs->cxn_1 = coefs->cyn_1;
  coefs->cxn_2 = coefs->cxn_0;
}

/* Parametric eq (peaking eq) - see http://www.musicdsp.org/files/Audio-EQ-Cookbook.txt

peakingEQ:  
	H(s) = (s^2 + s*(A/Q) + 1) / (s^2 + s/(A*Q) + 1)

    a0 =   1 + alpha/A
    a1 =  -2*cos(w0)
    a2 =   1 - alpha/A
    b0 =   1 + alpha*A
    b1 =  -2*cos(w0)
    b2 =   1 - alpha*A

Similar bandpass for comparison:
	H(s) = (s/Q) / (s^2 + s/Q + 1)      (constant 0 dB peak gain)

    a0 =   1 + alpha
    a1 =  -2*cos(w0)
    a2 =   1 - alpha
    b0 =   alpha
    b1 =   0
    b2 =  -alpha
*/

struct jho_Para
{
	int32_t pitch_;
	int32_t reso_;
	int32_t gain_;
};

__attribute__ ( ( always_inline ) ) __STATIC_INLINE 
	void jho_Para_init(jho_Para *me)
{
	me->pitch_ = INT32_MAX >> 4;
	me->reso_  = INT32_MAX >> 6;
	me->gain_  = 0;
}

__attribute__ ( ( always_inline ) ) __STATIC_INLINE 
	bool jho_Para_update(jho_Para *me, int32_t pitch, int32_t reso, int32_t gain)
{
	if (me->pitch_ == pitch && me->reso_ == reso && me->gain_ == gain) {
		return false;
	}
	me->pitch_ = pitch;
	me->reso_ = reso; 
	me->gain_ = gain;
	return true;
}

__attribute__ ((noinline)) 
	void jho_Para_biquad_coefs(jho_Para *me, biquad_coefficients *coefs) 
{
	uint32_t filter_W0;
	MTOF(me->pitch_,filter_W0);
	uint32_t q_inv = INT_MAX - (__USAT(me->reso_,27)<<4);
	int32_t gain = me->gain_ << 4;

  filter_W0 = filter_W0 >> 1;
  if (filter_W0 > (INT32_MAX / 4))
   filter_W0 = INT32_MAX / 4;

  int32_t sinW0 = arm_sin_q31(filter_W0); //i1
  int32_t cosW0 = arm_cos_q31(filter_W0); //i1
  int32_t alpha = ___SMMUL(sinW0, q_inv); //i2

  gain >>= 1; // range -0.5 .. 0.5
  float exp       = float(gain) / float(INT32_MAX);
  float a_f       = powf(10.0f, exp);            // range 0.32 .. 3.16
  int32_t a_3     = (int32_t)(JHO_ONE(3) * a_f);
  int32_t a_inv_3 = (int32_t)(JHO_ONE(3) / a_f);

  int32_t alphaM = ___SMMUL(alpha, a_3) << 2; //i3
  int32_t alphaD = ___SMMUL(alpha, a_inv_3) << 2; //i3

  int32_t a0_inv_3 = jho_invert_i(JHO_ONE(3), JHO_ONE(3) + alphaD); //i3

  coefs->cyn_1 = ___SMMUL((-cosW0), a0_inv_3) << 1; //i4 *2
  coefs->cyn_2 = ___SMMUL((JHO_ONE(3) - alphaD), a0_inv_3) << 2; //i4
  coefs->cxn_0 = ___SMMUL(JHO_ONE(3) + alphaM, a0_inv_3) << 2; //i4
  coefs->cxn_1  = coefs->cyn_1;
  coefs->cxn_2 = ___SMMUL(JHO_ONE(3) - alphaM, a0_inv_3) << 2; //i4
}

static __attribute__ ((noinline)) void jho_biquad_dsp(biquad_state *state,
                                                  biquad_coefficients *coefs,
                                                  const int32buffer inbuffer,
                                                  int32buffer outbuffer) {
  int32_t filter_x_n1 = state->filter_x_n1;
  int32_t filter_x_n2 = state->filter_x_n2;
  int32_t filter_y_n1 = state->filter_y_n1;
  int32_t filter_y_n2 = state->filter_y_n2;
  int i;
  for (i = 0; i < BUFSIZE; i++) {
    int32_t filterinput = inbuffer[i];
    int32_t accu = ___SMMUL(coefs->cxn_0, filterinput);
    accu = ___SMMLA(coefs->cxn_1, filter_x_n1, accu);
    accu = ___SMMLA(coefs->cxn_2, filter_x_n2, accu);
    accu = ___SMMLS(coefs->cyn_1, filter_y_n1, accu);
    accu = ___SMMLS(coefs->cyn_2, filter_y_n2, accu);
    int32_t filteroutput;
    
    filteroutput = __SSAT(accu, 28) << 4;
    //filteroutput = accu << 4; // original (see axoloti_filters.h)

    filter_x_n2 = filter_x_n1;
    filter_x_n1 = filterinput;
    filter_y_n2 = filter_y_n1;
    filter_y_n1 = filteroutput;

    outbuffer[i] = filteroutput;
    //outbuffer[i] = __SSAT(filteroutput, 28); // original
  }
  state->filter_x_n1 = filter_x_n1;
  state->filter_x_n2 = filter_x_n2;
  state->filter_y_n1 = filter_y_n1;
  state->filter_y_n2 = filter_y_n2;
}

#endif
