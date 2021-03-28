#ifndef __OSZILLATOR_H
#define __OSZILLATOR_H

#include "stm32f407xx.h"
#include "math.h"
#include "arm_math.h"

#define NUM_VOICES 1

typedef struct dds_t {
    uint32_t accumulator;
    uint32_t increment;
} dds_t;

void oszillator_init();

/* void note_on(uint8_t channel, uint8_t note, uint8_t velocity);
void note_off(uint8_t channel, uint8_t note, uint8_t velocity); */

#endif /* __OSZILLATOR_H */
