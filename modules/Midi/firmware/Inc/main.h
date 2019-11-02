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
#define PORTS 16
enum PORT_TYPE { OFF, CV, GATE, PITCH_BEND, TRIGGER };
typedef struct {
	enum PORT_TYPE type;
	uint8_t midi_channel;
	uint16_t val;
	uint32_t time;
} config_t;
config_t configs[PORTS];
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
#define LED_ACTIVITY_Pin GPIO_PIN_10
#define LED_ACTIVITY_GPIO_Port GPIOB
#define LED_CONNECT_Pin GPIO_PIN_11
#define LED_CONNECT_GPIO_Port GPIOB
#define LCD_SPI_CE_Pin GPIO_PIN_12
#define LCD_SPI_CE_GPIO_Port GPIOB
#define LCD_SPI_CLK_Pin GPIO_PIN_13
#define LCD_SPI_CLK_GPIO_Port GPIOB
#define LCD_RESET_Pin GPIO_PIN_14
#define LCD_RESET_GPIO_Port GPIOB
#define LCD_SPI_DIN_Pin GPIO_PIN_15
#define LCD_SPI_DIN_GPIO_Port GPIOB
#define LCD_BACKLIGHT_Pin GPIO_PIN_8
#define LCD_BACKLIGHT_GPIO_Port GPIOA
#define LCD_DC_Pin GPIO_PIN_9
#define LCD_DC_GPIO_Port GPIOA
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
