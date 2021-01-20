/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */
// DAC output will be (4095/87) = 47.069 mV per note, and 564.9655 mV per octive
// Note that DAC output will need to be amplified by 1.77X for the standard 1V/octave
#define NOTE_SF 47.069f // This value can be tuned if CV output isn't exactly 1V/octave
#define TRIGGER_VALUE 4000
#define TRIGGER_TIMER 20
#define MIDI_CHANNELS 3
//#define PORTS 16
//enum PORT_TYPE { OFF, CV, GATE, PITCH_BEND, TRIGGER };
//typedef struct {
//	enum PORT_TYPE type;
//	uint8_t midi_channel;
//	uint16_t val;
//	uint32_t time;
//} config_t;
//config_t configs[PORTS];
uint32_t trigger_timer[MIDI_CHANNELS];
/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define DAC_SELECT_1_Pin GPIO_PIN_0
#define DAC_SELECT_1_GPIO_Port GPIOA
#define DAC_SELECT_2_Pin GPIO_PIN_1
#define DAC_SELECT_2_GPIO_Port GPIOA
#define DAC_SELECT_3_Pin GPIO_PIN_2
#define DAC_SELECT_3_GPIO_Port GPIOA
#define DAC_SELECT_4_Pin GPIO_PIN_3
#define DAC_SELECT_4_GPIO_Port GPIOA
#define DAC_SELECT_5_Pin GPIO_PIN_4
#define DAC_SELECT_5_GPIO_Port GPIOA
#define LED_ACTIVITY_Pin GPIO_PIN_10
#define LED_ACTIVITY_GPIO_Port GPIOB
#define LED_CONNECT_Pin GPIO_PIN_11
#define LED_CONNECT_GPIO_Port GPIOB
#define SIG_TRIGGER_1_Pin GPIO_PIN_4
#define SIG_TRIGGER_1_GPIO_Port GPIOB
#define SIG_TRIGGER_2_Pin GPIO_PIN_5
#define SIG_TRIGGER_2_GPIO_Port GPIOB
#define SIG_TRIGGER_3_Pin GPIO_PIN_6
#define SIG_TRIGGER_3_GPIO_Port GPIOB
#define SIG_CLOCK_Pin GPIO_PIN_7
#define SIG_CLOCK_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
