/*
 * midi.c
 *
 *  Created on: Sep 30, 2019
 *      Author: etienne
 */

#include "stm32f1xx_hal.h"
#include "main.h"
#include "midi.h"

uint8_t _dac_data[2];

extern SPI_HandleTypeDef hspi1;

void set_voltage( uint8_t channel, uint8_t gain, uint16_t mV ) {

	//calculate value
	uint16_t command = (channel) ? 0x9000 : 0x1000;
    command |= gain ? 0x0000 : 0x2000;
    command |= (mV & 0x0FFF);

    _dac_data[0] = command>>8;
    _dac_data[1] = command&0xFF;

	HAL_SPI_Transmit(&hspi1,(uint8_t*)_dac_data,2,1000);
}

uint16_t mV = 0;
void note_on(uint8_t channel, uint8_t note, uint8_t velocity) {

	if( channel < MIDI_CHANNELS ) {
		HAL_GPIO_TogglePin(LED_ACTIVITY_GPIO_Port, LED_ACTIVITY_Pin);

		if( channel == 0 ) {
			HAL_GPIO_WritePin(DAC_SELECT_1_GPIO_Port, DAC_SELECT_1_Pin, RESET);
		} else if( channel == 1 ) {
			HAL_GPIO_WritePin(DAC_SELECT_2_GPIO_Port, DAC_SELECT_2_Pin, RESET);
		} else if( channel == 2 ) {
			HAL_GPIO_WritePin(DAC_SELECT_3_GPIO_Port, DAC_SELECT_3_Pin, RESET);
		}

		//set the note pitch
		mV = (uint16_t) ((float) note * NOTE_SF + 0.5);
		set_voltage(0, 1, mV);

		//set the velocity
		set_voltage(1, 0, velocity << 5);

		//set the trigger
		HAL_GPIO_WritePin(SIG_TRIGGER_1_GPIO_Port, SIG_TRIGGER_1_Pin, RESET);
		trigger_timer[channel] = HAL_GetTick() + TRIGGER_TIMER;

		if( channel == 0 ) {
			HAL_GPIO_WritePin(DAC_SELECT_1_GPIO_Port, DAC_SELECT_1_Pin, SET);
		} else if( channel == 1 ) {
			HAL_GPIO_WritePin(DAC_SELECT_2_GPIO_Port, DAC_SELECT_2_Pin, SET);
		} else if( channel == 2 ) {
			HAL_GPIO_WritePin(DAC_SELECT_3_GPIO_Port, DAC_SELECT_3_Pin, SET);
		}
	}
}

void note_off(uint8_t channel, uint8_t note, uint8_t velocity) {

	if( channel < MIDI_CHANNELS ) {
		HAL_GPIO_TogglePin(LED_ACTIVITY_GPIO_Port, LED_ACTIVITY_Pin);

		if( channel == 0 ) {
			HAL_GPIO_WritePin(DAC_SELECT_1_GPIO_Port, DAC_SELECT_1_Pin, RESET);
		} else if( channel == 1 ) {
			HAL_GPIO_WritePin(DAC_SELECT_2_GPIO_Port, DAC_SELECT_2_Pin, RESET);
		} else if( channel == 2 ) {
			HAL_GPIO_WritePin(DAC_SELECT_3_GPIO_Port, DAC_SELECT_3_Pin, RESET);
		}

		//set the note pitch
		mV = (uint16_t) ((float) note * NOTE_SF + 0.5);
		set_voltage(0, 1, mV);

		//set the velocity
		set_voltage(1, 0, velocity << 5);

		if( channel == 0 ) {
			HAL_GPIO_WritePin(DAC_SELECT_1_GPIO_Port, DAC_SELECT_1_Pin, SET);
		} else if( channel == 1 ) {
			HAL_GPIO_WritePin(DAC_SELECT_2_GPIO_Port, DAC_SELECT_2_Pin, SET);
		} else if( channel == 2 ) {
			HAL_GPIO_WritePin(DAC_SELECT_3_GPIO_Port, DAC_SELECT_3_Pin, SET);
		}
	}
}

void pitch_bend(unsigned char channel, uint8_t bend) {
	if( channel < MIDI_CHANNELS ) {
		uint8_t dac_channel = 0;
		if( channel == 0 ) {
			HAL_GPIO_WritePin(DAC_SELECT_4_GPIO_Port, DAC_SELECT_4_Pin, RESET);
			dac_channel = 0;
		} else if( channel == 1 ) {
			HAL_GPIO_WritePin(DAC_SELECT_4_GPIO_Port, DAC_SELECT_4_Pin, RESET);
			dac_channel = 1;
		} else if( channel == 2 ) {
			HAL_GPIO_WritePin(DAC_SELECT_5_GPIO_Port, DAC_SELECT_5_Pin, RESET);
			dac_channel = 0;
		}
		set_voltage(dac_channel, 0, bend);

		if( channel == 0 ) {
			HAL_GPIO_WritePin(DAC_SELECT_4_GPIO_Port, DAC_SELECT_4_Pin, SET);
		} else if( channel == 1 ) {
			HAL_GPIO_WritePin(DAC_SELECT_4_GPIO_Port, DAC_SELECT_4_Pin, SET);
		} else if( channel == 2 ) {
			HAL_GPIO_WritePin(DAC_SELECT_5_GPIO_Port, DAC_SELECT_5_Pin, SET);
		}
	}
 }

void midi_process() {
	for( unsigned char i = 0; i<MIDI_CHANNELS; i++ ) {
		if( trigger_timer[i] != 0 && trigger_timer[i] > HAL_GetTick() ) {
			HAL_GPIO_WritePin(SIG_TRIGGER_1_GPIO_Port, SIG_TRIGGER_1_Pin, SET);
			trigger_timer[i] = 0;
		}
	}
}
