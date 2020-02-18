


int PushNumNotesInScale(int16_t scale) {
    int s=scale;
    int n=0;
    for(int i=0;i<12;i++) {
        if( s & 0x01) {
            n++;
        }
        s = s >> 1;
    }
    return n;
}


void PushDisplayScales(Push& p,uint8_t status, uint8_t data1,uint8_t data2) {
    // vel = 0, display all, otherwise increase /decrease
    char buf[21];
    bool done = false;
    uint8_t offset =0;
    int8_t vel =0;
    
    // TODO get rid of static
    static uint8_t curIdx = 0;
    uint8_t oldIdx = 0;
    
    PushLockLed(p,true);
    if(data1 == CC_SCALE) {
        PushClearUpperPads(p);
        PushClearLowerPads(p);
        MidiSend3(p._out_dev,p._out_port, MIDI_CONTROL_CHANGE, CC_UPPER_PAD_START,      PAD_UP_CLR);
        MidiSend3(p._out_dev,p._out_port, MIDI_CONTROL_CHANGE, CC_UPPER_PAD_START + 1,  PAD_ACTION_CLR);
        MidiSend3(p._out_dev,p._out_port, MIDI_CONTROL_CHANGE, CC_LOWER_PAD_START,      PAD_DOWN_CLR);
        MidiSend3(p._out_dev,p._out_port, MIDI_CONTROL_CHANGE, CC_LOWER_PAD_START + 1,  PAD_OFF_CLR);
        MidiSend3(p._out_dev,p._out_port, MIDI_CONTROL_CHANGE, CC_LOWER_PAD_END,        PAD_ACTION_CLR);
        PushClearLed(p);
        PushSetBlock(p,0,3,tonics[p._tonic],strlen(tonics[p._tonic]));
        PushSetBlock(p,3,3,scaleModes[p._chromatic],strlen(scaleModes[p._chromatic]));
        curIdx = p._scaleIdx;
        oldIdx = curIdx;
    } else if (data1 == CC_UPPER_PAD_START ) {
        oldIdx = curIdx;
        vel = -1;
        curIdx = (curIdx + vel < 0 ? 0 : curIdx + vel);
        done = (curIdx == oldIdx);
    } else if (data1 == CC_LOWER_PAD_START ) {
        oldIdx = curIdx;
        vel = 1;
        curIdx = (curIdx + vel > scales_len - 1 ? scales_len - 1 : curIdx + vel);
        done = (curIdx == oldIdx);
    } else if (data1 == CC_UPPER_PAD_START + 1 ) {
        p._scaleIdx = curIdx;
        p._scale = scales[p._scaleIdx].value;
        p._numNotesInScale = PushNumNotesInScale(p._scale);
        if(p._padMode==Push_PlayMode) PushHandlePlayMode(p);
        PushLockLed(p,false);
        return;
    } else if (data1 == CC_LOWER_PAD_END ) {
        p._chromatic = p._chromatic > 0 ? 0 : 1;
        PushSetBlock(p,3,3,scaleModes[p._chromatic],strlen(scaleModes[p._chromatic]));
        if(p._padMode==Push_PlayMode) PushHandlePlayMode(p);
        PushLockLed(p,false);
        return;
    } else if (data1 == CC_ENCODER_END-2) {
        if (data2 & 0x40) {
            // -ve
            vel =  p._tonic > 0 ? -1 : 0;
        } else {
            vel = p._tonic < 11 ? 1 : 0;
        }
        p._tonic += vel;
        PushSetBlock(p,0,3,tonics[p._tonic],strlen(tonics[p._tonic]));
        PushLockLed(p,false);
        return;
    } else {
        PushLockLed(p,false);
        return;
    }
    
    
    for(int b=0;b< (LED_BLOCKS-1)  && !done;b++) {
        for(int r=0;r<LED_ROWS && !done;r++) {
            int i = b*LED_BLOCKS+r+offset;
            if (i<scales_len) {
                // this needs to move some how into display ?
                buf[0] = (curIdx == i ? 0x7f : 0x20); // selector or not
                strcpy(&buf[1],scales[i].name);
                PushSetBlock(p,r,b,buf,strlen(buf));
                done =  (vel > 0 && i == curIdx) || (vel < 0 && i == oldIdx);
            } else {
                PushSetBlock(p,r,b,"",0);
            }
        }
    }
    PushLockLed(p,false);
}



int8_t PushDeterminePadScaleColour(Push& p, int8_t r, int8_t c) {
    int8_t note_s = (r * p._rowOffset) + c;
    if(p._chromatic) {
        int i = note_s % 12;
        int v = p._scale  & ( 1 << 11-i );
        
        return i == 0 ? PAD_NOTE_ROOT_CLR :  (v > 0  ? PAD_NOTE_IN_KEY_CLR : PAD_NOTE_OFF_CLR);
    } else {
        return (note_s % p._numNotesInScale) == 0 ? PAD_NOTE_ROOT_CLR : PAD_NOTE_IN_KEY_CLR;
    }
}
