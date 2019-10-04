/*
 * LED.c
 *
 *  Created on: Sep 29, 2019
 *      Author: etienne
 */

#include "main.h"

uint32_t clock_tick = 0;
uint32_t heartbeat_tick = 0;
uint32_t activity_tick = 0;

//void LED_Connect() {
//
//}
//void LED_Disconnect() {
//	  HAL_GPIO_WritePin(LED_CONNECT_GPIO_Port, LED_CONNECT_Pin, SET);
//}
//void LED_Activity() {
//	  HAL_GPIO_WritePin(LED_TX_GPIO_Port, LED_TX_Pin, SET);
//	  activity_tick = HAL_GetTick() + 100;
//}
//void LED_Heartbeat() {
//	  HAL_GPIO_WritePin(LED_HEARTBEAT_GPIO_Port, LED_HEARTBEAT_Pin, SET);
//	  heartbeat_tick = HAL_GetTick() + 200;
//}
//void LED_Clock() {
//	  HAL_GPIO_WritePin(LED_CLOCK_GPIO_Port, LED_CLOCK_Pin, SET);
//	  clock_tick = HAL_GetTick() + 200;
//}

//extern void LED_Callback(void const * argument) {
//	if( clock_tick != 0 && clock_tick < HAL_GetTick() ) {
//		clock_tick = 0;
//		HAL_GPIO_WritePin(LED_CLOCK_GPIO_Port, LED_CLOCK_Pin, RESET);
//	}
//	if( heartbeat_tick != 0 && heartbeat_tick < HAL_GetTick() ) {
//		heartbeat_tick = 0;
//		HAL_GPIO_WritePin(LED_HEARTBEAT_GPIO_Port, LED_HEARTBEAT_Pin, RESET);
//	}
//	if( activity_tick != 0 && activity_tick < HAL_GetTick() ) {
//		activity_tick = 0;
//		HAL_GPIO_WritePin(LED_TX_GPIO_Port, LED_TX_Pin, RESET);
//	}
//}
