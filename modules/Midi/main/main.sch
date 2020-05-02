EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1350 1050 1750 450 
U 5E9FE2D3
F0 "STM32 Board" 50
F1 "stm32_board.sch" 50
$EndSheet
$Sheet
S 1350 2100 1800 400 
U 5EAB1F13
F0 "Analog Circuit" 50
F1 "Analog_Circuit.sch" 50
$EndSheet
$Comp
L power:+15V #PWR05
U 1 1 5D5BF152
P 1800 6300
F 0 "#PWR05" H 1800 6150 50  0001 C CNN
F 1 "+15V" V 1815 6428 50  0000 L CNN
F 2 "" H 1800 6300 50  0001 C CNN
F 3 "" H 1800 6300 50  0001 C CNN
	1    1800 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5D5C2DBB
P 1800 6600
F 0 "#PWR06" H 1800 6350 50  0001 C CNN
F 1 "GND" H 1805 6427 50  0000 C CNN
F 2 "" H 1800 6600 50  0001 C CNN
F 3 "" H 1800 6600 50  0001 C CNN
	1    1800 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5D5C24D0
P 1800 6450
F 0 "C1" H 1918 6496 50  0000 L CNN
F 1 "10u" H 1918 6405 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1838 6300 50  0001 C CNN
F 3 "~" H 1800 6450 50  0001 C CNN
	1    1800 6450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 5D6BEBB7
P 3000 6400
F 0 "J1" H 3050 6817 50  0000 C CNN
F 1 "IDC Header" H 3050 6726 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 3000 6400 50  0001 C CNN
F 3 "~" H 3000 6400 50  0001 C CNN
	1    3000 6400
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR010
U 1 1 5D6BEBBD
P 2700 6500
F 0 "#PWR010" H 2700 6350 50  0001 C CNN
F 1 "+15V" V 2715 6628 50  0000 L CNN
F 2 "" H 2700 6500 50  0001 C CNN
F 3 "" H 2700 6500 50  0001 C CNN
	1    2700 6500
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR015
U 1 1 5D6BEBC3
P 3200 6500
F 0 "#PWR015" H 3200 6350 50  0001 C CNN
F 1 "+15V" V 3215 6628 50  0000 L CNN
F 2 "" H 3200 6500 50  0001 C CNN
F 3 "" H 3200 6500 50  0001 C CNN
	1    3200 6500
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR011
U 1 1 5D6BEBC9
P 2700 6600
F 0 "#PWR011" H 2700 6700 50  0001 C CNN
F 1 "-15V" V 2715 6728 50  0000 L CNN
F 2 "" H 2700 6600 50  0001 C CNN
F 3 "" H 2700 6600 50  0001 C CNN
	1    2700 6600
	0    -1   -1   0   
$EndComp
$Comp
L power:-15V #PWR016
U 1 1 5D6BEBCF
P 3200 6600
F 0 "#PWR016" H 3200 6700 50  0001 C CNN
F 1 "-15V" V 3215 6728 50  0000 L CNN
F 2 "" H 3200 6600 50  0001 C CNN
F 3 "" H 3200 6600 50  0001 C CNN
	1    3200 6600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5D6BEBD5
P 2700 6400
F 0 "#PWR09" H 2700 6150 50  0001 C CNN
F 1 "GND" V 2705 6272 50  0000 R CNN
F 2 "" H 2700 6400 50  0001 C CNN
F 3 "" H 2700 6400 50  0001 C CNN
	1    2700 6400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5D6BEBDB
P 2700 6300
F 0 "#PWR08" H 2700 6050 50  0001 C CNN
F 1 "GND" V 2705 6172 50  0000 R CNN
F 2 "" H 2700 6300 50  0001 C CNN
F 3 "" H 2700 6300 50  0001 C CNN
	1    2700 6300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5D6BEBE1
P 3200 6300
F 0 "#PWR013" H 3200 6050 50  0001 C CNN
F 1 "GND" V 3205 6172 50  0000 R CNN
F 2 "" H 3200 6300 50  0001 C CNN
F 3 "" H 3200 6300 50  0001 C CNN
	1    3200 6300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5D6BEBE7
P 3200 6400
F 0 "#PWR014" H 3200 6150 50  0001 C CNN
F 1 "GND" V 3205 6272 50  0000 R CNN
F 2 "" H 3200 6400 50  0001 C CNN
F 3 "" H 3200 6400 50  0001 C CNN
	1    3200 6400
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 5D6BEBED
P 3200 6200
F 0 "#PWR012" H 3200 6050 50  0001 C CNN
F 1 "+5V" V 3215 6328 50  0000 L CNN
F 2 "" H 3200 6200 50  0001 C CNN
F 3 "" H 3200 6200 50  0001 C CNN
	1    3200 6200
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 5D6BEBF3
P 2700 6200
F 0 "#PWR07" H 2700 6050 50  0001 C CNN
F 1 "+5V" V 2715 6328 50  0000 L CNN
F 2 "" H 2700 6200 50  0001 C CNN
F 3 "" H 2700 6200 50  0001 C CNN
	1    2700 6200
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5D6BEBF9
P 2700 6200
F 0 "#FLG04" H 2700 6275 50  0001 C CNN
F 1 "PWR_FLAG" H 2700 6328 50  0001 L CNN
F 2 "" H 2700 6200 50  0001 C CNN
F 3 "~" H 2700 6200 50  0001 C CNN
	1    2700 6200
	1    0    0    -1  
$EndComp
Connection ~ 2700 6200
Text Notes 2850 7000 0    50   ~ 0
Power
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5E084229
P 1100 7350
F 0 "#FLG01" H 1100 7425 50  0001 C CNN
F 1 "PWR_FLAG" V 1100 7478 50  0000 L CNN
F 2 "" H 1100 7350 50  0001 C CNN
F 3 "~" H 1100 7350 50  0001 C CNN
	1    1100 7350
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR01
U 1 1 5E084230
P 1100 7350
F 0 "#PWR01" H 1100 7200 50  0001 C CNN
F 1 "+15V" V 1115 7478 50  0000 L CNN
F 2 "" H 1100 7350 50  0001 C CNN
F 3 "" H 1100 7350 50  0001 C CNN
	1    1100 7350
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR02
U 1 1 5E084231
P 1100 7450
F 0 "#PWR02" H 1100 7550 50  0001 C CNN
F 1 "-15V" V 1115 7578 50  0000 L CNN
F 2 "" H 1100 7450 50  0001 C CNN
F 3 "" H 1100 7450 50  0001 C CNN
	1    1100 7450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E084232
P 1100 7550
F 0 "#PWR03" H 1100 7300 50  0001 C CNN
F 1 "GND" V 1100 7350 50  0000 C CNN
F 2 "" H 1100 7550 50  0001 C CNN
F 3 "" H 1100 7550 50  0001 C CNN
	1    1100 7550
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5E084233
P 1100 7450
F 0 "#FLG02" H 1100 7525 50  0001 C CNN
F 1 "PWR_FLAG" V 1100 7578 50  0000 L CNN
F 2 "" H 1100 7450 50  0001 C CNN
F 3 "~" H 1100 7450 50  0001 C CNN
	1    1100 7450
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5E084234
P 1100 7550
F 0 "#FLG03" H 1100 7625 50  0001 C CNN
F 1 "PWR_FLAG" V 1100 7678 50  0000 L CNN
F 2 "" H 1100 7550 50  0001 C CNN
F 3 "~" H 1100 7550 50  0001 C CNN
	1    1100 7550
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5EA466CE
P 6150 6800
F 0 "H1" H 6250 6846 50  0000 L CNN
F 1 "MountingHole" H 6250 6755 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6150 6800 50  0001 C CNN
F 3 "~" H 6150 6800 50  0001 C CNN
	1    6150 6800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5D6DC0FC
P 6150 7000
F 0 "H2" H 6250 7046 50  0000 L CNN
F 1 "MountingHole" H 6250 6955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6150 7000 50  0001 C CNN
F 3 "~" H 6150 7000 50  0001 C CNN
	1    6150 7000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5EA466D0
P 6150 7200
F 0 "H3" H 6250 7246 50  0000 L CNN
F 1 "MountingHole" H 6250 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6150 7200 50  0001 C CNN
F 3 "~" H 6150 7200 50  0001 C CNN
	1    6150 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5EA466D1
P 6150 7400
F 0 "H4" H 6250 7446 50  0000 L CNN
F 1 "MountingHole" H 6250 7355 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6150 7400 50  0001 C CNN
F 3 "~" H 6150 7400 50  0001 C CNN
	1    6150 7400
	1    0    0    -1  
$EndComp
Text GLabel 6900 1600 2    50   Input ~ 0
Note_1
Text GLabel 6900 1900 2    50   Input ~ 0
Velocity_1
Text GLabel 6900 1700 2    50   Input ~ 0
Note_2
Text GLabel 6900 2000 2    50   Input ~ 0
Velocity_2
Text GLabel 6900 1800 2    50   Input ~ 0
Note_3
Text GLabel 6900 2100 2    50   Input ~ 0
Velocity_3
Text GLabel 6900 2200 2    50   Input ~ 0
PITCH_BEND_1
Text GLabel 6900 2300 2    50   Input ~ 0
PITCH_BEND_2
Text GLabel 6900 2400 2    50   Input ~ 0
PITCH_BEND_3
Text GLabel 6900 2500 2    50   Input ~ 0
OUT_TRIGGER_1
Text GLabel 6900 2600 2    50   Input ~ 0
OUT_TRIGGER_2
Text GLabel 6900 2700 2    50   Input ~ 0
OUT_TRIGGER_3
Text GLabel 6900 2800 2    50   Input ~ 0
OUT_CLOCK
Text GLabel 8350 1450 2    50   Input ~ 0
LED_ACTIVITY
Text GLabel 8350 1550 2    50   Input ~ 0
LED_CONNECT
$Comp
L power:GND #PWR018
U 1 1 5EAA851E
P 6900 1500
AR Path="/5EAA851E" Ref="#PWR018"  Part="1" 
AR Path="/5E9FE2D3/5EAA851E" Ref="#PWR?"  Part="1" 
F 0 "#PWR018" H 6900 1250 50  0001 C CNN
F 1 "GND" V 6900 1300 50  0000 C CNN
F 2 "" H 6900 1500 50  0001 C CNN
F 3 "" H 6900 1500 50  0001 C CNN
	1    6900 1500
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR017
U 1 1 5EAB989F
P 6900 1400
AR Path="/5EAB989F" Ref="#PWR017"  Part="1" 
AR Path="/5E9FE2D3/5EAB989F" Ref="#PWR?"  Part="1" 
F 0 "#PWR017" H 6900 1250 50  0001 C CNN
F 1 "+5V" V 6900 1600 50  0000 C CNN
F 2 "" H 6900 1400 50  0001 C CNN
F 3 "" H 6900 1400 50  0001 C CNN
	1    6900 1400
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5EAC0B93
P 8150 1550
F 0 "J3" H 8258 1831 50  0000 C CNN
F 1 "Conn_01x04_Male" H 8258 1740 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8150 1550 50  0001 C CNN
F 3 "~" H 8150 1550 50  0001 C CNN
	1    8150 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x15_Female J2
U 1 1 5EA557A8
P 6700 2100
F 0 "J2" H 6592 2985 50  0000 C CNN
F 1 "Conn_01x15_Female" H 6592 2894 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x15_P2.54mm_Vertical" H 6700 2100 50  0001 C CNN
F 3 "~" H 6700 2100 50  0001 C CNN
	1    6700 2100
	-1   0    0    -1  
$EndComp
Text GLabel 8350 1650 2    50   Input ~ 0
PA12
Text GLabel 8350 1750 2    50   Input ~ 0
PA11
$Comp
L Device:CP C2
U 1 1 5EA70421
P 1350 6450
F 0 "C2" H 1468 6496 50  0000 L CNN
F 1 "10u" H 1468 6405 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1388 6300 50  0001 C CNN
F 3 "~" H 1350 6450 50  0001 C CNN
	1    1350 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5EA7091A
P 1350 6600
F 0 "#PWR0101" H 1350 6350 50  0001 C CNN
F 1 "GND" H 1355 6427 50  0000 C CNN
F 2 "" H 1350 6600 50  0001 C CNN
F 3 "" H 1350 6600 50  0001 C CNN
	1    1350 6600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5EA710C5
P 1350 6300
F 0 "#PWR0102" H 1350 6150 50  0001 C CNN
F 1 "+5V" V 1350 6400 50  0000 L CNN
F 2 "" H 1350 6300 50  0001 C CNN
F 3 "" H 1350 6300 50  0001 C CNN
	1    1350 6300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
