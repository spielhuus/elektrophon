/*
 * adsr.c
 */

#include "adsr.h"

void gate(adsr_t* a, uint8_t value) {
	if(value == 0) {
		a->state = RELEASE;
	} else a->state = ATTACK;
}

float32_t calculate(adsr_t* a) {
	switch(a->state) {
		case ATTACK:
			a->counter = a->counter + a->attack;
			if(a->counter>= 1) {
				a->counter = 1;
				a->state = DECAY;
			}
			break;
		case DECAY:
			if(a->counter > a->sustain) {
				a->counter = a->counter - a->decay;
			} else a->state = SUSTAIN;
			break;
		case SUSTAIN:
			break;
		case RELEASE:
			a->counter = a->counter - a->release;
			if(a->counter <= 0) {
				a->counter = 0;
				a->state = SILENT;
			}
			break;
	}
	return a->counter;
}
