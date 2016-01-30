

#define BLOCK_LEN 17

#define CELL_LEN 8

#define TXT_START 8
#define TXT_LEN 68
#define SYSEX_LEN TXT_START+TXT_LEN+1

#define CHAR_SPACE  0x20
#define BARS_ONE_L  0x03
#define BARS_ONE_R  0x04
#define BARS_TWO    0x05
#define BARS_NONE   0x06
#define CHAR_R_ARROW  0x7f

// helpful macros
#define LED(x) p._led[p._activeLed[x]][x]

void PushInitLed(Push& p) {
    PushLockLed(p,true);
    for(int d = 0; d<2; d++) {
        for(int i = 0; i<LED_ROWS; i++) {
            p._activeLed[i]=d;
            LED(i)[0] = 0xF0;
            LED(i)[1] = 0x47;
            LED(i)[2] = 0x7F;
            LED(i)[3] = 0x15;
            LED(i)[4] = 0x18+i;
            LED(i)[5] = 0x00;
            LED(i)[6] = 0x45;
            LED(i)[7] = 0x00;
            LED(i)[SYSEX_LEN-1] = 0xF7;
    
            // this will make both dirty, but we dont mind, as we only 
            // ever look at the status on the active
            PushClearRow(p,i);
        }
    }
    const char* welcome="Axoloti on Push";
    PushSetRow(p,0,welcome,strlen(welcome)); // TEST
    PushLockLed(p,false);
}

void PushLockLedRow(Push& p, uint8_t r,bool lock) {
    p._lockLed[r]=lock;
}

void PushLockLed(Push& p, bool lock) {
    for(int r=0;r<LED_ROWS;r++) {
        PushLockLedRow(p,r,lock);
    }
}


void PushClearRow(Push& p, uint8_t r) {
    memset(TXT_START+LED(r),CHAR_SPACE,TXT_LEN);
    p._isDirtyLed[r] = true;
}

void PushClearLed(Push& p) {
    for(int i = 0; i<LED_ROWS; i++) {
        PushClearRow(p,i);
    }
}

void PushCopyRow(Push& p,int8_t r,int to, int from) {
    memcpy(TXT_START+p._led[to][r],TXT_START+p._led[from][r],TXT_LEN);
}

void PushSetRow(Push& p,uint8_t r, const char* txt, uint8_t len) {
    if(len>TXT_LEN) len=TXT_LEN;
    memcpy(TXT_START+LED(r),txt,len);
    memset(TXT_START+LED(r)+len,CHAR_SPACE,TXT_LEN-len);
    p._isDirtyLed[r] = true;
}

void PushSetBlock(Push& p,uint8_t r, uint8_t b, const char* txt, uint8_t len) {
    if(len>BLOCK_LEN) len=BLOCK_LEN;
    int offset = b * BLOCK_LEN;
    memcpy(TXT_START+LED(r)+offset,txt,len);
    memset(TXT_START+LED(r)+len+offset,CHAR_SPACE,BLOCK_LEN-len);
    p._isDirtyLed[r] = true;
}

void PushSetCell(Push& p,uint8_t r, uint8_t c, const char* txt, uint8_t len) {
    if(len>CELL_LEN) len=CELL_LEN;
    int offset = (c/2) * BLOCK_LEN + ((c % 2) * (CELL_LEN + 1));
    //PushDbgLog("PushSetCell  %i, %s, %i, %i, %i",len, txt, r, c,offset);
    memcpy(TXT_START+LED(r)+offset,txt,len);
    memset(TXT_START+LED(r)+len+offset,CHAR_SPACE,CELL_LEN-len);

    // 9th char always blank, between cells
    if((c % 2) == 0) {
        LED(r)[TXT_START + offset + CELL_LEN] = CHAR_SPACE;
    }
    p._isDirtyLed[r] = true;
}

void PushUpdateLed(Push& p) {
    int msgs = MidiGetOutputBufferPending(p._out_dev);
    if (msgs > 0) return;
    for(int i=0; i< LED_ROWS; i++) {
        if(p._isDirtyLed[i] && !p._lockLed[i]) {
            int o = p._activeLed[i];
            int n = o == 0? 1 : 0;
            PushCopyRow(p,i,n,o);
            //PushDbgLog("PushUpdateLed, sending %i,%i",i,o);
            MidiSendSysEx(p._out_dev,p._out_port,p._led[o][i],SYSEX_LEN);
            p._activeLed[i] = n;
            p._isDirtyLed[i] = false;
            return; // only send one sys ex per exec
        }
    }
}



void PushUnipolarBar(Push& p, uint8_t r, uint8_t c, uint8_t v) {
    // each character has 2 bars e.g. == |= ||
    //PushDbgLog("write to %i", p._activeLed[r]);
    char buf[8];
    memset(buf,BARS_NONE,8);
    int16_t nb = ((v+1) * CELL_LEN * 2) / 128;
    int8_t fb = nb / 2;
    memset(buf,BARS_TWO,fb);
    if(nb%2) buf[fb] = BARS_ONE_L;
    //PushDbgLog("PushUniBar, %i, %i %i,%i,%i",r, c, v,nb,fb);
    PushSetCell(p,r,c,buf,8);
}

void PushBipolarBar(Push& p, uint8_t r, uint8_t c, uint8_t v) {
    // each character has 2 bars e.g. == |= || =|
    
    char buf[8];
    memset(buf,BARS_NONE,8);
    buf[4] = BARS_ONE_L; // centre position
    if(v>64) {
        // positive
        int16_t nb = (((v+1) * CELL_LEN * 2) / 128) - 8;
        int8_t fb = nb / 2;
        memset(buf + 4, BARS_TWO, fb);
        if (nb % 2) buf[fb+4] = BARS_ONE_L;
    } else {
        // negative
        int16_t nb = 8 - (((v+1) * CELL_LEN * 2) / 128);
        int8_t fb = nb / 2;
        memset(buf + ( 4 - fb), BARS_TWO, fb);
        if (nb % 2) buf[3 - fb] = BARS_ONE_R;
        
    }
    PushSetCell(p,r,c,buf,8);
}

