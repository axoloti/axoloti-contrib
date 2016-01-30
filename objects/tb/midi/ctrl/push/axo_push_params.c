
#include <os/various/chprintf.h>

void PushInitDisplayParams(Push& p) {
    p._deviceParamPos = 0;
    p._displayParamBars = false;
}

uint8_t PushNumParamObjects(KeyValuePair_s* obj) {
    uint8_t len = obj->apvp.length;
    uint8_t plen = 0;
    for(int i=0;i<len;i++) {
        if(strncmp(ObjectKvps[i]->keyname,SEQSTR,SEQSTRLEN)!=0){
            plen++;
        }
    }
    return plen;
}

KeyValuePair_s* PushGetParamObject(KeyValuePair_s* obj,uint8_t idx) {
    uint8_t len = obj->apvp.length;
    uint8_t plen = 0;
    for(int i=0;i<len;i++) {
        if(strncmp(ObjectKvps[i]->keyname,SEQSTR,SEQSTRLEN)!=0){
            if(plen==idx) {
                return ObjectKvps[i];
            }
            plen++;
        }
    }
    // not found, but lets not crash it!
    return ObjectKvps[0];
}


void PushHandleDevice(Push& p, uint8_t status, uint8_t data1,uint8_t data2)  {
    if(status == MIDI_CONTROL_CHANGE) {
        switch(data1) {
            case CC_DEVICE: {
                PushClearUpperPads(p);
                PushClearLowerPads(p);
                PushDisplayParams(p,ObjectKvpRoot);
                break;
            }
            case CC_IN: {
                if(p._mode == Push_DeviceMode) {
                    uint8_t numobjs = PushNumParamObjects(ObjectKvpRoot);
                    if(p._deviceParamPos + 8 < numobjs) {
                        p._deviceParamPos += 8;
                        PushDisplayParams(p,ObjectKvpRoot);
                    }
                }
                break;
            }
            case CC_OUT: {
                if(p._mode == Push_DeviceMode) {
                    if(p._deviceParamPos - 8 >= 0) {
                        p._deviceParamPos -= 8;
                        PushDisplayParams(p,ObjectKvpRoot);
                    } else {
                        p._deviceParamPos = 0;
                        PushDisplayParams(p,ObjectKvpRoot);
                    }
                }
                break;
            }
            default: {
                if(data1>=CC_ENCODER_START && data1<=CC_ENCODER_END) {
                    uint8_t enc=data1-CC_ENCODER_START;
                    int8_t  vel = 0;
                    if (data2 & 0x40) {
                        // -ve
                        vel =  (128 - data2) * -1;
                    } else {
                        vel = data2;
                    }
                    if (enc==8)  {
                        // master encoder , volume etc
                    } else {
                        // normal encode
                        PushUpdateParamValue(p, ObjectKvpRoot, enc, vel);
                    }
                }
            }
        }// switch
    } else if (status == MIDI_NOTE_ON || status == MIDI_NOTE_OFF) {
        data2 = (status == MIDI_NOTE_ON ? data2 : 0); // convert  NOTE_OFF
        if (data2>0) {
            p._displayParamBars++;
        }
        else  {
            // push sends 0 for all encoders when it first connects
            if(p._displayParamBars==0) return;
            
            p._displayParamBars--;
        }
        
        if(p._displayParamBars>0) {
            PushDisplayBars(p,ObjectKvpRoot);
        } else {
            // clear message line
            PushClearRow(p,2);
        }
    }
}


void PushDisplayParams(Push& p, KeyValuePair_s* parent) {
    uint8_t devParamPos = p._deviceParamPos;
    const char * txt = parent->keyname;
    uint8_t numobjs = PushNumParamObjects(parent);
//    PushDbgLog("PushDP 1  %s, %i",txt,numobjs);
    
    PushClearRow(p,2);
    PushClearRow(p,3);

    PushLockLedRow(p,0,true);
    PushLockLedRow(p,1,true);
    char valueBuf[CELL_LEN];
    for(uint8_t i = 0; i<LED_CELLS;i++) {
        if((i+devParamPos) < numobjs) {
            KeyValuePair_s* kvp = PushGetParamObject(ObjectKvpRoot,i+devParamPos);
            txt = kvp->keyname;
            uint8_t len = strlen(txt);
            PushSetCell(p,0 ,i ,txt,len);
            PushParamValue(p,i,kvp);
        } else {
            PushSetCell(p,0 ,i ,"",0);
            PushSetCell(p,1 ,i ,"",0);
        }
    }
    PushLockLedRow(p,0,false);
    PushLockLedRow(p,1,false);
}

void PushDisplayBars(Push& p, KeyValuePair_s* parent) {
    uint8_t devParamPos = p._deviceParamPos;
    const char * txt = parent->keyname;
    uint8_t numobjs = PushNumParamObjects(parent);
    
    uint8_t len = devParamPos+LED_CELLS > numobjs? numobjs-devParamPos : LED_CELLS;
    PushLockLedRow(p,2,true);
    for(uint8_t i = 0; i<len;i++) {
        KeyValuePair_s* kvp = PushGetParamObject(ObjectKvpRoot,i+devParamPos);
        if(p._displayParamBars) PushParamBar(p,i,kvp);
    }
    PushLockLedRow(p,2,false);
}

void PushParamValue(Push& p, uint8_t c, KeyValuePair_s* kvp) {
    char valueBuf[CELL_LEN];
    uint8_t vlen = PushFormatParamValue(valueBuf,kvp);
    PushSetCell(p,1 ,c ,valueBuf,vlen);
}

void PushParamBar(Push& p, uint8_t c, KeyValuePair_s* kvp) {
    // move into block function
    int32_t max = (kvp->ipvp.maxvalue) >> 20;
    int32_t min = (kvp->ipvp.minvalue) >> 20; 
    int32_t val = (kvp->ipvp.PEx->value) >> 20;
    if(min>=0) {
        val = (val*128) / (max - min);
        //PushDbgLog("PushUnipolarBar %s,%i,%i,%i",txt, val, min,max);
        PushUnipolarBar(p,2,c,val);
    } else {
        uint32_t range = max-min;
        val = ((val + (range/2)) * 128) / range;
        //PushDbgLog("PushBipolarBar %s,%i,%i,%i %i",txt, val, min,max, max-min);
        PushBipolarBar(p,2,c,val);
    }
}

// improve this... need custom types depending on param type
int PushFormatParamValue(char* buf, KeyValuePair_s* kvp) {
    switch(kvp->kvptype) {
        case KVP_TYPE_IPVP: {
            int32_t i=kvp->ipvp.PEx->value;
            double v = ((double) i) / (double) (1 << 21);
            int wi = v;
            float f = fabs(v - wi);
            int fi = f * 100;
            // cannot use %f here, as not float poing with sprintf not compiled in
            //sprintf(buf, "%3d.%02d", wi, fi);
            chsnprintf(buf, CELL_LEN,"%3d.%02d", wi, fi);
            return strlen(buf);
        }
    }
}

void PushUpdateParamValue(Push& p, KeyValuePair_s* parent, uint8_t encoder, int8_t vel) {
    uint8_t devParamPos = p._deviceParamPos;
    uint8_t objidx = devParamPos + encoder;
    uint8_t numobjs = PushNumParamObjects(parent);
    
    if(objidx > numobjs) return; // ignore
    
    KeyValuePair_s* kvp = PushGetParamObject(ObjectKvpRoot,objidx);
    // either 0.1 or velocity to move by
    int32_t amt = (p._shiftHeld ? (0x64 << 7) :  (vel>0?vel:vel*-1) << 21); 
    switch(kvp->kvptype) {
        case KVP_TYPE_IPVP: {
            if ( vel > 0 ) {
                int32_t nval = kvp->ipvp.PEx->value + amt;
                if (nval < kvp->ipvp.maxvalue) {
                  PExParameterChange(kvp->ipvp.PEx, nval, 0xFFFFFFE7);
                }
                else {
                  PExParameterChange(kvp->ipvp.PEx, kvp->ipvp.maxvalue, 0xFFFFFFE7);
                }
            } else {
                int32_t nval = kvp->ipvp.PEx->value - amt;
                if (nval > kvp->ipvp.minvalue) {
                  PExParameterChange(kvp->ipvp.PEx, nval, 0xFFFFFFE7);
                }
                else {
                  PExParameterChange(kvp->ipvp.PEx, kvp->ipvp.minvalue, 0xFFFFFFE7);
                }
            }
            PushParamValue(p,encoder,kvp);
            if(p._displayParamBars>0) PushParamBar(p,encoder,kvp);
        }
    }
}

/*
    if (i >= LED_BLOCKS * LED_ROWS) return i;
    int r = i % LED_BLOCKS; int b = i / LED_BLOCKS;
    const char * txt = obj->keyname;
    int len = strlen(txt);
    PushDbgLog("PushMidiHandler  %s",txt);
    PushSetBlock(p,r ,b ,txt,len);
    i++;
    switch(obj->kvptype) {
        case KVP_TYPE_AVP : {
            for(int j=0;obj->avp.length;j++) {
                KeyValuePair_s *c = &((KeyValuePair_s *)(obj->avp.array))[j];
                i = PushDisplayParams(p,i,c);
                i++;
            }
            break;
        }
        case KVP_TYPE_APVP : {
            for(int j=0;obj->avp.length;j++) {
                KeyValuePair_s *c = (KeyValuePair_s *)(obj->apvp.array[j]);
                i = PushDisplayParams(p,i,c);
                i++;
            }
            break;
        }
    }
    return i;
*/

