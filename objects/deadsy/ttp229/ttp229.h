//-----------------------------------------------------------------------------
/*

TTP229 Capacitive Touch Sensor (I2C).
Author: Jason Harris (https://github.com/deadsy)

http://www.tontek.com.tw/uploads/product/106/TTP229-LSF_V1.0_EN.pdf
https://robotdyn.com/16-keys-capacitive-touch-ttp229-i2c-module.html

Notes:

1: This object requires a single instance of the factory/gpio/i2c/config object.
This allows multiple i2c devices (each with a unique i2c address) to work concurrently.
I2C1 Bus, SCL=PB8, SDA=PB9 (these are the config defaults)

2: There are other chips also called ttp229-x which do not use I2C.
This driver supports the I2C variant. ie- TTP229-LSF

3: The device only supports a single I2C address, so there can only be a single
device on a given i2c bus.

*/
//-----------------------------------------------------------------------------

#ifndef DEADSY_TTP229_H
#define DEADSY_TTP229_H

//-----------------------------------------------------------------------------

#define TTP229_I2C_ADR 0x57	// Only 1 supported i2c address :-(
#define TTP229_PERIOD 32	// polling period in ms (8Hz)
#define TTP229_I2C_TIMEOUT 30	// chibios ticks

//-----------------------------------------------------------------------------

// ttp229 state variables
struct ttp229_state {
	stkalign_t thd_wa[THD_WA_SIZE(512) / sizeof(stkalign_t)];	// thread working area
	Thread *thd;		// thread pointer
	I2CDriver *dev;		// i2c bus driver
	i2caddr_t adr;		// i2c device address
	uint8_t *rx;		// i2c rx buffer
	int32_t touch;		// touch status (shared across dsp/ttp229 thread)
};

//-----------------------------------------------------------------------------

// Allocate a 32-bit aligned buffer of size bytes from sram2.
// The memory pool is big enough for 4 concurrent devices.
// Note: this isn't strictly necessary since we only support a
// single device on the I2C1 bus, but in the future that may change.
static void *ttp229_malloc(size_t size) {
	static uint8_t pool[16] __attribute__ ((section(".sram2")));
	static uint32_t free = 0;
	void *ptr = NULL;
	// round up to 32-bit alignment
	size = (size + 3) & ~3;
	chSysLock();
	if ((free + size) <= sizeof(pool)) {
		ptr = &pool[free];
		free += size;
	}
	chSysUnlock();
	return ptr;
}

//-----------------------------------------------------------------------------
// i2c read routine (the device is read only)

// read a 16 bit value
static int ttp229_rd16(struct ttp229_state *s, uint16_t * val) {
	i2cAcquireBus(s->dev);
	msg_t rc = i2cMasterReceiveTimeout(s->dev, s->adr, s->rx, 2, TTP229_I2C_TIMEOUT);
	i2cReleaseBus(s->dev);
	*val = *(uint16_t *) s->rx;
	return (rc == RDY_OK) ? 0 : -1;
}

//-----------------------------------------------------------------------------

static void ttp229_info(struct ttp229_state *s, const char *msg) {
	LogTextMessage("ttp229(0x%x) %s", s->adr, msg);
}

static void ttp229_error(struct ttp229_state *s, const char *msg) {
	ttp229_info(s, msg);
	// wait for the parent thread to kill us
	while (!chThdShouldTerminate()) {
		chThdSleepMilliseconds(100);
	}
}

static msg_t ttp229_thread(void *arg) {
	struct ttp229_state *s = (struct ttp229_state *)arg;
	int rc = 0;
	uint16_t val;

	//ttp229_info(s, "starting thread");

	// allocate i2c rx buffer
	s->rx = (uint8_t *) ttp229_malloc(2);
	if (s->rx == NULL) {
		ttp229_error(s, "out of memory");
		goto exit;
	}
	// try a read to see if the device is there
	rc = ttp229_rd16(s, &val);
	if (rc < 0) {
		ttp229_error(s, "i2c error");
		goto exit;
	}
	// poll for the changing touch status
	while (!chThdShouldTerminate()) {
		// read the touch status
		ttp229_rd16(s, &val);
		chSysLock();
		s->touch = val;
		chSysUnlock();
		chThdSleepMilliseconds(32);	// 8 Hz per pin configuration
	}

 exit:
	//ttp229_info(s, "stopping thread");
	chThdExit((msg_t) 0);
}

//-----------------------------------------------------------------------------

static void ttp229_init(struct ttp229_state *s) {
	// initialise the state
	memset(s, 0, sizeof(struct ttp229_state));
	s->dev = &I2CD1;
	s->adr = TTP229_I2C_ADR;
	// create the polling thread
	s->thd = chThdCreateStatic(s->thd_wa, sizeof(s->thd_wa), NORMALPRIO, ttp229_thread, (void *)s);
}

static void ttp229_dispose(struct ttp229_state *s) {
	// stop thread
	chThdTerminate(s->thd);
	chThdWait(s->thd);
}

// krate with integer output
static void ttp229_krate_int(struct ttp229_state *s,	//
			     int32_t * touch	//
    ) {
	// get the current touch status
	chSysLock();
	*touch = s->touch;
	chSysUnlock();
}

// krate with boolean output
static void ttp229_krate_bool(struct ttp229_state *s,	//
			      bool * o0, bool * o1, bool * o2, bool * o3,	//
			      bool * o4, bool * o5, bool * o6, bool * o7,	//
			      bool * o8, bool * o9, bool * o10, bool * o11,	//
			      bool * o12, bool * o13, bool * o14, bool * o15	//
    ) {
	// get the current touch status
	chSysLock();
	int32_t touch = s->touch;
	chSysUnlock();
	*o0 = (touch >> 0) & 1;
	*o1 = (touch >> 1) & 1;
	*o2 = (touch >> 2) & 1;
	*o3 = (touch >> 3) & 1;
	*o4 = (touch >> 4) & 1;
	*o5 = (touch >> 5) & 1;
	*o6 = (touch >> 6) & 1;
	*o7 = (touch >> 7) & 1;
	*o8 = (touch >> 8) & 1;
	*o9 = (touch >> 9) & 1;
	*o10 = (touch >> 10) & 1;
	*o11 = (touch >> 11) & 1;
	*o12 = (touch >> 12) & 1;
	*o13 = (touch >> 13) & 1;
	*o14 = (touch >> 14) & 1;
	*o15 = (touch >> 15) & 1;
}

//-----------------------------------------------------------------------------

#endif				// DEADSY_TTP229_H

//-----------------------------------------------------------------------------
