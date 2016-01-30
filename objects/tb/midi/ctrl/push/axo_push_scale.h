static const struct Scales {
    char name[20];
    int16_t value;
} scales [] = {
    {"Chromatic",        0b111111111111 },
    {"Major",            0b101011010101 },
    {"Harmonic Minor",   0b101101011001 },
    {"Melodic Minor",    0b101101010101 },
    {"Whole",            0b101010101010 },
    {"Octatonic",        0b101101101101 }
};
const int scales_len=sizeof(scales)/sizeof(scales[0]);

static const char tonics[12][3]= {
    "C ",
    "C#",
    "D",
    "D#",
    "E ",
    "F ",
    "F#",
    "G",
    "G#",
    "A ",
    "A#",
    "B"
};
static const char scaleModes [2][15] = {
    "Chromatic",
    "In Key"
};



