//-----------------------------------------------------------------------------
/*

Debounce bool32 inputs

The code periodically samples the krate input values and stores them in a
circular buffer of DEBOUNCE_COUNT entries. The output is formed by OR-ing
or AND-ing all buffer entries.

*/
//-----------------------------------------------------------------------------

#ifndef DEADSY_DEBOUNCE_H
#define DEADSY_DEBOUNCE_H

//-----------------------------------------------------------------------------

#define DEBOUNCE_COUNT 4

// debounce state variables
struct debounce_state {
	uint32_t sample[DEBOUNCE_COUNT];	// circular buffer for input samples
	int idx;		// buffer index
	uint32_t count;		// sample count
	uint32_t divider;	// sample count divider
	int mode;		// 1/0 transition speed
	uint32_t output;	// current output
};

//-----------------------------------------------------------------------------

static void debounce(struct debounce_state *s, uint32_t input) {
	uint32_t state;

	// store the current input
	s->sample[s->idx] = input;
	s->idx = (s->idx == DEBOUNCE_COUNT - 1) ? 0 : s->idx + 1;

	if (s->mode) {
		// fast 0 to 1: a single 1 will make us go high (OR)
		state = 0;
		for (int i = 0; i < DEBOUNCE_COUNT; i++) {
			state |= s->sample[i];
		}
	} else {
		// fast 1 to 0: a single 0 will make us go low (AND)
		state = 0xffffffff;
		for (int i = 0; i < DEBOUNCE_COUNT; i++) {
			state &= s->sample[i];
		}
	}
	s->output = state;
}

//-----------------------------------------------------------------------------

static void debounce_init(struct debounce_state *s, int attr_period, int attr_mode) {
	// initialise the state
	memset(s, 0, sizeof(struct debounce_state));
	s->divider = (1 << attr_period) - 1;
	s->mode = attr_mode;
}

//-----------------------------------------------------------------------------
// 1 input/output

static void debounce_krate1(struct debounce_state *s,	//
			    const bool i0,	//
			    bool * o0	//
    ) {
	s->count += 1;
	if ((s->count & s->divider) == 0) {
		uint32_t input = 0;
		input |= ((i0 != 0) << 0);
		debounce(s, input);
	}

	uint32_t output = s->output;
	*o0 = (output >> 0) & 1;
}

//-----------------------------------------------------------------------------
// 2 inputs/output

static void debounce_krate2(struct debounce_state *s,	//
			    const bool i0, const bool i1,	//
			    bool * o0, bool * o1	//
    ) {
	s->count += 1;
	if ((s->count & s->divider) == 0) {
		uint32_t input = 0;
		input |= ((i0 != 0) << 0);
		input |= ((i1 != 0) << 1);
		debounce(s, input);
	}

	uint32_t output = s->output;
	*o0 = (output >> 0) & 1;
	*o1 = (output >> 1) & 1;
}

//-----------------------------------------------------------------------------
// 4 inputs/output

static void debounce_krate4(struct debounce_state *s,	//
			    const bool i0, const bool i1, const bool i2, const bool i3,	//
			    bool * o0, bool * o1, bool * o2, bool * o3	//
    ) {
	s->count += 1;
	if ((s->count & s->divider) == 0) {
		uint32_t input = 0;
		input |= ((i0 != 0) << 0);
		input |= ((i1 != 0) << 1);
		input |= ((i2 != 0) << 2);
		input |= ((i3 != 0) << 3);
		debounce(s, input);
	}

	uint32_t output = s->output;
	*o0 = (output >> 0) & 1;
	*o1 = (output >> 1) & 1;
	*o2 = (output >> 2) & 1;
	*o3 = (output >> 3) & 1;
}

//-----------------------------------------------------------------------------
// 8 inputs/output

static void debounce_krate8(struct debounce_state *s,	//
			    const bool i0, const bool i1, const bool i2, const bool i3,	//
			    const bool i4, const bool i5, const bool i6, const bool i7,	//
			    bool * o0, bool * o1, bool * o2, bool * o3,	//
			    bool * o4, bool * o5, bool * o6, bool * o7	//
    ) {
	s->count += 1;
	if ((s->count & s->divider) == 0) {
		uint32_t input = 0;
		input |= ((i0 != 0) << 0);
		input |= ((i1 != 0) << 1);
		input |= ((i2 != 0) << 2);
		input |= ((i3 != 0) << 3);
		input |= ((i4 != 0) << 4);
		input |= ((i5 != 0) << 5);
		input |= ((i6 != 0) << 6);
		input |= ((i7 != 0) << 7);
		debounce(s, input);
	}

	uint32_t output = s->output;
	*o0 = (output >> 0) & 1;
	*o1 = (output >> 1) & 1;
	*o2 = (output >> 2) & 1;
	*o3 = (output >> 3) & 1;
	*o4 = (output >> 4) & 1;
	*o5 = (output >> 5) & 1;
	*o6 = (output >> 6) & 1;
	*o7 = (output >> 7) & 1;
}

//-----------------------------------------------------------------------------
// 16 inputs/output

static void debounce_krate16(struct debounce_state *s,	//
			     const bool i0, const bool i1, const bool i2, const bool i3,	//
			     const bool i4, const bool i5, const bool i6, const bool i7,	//
			     const bool i8, const bool i9, const bool i10, const bool i11,	//
			     const bool i12, const bool i13, const bool i14, const bool i15,	//
			     bool * o0, bool * o1, bool * o2, bool * o3,	//
			     bool * o4, bool * o5, bool * o6, bool * o7,	//
			     bool * o8, bool * o9, bool * o10, bool * o11,	//
			     bool * o12, bool * o13, bool * o14, bool * o15	//
    ) {
	s->count += 1;
	if ((s->count & s->divider) == 0) {
		uint32_t input = 0;
		input |= ((i0 != 0) << 0);
		input |= ((i1 != 0) << 1);
		input |= ((i2 != 0) << 2);
		input |= ((i3 != 0) << 3);
		input |= ((i4 != 0) << 4);
		input |= ((i5 != 0) << 5);
		input |= ((i6 != 0) << 6);
		input |= ((i7 != 0) << 7);
		input |= ((i8 != 0) << 8);
		input |= ((i9 != 0) << 9);
		input |= ((i10 != 0) << 10);
		input |= ((i11 != 0) << 11);
		input |= ((i12 != 0) << 12);
		input |= ((i13 != 0) << 13);
		input |= ((i14 != 0) << 14);
		input |= ((i15 != 0) << 15);
		debounce(s, input);
	}

	uint32_t output = s->output;
	*o0 = (output >> 0) & 1;
	*o1 = (output >> 1) & 1;
	*o2 = (output >> 2) & 1;
	*o3 = (output >> 3) & 1;
	*o4 = (output >> 4) & 1;
	*o5 = (output >> 5) & 1;
	*o6 = (output >> 6) & 1;
	*o7 = (output >> 7) & 1;
	*o8 = (output >> 8) & 1;
	*o9 = (output >> 9) & 1;
	*o10 = (output >> 10) & 1;
	*o11 = (output >> 11) & 1;
	*o12 = (output >> 12) & 1;
	*o13 = (output >> 13) & 1;
	*o14 = (output >> 14) & 1;
	*o15 = (output >> 15) & 1;
}

//-----------------------------------------------------------------------------

#endif				// DEADSY_DEBOUNCE_H

//-----------------------------------------------------------------------------
