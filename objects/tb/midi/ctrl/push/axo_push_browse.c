#include "sdcard.h"

void PushBrowse(Push& p,uint8_t status, uint8_t data1,uint8_t data2) {
    char buf[21];
    bool done = false;
    uint8_t offset =0;
    int8_t vel =0;
    
    // TODO get rid of static
    static uint8_t curIdx = 0;
    static char curFile[21];
    static uint8_t numFiles;

    uint8_t oldIdx = 0;
    
    PushLockLed(p,true);
    
    
    if(data1 == CC_BROWSE) {
        PushClearUpperPads(p);
        PushClearLowerPads(p);
        MidiSend3(p._out_dev,p._out_port, MIDI_CONTROL_CHANGE, CC_UPPER_PAD_START,      PAD_UP_CLR);
        MidiSend3(p._out_dev,p._out_port, MIDI_CONTROL_CHANGE, CC_UPPER_PAD_START + 1,  PAD_ACTION_CLR);
        MidiSend3(p._out_dev,p._out_port, MIDI_CONTROL_CHANGE, CC_LOWER_PAD_START,      PAD_DOWN_CLR);
        PushClearLed(p);
        oldIdx = curIdx = 0;
        numFiles = 0;
    } else if (data1 == CC_UPPER_PAD_START ) {
        oldIdx = curIdx;
        vel = -1;
        curIdx = (curIdx + vel < 0 ? 0 : curIdx + vel);
        done = (curIdx == oldIdx);
    } else if (data1 == CC_LOWER_PAD_START ) {
        oldIdx = curIdx;
        vel = 1;
        curIdx = (curIdx + vel > (numFiles - 1) ? numFiles - 1 : curIdx + vel);
        done = (curIdx == oldIdx);
    } else if (data1 == CC_UPPER_PAD_START + 1 ) {
        uint8_t l=strlen(curFile);
        if (l>4 && strcmp(curFile + (l-4),".BIN")==0) {
            PushDbgLog("Loading patch %s", curFile);
            LoadPatch(curFile);
        }
        PushLockLed(p,false);
        return;
    } else {
        PushLockLed(p,false);
        return;
    }

    FRESULT res;
    FILINFO fno;
    DIR dir;
    #if _USE_LFN
    fno.lfname = 0;
    fno.lfsize = 0;
    #endif
    int i = 0;
    bool skip = false;
    res = f_opendir(&dir, "");
    if (res == FR_OK) {
        for(int b=0;b<LED_BLOCKS && !done;b += (skip==false)) {
            for(int r=0;r<LED_ROWS && !done;r += (skip==false)) {
                res = f_readdir(&dir, &fno);
                if (res != FR_OK || fno.fname[0] == 0) {
                    done = true;
                    continue; // on first fail stop, fname = 0 on last file;
                }
                if (fno.fname[0] == '.') { // ignore current directory
                        skip = true;
                        continue;
                }
                skip = false;
                
                if (curIdx == i) {
                    buf[0] = 0x7f;
                    strncpy(curFile,fno.fname,20);
                    curFile[20]=0;
                }
                else {
                    buf[0] = 0x20;
                }

//                if (fno.fattrib & AM_DIR) { }
                strncpy(&buf[1],fno.fname,20);
                buf[20]=0;

                PushSetBlock(p,r,b,buf,strlen(buf));
                done =  (vel > 0 && i == curIdx) || (vel < 0 && i == oldIdx);
                i++;
                if(i>numFiles) numFiles = i;
            } // r
        } // c
    // open dir
    }
    PushLockLed(p,false);
}

