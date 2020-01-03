#ifndef __CONSTANTS_H
#define __CONSTANTS_H

#define NUM_VOICES 1
#define SAMPLE_LENGTH 255
#define ACCUMULATOR_STEPS 2048
struct DDS {
    uint16_t increment;
    uint16_t position;
    uint16_t accumulator;
};
struct DDS voices[NUM_VOICES];

#endif /* __CONSTANTS_H */
