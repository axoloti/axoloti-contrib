


void PushInitSession(Push& p) {
    p._sessionSeqPos = 0;
    p._sessionSeqIdx = 0;
}

uint8_t PushNumSeqObjects(KeyValuePair_s* obj) {
    uint8_t len = obj->apvp.length;
    uint8_t plen = 0;
    for(int i=0;i<len;i++) {
        if(strlen(ObjectKvps[i]->keyname)>SEQSTRLEN && strncmp(ObjectKvps[i]->keyname,SEQSTR,SEQSTRLEN)==0){
            plen++;
        }
    }
    return plen;
}

KeyValuePair_s* PushGetSeqObject(KeyValuePair_s* obj,uint8_t idx) {
    uint8_t len = obj->apvp.length;
    uint8_t plen = 0;
    for(int i=0;i<len;i++) {
        if(strlen(ObjectKvps[i]->keyname)>SEQSTRLEN && strncmp(ObjectKvps[i]->keyname,SEQSTR,SEQSTRLEN)==0){
            if(plen==idx) {
                return ObjectKvps[i];
            }
            plen++;
        }
    }
    // not found, but lets not crash it!
    return ObjectKvps[0];
}


#define PUSHSEQMAXBUF 40
void PushSeqName(char* buf,KeyValuePair_s* kvp) {
    // example KVP_instancesel__1_b16
    // sequencer / instance name / type
    // KVP_instance/sel__1/_b16

    strncpy(buf, kvp->keyname + SEQSTRLEN,PUSHSEQMAXBUF);
    char* t=strrchr(buf,'_');
    if(t!=NULL) {
        *t = 0;
    }
}

void PushHandleSequencerMode(Push& p) {
    PushClearPads(p);
}



void PushHandleSessionMode(Push& p, uint8_t status, uint8_t data1,uint8_t data2){
    if(status == MIDI_CONTROL_CHANGE) {
        switch(data1) {
            case CC_SESSION: {
                PushClearUpperPads(p);
                PushClearLowerPads(p);
                PushDisplaySession(p,ObjectKvpRoot);
                break;
            }
            case CC_IN: {
                if(p._mode == Push_DeviceMode) {
                    uint8_t numobjs = PushNumSeqObjects(ObjectKvpRoot);
                    if(p._sessionSeqPos + 8 < numobjs) {
                        p._sessionSeqPos += 8;
                        PushDisplayParams(p,ObjectKvpRoot);
                    }
                }
                break;
            }
            case CC_OUT: {
                if(p._mode == Push_DeviceMode) {
                    if(p._deviceParamPos - 8 >= 0) {
                        p._sessionSeqPos -= 8;
                        PushDisplaySession(p,ObjectKvpRoot);
                    } else {
                        p._deviceParamPos = 0;
                        PushDisplaySession(p,ObjectKvpRoot);
                    }
                }
                break;
            }
        }// switch
    }
}



void PushDisplaySession(Push& p, KeyValuePair_s* parent) {
    uint8_t devParamPos = p._sessionSeqPos;
    uint8_t numobjs = PushNumSeqObjects(parent);
    
    PushClearRow(p,0);
    PushClearRow(p,1);
    PushClearRow(p,2);
    
    PushLockLedRow(p,3,true);
    char buf[PUSHSEQMAXBUF];
    for(uint8_t i = 0; i<LED_CELLS;i++) {
        if((i+p._sessionSeqPos) < numobjs) {
            KeyValuePair_s* kvp = PushGetSeqObject(ObjectKvpRoot,i+p._sessionSeqPos);
            PushSeqName(buf,kvp);
            uint8_t len = strlen(buf);
            PushSetCell(p,3 ,i ,buf,len);
            
        } else {
            PushSetCell(p,3 ,i ,"",0);
        }
    }
    PushLockLedRow(p,3,false);
    
    // for some bizzare reason moving this into above look crashes axo
    // looks like an issue with inlining
    for(uint8_t i = 0; i<LED_CELLS;i++) {
        if((i+p._sessionSeqPos) < numobjs) {
            MidiSend3(p._out_dev,p._out_port, MIDI_CONTROL_CHANGE, CC_LOWER_PAD_START + i, ((i+p._sessionSeqPos) == p._sessionSeqIdx ?  PAD_ACTION_CLR : PAD_DOWN_CLR));
        } else {
            MidiSend3(p._out_dev,p._out_port, MIDI_CONTROL_CHANGE, CC_LOWER_PAD_START + i, PAD_NOTE_OFF_CLR);
        }
    }
}
