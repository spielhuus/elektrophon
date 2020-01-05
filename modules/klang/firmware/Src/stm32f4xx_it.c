/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    stm32f4xx_it.c
  * @brief   Interrupt Service Routines.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
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

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "stm32f4xx_it.h"
/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "sine_table.h"
#include "saw_table.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN TD */

/* USER CODE END TD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
 
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/* External variables --------------------------------------------------------*/
extern PCD_HandleTypeDef hpcd_USB_OTG_FS;
extern DAC_HandleTypeDef hdac;
extern TIM_HandleTypeDef htim1;
extern TIM_HandleTypeDef htim2;
extern TIM_HandleTypeDef htim6;
/* USER CODE BEGIN EV */

/* USER CODE END EV */

/******************************************************************************/
/*           Cortex-M4 Processor Interruption and Exception Handlers          */ 
/******************************************************************************/
/**
  * @brief This function handles Non maskable interrupt.
  */
void NMI_Handler(void)
{
  /* USER CODE BEGIN NonMaskableInt_IRQn 0 */

  /* USER CODE END NonMaskableInt_IRQn 0 */
  /* USER CODE BEGIN NonMaskableInt_IRQn 1 */

  /* USER CODE END NonMaskableInt_IRQn 1 */
}

/**
  * @brief This function handles Hard fault interrupt.
  */
void HardFault_Handler(void)
{
  /* USER CODE BEGIN HardFault_IRQn 0 */

  /* USER CODE END HardFault_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_HardFault_IRQn 0 */
    /* USER CODE END W1_HardFault_IRQn 0 */
  }
}

/**
  * @brief This function handles Memory management fault.
  */
void MemManage_Handler(void)
{
  /* USER CODE BEGIN MemoryManagement_IRQn 0 */

  /* USER CODE END MemoryManagement_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_MemoryManagement_IRQn 0 */
    /* USER CODE END W1_MemoryManagement_IRQn 0 */
  }
}

/**
  * @brief This function handles Pre-fetch fault, memory access fault.
  */
void BusFault_Handler(void)
{
  /* USER CODE BEGIN BusFault_IRQn 0 */

  /* USER CODE END BusFault_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_BusFault_IRQn 0 */
    /* USER CODE END W1_BusFault_IRQn 0 */
  }
}

/**
  * @brief This function handles Undefined instruction or illegal state.
  */
void UsageFault_Handler(void)
{
  /* USER CODE BEGIN UsageFault_IRQn 0 */

  /* USER CODE END UsageFault_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_UsageFault_IRQn 0 */
    /* USER CODE END W1_UsageFault_IRQn 0 */
  }
}

/**
  * @brief This function handles System service call via SWI instruction.
  */
void SVC_Handler(void)
{
  /* USER CODE BEGIN SVCall_IRQn 0 */

  /* USER CODE END SVCall_IRQn 0 */
  /* USER CODE BEGIN SVCall_IRQn 1 */

  /* USER CODE END SVCall_IRQn 1 */
}

/**
  * @brief This function handles Debug monitor.
  */
void DebugMon_Handler(void)
{
  /* USER CODE BEGIN DebugMonitor_IRQn 0 */

  /* USER CODE END DebugMonitor_IRQn 0 */
  /* USER CODE BEGIN DebugMonitor_IRQn 1 */

  /* USER CODE END DebugMonitor_IRQn 1 */
}

/**
  * @brief This function handles Pendable request for system service.
  */
void PendSV_Handler(void)
{
  /* USER CODE BEGIN PendSV_IRQn 0 */

  /* USER CODE END PendSV_IRQn 0 */
  /* USER CODE BEGIN PendSV_IRQn 1 */

  /* USER CODE END PendSV_IRQn 1 */
}

/**
  * @brief This function handles System tick timer.
  */
void SysTick_Handler(void)
{
  /* USER CODE BEGIN SysTick_IRQn 0 */

  /* USER CODE END SysTick_IRQn 0 */
  HAL_IncTick();
  /* USER CODE BEGIN SysTick_IRQn 1 */

  /* USER CODE END SysTick_IRQn 1 */
}

/******************************************************************************/
/* STM32F4xx Peripheral Interrupt Handlers                                    */
/* Add here the Interrupt Handlers for the used peripherals.                  */
/* For the available peripheral interrupt handler names,                      */
/* please refer to the startup file (startup_stm32f4xx.s).                    */
/******************************************************************************/

/**
  * @brief This function handles TIM1 update interrupt and TIM10 global interrupt.
  */
void TIM1_UP_TIM10_IRQHandler(void)
{
  /* USER CODE BEGIN TIM1_UP_TIM10_IRQn 0 */

  /* USER CODE END TIM1_UP_TIM10_IRQn 0 */
  HAL_TIM_IRQHandler(&htim1);
  /* USER CODE BEGIN TIM1_UP_TIM10_IRQn 1 */


  /* USER CODE END TIM1_UP_TIM10_IRQn 1 */
}

/**
  * @brief This function handles TIM2 global interrupt.
  */
void TIM2_IRQHandler(void)
{
  /* USER CODE BEGIN TIM2_IRQn 0 */

  /* USER CODE END TIM2_IRQn 0 */
  HAL_TIM_IRQHandler(&htim2);
  /* USER CODE BEGIN TIM2_IRQn 1 */
	for (uint8_t i = 0; i < NUM_VOICES; i++) {
		if(voices[i].adsr != NONE) {
			switch(voices[i].adsr) {
				case ATTACK:
					if( voices[i].envelope < 1024 )
						voices[i].envelope += 8;
					else voices[i].adsr = DECAY;
					break;
				case DECAY:
					if( voices[i].envelope > 800 )
						voices[i].envelope -= 4;
					break;
				case RELEASE:
					if(voices[i].envelope > 0 )
						voices[i].envelope -= 4;
					else {
						voices[i].adsr = NONE;
						voices[i].note = 0;
					}
					break;
				default: break;
			}
		}
	}
  /* USER CODE END TIM2_IRQn 1 */
}

/**
  * @brief This function handles TIM6 global interrupt, DAC1 and DAC2 underrun error interrupts.
  */
void TIM6_DAC_IRQHandler(void)
{
  /* USER CODE BEGIN TIM6_DAC_IRQn 0 */
//
  /* USER CODE END TIM6_DAC_IRQn 0 */
  HAL_DAC_IRQHandler(&hdac);
  HAL_TIM_IRQHandler(&htim6);
  /* USER CODE BEGIN TIM6_DAC_IRQn 1 */
	uint16_t index = 0;
	uint32_t total = 0;
	uint32_t used_channels = 0;
	for (uint8_t i = 0; i < NUM_VOICES; i++) {
		if(voices[i].adsr != NONE) {
//			switch(voices[i].adsr) {
//				case ATTACK:
//					if( voices[i].envelope < 1024 )
//						voices[i].envelope += 1;
//					else voices[i].adsr = DECAY;
//					break;
//				case DECAY:
//					if( voices[i].envelope > 800 )
//						voices[i].envelope -= 1;
//					break;
//				case RELEASE:
//					if(voices[i].envelope > 0 )
//						voices[i].envelope -= 1;
//					else {
//						voices[i].adsr = NONE;
//						voices[i].note = 0;
//					}
//					break;
//				default: break;
//			}

			uint32_t voice = 0;
			for( uint8_t j = 0; j<NUM_HARMONICS; j++ ) {
				index = voices[i].harmonics[j].accumulator >> 22;
				voice += sine_table[index];
				voices[i].harmonics[j].accumulator += voices[i].harmonics[j].increment;
			}
			total += voice * voices[i].envelope / 1024 / NUM_HARMONICS;
			++used_channels;
		}
	}

		if(used_channels > 0) {
			total = total / NUM_VOICES; //used_channels;

			if (HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1, DAC_ALIGN_12B_R, total) != HAL_OK)
			{
			  /* Setting value Error */
			  Error_Handler();
			}
		}
  /* USER CODE END TIM6_DAC_IRQn 1 */
}

/**
  * @brief This function handles USB On The Go FS global interrupt.
  */
void OTG_FS_IRQHandler(void)
{
  /* USER CODE BEGIN OTG_FS_IRQn 0 */

  /* USER CODE END OTG_FS_IRQn 0 */
  HAL_PCD_IRQHandler(&hpcd_USB_OTG_FS);
  /* USER CODE BEGIN OTG_FS_IRQn 1 */

  /* USER CODE END OTG_FS_IRQn 1 */
}

/* USER CODE BEGIN 1 */
/**
  * @brief This function handles TIM6 global interrupt, DAC1 and DAC2 underrun error interrupts.
  */
//void TIM6_DAC_IRQHandler(void)
//{
//	/* USER CODE BEGIN TIM6_DAC_IRQn 0 */
//
//	/* USER CODE END TIM6_DAC_IRQn 0 */
//	HAL_DAC_IRQHandler(&hdac);
//	HAL_TIM_IRQHandler(&htim6);
//	/* USER CODE BEGIN TIM6_DAC_IRQn 1 */
//	uint16_t index = 0;
//	uint32_t total = 0;
//	uint32_t used_channels = 0;
//	for (uint8_t i = 0; i < NUM_VOICES; i++) {
//		if(voices[i].adsr != NONE) {
//			switch(voices[i].adsr) {
//				case ATTACK:
//					if( voices[i].envelope < 1024 )
//						voices[i].envelope += 1;
//					else voices[i].adsr = DECAY;
//					break;
//				case DECAY:
//					if( voices[i].envelope > 800 )
//						voices[i].envelope -= 1;
//					break;
//				case RELEASE:
//					if(voices[i].envelope > 0 )
//						voices[i].envelope -= 1;
//					else {
//						voices[i].adsr = NONE;
//						voices[i].note = 0;
//					}
//					break;
//				default: break;
//			}
//
//			index = voices[i].accumulator >> 22;
//			total += sine_table[index] * voices[i].envelope / 1024;
//			voices[i].accumulator += voices[i].increment;
//			++used_channels;
//		}
//	}
//	if(used_channels > 0) {
//		total = total / used_channels;
//
//	if (HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1, DAC_ALIGN_12B_R, total) != HAL_OK)
//	{
//	  /* Setting value Error */
//	  Error_Handler();
//	}
//	}
/* USER CODE END 1 */
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
