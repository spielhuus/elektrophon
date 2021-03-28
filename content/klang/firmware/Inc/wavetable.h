#ifndef __WAVETABLE_H
#define __WAVETABLE_H

#include "stm32f407xx.h"
#include "math.h"
#include "arm_math.h"

#define WAVETABLE_SIZE 512

extern float32_t wt_sine[WAVETABLE_SIZE];

void init_wavetable();

#endif /* __WAVETABLE_H */
