#ifndef AXO_PUSH_H
#define AXO_PUSH_H

#define PUSH_DEBUG_LEVEL 3

extern void LogTextMessage(const char* format, ...);

#if (PUSH_DEBUG_LEVEL > 2)
#define  PushDbgLog(...)   LogTextMessage(__VA_ARGS__)
#else
#define PushDbgLog(...)
#endif


#define PFX __attribute__((noinline)) 


#define LED_ROWS 4
#define LED_BLOCKS 4
#define LED_CELLS 2 * LED_BLOCKS

typedef enum {
    Push_DeviceMode,
    Push_VolumeMode,
    Push_ScaleMode,
    Push_BrowseMode,
    Push_SessionMode
} PushMainMode;

typedef enum {
    Push_PlayMode,
    Push_SequencerMode
} PushPadMode;

struct Push {
    PushMainMode _mode;
    PushPadMode  _padMode;


    // play mode
    uint8_t  _octave;    // current octave
    uint8_t _scaleIdx;
    uint16_t _scale;     // current scale
    uint8_t  _numNotesInScale;   // number of notes in current scale
    uint8_t  _tonic;     // current tonic
    uint8_t  _rowOffset; // current tonic
    bool     _chromatic; // are we in chromatic mode or not


    // display
	unsigned char _led[2][LED_ROWS][9+68];
	uint8_t _activeLed[4];  
	bool    _isDirtyLed[LED_ROWS];
	bool    _lockLed[LED_ROWS];

    // pads
	uint8_t _pads[8][8];
	uint8_t _dirtyPads[8]; // 8 binary rows
    
    // throttle - increases each krate, used for display
    uint32_t _time;

    // midi config
	uint8_t _in_port;
    midi_device_t _in_dev;
	uint8_t _out_port;
    midi_device_t _out_dev;

	uint8_t _note_port;
    midi_device_t _note_dev;

    bool    _shiftHeld;
    bool    _selectHeld;
    
    // parameter info
    uint8_t _deviceParamPos; // current browser offset
    uint8_t _displayParamBars;

    uint8_t _sessionSeqPos; // current browser offset
    uint8_t _sessionSeqIdx; // current selected seq
};





// CCS/Notes received

#define NOTE_ENCODER_START 0
#define NOTE_ENCODER_END (NOTE_ENCODER_START + 8)

#define NOTE_PAD_START 36
#define NOTE_PAD_END  (NOTE_PAD_START + 64)

#define CC_IN 62
#define CC_OUT 63
#define CC_SELECT 48
#define CC_SHIFT  49

#define CC_NOTE     50
#define CC_SESSION  51

// buttons
#define CC_VOLUME   114
#define CC_PAN_SEND 115
#define CC_TRACK    112
#define CC_CLIP     113
#define CC_DEVICE   110
#define CC_BROWSE   111

#define CC_SCALE 58
#define CC_USER 59
#define CC_OCT_DOWN 54
#define CC_OCT_UP 55

#define CC_CURSOR_LEFT 44
#define CC_CURSOR_RIGHT 45
#define CC_CURSOR_UP 46
#define CC_CURSOR_DOWN 47

#define CC_PLAY     85
#define CC_RECORD   86
#define CC_NEW      87

#define CC_ENCODER_START 71
#define CC_ENCODER_END (CC_ENCODER_START + 8)

#define CC_UPPER_PAD_START 20
#define CC_UPPER_PAD_END  (CC_UPPER_PAD_START + 7)
#define CC_LOWER_PAD_START 102
#define CC_LOWER_PAD_END  (CC_LOWER_PAD_START + 7)


// colours

// care as top row is bicolour, lower is pad colour!
#define PAD_OFF_CLR 0
#define PAD_UP_CLR 16
#define PAD_DOWN_CLR 13
#define PAD_ACTION_CLR 19

// PAD colours
#define PAD_NOTE_ON_CLR 127
#define PAD_NOTE_OFF_CLR 0
#define PAD_NOTE_ROOT_CLR 41
#define PAD_NOTE_IN_KEY_CLR 3


static const char* SEQSTR = "KVP_instance";
static uint8_t SEQSTRLEN = strlen(SEQSTR);

extern struct KeyValuePair *ObjectKvpRoot;
extern struct KeyValuePair *ObjectKvps[];



#include <ui.h>

// generated with 
// ctags -x --c-kinds=f *.c | awk '{$1=$2=$3=$4="";print $0}' | sed 's/{/PFX;/' > axo_push_funcs.h
#include "./axo_push_funcs.h"

#include "./axo_push_scale.h"

#include "./axo_push.c"
#include "./axo_push_scale.c"
#include "./axo_push_led.c"
#include "./axo_push_handler.c"
#include "./axo_push_params.c"
#include "./axo_push_pads.c"
#include "./axo_push_browse.c"
#include "./axo_push_play.c"
#include "./axo_push_session.c"

#endif //AXO_PUSH_H
