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

void note_on(uint8_t channel, uint8_t note, uint8_t velocity);
void note_off(uint8_t channel, uint8_t note, uint8_t velocity);
void pitch_bend(uint8_t channel, uint8_t bend);

void midi_process();

#endif /* MIDI_H_ */
