/*
 * midi.h
 *
 *  Created on: Sep 30, 2019
 *      Author: etienne
 */

#ifndef MIDI_H_
#define MIDI_H_

#include <stm32f1xx_hal.h>
#include <stdbool.h>

#ifdef __cplusplus
 extern "C" {
#endif

enum MIDI_MESSAGE { UNKNOWN=0, NOTE_OFF=0b1000, NOTE_ON=0b1001, POLY_KEY=0b1010, CONTROL_CHANGE=0b1011,
       PROGRAM_CHANGE=0b1100, AFTER_TOUCH=0b1101, PITCH_BEND=0b1110, SYSTEM=0b1111
};

enum MIDI_MESSAGE typeFromStatusByte(uint8_t* dat);


#endif /* MIDI_H_ */
