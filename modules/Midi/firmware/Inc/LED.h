/*
 * LED.h
 *
 *  Created on: Sep 29, 2019
 *      Author: etienne
 */

#ifndef LED_H_
#define LED_H_

void LED_Connect();
void LED_Disconnect();
void LED_Activity();
void LED_Heartbeat();
void LED_Clock();

extern void LED_Callback(void const * argument);

#endif /* LED_H_ */
