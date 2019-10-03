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

#define PORTS 15

 enum PORT_TYPE { OFF, CV, GATE, PITCH_BEND, TRIGGER, ADSR, PWM, TRIANGLE, SAW, SINE };
 enum CHANNEL_STATE { RAISE, FALL };

struct config_t {
	enum PORT_TYPE type;
	enum CHANNEL_STATE state;
	unsigned char midi_channel;
	uint8_t val;
	uint8_t old_val;
	uint32_t last_time;
};

void set_config(unsigned char port, enum PORT_TYPE type, uint8_t midi_channel );
struct config_t* get_config(unsigned char port);

void note_on(unsigned char channel, uint8_t note, uint8_t velocity);
void note_off(unsigned char channel, uint8_t note, uint8_t velocity);
void pitch_bend(unsigned char channel, uint8_t bend);

#endif /* MIDI_H_ */
