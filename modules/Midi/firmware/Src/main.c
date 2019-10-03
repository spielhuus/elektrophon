/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
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

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "cmsis_os.h"
#include "usb_device.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "LED.h"
#include "curemisc.h"
#include "curebuffer.h"
#include "usbd_midi_if.h"
#include "midi.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define MIDI_CHANNELS 8
#define MIDI_NOTES 88
// Rescale 88 notes to 4096 mV:
//    noteMsg = 0 -> 0 mV
//    noteMsg = 87 -> 4096 mV
// DAC output will be (4095/87) = 47.069 mV per note, and 564.9655 mV per octive
// Note that DAC output will need to be amplified by 1.77X for the standard 1V/octave
#define NOTE_SF 47.069f // This value can be tuned if CV output isn't exactly 1V/octave
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
SPI_HandleTypeDef hspi1;
SPI_HandleTypeDef hspi2;
DMA_HandleTypeDef hdma_spi2_tx;

TIM_HandleTypeDef htim2;

osThreadId defaultTaskHandle;
osThreadId synthTaskHandle;
osTimerId LED_Control_TimerHandle;
/* USER CODE BEGIN PV */
uint8_t uart_tx_dat; //TODO
uint8_t uart_rx_dat[MIDI_IN_JACK_NUM]; //TODO
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_SPI1_Init(void);
static void MX_SPI2_Init(void);
static void MX_TIM2_Init(void);
void StartDefaultTask(void const * argument);
extern void start_synth_task(void const * argument);
extern void LED_Callback(void const * argument);

/* USER CODE BEGIN PFP */
//void note_on(uint8_t channel, uint8_t note, uint8_t velocity) {
//	if(channel>MIDI_CHANNELS) return; //check if number of channels is supported
//	if(note<0 || note>MIDI_NOTES) return; //check if number of notes is supported
//
//	//TODO quick and dirty
//	if( channel == 0 ) {
//		set_voltage(0, 1, velocity<<5);  // TODO DAC0, channel 1, gain = 2X
//
//		unsigned int mV = (unsigned int) ((float) note * NOTE_SF + 0.5);
//		set_voltage(1, 1, mV);  // TODO DAC1, channel 0, gain = 2X
//
//	} else if( channel == 1 ) {
//		set_voltage(2, 1, velocity<<5);  // TODO DAC0, channel 1, gain = 2X
//
//		unsigned int mV = (unsigned int) ((float) note * NOTE_SF + 0.5);
//		set_voltage(3, 1, mV);  // TODO DAC1, channel 0, gain = 2X
//
//	} else if( channel == 2 ) {
//
//		set_voltage(4, 1, velocity<<5);  // TODO DAC1, channel 1, gain = 2X
//
//		unsigned int mV = (unsigned int) ((float) note * NOTE_SF + 0.5);
//		set_voltage(5, 1, mV);  // TODO DAC1, channel 0, gain = 2X
//	}
//}
//
//void note_off(uint8_t channel, uint8_t note, uint8_t velocity) {
//	if(channel>MIDI_CHANNELS) return; //check if number of channels is supported
//	if(note<0 || note>MIDI_NOTES) return; //check if number of notes is supported
//
//	//TODO quick and dirty
//	if( channel == 0 ) {
//		set_voltage(0, 1, velocity<<5);  // TODO DAC0, channel 1, gain = 2X
//
//		unsigned int mV = (unsigned int) ((float) note * NOTE_SF + 0.5);
//		set_voltage(1, 1, mV);  // TODO DAC1, channel 0, gain = 2X
//
//	} else if( channel == 1 ) {
//		set_voltage(2, 1, velocity<<5);  // TODO DAC0, channel 1, gain = 2X
//
//		unsigned int mV = (unsigned int) ((float) note * NOTE_SF + 0.5);
//		set_voltage(3, 1, mV);  // TODO DAC1, channel 0, gain = 2X
//
//	} else if( channel == 2 ) {
//
//		set_voltage(4, 1, velocity<<5);  // TODO DAC1, channel 1, gain = 2X
//
//		unsigned int mV = (unsigned int) ((float) note * NOTE_SF + 0.5);
//		set_voltage(5, 1, mV);  // TODO DAC1, channel 0, gain = 2X
//	}
//}

//void set_voltage(uint8_t channel, uint8_t gain, uint16_t mV) {
//
//	//calculate value
//	uint16_t command = (channel%2) ? 0x9000 : 0x1000;
//    command |= gain ? 0x0000 : 0x2000;
//    command |= (mV & 0x0FFF);
//    //copy the value to buffer
//	dac_data[channel][0] = command>>8;
//	dac_data[channel][1] = command&0xFF;
//
//	while(pending_dac_channel>0) {} //wait for pending transaction
//	pending_dac_channel = channel;
//
//	switch(channel/2) {
//		case 0: HAL_GPIO_WritePin(DAC_SELECT_1_GPIO_Port, DAC_SELECT_1_Pin, RESET); break;
//		case 1: HAL_GPIO_WritePin(DAC_SELECT_2_GPIO_Port, DAC_SELECT_2_Pin, RESET); break;
//		case 2: HAL_GPIO_WritePin(DAC_SELECT_3_GPIO_Port, DAC_SELECT_3_Pin, RESET); break;
//		case 3: HAL_GPIO_WritePin(DAC_SELECT_4_GPIO_Port, DAC_SELECT_4_Pin, RESET); break;
//		case 4: HAL_GPIO_WritePin(DAC_SELECT_5_GPIO_Port, DAC_SELECT_5_Pin, RESET); break;
//		case 5: HAL_GPIO_WritePin(DAC_SELECT_6_GPIO_Port, DAC_SELECT_6_Pin, RESET); break;
//		case 6: HAL_GPIO_WritePin(DAC_SELECT_7_GPIO_Port, DAC_SELECT_7_Pin, RESET); break;
//		case 7: HAL_GPIO_WritePin(DAC_SELECT_8_GPIO_Port, DAC_SELECT_8_Pin, RESET); break;
//	}
//	HAL_SPI_Transmit_DMA(&hspi1, dac_data[channel], 2);
//}

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_SPI1_Init();
  MX_SPI2_Init();
  MX_TIM2_Init();
  /* USER CODE BEGIN 2 */
  LED_Clock();

  if(FUNC_ERROR == midiInit() ){
	  while(1){
		  HAL_GPIO_WritePin(LED_CONNECT_GPIO_Port, LED_CONNECT_Pin, SET);
		  HAL_Delay(500);
		  HAL_GPIO_WritePin(LED_CONNECT_GPIO_Port, LED_CONNECT_Pin, RESET);
		  HAL_Delay(500);
	  }
  }
  /* USER CODE END 2 */

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* Create the timer(s) */
  /* definition and creation of LED_Control_Timer */
  osTimerDef(LED_Control_Timer, LED_Callback);
  LED_Control_TimerHandle = osTimerCreate(osTimer(LED_Control_Timer), osTimerPeriodic, NULL);

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  osTimerStart(LED_Control_TimerHandle, 100);
  /* USER CODE END RTOS_TIMERS */

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* definition and creation of defaultTask */
  osThreadDef(defaultTask, StartDefaultTask, osPriorityNormal, 0, 128);
  defaultTaskHandle = osThreadCreate(osThread(defaultTask), NULL);

  /* definition and creation of synthTask */
  osThreadDef(synthTask, start_synth_task, osPriorityRealtime, 0, 128);
  synthTaskHandle = osThreadCreate(osThread(synthTask), NULL);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */

  //TODO config midi
  set_config(0, CV, 0);
  set_config(1, TRIANGLE, 1);
  /* USER CODE END RTOS_THREADS */

  /* Start scheduler */
  osKernelStart();
  
  /* We should never get here as control is now taken by the scheduler */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1) {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */

	  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};

  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL6;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_USB;
  PeriphClkInit.UsbClockSelection = RCC_USBCLKSOURCE_PLL;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief SPI1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI1_Init(void)
{

  /* USER CODE BEGIN SPI1_Init 0 */

  /* USER CODE END SPI1_Init 0 */

  /* USER CODE BEGIN SPI1_Init 1 */

  /* USER CODE END SPI1_Init 1 */
  /* SPI1 parameter configuration*/
  hspi1.Instance = SPI1;
  hspi1.Init.Mode = SPI_MODE_MASTER;
  hspi1.Init.Direction = SPI_DIRECTION_2LINES;
  hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi1.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi1.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi1.Init.NSS = SPI_NSS_SOFT;
  hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_4;
  hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi1.Init.CRCPolynomial = 10;
  if (HAL_SPI_Init(&hspi1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI1_Init 2 */

  /* USER CODE END SPI1_Init 2 */

}

/**
  * @brief SPI2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI2_Init(void)
{

  /* USER CODE BEGIN SPI2_Init 0 */

  /* USER CODE END SPI2_Init 0 */

  /* USER CODE BEGIN SPI2_Init 1 */

  /* USER CODE END SPI2_Init 1 */
  /* SPI2 parameter configuration*/
  hspi2.Instance = SPI2;
  hspi2.Init.Mode = SPI_MODE_MASTER;
  hspi2.Init.Direction = SPI_DIRECTION_2LINES;
  hspi2.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi2.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi2.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi2.Init.NSS = SPI_NSS_SOFT;
  hspi2.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_2;
  hspi2.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi2.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi2.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi2.Init.CRCPolynomial = 10;
  if (HAL_SPI_Init(&hspi2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI2_Init 2 */

  /* USER CODE END SPI2_Init 2 */

}

/**
  * @brief TIM2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM2_Init(void)
{

  /* USER CODE BEGIN TIM2_Init 0 */

  /* USER CODE END TIM2_Init 0 */

  TIM_Encoder_InitTypeDef sConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM2_Init 1 */

  /* USER CODE END TIM2_Init 1 */
  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 0;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 255;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  sConfig.EncoderMode = TIM_ENCODERMODE_TI1;
  sConfig.IC1Polarity = TIM_ICPOLARITY_RISING;
  sConfig.IC1Selection = TIM_ICSELECTION_DIRECTTI;
  sConfig.IC1Prescaler = TIM_ICPSC_DIV1;
  sConfig.IC1Filter = 0;
  sConfig.IC2Polarity = TIM_ICPOLARITY_RISING;
  sConfig.IC2Selection = TIM_ICSELECTION_DIRECTTI;
  sConfig.IC2Prescaler = TIM_ICPSC_DIV1;
  sConfig.IC2Filter = 0;
  if (HAL_TIM_Encoder_Init(&htim2, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM2_Init 2 */

  /* USER CODE END TIM2_Init 2 */

}

/** 
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void) 
{
  /* DMA controller clock enable */
  __HAL_RCC_DMA1_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA1_Channel5_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel5_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel5_IRQn);

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOD_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, DAC_SELECT_1_Pin|DAC_SELECT_2_Pin|DAC_SELECT_3_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, DAC_SELECT_4_Pin|DAC_SELECT_5_Pin|DAC_SELECT_6_Pin|DAC_SELECT_7_Pin 
                          |DAC_SELECT_8_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, LED_CONNECT_Pin|LED_TX_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, LED_HEARTBEAT_Pin|LED_CLOCK_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pins : DAC_SELECT_1_Pin DAC_SELECT_2_Pin DAC_SELECT_3_Pin */
  GPIO_InitStruct.Pin = DAC_SELECT_1_Pin|DAC_SELECT_2_Pin|DAC_SELECT_3_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : DAC_SELECT_4_Pin DAC_SELECT_5_Pin DAC_SELECT_6_Pin DAC_SELECT_7_Pin 
                           DAC_SELECT_8_Pin */
  GPIO_InitStruct.Pin = DAC_SELECT_4_Pin|DAC_SELECT_5_Pin|DAC_SELECT_6_Pin|DAC_SELECT_7_Pin 
                          |DAC_SELECT_8_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : LED_CONNECT_Pin LED_TX_Pin */
  GPIO_InitStruct.Pin = LED_CONNECT_Pin|LED_TX_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_PULLDOWN;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : LED_HEARTBEAT_Pin LED_CLOCK_Pin */
  GPIO_InitStruct.Pin = LED_HEARTBEAT_Pin|LED_CLOCK_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_PULLDOWN;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/* USER CODE BEGIN Header_StartDefaultTask */
/**
  * @brief  Function implementing the defaultTask thread.
  * @param  argument: Not used 
  * @retval None
  */
/* USER CODE END Header_StartDefaultTask */
void StartDefaultTask(void const * argument)
{
  /* init code for USB_DEVICE */
  MX_USB_DEVICE_Init();

  /* USER CODE BEGIN 5 */
  LED_Clock();

  //Wait usb configuration.
  while(1){
	  if(USBD_STATE_CONFIGURED == hUsbDeviceFS.dev_state){
		  HAL_GPIO_WritePin(LED_CONNECT_GPIO_Port, LED_CONNECT_Pin, SET);
		  break;
	  }else{
		  HAL_GPIO_WritePin(LED_CONNECT_GPIO_Port, LED_CONNECT_Pin, RESET);
	  }
	  osDelay(1);
  }

  //Wait USB configuration when USB connection error has occurred.
  /* Infinite loop */
  for(;;) {
	  while(1){

		  if(USBD_STATE_CONFIGURED == hUsbDeviceFS.dev_state){
				  HAL_GPIO_WritePin(LED_CONNECT_GPIO_Port, LED_CONNECT_Pin, SET);
				  break;
			  }else{
				  HAL_GPIO_WritePin(LED_CONNECT_GPIO_Port, LED_CONNECT_Pin, SET);
				  HAL_Delay(200);
				  HAL_GPIO_WritePin(LED_CONNECT_GPIO_Port, LED_CONNECT_Pin, RESET);
				  HAL_Delay(200);
			  }
		  }

//		//[USB-MIDI IN] to [MIDI JACK OUT]
//		for(uint32_t cable_num=0; cable_num<MIDI_OUT_JACK_NUM; cable_num++){ //TODO there is only one cable
//			if( FUNC_SUCCESS == midiGetFromUsbRx(cable_num, &uart_tx_dat) ){
//				typeFromStatusByte(&uart_tx_dat);
//
//				if ((uart_tx_dat & 0xF0) == 0xB0) /* If the midi message is a Control Change... */
//							{
//								switch(uart_tx_dat) {// CC number
///*								case 3 	: 	seq_tempo_set(val); 		break ;	// tempo
//								case 13 : 	Volume_set(val); 			break;	// master volume
//								case 31 :	SynthOut_switch(val); 		break;  // toggle synth output
//								case 4  : 	seq_freqMax_set(val);		break;	// max frequency
//
//								case 67 :	DemoMode_toggle(val);		break;
//								case 68 :	Synth_reset(val);			break;
//
//								case 39 :	MagicPatch(val);			break;	// random settings except effects
//								case 38 :	MagicFX(val);				break;	// random settings for effects
//								case 82 :	MagicPatch(val);			break;	//
//								case 81 :	MagicFX(val);				break;	//
//
//								case 5 :	seq_scale_set(val);			break; 	// scale
//								case 6 :	Sound_set(val);				break;	// waveform
//								case 76 :	RandSound1(val);			break;
//								case 77 :	RandSound2(val);			break;
//
//								case 8 :	Filter1Freq_set(val);		break;	//
//								case 9 :	Filter1Res_set(val);		break;	//
//								case 53 :	Filter1Freq_set(val);		break;	//
//								case 54 :	Filter1Res_set(val);		break;	//
//								case 12 :	Filter1Drive_set(val);		break;	//
//								case 55 :	Filter1Drive_set(val);		break;	//
//								case 56 :	Filter1Type_set(val);		break;	//
//
//								case 23 :	Delay_switch(val);			break;	// Delay ON/OFF
//								case 14 :	Delay_time_set(val);		break;	// Delay time
//								case 15 :	DelayFeedback_set(val);		break;	// Delay feedback
//								case 2 :	DelayWet_set(val);			break;	// Delay wet signal amplitude
//								case 40 :	Delay_time_dec(val);		break;
//								case 41 :	Delay_time_inc(val);		break;
//
//								case 16 :	VibratoAmp_set(val);		break;	// Vibrato amplitude
//								case 17 :	VibratoFreq_set(val);		break;	// Vibrato frequency
//
//								case 27 :	Filter_Random_switch(val);	break;	// Filter ON/OFF
//								case 63 :	SynthOut_amp_set(val);		break;	// Distorsion
//
//								case 28 :	Chorus_switch(val);			break;	// Chorus ON/OFF
//								case 37 :	Chorus_reset(val);			break;
//								case 18 :	ChorusRate_set(val);		break;	// Chorus rate
//								case 22 :	ChorusSecondRate_set(val);	break;	// Chorus relative rate for LFO right
//								case 19 :	ChorusDelay_set(val);		break;	// Chorus delay
//								case 20 :	ChorusSweep_set(val);		break;	// Chorus sweep
//								case 21 :	ChorusFeedback_set(val);	break;	// Chorus feedback
//								case 29 :	ChorusMode_switch(val);		break;	// Chorus mode
//								case 30 :	ChorusFDBsign_switch(val);	break;	// Chorus fdb sign
//
//								case 24 :	Phaser_switch(val);			break;
//								case 102 :	Phaser_Rate_set(val);		break;
//								case 103 :	Phaser_Feedback_set(val);	break;
//								case 89 :	Phaser_Wet_set(val);		break;
//
//								case 26 :	seq_switchMovingSeq(val);	break;	// toggle sequence mode
//								//case 24 :	seq_switchGlide(val);		break; 	// toggle glissando
//								case 25 :	seq_switchMute(val);		break;	// toggle muted notes
//
//								case 33 :	seq_transp(-2, val);		break;	// transpose 1 tone down
//								case 34 :	seq_transp(2, val);			break;	// transpose 1 tone up
//								case 35 :	seq_transp(-7, val);		break;	//
//								case 36 :	seq_transp( 7, val);		break;	//
//
//								case 42 :	seq_gateTime_set(val);		break;	//
//
//								case 43 :	AttTime_set(val);			break;	//
//								case 50 :	DecTime_set(val);			break;	//
//								case 51 :	SustLevel_set(val);			break;	//
//								case 52 :	RelTime_set(val);			break;	//
//
//								case 65 :	Filt1LFO_amp_set(val);		break;	//
//								case 66 :	Filt1LFO_freq_set(val);		break;	//
//
//								case 57 :	AmpLFO_amp_set(val);		break;	//
//								case 58 :	AmpLFO_freq_set(val);		break;	//
//
//								case 90 :	Filter2Freq_set(val);		break;	//
//								case 91 :	Filter2Res_set(val);		break;	//
//								case 92 :	Filter2Drive_set(val);		break;	//
//								case 93 :	Filter2Type_set(val);		break;	//
//
//								case 105 :	Filt2LFO_amp_set(val);		break;	//
//								case 106 :	Filt2LFO_freq_set(val);		break;	//
//
//								case 85 : 	FM_OP1_freq_set(val);		break;
//								case 94 :	FM_OP1_modInd_set(val);		break;
//
//								case 86 : 	FM_OP2_freq_set(val);		break;
//								case 95 :	FM_OP2_modInd_set(val);		break;
//
//								case 108 : 	FM_OP2_freqMul_inc(val);	break;
//								case 117 :	FM_OP2_freqMul_dec(val);	break;
//
//								case 87 : 	FM_OP3_freq_set(val);		break;
//								case 96 :	FM_OP3_modInd_set(val);		break;
//
//								case 109 : 	FM_OP3_freqMul_inc(val);	break;
//								case 118 :	FM_OP3_freqMul_dec(val);	break;
//
//								case 88 : 	FM_OP4_freq_set(val);		break;
//								case 97 :	FM_OP4_modInd_set(val);		break;
//
//								case 110 : 	FM_OP4_freqMul_inc(val);	break;
//								case 119 :	FM_OP4_freqMul_dec(val);	break;
//
//								case 59 : 	Drifter_amp_set(val);		break;
//								case 60 : 	Drifter_minFreq_set(val);	break;
//								case 61 : 	Drifter_maxFreq_set(val);	break;
//								case 62 : 	Drifter_centralFreq_set(val);	break;
//*/
//								}
//							}
//
//
//
//
//				// 1000 0000, 1000 101, 1001 0000, 1000 011, 1100 000
//				//
//				LED_Activity();
//			}
//		}
	    osDelay(100);
  	  }
  /* USER CODE END 5 */ 
}

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM4 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM4) {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
	while(1) {
	  HAL_GPIO_TogglePin(LED_CONNECT_GPIO_Port, LED_CONNECT_Pin);
	  HAL_Delay(100);
	}

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{ 
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
