#ifndef __KLANG_CONSTANTS_H
#define __KLANG_CONSTANTS_H

#define NUM_VOICES 4
#define NUM_HARMONICS 3
enum ADSR {ATTACK, DECAY, SUSTAIN, RELEASE, NONE};
struct Harmonics {
    uint32_t increment;
    uint32_t accumulator;

};
struct DDS {
	uint8_t note;
    uint8_t velocity;
    enum ADSR adsr;
    uint32_t envelope;
    struct Harmonics harmonics[NUM_HARMONICS];
};
struct DDS voices[NUM_VOICES];
uint32_t tunes[256];
#endif /* __KLANG_CONSTANTS_H */
