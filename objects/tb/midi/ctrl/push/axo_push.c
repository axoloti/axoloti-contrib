void PushInit(Push& p) {
    pControlUpdate = 0L;
    p._time = 0;
    p._in_dev= MIDI_DEVICE_USB_HOST;
    p._in_port = 2;
    p._out_dev= MIDI_DEVICE_USB_HOST;
    p._out_port = 2;

    p._note_dev= MIDI_DEVICE_INTERNAL;
    p._note_port = 0;

    p._deviceParamPos = 0;
    p._mode = Push_VolumeMode;
    p._padMode = Push_PlayMode;
    p._scaleIdx = 0;
    p._octave = 2;
    p._chromatic = true;
    p._scale = scales[p._scaleIdx].value;
    p._numNotesInScale = PushNumNotesInScale(p._scale);
    p._tonic = 0;
    p._rowOffset = 5;

    PushInitLed(p);
    PushInitPads(p);
    PushInitHandler(p);
    PushInitDisplayParams(p);
    PushInitSession(p);
}

void PushDevice(Push& p,midi_device_t d,int port) {
    p._in_dev = d;
    p._out_dev= d;
    p._in_port = port;
    p._out_port = 2;
}
void PushNoteOutput(Push& p,midi_device_t d,int port) {
    p._note_dev= MIDI_DEVICE_INTERNAL;
    p._note_port = port;
}



