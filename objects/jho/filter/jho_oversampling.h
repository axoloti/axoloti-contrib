#ifndef JHO_OVERSAMPLING_h
#define JHO_OVERSAMPLING_h

// Author: Jan Hofmann
// jho_downsample_coefs_q30 contains the table for the Hamming-windowed SINC-FIR
// Fc is exectly half of the Nyquist-frequency
// The FIR is symmetrical: Only one side of the impule response is tabulated.
// The center value of the FIR is 0.5 and not tabulated.
// Except at the center, every 2nd entry of the FIR is exactly zero - and not tabulated.

static const int32_t jho_downsample_coefs_q30[16] = {
    340975993, -111524137, 64405482, -43407798,
    31199771, -23072854, 17228478, -12835046, 
    9456185, -6839963, 4828519, -3314923, 
    2220887, -1484595, 1053825, -882020
};

class jho_Downsample
{
    enum { 
        CoefSize = 16,
        CircBufSize = 64,
        CircBufMask = CircBufSize - 1
    };

public:
    jho_Downsample() :
        next_(0)
    {
    }

    void initialize()
    {
        next_ = 0;
        for (int n; n < CircBufSize; ++n) {
            circBuf_[n] = 0;
        }
    }

    __attribute__ ((noinline)) void dsp(const int32_t *in_1st, const int32_t *in_2nd, int32_t *out)
    {
        if (BUFSIZE != 16)
            return;
        next_ &= CircBufMask;
        uint32_t n = next_;

        const int32_t *in = in_1st;
        for (int i = 0; i < BUFSIZE; ++i) {
            circBuf_[n] = *(in++);
            n = CircBufMask & (--n);
        }
        for (int i = 0; i < BUFSIZE / 2; ++i, ++out, next_ -= 2) {
            *out = dsp_next();
        }
        
        in = in_2nd;
        for (int i = 0; i < BUFSIZE; ++i) {
            circBuf_[n] = *(in++);
            n = CircBufMask & (--n);
        }
        for (int i = 0; i < BUFSIZE / 2; ++i, ++out, next_ -= 2) {
            *out = dsp_next();
        }
    }

    __attribute__ ((noinline)) void dsp_lp_12kHz(const int32_t *in_single, int32_t *out)
    {
        if (BUFSIZE != 16)
            return;
        next_ &= CircBufMask;
        uint32_t n = next_;

        const int32_t *in = in_single;
        for (int i = 0; i < BUFSIZE; ++i) {
            circBuf_[n] = *(in++);
            n = CircBufMask & (--n);
        }
        for (int i = 0; i < BUFSIZE; ++i, ++out, --next_) {
            *out = dsp_next();
        }
    }

private:
    int32_t dsp_next()
    {
        int32_t n = next_;
        int32_t accu = 0;
        const int32_t *coef = jho_downsample_coefs_q30 + CoefSize;
        for (int i = 0; i < CoefSize / 4; ++i) {
            accu = ___SMMLA(*(--coef), circBuf_[n & CircBufMask], accu); n += 2;
            accu = ___SMMLA(*(--coef), circBuf_[n & CircBufMask], accu); n += 2;
            accu = ___SMMLA(*(--coef), circBuf_[n & CircBufMask], accu); n += 2;
            accu = ___SMMLA(*(--coef), circBuf_[n & CircBufMask], accu); n += 2;
        }

        accu += circBuf_[(n-1) & CircBufMask] >> 3; // Center of FIR: multiply with 0.5 and add in q30

        for (int i = 0; i < CoefSize / 4; ++i) {
            accu = ___SMMLA(*(coef++), circBuf_[n & CircBufMask], accu); n += 2;
            accu = ___SMMLA(*(coef++), circBuf_[n & CircBufMask], accu); n += 2;
            accu = ___SMMLA(*(coef++), circBuf_[n & CircBufMask], accu); n += 2;
            accu = ___SMMLA(*(coef++), circBuf_[n & CircBufMask], accu); n += 2;
        }
        return __SSAT(accu, 30) << 2;
    }

    int32_t circBuf_[CircBufSize];
    uint32_t next_;
};


#define JHO_UPSAMPLE_STEP   \
    tmp = last_;            \
    last_ = (*in) >> 1;     \
    *(out++) = tmp + last_; \
    *(out++) = *(in++);     \


class jho_Upsample
{
public:
    jho_Upsample() :
        last_(0)
    {
    }

    void initialize()
    {
        last_ = 0;
    }

    __attribute__ ((noinline)) void dsp(const int32_t *in, int32_t *out_1st, int32_t *out_2nd)
    {
        if (BUFSIZE != 16)
            return;

        int32_t tmp;
        int32_t *out = out_1st;
        for (int i = 0; i < 2; ++i) {
            JHO_UPSAMPLE_STEP
            JHO_UPSAMPLE_STEP
            JHO_UPSAMPLE_STEP
            JHO_UPSAMPLE_STEP
        }
        out = out_2nd;
        for (int i = 0; i < 2; ++i) {
            JHO_UPSAMPLE_STEP
            JHO_UPSAMPLE_STEP
            JHO_UPSAMPLE_STEP
            JHO_UPSAMPLE_STEP
        }
    }

private:
    int32_t last_;
};

#undef JHO_UPSAMPLE_STEP

#endif
