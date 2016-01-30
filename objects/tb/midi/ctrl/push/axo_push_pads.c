
    
void PushInitPads(Push& p) {
    for(int r=0;r<8;r++) {
        for(int c=0;c<8;c++) {
            p._pads[r][c] = 0;
        }
        p._dirtyPads[r] = 0xFF;
    }
}


void PushClearUpperPads(Push& p) {
    for(int i=CC_UPPER_PAD_START; i <= CC_UPPER_PAD_END;i++) {
        MidiSend3(p._out_dev,p._out_port,MIDI_CONTROL_CHANGE,i,PAD_NOTE_OFF_CLR);
    }
    
}

void PushClearLowerPads(Push& p) {
    for(int i=CC_LOWER_PAD_START; i <= CC_LOWER_PAD_END;i++) {
        MidiSend3(p._out_dev,p._out_port,MIDI_CONTROL_CHANGE,i,PAD_NOTE_OFF_CLR);
    }
    
}

void PushSetPad(Push& p, uint8_t r, uint8_t c ,uint8_t colour) {
    if(p._pads[r][c] == colour) return;

    p._pads[r][c] = colour;
    p._dirtyPads[r] = p._dirtyPads[r] | (1 << c);
}

void PushClearPads(Push& p){
    for(int r=0;r<8;r++) {
        for(int c=0;c<8;c++) {
            PushSetPad(p,r,c,0);
        }
    }
}

void PushUpdatePads(Push& p){
    int msgs = MidiGetOutputBufferPending(p._out_dev);
    if (msgs > 0) return;

    for(int r=0;r<8;r++) {
        if(p._dirtyPads[r]) {
            for(int c=0;c<8;c++) {
                if ( p._dirtyPads[r] & (1 << c)) {
//                    PushDbgLog("pads %i",p._pads[r][c]);
                    MidiSend3(p._out_dev,p._out_port,MIDI_NOTE_ON,(r*8) + c + NOTE_PAD_START,p._pads[r][c]);
                }
            }
            p._dirtyPads[r] = 0;
            return; // only send one row at a time, i.e. throttle
        }
    }
}

