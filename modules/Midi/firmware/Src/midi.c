/*
 * midi.c
 *
 *  Created on: Sep 30, 2019
 *      Author: etienne
 */

#include "midi.h"

enum MIDI_MESSAGE typeFromStatusByte(uint8_t* dat) {

	uint8_t command = (*dat >> 4) & 0xFF;
	switch(command) {
	case NOTE_OFF: return NOTE_OFF;
	case NOTE_ON: return NOTE_ON;
	case POLY_KEY: return POLY_KEY;
	case CONTROL_CHANGE: return CONTROL_CHANGE;
	case PROGRAM_CHANGE: return PROGRAM_CHANGE;
	case PITCH_BEND: return PITCH_BEND;
	case SYSTEM: return SYSTEM;
	}
    return UNKNOWN;
}

