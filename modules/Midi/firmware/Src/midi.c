/*
 * midi.c
 *
 *  Created on: Sep 30, 2019
 *      Author: etienne
 */

#include "stm32f1xx_hal.h"
#include "main.h"
#include "midi.h"

#define MIDI_CHANNELS 8
#define MIDI_NOTES 88
// Rescale 88 notes to 4096 mV:
//    noteMsg = 0 -> 0 mV
//    noteMsg = 87 -> 4096 mV
// DAC output will be (4095/87) = 47.069 mV per note, and 564.9655 mV per octive
// Note that DAC output will need to be amplified by 1.77X for the standard 1V/octave
#define NOTE_SF 47.069f // This value can be tuned if CV output isn't exactly 1V/octave
#define TRIGGER_VALUE 4095
#define TRIGGER_TIMER 100

uint8_t dac_data[2];

extern SPI_HandleTypeDef hspi1;

void set_voltage(uint8_t channel, uint8_t gain, uint16_t mV) {

	HAL_GPIO_TogglePin(LED_CONNECT_GPIO_Port, LED_ACTIVITY_Pin);

	//calculate value
	uint16_t command = (channel%2) ? 0x9000 : 0x1000;
    command |= gain ? 0x0000 : 0x2000;
    command |= (mV & 0x0FFF);

    //copy the value to buffer
//	while(pending_dac_channel>0) {} //wait for pending transaction
    dac_data[0] = command>>8;
    dac_data[1] = command&0xFF;

    if(channel > PORTS ) {
    	while(1) {
			HAL_GPIO_WritePin(LED_CONNECT_GPIO_Port, LED_CONNECT_Pin, SET);
			HAL_Delay(1000);
			HAL_GPIO_WritePin(LED_CONNECT_GPIO_Port, LED_CONNECT_Pin, RESET);
			HAL_Delay(1000);
    	}
    }
	switch(channel/2) {
		case 0: HAL_GPIO_WritePin(DAC_SELECT_1_GPIO_Port, DAC_SELECT_1_Pin, RESET); break;
		case 1: HAL_GPIO_WritePin(DAC_SELECT_2_GPIO_Port, DAC_SELECT_2_Pin, RESET); break;
		case 2: HAL_GPIO_WritePin(DAC_SELECT_3_GPIO_Port, DAC_SELECT_3_Pin, RESET); break;
/*		case 3: HAL_GPIO_WritePin(DAC_SELECT_4_GPIO_Port, DAC_SELECT_4_Pin, RESET); break;
		case 4: HAL_GPIO_WritePin(DAC_SELECT_5_GPIO_Port, DAC_SELECT_5_Pin, RESET); break;
		case 5: HAL_GPIO_WritePin(DAC_SELECT_6_GPIO_Port, DAC_SELECT_6_Pin, RESET); break;
		case 6: HAL_GPIO_WritePin(DAC_SELECT_7_GPIO_Port, DAC_SELECT_7_Pin, RESET); break;
		case 7: HAL_GPIO_WritePin(DAC_SELECT_8_GPIO_Port, DAC_SELECT_8_Pin, RESET); break; */
	}

	HAL_SPI_Transmit(&hspi1,(uint8_t*)dac_data,2,1000);

	switch(channel/2) {
		case 0: HAL_GPIO_WritePin(DAC_SELECT_1_GPIO_Port, DAC_SELECT_1_Pin, SET); break;
		case 1: HAL_GPIO_WritePin(DAC_SELECT_2_GPIO_Port, DAC_SELECT_2_Pin, SET); break;
		case 2: HAL_GPIO_WritePin(DAC_SELECT_3_GPIO_Port, DAC_SELECT_3_Pin, SET); break;
/*		case 3: HAL_GPIO_WritePin(DAC_SELECT_4_GPIO_Port, DAC_SELECT_4_Pin, SET); break;
		case 4: HAL_GPIO_WritePin(DAC_SELECT_5_GPIO_Port, DAC_SELECT_5_Pin, SET); break;
		case 5: HAL_GPIO_WritePin(DAC_SELECT_6_GPIO_Port, DAC_SELECT_6_Pin, SET); break;
		case 6: HAL_GPIO_WritePin(DAC_SELECT_7_GPIO_Port, DAC_SELECT_7_Pin, SET); break;
		case 7: HAL_GPIO_WritePin(DAC_SELECT_8_GPIO_Port, DAC_SELECT_8_Pin, SET); break; */
	}
}

//void set_config(unsigned char port, enum PORT_TYPE type, uint8_t midi_channel ) {
//	if( port > PORTS ) return;
//	_config[port].type = type;
//	_config[port].midi_channel = midi_channel;
//
//	switch(type) {
//	case TRIANGLE:
//		_config[port].val = 0;
//		_config[port].old_val = 0;
//		_config[port].state = RAISE;
//		_config[port].last_time = 0;
//		break;
//	default:
//		break;
//	}
//}

uint16_t mV = 0;
void note_on(uint8_t channel, uint8_t note, uint8_t velocity) {
	for( unsigned char i =0; i<PORTS; i++ ) {
		if(configs[i].midi_channel == channel ) {
			switch(configs[i].type) {
			case CV:
				mV = (uint16_t) ((float) note * NOTE_SF + 0.5);
				set_voltage(i, 1, mV);
				break;
			case GATE:
				set_voltage(i, 0, velocity << 5);
				break;
			case TRIGGER:
				set_voltage(i, 0, TRIGGER_VALUE);
				configs[i].time = HAL_GetTick() + TRIGGER_TIMER;
				break;
			default:
				break;
			}
		}
	}
}

void note_off(uint8_t channel, uint8_t note, uint8_t velocity) {
	for( unsigned char i =0; i<PORTS; i++ ) {
		if(configs[i].midi_channel == channel ) {
			switch(configs[i].type) {
			case GATE:
				set_voltage(i, 0, velocity << 5);
				break;
			default:
				break;
			}
		}
	}
}

//void pitch_bend(unsigned char channel, uint8_t bend) {
//	for( unsigned char i =0; i<PORTS; i++ ) {
//		if(_config[i].midi_channel == channel &&
//		   _config[i].type == PITCH_BEND	) {
//			_config[i].val = bend;
//		}
//	}
//}

void midi_process() {

	for( unsigned char i = 0; i<PORTS; i++ ) {
		switch(configs[i].type) {
		case TRIGGER:
			if(configs[i].time != 0 && configs[i].time > HAL_GetTick() ) {
				 set_voltage(i, 1, 0);
				 configs[i].time = 0;
			}
			break;
		default:
			break;
		}
	}
}
