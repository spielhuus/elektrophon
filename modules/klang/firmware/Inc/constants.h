#ifndef __KLANG_CONSTANTS_H
#define __KLANG_CONSTANTS_H

#define NUM_VOICES 1
#define SAMPLE_LENGTH 1024
#define ACCUMULATOR_STEPS 10240
enum ADSR {ATTACK, DECAY, SUSTAIN, RELEASE, NONE};
struct DDS {
    uint32_t increment;
    uint32_t position;
    uint32_t accumulator;
    uint8_t velocity;
    enum ADSR adsr;
    uint8_t envelope;
};
struct DDS voices[NUM_VOICES];
uint32_t tunes[128];
#endif /* __KLANG_CONSTANTS_H */
