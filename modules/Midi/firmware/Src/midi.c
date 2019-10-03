/*
 * midi.c
 *
 *  Created on: Sep 30, 2019
 *      Author: etienne
 */

#include "stm32f1xx_hal.h"
#include "cmsis_os.h"
#include "main.h"
#include "midi.h"

struct config_t _config[PORTS];

uint8_t dac_data[16][2];
uint8_t pending_dac_channel = 0;

extern SPI_HandleTypeDef hspi1;

void set_voltage(uint8_t channel, uint8_t gain, uint16_t mV) {

	//calculate value
	uint16_t command = (channel%2) ? 0x9000 : 0x1000;
    command |= gain ? 0x0000 : 0x2000;
    command |= (mV & 0x0FFF);
    //copy the value to buffer
	dac_data[channel][0] = command>>8;
	dac_data[channel][1] = command&0xFF;

	while(pending_dac_channel>0) {} //wait for pending transaction
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
	HAL_SPI_Transmit_DMA(&hspi1, dac_data[channel], 2);
}

void set_config(unsigned char port, enum PORT_TYPE type, uint8_t midi_channel ) {
	if( port > PORTS ) return;
	_config[port].type = type;
	_config[port].midi_channel = midi_channel;
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

void start_synth_task(void const * argument) {
	for(;;) {
		for( unsigned char i = 0; i<PORTS; i++ ) {
			switch(_config[i].type) {
			case CV:
				if(_config[i].old_val != _config[i].val ) { //values changed?
					_config[i].old_val = _config[i].val;
					set_voltage(i, 0, _config[i].val);
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
				if( _config[i].last_time == 0 || _config[i].last_time < HAL_GetTick() ) {
					_config[i].last_time = HAL_GetTick() + 100;
					if(_config[i].old_val == 0 ) {
						_config[i].state = RAISE;
					} else if( _config[i].old_val == 4095 ) {
						_config[i].state = FALL;
					} else { //if state is unknown
						_config[i].state = RAISE;
						_config[i].val = 0;
					}

					if( _config[i].state == RAISE ) {
						_config[i].val = _config[i].val + 1;
					} else {
						_config[i].val = _config[i].val - 1;
					}
					set_voltage(i, 1, _config[i].val);
				}
				break;

			case GATE: break;
			case TRIGGER: break;
			case PITCH_BEND: break;
			default: break;
			}
		}

	    osDelay(100);
	}
}
