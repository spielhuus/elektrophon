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
//void note_on(uint8_t channel, uint8_t note, uint8_t velocity);
//void note_off(uint8_t channel, uint8_t note, uint8_t velocity);

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define DAC_SELECT_1_Pin GPIO_PIN_3
#define DAC_SELECT_1_GPIO_Port GPIOA
#define DAC_SELECT_2_Pin GPIO_PIN_4
#define DAC_SELECT_2_GPIO_Port GPIOA
#define DAC_SELECT_3_Pin GPIO_PIN_6
#define DAC_SELECT_3_GPIO_Port GPIOA
#define DAC_SELECT_4_Pin GPIO_PIN_0
#define DAC_SELECT_4_GPIO_Port GPIOB
#define DAC_SELECT_5_Pin GPIO_PIN_1
#define DAC_SELECT_5_GPIO_Port GPIOB
#define DAC_SELECT_6_Pin GPIO_PIN_2
#define DAC_SELECT_6_GPIO_Port GPIOB
#define DAC_SELECT_7_Pin GPIO_PIN_10
#define DAC_SELECT_7_GPIO_Port GPIOB
#define DAC_SELECT_8_Pin GPIO_PIN_11
#define DAC_SELECT_8_GPIO_Port GPIOB
#define LED_CONNECT_Pin GPIO_PIN_12
#define LED_CONNECT_GPIO_Port GPIOB
#define LED_TX_Pin GPIO_PIN_14
#define LED_TX_GPIO_Port GPIOB
#define LED_HEARTBEAT_Pin GPIO_PIN_8
#define LED_HEARTBEAT_GPIO_Port GPIOA
#define LED_CLOCK_Pin GPIO_PIN_9
#define LED_CLOCK_GPIO_Port GPIOA
/* USER CODE BEGIN Private defines */
/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
