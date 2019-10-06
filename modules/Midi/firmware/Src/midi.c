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

struct config_t _config[PORTS];

uint8_t dac_data[2];
uint8_t pending_dac_channel = 0;
uint32_t activity_led_timer = 0;

extern SPI_HandleTypeDef hspi1;

void set_voltage(uint8_t channel, uint8_t gain, uint16_t mV) {

	HAL_GPIO_WritePin(LED_ACTIVITY_GPIO_Port, LED_ACTIVITY_Pin, SET);
	activity_led_timer = HAL_GetTick() + 100;

	//calculate value
	uint16_t command = (channel%2) ? 0x9000 : 0x1000;
    command |= gain ? 0x0000 : 0x2000;
    command |= (mV & 0x0FFF);

    //copy the value to buffer
//	while(pending_dac_channel>0) {} //wait for pending transaction
    dac_data[0] = command>>8;
    dac_data[1] = command&0xFF;

//    dac_data[1] = mV & 0xff;
//    dac_data[0] = ((mV >> 8) & 0xff) | 0x10;

	pending_dac_channel = channel;

	switch(channel/2) {
		case 0: HAL_GPIO_WritePin(DAC_SELECT_1_GPIO_Port, DAC_SELECT_1_Pin, RESET); break;
		case 1: HAL_GPIO_WritePin(DAC_SELECT_2_GPIO_Port, DAC_SELECT_2_Pin, RESET); break;
		case 2: HAL_GPIO_WritePin(DAC_SELECT_3_GPIO_Port, DAC_SELECT_3_Pin, RESET); break;
		case 3: HAL_GPIO_WritePin(DAC_SELECT_4_GPIO_Port, DAC_SELECT_4_Pin, RESET); break;
		case 4: HAL_GPIO_WritePin(DAC_SELECT_5_GPIO_Port, DAC_SELECT_5_Pin, RESET); break;
		case 5: HAL_GPIO_WritePin(DAC_SELECT_6_GPIO_Port, DAC_SELECT_6_Pin, RESET); break;
		case 6: HAL_GPIO_WritePin(DAC_SELECT_7_GPIO_Port, DAC_SELECT_7_Pin, RESET); break;
		case 7: HAL_GPIO_WritePin(DAC_SELECT_8_GPIO_Port, DAC_SELECT_8_Pin, RESET); break;
	}
	HAL_SPI_Transmit(&hspi1,(uint8_t*)dac_data,2,1000);
//	HAL_SPI_Transmit_DMA(&hspi1, (uint8_t*)dac_data, 2);
	switch(channel/2) {
		case 0: HAL_GPIO_WritePin(DAC_SELECT_1_GPIO_Port, DAC_SELECT_1_Pin, SET); break;
		case 1: HAL_GPIO_WritePin(DAC_SELECT_2_GPIO_Port, DAC_SELECT_2_Pin, SET); break;
		case 2: HAL_GPIO_WritePin(DAC_SELECT_3_GPIO_Port, DAC_SELECT_3_Pin, SET); break;
		case 3: HAL_GPIO_WritePin(DAC_SELECT_4_GPIO_Port, DAC_SELECT_4_Pin, SET); break;
		case 4: HAL_GPIO_WritePin(DAC_SELECT_5_GPIO_Port, DAC_SELECT_5_Pin, SET); break;
		case 5: HAL_GPIO_WritePin(DAC_SELECT_6_GPIO_Port, DAC_SELECT_6_Pin, SET); break;
		case 6: HAL_GPIO_WritePin(DAC_SELECT_7_GPIO_Port, DAC_SELECT_7_Pin, SET); break;
		case 7: HAL_GPIO_WritePin(DAC_SELECT_8_GPIO_Port, DAC_SELECT_8_Pin, SET); break;
	}


}

void set_config(unsigned char port, enum PORT_TYPE type, uint8_t midi_channel ) {
	if( port > PORTS ) return;
	_config[port].type = type;
	_config[port].midi_channel = midi_channel;

	switch(type) {
	case TRIANGLE:
		_config[port].val = 0;
		_config[port].old_val = 0;
		_config[port].state = RAISE;
		_config[port].last_time = 0;
		break;
	default:
		break;
	}
}

struct config_t* get_config(uint8_t port) {
//TODO	if( port < 0 || port > PORTS ) return;
	return &_config[port];
}

void note_on(unsigned char channel, uint8_t note, uint8_t velocity) {
	for( unsigned char i =0; i<PORTS; i++ ) {
		if(_config[i].midi_channel == channel ) {
			switch(_config[i].type) {
			case CV:
			case PWM:
			case TRIANGLE:
			case SAW:
			case SINE:
				_config[i].val = note;
				break;
			case GATE:
				_config[i].val = velocity;
				break;
			case TRIGGER:
				_config[i].val = 1;
				_config[i].old_val = 0;
				break;
			}
		}
	}
}

void note_off(unsigned char channel, uint8_t note, uint8_t velocity) {
	for( unsigned char i =0; i<PORTS; i++ ) {
		if(_config[i].midi_channel == channel ) {
			switch(_config[i].type) {
			case CV: break;
			case PWM:
			case TRIANGLE:
			case SAW:
			case SINE:
				_config[i].val = note;
				break;
			case GATE:
				_config[i].val = velocity;
				break;
			case TRIGGER:
				_config[i].val = 1;
				_config[i].old_val = 0;
				break;
			}
		}
	}
}

void pitch_bend(unsigned char channel, uint8_t bend) {
	for( unsigned char i =0; i<PORTS; i++ ) {
		if(_config[i].midi_channel == channel &&
		   _config[i].type == PITCH_BEND	) {
			_config[i].val = bend;
		}
	}
}

void process() {
	if( activity_led_timer != 0 && activity_led_timer < HAL_GetTick() ) {
		HAL_GPIO_WritePin(LED_ACTIVITY_GPIO_Port, LED_ACTIVITY_Pin, RESET);
		activity_led_timer = 0;
	}

	for( unsigned char i = 0; i<PORTS; i++ ) {
		switch(_config[i].type) {
		case CV:
			if(_config[i].old_val != _config[i].val ) { //values changed?
				_config[i].old_val = _config[i].val;
				uint16_t mV = (unsigned int) ((float) _config[i].val * NOTE_SF + 0.5);
				set_voltage(i, 0, mV);
			}
			break;

		case GATE:
			if(_config[i].old_val != _config[i].val ) { //values changed?
				_config[i].old_val = _config[i].val;
				 set_voltage(i, 1, _config[i].val<<5);
			}
			break;

		case TRIGGER:
			if(_config[i].old_val != _config[i].val ) { //values changed?
				_config[i].old_val = _config[i].val;
				 set_voltage(i, 1, 4095);
				_config[i].last_time = HAL_GetTick() + 100;

			} else if(_config[i].last_time > HAL_GetTick() ) {
				_config[i].old_val = _config[i].val;
				_config[i].last_time = 0;
				 set_voltage(i, 1, 0);
			}
			break;

		case PWM:
			if( _config[i].last_time == 0 || _config[i].last_time < HAL_GetTick() ) {
				_config[i].last_time = HAL_GetTick() + 100;
				if(_config[i].old_val == 0 ) {
					set_voltage(i, 1, 255);
					_config[i].old_val = 255;
				} else {
					set_voltage(i, 1, 0);
					_config[i].old_val = 0;
				}
			}
			break;

		case TRIANGLE:
//				if( _config[i].last_time == 0 || _config[i].last_time < HAL_GetTick() ) {
				_config[i].last_time = HAL_GetTick() + 100;
				if(_config[i].val < 32 ) {
					_config[i].state = RAISE;
				} else if( _config[i].val > 4064 ) {
					_config[i].state = FALL;
				}

				if( _config[i].state == RAISE ) {
					_config[i].val = _config[i].val + 64;
				} else {
					_config[i].val = _config[i].val - 64;
				}
				set_voltage(i, 0, _config[i].val);
				 _config[i].last_time = HAL_GetTick() + 100;
//				}
			break;

		case PITCH_BEND: break;
		default: break;
		}
	}
}
