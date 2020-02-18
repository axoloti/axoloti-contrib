
void PushHandlePlayNote(Push&p, uint8_t status,uint8_t data1, uint8_t data2) {
    int8_t pad = data1 - NOTE_PAD_START;
    int8_t r = pad / 8;
    int8_t c = pad % 8;
    int8_t note;
    int8_t note_s = (r * p._rowOffset) + c;
    
    if (p._chromatic) {
        note = (p._octave * 12) + note_s;
    } else {
        int8_t note_in_s = 0;
        int8_t note_s_rem = note_s % p._numNotesInScale;
        for(int i= 1;i<12 && note_s_rem > 0;i++) {
            if(p._scale & (1 << (11-i)))  {
                note_s_rem--;
            }
            note_in_s++;
        }
        
        note = (p._octave * 12) + ((note_s / p._numNotesInScale) * 12) + note_in_s + p._tonic;
    }
    
    if(data2>0) { // note on
        PushSetPad(p,r,c,PAD_NOTE_ON_CLR);
        // this is the root patch midi in handler
        (patchMeta.fptr_MidiInHandler)(p._note_dev,p._note_port,MIDI_NOTE_ON,note,data2);
    } else {
        PushSetPad(p,r,c,PushDeterminePadScaleColour(p,r,c));
        (patchMeta.fptr_MidiInHandler)(p._note_dev,p._note_port,MIDI_NOTE_OFF,note,data2);
    }
}

void PushHandlePlayMode(Push& p) {
    // now display scale colours on pads
    for(int r=0;r<8;r++) {
        for(int c=0;c<8;c++) {
            PushSetPad(p,r,c,PushDeterminePadScaleColour(p,r,c));
        }
    }
}
