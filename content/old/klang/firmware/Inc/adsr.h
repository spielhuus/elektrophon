#ifndef __ADSR_H
#define __ADSR_H

#include "math.h"
#include "arm_math.h"

typedef enum ADSR_STATES {SILENT, ATTACK, DECAY, SUSTAIN, RELEASE} ADSR_STATES;

typedef struct t_envelope {
  uint8_t state;
  uint16_t envelopeCounter;
} t_envelope;

typedef struct adsr_t {
	ADSR_STATES state;
	float32_t counter;
	float32_t attack;
	float32_t sustain;
	float32_t release;
	float32_t decay;
} adsr_t;

float32_t calculate(adsr_t * a);
void gate(adsr_t* a, uint8_t value);

#endif /* __ADSR_H */
