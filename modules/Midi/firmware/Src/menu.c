/*
 * menu.c
 *
 *  Created on: Oct 27, 2019
 *      Author: etienne
 */

#include <stdint.h>
#include "main.h"
#include "string.h"
#include "nokia5110_LCD.h"

char buffer[48];
uint16_t _old_position = 0;

enum menu_types {
	LOGO,MAIN, CHANNEL
} menu_selected;

void menu_init() {
	// LCD - assign SPI interface and pins
	LCD_setRST(LCD_RESET_GPIO_Port, LCD_RESET_Pin);
	LCD_setCE(LCD_SPI_CE_GPIO_Port, LCD_SPI_CE_Pin);
	LCD_setDC(LCD_DC_GPIO_Port, LCD_DC_Pin);
	LCD_setDIN(LCD_SPI_DIN_GPIO_Port, LCD_SPI_DIN_Pin);
	LCD_setCLK(LCD_SPI_CLK_GPIO_Port, LCD_SPI_CLK_Pin);

	LCD_init();
}

void menu_logo() {
	if(menu_selected != LOGO )
	{ LCD_clrScr(); }

	LCD_invertText(false); LCD_print("elektrophon", 8, 2);
	LCD_invertText(false); LCD_print("kontakt", 20, 3);
	menu_selected = LOGO;
}

void _main_menu(uint16_t position) {
	if(menu_selected != MAIN || _old_position != position ) {
		if(menu_selected != MAIN || _old_position != position ) {
			LCD_clrScr();
		}

		LCD_invertText(1==position); LCD_print("01", 0, 2);
		LCD_invertText(2==position); LCD_print("02", 20, 2);
		LCD_invertText(3==position); LCD_print("03", 40, 2);
		LCD_invertText(4==position); LCD_print("04", 60, 2);
		LCD_invertText(5==position); LCD_print("05", 0, 3);
		LCD_invertText(6==position); LCD_print("06", 20, 3);
		LCD_invertText(7==position); LCD_print("07", 40, 3);
		LCD_invertText(8==position); LCD_print("08", 60, 3);
		LCD_invertText(9==position); LCD_print("09", 0, 4);
		LCD_invertText(10==position); LCD_print("10", 20, 4);
		LCD_invertText(11==position); LCD_print("11", 40, 4);
		LCD_invertText(12==position); LCD_print("12", 60, 4);
		LCD_invertText(13==position); LCD_print("13", 00, 5);
		LCD_invertText(14==position); LCD_print("14", 20, 5);
		LCD_invertText(15==position); LCD_print("15", 40, 5);
		LCD_invertText(16==position); LCD_print("16", 60, 5);
		_old_position = position;
		menu_selected = MAIN;
	}
}

void _sub_menu(uint16_t position) {
//	if(menu_selected != CHANNEL ) {
//		LCD_clrScr();
//		menu_selected = CHANNEL;
//	}
//
//	config_t _temp = midi_config(0);
//
//	snprintf(buffer, 48, "MIDI: ");
//	uint8_t _val = _temp.midi_channel;
//	snprintf(buffer+strlen(buffer), 4, "%d", _val );
//	LCD_invertText(1==position); LCD_print(buffer, 0, 2);
//
//	snprintf(buffer, 48, "TYPE: ");
//	enum PORT_TYPE __val = _temp.type;
//	if( __val == CV ) {
//		snprintf(buffer+strlen(buffer), 4, "CV" );
//	} else if( __val == OFF ) {
//		snprintf(buffer+strlen(buffer), 4, "OFF" );
//	}
//	LCD_invertText(2==position); LCD_print(buffer, 0, 3);
//	LCD_invertText(3==position); LCD_print("<--", 0, 4);
}

void process_menu(uint8_t button, uint16_t position) {
	LCD_invertText(false); LCD_print("elektrophon", 8, 0);

	snprintf(buffer, 48, "pos: %d, %d ", position, button);
	LCD_invertText(false); LCD_print(buffer, 0, 1);


	if( button ) {
		if( menu_selected == MAIN ) {
			_sub_menu(1);
		} else if( menu_selected == CHANNEL ) {
			if( position == 3 )
				_main_menu(1);
		}
	} else {
		if(menu_selected == LOGO || menu_selected == MAIN ) {
			_main_menu(position);
		} else if(menu_selected == CHANNEL ) {
			_sub_menu(position);
		}
	}
}
