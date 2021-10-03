#ifndef __WAVETABLE_H
#define __WAVETABLE_H

#include "math.h"
#include <stdint.h>
#define BUF_SIZE 128

struct DDS {
    uint32_t increment;
    uint32_t position;
    uint32_t accumulator;
    const float_t (*sample)[1024];   /* pointer to beginning of sample in memory */
};

extern const uint16_t wt_sine[1024];
extern const uint32_t tunes[128];

#endif /* __WAVETABLE_H */
