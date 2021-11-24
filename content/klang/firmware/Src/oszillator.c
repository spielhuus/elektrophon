/*
 * oszillator.c
 */

#include "constants.h"
#include "adsr.h"

#include "oszillator.h"

dds_t voices[NUM_VOICES];
adsr_t adsr[NUM_VOICES];

uint32_t tunes[128] = {
		877870, 930071, 985375, 1043969, 1106047, 1171815, 1241495, 1315318, 1393531, 1476395,
		1564186, 1657197, 1755739, 1860141, 1970751, 2087938, 2212093, 2343631, 2482991, 2630637, 2787063, 2952790,
		3128372, 3314395, 3511479, 3720282, 3941502, 4175876, 4424186, 4687262, 4965981, 5261274, 5574125, 5905580,
		6256744, 6628789, 7022958, 7440565, 7883004, 8351751, 8848372, 9374524, 9931962, 10522547, 11148251, 11811160,
		12513488, 13257579, 14045916, 14881129, 15766007, 16703503, 17696745, 18749048, 19863924, 21045095, 22296501,
		23622320, 25026976, 26515158, 28091831, 29762258, 31532014, 33407005, 35393489, 37498096, 39727849, 42090189,
		44593002, 47244640, 50053953, 53030316, 56183662, 59524517, 63064029, 66814011, 70786979, 74996192, 79455697,
		84180379, 89186005, 94489281, 100107906, 106060631, 112367325, 119049034, 126128057, 133628022, 141573958,
		149992383, 158911395, 168360758, 178372009, 188978561, 200215811, 212121263, 224734649, 238098067, 252256115,
		267256044, 283147915, 299984767, 317822789, 336721516, 356744019, 377957122, 400431622, 424242525, 449469299,
		476196134, 504512230, 534512088, 566295831, 599969533, 635645578, 673443031, 713488038, 755914244, 800863244,
		848485051, 898938597, 952392268, 1009024459, 1069024176, 1132591661, 1199939066, 1271291156, 1346886062
};

void oszillator_init() {
	for(uint8_t i = 0; i<NUM_VOICES; i++ ) {
		adsr[i].attack = 0.01;
		adsr[i].decay = 0.01;
		adsr[i].sustain = 0.8;
		adsr[i].release = 0.01;
		adsr[i].state = SILENT;
		adsr[i].counter = 0;
		voices[i].increment = 877870;
	}
}

uint16_t voice_notes[128];
uint8_t voice_index = 0;
void note_on(uint8_t channel, uint8_t note, uint8_t velocity) {
	if( channel == 0 && note < 128 ) {
		voices[voice_index].increment = tunes[note];
		gate(&adsr[voice_index], velocity > 0);

		voice_notes[note] = voice_index;
    	voice_index += 1;
		if(voice_index >= NUM_VOICES )
		{voice_index = 0;}
	}
}
void note_off(uint8_t channel, uint8_t note, uint8_t velocity) {
	if( channel == 0 ) {
		gate(&adsr[voice_notes[note]], 0);
		voice_notes[note] = 0;
	}
}
