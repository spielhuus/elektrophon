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
#include "usb_device.h"
#include "oszillator.h"
#include "adsr.h"
#include "wavetable.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN TD */
uint32_t _last_tick;
uint8_t _last_state;
uint16_t counter;
/* USER CODE END TD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
float32_t next_value;
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN PV */

// TODO extern struct ADSR adsr[NUM_VOICES];
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
extern TIM_HandleTypeDef htim3;
extern TIM_HandleTypeDef htim4;
extern TIM_HandleTypeDef htim6;
/* USER CODE BEGIN EV */
extern USBD_HandleTypeDef hUsbDeviceFS;
extern dds_t voices[NUM_VOICES];
extern adsr_t adsr[NUM_VOICES];
extern void processMidiMessage();

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
  processMidiMessage();
//
//	for (uint8_t i = 0; i < NUM_VOICES; i++) {
////		if(voices[i].adsr != NONE) {
////			if(voices[i].sequence_counter > voices[i].wave_sequence[voices[i].position][1] ) {
////				voices[i].position = voices[i].position + 1;
////				if( voices[i].position >= 8 ) voices[i].position = 0;
////				uint8_t _wt = voices[i].wave_sequence[voices[i].position][0];
////				if( _wt == 0 ) voices[i].wavetable = &wt_sine;
////				else if( _wt == 1 ) voices[i].wavetable = &wt_triangle;
////				else if( _wt == 2 ) voices[i].wavetable = &wt_saw;
////				else if( _wt == 3 ) voices[i].wavetable = &wt_square;
////
////				voices[i].sequence_counter=0;
////			} else voices[i].sequence_counter+=1;
////
////			switch(voices[i].adsr) {
////				case ATTACK:
////					if( voices[i].envelope < 2048 )
////						voices[i].envelope += 8;
////					else voices[i].adsr = DECAY;
////					break;
////				case DECAY:
////					if( voices[i].envelope > 1500 )
////						voices[i].envelope -= 32;
////					break;
////				case RELEASE:
////					if(voices[i].envelope > 32 )
////						voices[i].envelope -= 32;
////					else {
////						voices[i].adsr = NONE;
////						voices[i].note = 0;
////					}
////					break;
////				default: break;
////			}
////		}
//	}
  /* USER CODE END TIM2_IRQn 1 */
}

/**
  * @brief This function handles TIM3 global interrupt.
  */
void TIM3_IRQHandler(void)
{
  /* USER CODE BEGIN TIM3_IRQn 0 */

  /* USER CODE END TIM3_IRQn 0 */
  HAL_TIM_IRQHandler(&htim3);
  /* USER CODE BEGIN TIM3_IRQn 1 */
	if(USBD_STATE_CONFIGURED == hUsbDeviceFS.dev_state)
	{
		HAL_GPIO_WritePin(MIDI_CONNECT_GPIO_Port, MIDI_CONNECT_Pin, SET);

	} else {
		HAL_GPIO_TogglePin(MIDI_CONNECT_GPIO_Port, MIDI_CONNECT_Pin);
	}
  /* USER CODE END TIM3_IRQn 1 */
}

/**
  * @brief This function handles TIM4 global interrupt.
  */
void TIM4_IRQHandler(void)
{
  /* USER CODE BEGIN TIM4_IRQn 0 */

  /* USER CODE END TIM4_IRQn 0 */
  HAL_TIM_IRQHandler(&htim4);
  /* USER CODE BEGIN TIM4_IRQn 1 */
  /* USER CODE END TIM4_IRQn 1 */
}

/**
  * @brief This function handles TIM6 global interrupt, DAC1 and DAC2 underrun error interrupts.
  */
void TIM6_DAC_IRQHandler(void) {
	/* USER CODE BEGIN TIM6_DAC_IRQn 0 */
	if (HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1, DAC_ALIGN_12B_R, (next_value + 1)*2046.0f) != HAL_OK) {
		/* Setting value Error */
		Error_Handler();
	}
	/* USER CODE END TIM6_DAC_IRQn 0 */
	HAL_DAC_IRQHandler(&hdac);
	HAL_TIM_IRQHandler(&htim6);
	/* USER CODE BEGIN TIM6_DAC_IRQn 1 */
	uint32_t index = voices[0].accumulator >> 22;
	next_value = wt_sine[index] * calculate(&adsr[0]);
	voices[0].accumulator += voices[0].increment;
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
