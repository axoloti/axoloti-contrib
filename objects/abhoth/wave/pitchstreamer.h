#ifndef PITCHSTREAMER_H
#define PITCHSTREAMER_H
#define SDREADFILEPINGPONGSIZE 256
typedef struct {
  union {
    int32_t i32buff[SDREADFILEPINGPONGSIZE];
    int16_t i16buff[SDREADFILEPINGPONGSIZE * 2];
    int8_t i8buff[SDREADFILEPINGPONGSIZE * 4];
  };
} fbuffer;

typedef struct {
    union {
        int16_t i16buff[SDREADFILEPINGPONGSIZE * 3];
        int8_t i8buff[SDREADFILEPINGPONGSIZE * 6];
    };
} readbuffer;

typedef enum {
  CLOSED,
  OPEN,
  OPENED,
  PLAYB_READA,
  PLAYB,
  PLAYA_READB,
  PLAYA,
  SEEKING,
  CLOSING,
  OPENREC,
  OPENEDREC,
  RECB_WRITEA,
  RECB,
  RECA_WRITEB,
  RECA,
  CLOSINGREC
} stream_state;

#define SZ_TBL 64

typedef struct {
  Thread *pThreadSD;
  DWORD clmt[SZ_TBL];
  volatile stream_state pingpong;
  volatile int doSeek;
  volatile uint32_t seekPos;
  char filename[32];
  int offset;
  float sampleFrac;
  float rate;
  fbuffer fbuff0;
  fbuffer fbuff1;
  readbuffer tempbuf;
  FIL f;
} sdReadFilePingpong;


#define __INL __attribute__ ((noinline))

__INL FRESULT readAndInterpolate(sdReadFilePingpong *s, UINT *bytes_added, int bufNo) {
  UINT bytesRead;
  int samplesToRead = SDREADFILEPINGPONGSIZE * 2 * s->rate + s->sampleFrac;
  FRESULT err = f_read(&s->f, s->tempbuf.i8buff, samplesToRead * 2, &bytesRead);
  if (!err) {
    float inIndex = s->sampleFrac;
    int outIndex = 0;
    int sample1;
    int sample2;
    int outSample;
    int i = 0;

    UINT samplesRead = bytesRead/2;
    while (outIndex < SDREADFILEPINGPONGSIZE * 2) {
      i = (int)inIndex;
      float frac = inIndex - i;
      sample1 = s->tempbuf.i16buff[i];
      sample2 = i + 1 < samplesRead ? s->tempbuf.i16buff[i + 1] : 0;
      outSample = sample1 + (sample2 - sample1) * frac;
      if (bufNo == 0)
          s->fbuff0.i16buff[outIndex] = outSample;
      else
          s->fbuff1.i16buff[outIndex] = outSample;
      inIndex += s->rate;
      outIndex++;
    }
    *bytes_added = outIndex*2;
    i = (int)inIndex;
    s->sampleFrac = inIndex - i;
  }
  return err;
}

static __INL msg_t ThreadSD(void *arg) {
  volatile FRESULT err;
  UINT bytes_read;
  UINT bytes_added;
  while (!chThdShouldTerminate()) {
    int busy;
    do {
      busy = 0;
      sdReadFilePingpong *s = (sdReadFilePingpong *)arg;
      if (s->pingpong == OPEN) {
        if (s->offset >=0) {
          err = f_close(&s->f);
          if (err) report_fatfs_error(err,0);
        }
        err = f_open(&s->f, &s->filename[0], FA_READ | FA_OPEN_EXISTING);
        if (err) report_fatfs_error(err,&s->filename[0]);

        if (!s->doSeek) {
          err = readAndInterpolate(s, &bytes_added, 0);
          if (err) report_fatfs_error(err,&s->filename[0]);
          s->offset = 0;
          chSysDisable();
          if (s->pingpong != CLOSING)
            s->pingpong = PLAYA_READB;
          chSysEnable();
        }
        busy = 1;
      }
      if (s->pingpong == CLOSING) {
        s->pingpong = CLOSED;
        err = f_close(&s->f);
        if (err) report_fatfs_error(err,&s->filename[0]);
        s->offset = -1;
        busy = 1;
      }
      else if (s->doSeek && (s->pingpong != CLOSED)) {
        s->pingpong = SEEKING;
        err = f_lseek(&s->f, s->seekPos);
        if (err) report_fatfs_error(err,&s->filename[0]);
        err = readAndInterpolate(s, &bytes_added, 0);
        if (err) report_fatfs_error(err,&s->filename[0]);
        s->offset = 0;
        s->doSeek = 0;
        chSysDisable();
        if (s->pingpong != CLOSING)
          s->pingpong = PLAYA_READB;
        chSysEnable();
        busy = 1;
      }
      if (s->pingpong == PLAYB_READA) {
        if (f_tell(&s->f) + SDREADFILEPINGPONGSIZE * 4 < f_size(&s->f)) {
          err = readAndInterpolate(s, &bytes_added, 0);
          if (err) report_fatfs_error(err,&s->filename[0]);
          chSysDisable();
          if (s->pingpong == PLAYB_READA)
            s->pingpong = PLAYB;
          if ((err != FR_OK) || (bytes_added != SDREADFILEPINGPONGSIZE * 4)) {
            s->pingpong = CLOSING;
          }
          chSysEnable();
        }
        else {
          chSysDisable();
          s->pingpong = CLOSING;
          chSysEnable();
        }
        busy = 1;
      }
      else if (s->pingpong == PLAYA_READB) {
        if (f_tell(&s->f) + SDREADFILEPINGPONGSIZE * 4 < f_size(&s->f)) {
          err = readAndInterpolate(s, &bytes_added, 1);
          if (err) report_fatfs_error(err,&s->filename[0]);
          chSysDisable();
          if (s->pingpong == PLAYA_READB)
            s->pingpong = PLAYA;
          chSysEnable();
          if ((err != FR_OK) || (bytes_added != SDREADFILEPINGPONGSIZE * 4)) {
            s->pingpong = CLOSING;
          }
        }
        else {
          chSysDisable();
          s->pingpong = CLOSING;
          chSysEnable();
        }
        busy = 1;
      }
    } while ((busy != 0)&&!chThdShouldTerminate());

    if (!chThdShouldTerminate())
        chEvtWaitAnyTimeout((eventmask_t)1, 10);
  }
  sdReadFilePingpong *s = (sdReadFilePingpong *)arg;
  if (s->pingpong != CLOSED) {
    err = f_close(&s->f);
    if (err) report_fatfs_error(err,&s->filename[0]);
  }
  return (msg_t)0;
}

__INL void sdOpenStream(sdReadFilePingpong * s, const char *fn) {
  strcpy(&s->filename[0], fn);
  s->pingpong = OPEN;
  chEvtSignal(s->pThreadSD, (eventmask_t)1);
}

#define BUFSIZE 16

__INL int16_t *sdReadStream(sdReadFilePingpong *s) {
  int16_t *p = 0;
  if ((s->pingpong == PLAYB_READA) || (s->pingpong == PLAYB)) {
    p = &s->fbuff1.i16buff[s->offset];
    s->offset += BUFSIZE;
    if (s->offset == SDREADFILEPINGPONGSIZE * 2) {
      s->pingpong = PLAYA_READB;
      s->offset = 0;
      chEvtSignal(s->pThreadSD, (eventmask_t)1);
    }
  }
  else if ((s->pingpong == PLAYA_READB) || (s->pingpong == PLAYA)) {
    p = &s->fbuff0.i16buff[s->offset];
    s->offset += BUFSIZE;
    if (s->offset == SDREADFILEPINGPONGSIZE * 2) {
      s->pingpong = PLAYB_READA;
      s->offset = 0;
      chEvtSignal(s->pThreadSD, (eventmask_t)1);
    }
  }
  else {
    p = 0;
  }
  return p;
}

void sdSeekStream(sdReadFilePingpong *s, uint32_t pos) {
  if (s->pingpong == CLOSED)
    return;
  s->seekPos = pos;
  s->doSeek = 1;
  chEvtSignal(s->pThreadSD, (eventmask_t)1);
}

void sdCloseStream(sdReadFilePingpong *s) {
  if (s->pingpong == CLOSED)
    return;
  s->pingpong = CLOSING;
  chEvtSignal(s->pThreadSD, (eventmask_t)1);
}

void sdStopStreamer(sdReadFilePingpong *s) {
  if (s->pThreadSD) {
    chThdTerminate(s->pThreadSD);
    chThdWait(s->pThreadSD);
  }
  s->pThreadSD = 0;
}

#endif

