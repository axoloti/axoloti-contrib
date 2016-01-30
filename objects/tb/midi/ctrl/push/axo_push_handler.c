
// minimum time between sending, expressed in krate time
// 3000hz , so 3 * ms 
#define MIN_TIME (0 * 100) 
#define QS 10

struct PushMidiQ {
    volatile uint8_t read,write;
    uint8_t data[QS][3];
};


static PushMidiQ pushInQ;


enum BtnColour  {
 BtnClr_Off,
 BtnClr_Dim,
 BtnClr_Dim_Blink,
 BtnClr_Dim_Blink_Fast,
 BtnClr_Lit,
 BtnClr_Lit_Blink,
 BtnClr_Lit_Blink_Fast,
};

void PushInitHandler(Push& p) {
    pushInQ.read=pushInQ.write=0; 
    p._shiftHeld=false;
    p._selectHeld=false;
    PushClearUpperPads(p);
    PushClearLowerPads(p);
   
    MidiSend3(p._out_dev,p._out_port,MIDI_CONTROL_CHANGE,CC_VOLUME,BtnClr_Lit);
    MidiSend3(p._out_dev,p._out_port,MIDI_CONTROL_CHANGE,CC_DEVICE,BtnClr_Lit);
    MidiSend3(p._out_dev,p._out_port,MIDI_CONTROL_CHANGE,CC_BROWSE,BtnClr_Lit);
    MidiSend3(p._out_dev,p._out_port,MIDI_CONTROL_CHANGE,CC_SHIFT,BtnClr_Lit);
    MidiSend3(p._out_dev,p._out_port,MIDI_CONTROL_CHANGE,CC_SCALE,BtnClr_Lit);
    MidiSend3(p._out_dev,p._out_port,MIDI_CONTROL_CHANGE,CC_NOTE,BtnClr_Lit);
    MidiSend3(p._out_dev,p._out_port,MIDI_CONTROL_CHANGE,CC_SESSION,BtnClr_Lit);
    MidiSend3(p._out_dev,p._out_port,MIDI_CONTROL_CHANGE,CC_OCT_UP,BtnClr_Lit);
    MidiSend3(p._out_dev,p._out_port,MIDI_CONTROL_CHANGE,CC_OCT_DOWN,BtnClr_Lit);
    MidiSend3(p._out_dev,p._out_port,MIDI_CONTROL_CHANGE,CC_IN,BtnClr_Lit);
    MidiSend3(p._out_dev,p._out_port,MIDI_CONTROL_CHANGE,CC_OUT,BtnClr_Lit);

    //MidiSend3(p._out_dev,p._out_port,MIDI_CONTROL_CHANGE,CC_SELECT,BtnClr_Lit);
    //MidiSend3(p._out_dev,p._out_port,MIDI_CONTROL_CHANGE,CC_NEW,BtnClr_Lit);

    // initial pad mode
    switch(p._padMode) {
        case Push_PlayMode: {
            PushHandlePlayMode(p);
            break;
        }
        case Push_SequencerMode: {
            PushHandleSequencerMode(p);
            break;
        }
    }
}

void PushMidiInMsgHandler(Push& p,midi_device_t dev, uint8_t port, uint8_t b0, uint8_t b1, uint8_t b2) {
    if(dev != p._in_dev || port != p._in_port) return ;

    //PushDbgLog("PushMidiHandler %i,%i,%i",b0,b1,b2);

    uint8_t data1= b1;
    uint8_t data2= b2;
    uint8_t next  = (pushInQ.write + 1 ) % QS;
    if(next==pushInQ.read) {
        PushDbgLog("Push Midi Q overflow");
    }
    pushInQ.data[next][0]=b0;
    pushInQ.data[next][1]=b1;
    pushInQ.data[next][2]=b2;
    pushInQ.write = next;
}

void ProcessMidi(Push& p, uint8_t b0, uint8_t data1, uint8_t data2) {
    uint8_t status = b0 & 0x00F0;
    if (status == MIDI_NOTE_ON || status == MIDI_NOTE_OFF) {
        switch(data1) {
            default: {
                // check ranges firsts
                if(p._padMode==Push_PlayMode && data1>=NOTE_PAD_START && data1 <=NOTE_PAD_END) {
                    PushHandlePlayNote(p, status, data1, data2);
                }
                else if(p._mode==Push_DeviceMode && data1>=NOTE_ENCODER_START && data1<=NOTE_ENCODER_END) {
                    PushHandleDevice(p, status, data1, data2);
                }
            }
        }
    } else if (status == MIDI_CONTROL_CHANGE) {
        if(data2 == 0) {
            switch(data1) {
                case CC_SHIFT: p._shiftHeld=false; break;
                case CC_SELECT: p._selectHeld=false;break;
            }
        } else {
            switch(data1) {
                // led modes
                case CC_SCALE: {
                    p._mode = Push_ScaleMode;
                    PushDisplayScales(p,status,data1,data2);
                    break;
                }
                case CC_BROWSE: {
                    p._mode = Push_BrowseMode;
                    PushBrowse(p,status,data1,data2);
                    break;
                }
                case CC_DEVICE: {
                    p._mode = Push_DeviceMode;
                    PushHandleDevice(p, status, data1, data2);
                    break;
                }
                case CC_VOLUME: {
                    p._mode = Push_VolumeMode;
                    PushClearLed(p); // tmp for testing
                    break;
                }
                // pad modes
                case CC_NOTE: {
                    p._padMode = Push_PlayMode;
                    PushHandlePlayMode(p);
                    break;
                }
                case CC_SESSION: {
                    p._mode = Push_SessionMode; //!!
                    PushHandleSessionMode(p,status, data1, data2);
                    p._padMode = Push_SequencerMode;
                    PushHandleSequencerMode(p);
                    break;
                }
                // multi function
                case CC_SHIFT: p._shiftHeld=true; break;
                case CC_SELECT: p._selectHeld=true;break;
                case CC_IN: {
                    if(p._mode == Push_DeviceMode) PushHandleDevice(p,status,data1,data2);
                    else if(p._mode == Push_SessionMode) PushHandleSessionMode(p,status, data1, data2);
                    break;
                }
                case CC_OUT: {
                    if(p._mode == Push_DeviceMode) PushHandleDevice(p,status,data1,data2);
                    else if(p._mode == Push_SessionMode) PushHandleSessionMode(p,status, data1, data2);
                    break;
                }
                case CC_OCT_UP: {
                    if(p._padMode == Push_PlayMode) {
                        p._octave = (p._octave<10? p._octave + 1 : p._octave);
                    }
                    break;
                }
                case CC_OCT_DOWN: {
                    if(p._padMode == Push_PlayMode) {
                        p._octave = (p._octave>0? p._octave - 1 : p._octave);
                    }
                    break;
                }
                default: {
                    if(data1>=CC_UPPER_PAD_START && data1<=CC_UPPER_PAD_END) {
                        if(p._mode==Push_ScaleMode) PushDisplayScales(p,status,data1,data2);
                        else if(p._mode==Push_BrowseMode) PushBrowse(p,status,data1,data2);
                    }
                    else if(data1>=CC_LOWER_PAD_START && data1<=CC_LOWER_PAD_END) {
                        if(p._mode==Push_ScaleMode) PushDisplayScales(p,status,data1,data2);
                        else if(p._mode==Push_BrowseMode) PushBrowse(p,status,data1,data2);
                    }
                    else if(data1>=CC_ENCODER_START && data1<=CC_ENCODER_END) {
                        if(p._mode==Push_ScaleMode)  PushDisplayScales(p,status,data1,data2);
                        else if(p._mode == Push_DeviceMode) PushHandleDevice(p,status,data1,data2);
                    }
                    break;
                }
            }
        }
    }
}

void PushControlRateHandler(Push& p) {
    p._time++;
    while(pushInQ.read!=pushInQ.write) {
        pushInQ.read = (pushInQ.read + 1 ) % QS;
        ProcessMidi(p,pushInQ.data[pushInQ.read][0],pushInQ.data[pushInQ.read][1],pushInQ.data[pushInQ.read][2]);
    }

    if(p._time >= MIN_TIME) {
        PushUpdateLed(p);
        PushUpdatePads(p);
        p._time = 0;
    }
}

