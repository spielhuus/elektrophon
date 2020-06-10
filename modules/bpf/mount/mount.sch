EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "resonanz"
Date "2020-06-10"
Rev "01"
Comp ""
Comment1 "schema for mount panel"
Comment2 "tripple resonant band pass filter"
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
$Comp
L Device:R_POT RV1
U 1 1 5D4C79A5
P 1400 3700
F 0 "RV1" H 1330 3746 50  0000 R CNN
F 1 "50k" H 1330 3655 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1400 3700 50  0001 C CNN
F 3 "~" H 1400 3700 50  0001 C CNN
	1    1400 3700
	1    0    0    1   
$EndComp
Text Notes 1050 3950 1    50   ~ 0
resonance
$Comp
L Connector:AudioJack2_SwitchT J1
U 1 1 5D4DE229
P 1400 1350
F 0 "J1" H 1430 1675 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 1430 1584 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1400 1350 50  0001 C CNN
F 3 "~" H 1400 1350 50  0001 C CNN
	1    1400 1350
	1    0    0    -1  
$EndComp
Text Notes 1000 1500 1    50   ~ 0
IN_1_a
$Comp
L power:GND #PWR03
U 1 1 5D4F30EF
P 1600 1250
F 0 "#PWR03" H 1600 1000 50  0001 C CNN
F 1 "GND" V 1605 1122 50  0000 R CNN
F 2 "" H 1600 1250 50  0001 C CNN
F 3 "" H 1600 1250 50  0001 C CNN
	1    1600 1250
	0    -1   -1   0   
$EndComp
NoConn ~ 1600 1450
$Comp
L power:+15V #PWR06
U 1 1 5D4F7905
P 1900 6350
F 0 "#PWR06" H 1900 6200 50  0001 C CNN
F 1 "+15V" H 1915 6523 50  0000 C CNN
F 2 "" H 1900 6350 50  0001 C CNN
F 3 "" H 1900 6350 50  0001 C CNN
	1    1900 6350
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR07
U 1 1 5D4F7C4A
P 2350 6350
F 0 "#PWR07" H 2350 6450 50  0001 C CNN
F 1 "-15V" H 2365 6523 50  0000 C CNN
F 2 "" H 2350 6350 50  0001 C CNN
F 3 "" H 2350 6350 50  0001 C CNN
	1    2350 6350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D4F801B
P 1450 6350
F 0 "#PWR02" H 1450 6100 50  0001 C CNN
F 1 "GND" H 1455 6177 50  0000 C CNN
F 2 "" H 1450 6350 50  0001 C CNN
F 3 "" H 1450 6350 50  0001 C CNN
	1    1450 6350
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D4F9D7C
P 1450 6350
F 0 "#FLG01" H 1450 6425 50  0001 C CNN
F 1 "PWR_FLAG" H 1450 6523 50  0000 C CNN
F 2 "" H 1450 6350 50  0001 C CNN
F 3 "~" H 1450 6350 50  0001 C CNN
	1    1450 6350
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D4FA0A9
P 1900 6350
F 0 "#FLG02" H 1900 6425 50  0001 C CNN
F 1 "PWR_FLAG" H 1900 6523 50  0000 C CNN
F 2 "" H 1900 6350 50  0001 C CNN
F 3 "~" H 1900 6350 50  0001 C CNN
	1    1900 6350
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5D4FA24F
P 2350 6350
F 0 "#FLG03" H 2350 6425 50  0001 C CNN
F 1 "PWR_FLAG" H 2350 6523 50  0000 C CNN
F 2 "" H 2350 6350 50  0001 C CNN
F 3 "~" H 2350 6350 50  0001 C CNN
	1    2350 6350
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5D6C300D
P 5850 6500
F 0 "H1" H 5950 6546 50  0000 L CNN
F 1 "MountingHole" H 5950 6455 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 5850 6500 50  0001 C CNN
F 3 "~" H 5850 6500 50  0001 C CNN
	1    5850 6500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5D6C3220
P 5850 6700
F 0 "H2" H 5950 6746 50  0000 L CNN
F 1 "MountingHole" H 5950 6655 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 5850 6700 50  0001 C CNN
F 3 "~" H 5850 6700 50  0001 C CNN
	1    5850 6700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5D6C3412
P 5850 6900
F 0 "H3" H 5950 6946 50  0000 L CNN
F 1 "MountingHole" H 5950 6855 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 5850 6900 50  0001 C CNN
F 3 "~" H 5850 6900 50  0001 C CNN
	1    5850 6900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5D6C35D6
P 5850 7100
F 0 "H4" H 5950 7146 50  0000 L CNN
F 1 "MountingHole" H 5950 7055 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 5850 7100 50  0001 C CNN
F 3 "~" H 5850 7100 50  0001 C CNN
	1    5850 7100
	1    0    0    -1  
$EndComp
Text GLabel 1600 1350 2    50   Input ~ 0
IN_1_a
$Comp
L Connector:AudioJack2_SwitchT J2
U 1 1 5EE25488
P 1400 2050
F 0 "J2" H 1430 2375 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 1430 2284 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1400 2050 50  0001 C CNN
F 3 "~" H 1400 2050 50  0001 C CNN
	1    1400 2050
	1    0    0    -1  
$EndComp
Text Notes 1000 2200 1    50   ~ 0
IN_1_b
$Comp
L power:GND #PWR04
U 1 1 5EE2548F
P 1600 1950
F 0 "#PWR04" H 1600 1700 50  0001 C CNN
F 1 "GND" V 1605 1822 50  0000 R CNN
F 2 "" H 1600 1950 50  0001 C CNN
F 3 "" H 1600 1950 50  0001 C CNN
	1    1600 1950
	0    -1   -1   0   
$EndComp
NoConn ~ 1600 2150
Text GLabel 1600 2050 2    50   Input ~ 0
IN_1_b
$Comp
L Device:R_POT_Dual RV2
U 1 1 5EE271C1
P 1500 2800
F 0 "RV2" V 1454 2613 50  0000 R CNN
F 1 "100k" V 1545 2613 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1750 2725 50  0001 C CNN
F 3 "~" H 1750 2725 50  0001 C CNN
	1    1500 2800
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J3
U 1 1 5EE337C1
P 1450 4950
F 0 "J3" H 1480 5275 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 1480 5184 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1450 4950 50  0001 C CNN
F 3 "~" H 1450 4950 50  0001 C CNN
	1    1450 4950
	1    0    0    -1  
$EndComp
Text Notes 1050 5100 1    50   ~ 0
OUT_1
$Comp
L power:GND #PWR05
U 1 1 5EE337C8
P 1650 4850
F 0 "#PWR05" H 1650 4600 50  0001 C CNN
F 1 "GND" V 1655 4722 50  0000 R CNN
F 2 "" H 1650 4850 50  0001 C CNN
F 3 "" H 1650 4850 50  0001 C CNN
	1    1650 4850
	0    -1   -1   0   
$EndComp
NoConn ~ 1650 5050
Text GLabel 2300 4950 2    50   Input ~ 0
OUT_1
$Comp
L Device:R R1
U 1 1 5EE37F99
P 1400 4000
F 0 "R1" H 1470 4046 50  0000 L CNN
F 1 "4k7" H 1470 3955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1330 4000 50  0001 C CNN
F 3 "~" H 1400 4000 50  0001 C CNN
	1    1400 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5EE388F1
P 1400 4150
F 0 "#PWR01" H 1400 3900 50  0001 C CNN
F 1 "GND" H 1405 3977 50  0000 C CNN
F 2 "" H 1400 4150 50  0001 C CNN
F 3 "" H 1400 4150 50  0001 C CNN
	1    1400 4150
	1    0    0    -1  
$EndComp
Text GLabel 1450 3500 2    50   Input ~ 0
RES_1_a
Text GLabel 1550 3700 2    50   Input ~ 0
RES_1_a
Wire Wire Line
	1450 3500 1400 3500
Wire Wire Line
	1400 3500 1400 3550
Text Notes 1050 2950 1    50   ~ 0
frequency
Text GLabel 1650 2400 2    50   Input ~ 0
freq_1_a
Text GLabel 1650 2700 2    50   Input ~ 0
freq_1_b
Text GLabel 1650 2900 2    50   Input ~ 0
freq_1_c
Text GLabel 1650 3200 2    50   Input ~ 0
freq_1_d
Wire Wire Line
	1650 2400 1400 2400
Wire Wire Line
	1650 2700 1600 2700
Wire Wire Line
	1650 2900 1400 2900
Wire Wire Line
	1600 3200 1600 3050
Wire Wire Line
	1400 3200 1600 3200
Connection ~ 1600 3200
Wire Wire Line
	1600 3200 1650 3200
Wire Wire Line
	1600 2550 1600 2700
Connection ~ 1600 2700
Wire Wire Line
	1600 2700 1400 2700
$Comp
L Device:R R2
U 1 1 5EE527B2
P 2050 4950
F 0 "R2" V 1843 4950 50  0000 C CNN
F 1 "1k" V 1934 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1980 4950 50  0001 C CNN
F 3 "~" H 2050 4950 50  0001 C CNN
	1    2050 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 4950 2200 4950
Wire Wire Line
	1900 4950 1650 4950
$Comp
L Device:R_POT RV3
U 1 1 5EE6B969
P 3450 3700
F 0 "RV3" H 3380 3746 50  0000 R CNN
F 1 "50k" H 3380 3655 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 3450 3700 50  0001 C CNN
F 3 "~" H 3450 3700 50  0001 C CNN
	1    3450 3700
	1    0    0    1   
$EndComp
Text Notes 3100 3950 1    50   ~ 0
resonance
$Comp
L Connector:AudioJack2_SwitchT J4
U 1 1 5EE6B970
P 3450 1350
F 0 "J4" H 3480 1675 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 3480 1584 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 3450 1350 50  0001 C CNN
F 3 "~" H 3450 1350 50  0001 C CNN
	1    3450 1350
	1    0    0    -1  
$EndComp
Text Notes 3050 1500 1    50   ~ 0
IN_1_a
$Comp
L power:GND #PWR09
U 1 1 5EE6B977
P 3650 1250
F 0 "#PWR09" H 3650 1000 50  0001 C CNN
F 1 "GND" V 3655 1122 50  0000 R CNN
F 2 "" H 3650 1250 50  0001 C CNN
F 3 "" H 3650 1250 50  0001 C CNN
	1    3650 1250
	0    -1   -1   0   
$EndComp
NoConn ~ 3650 1450
Text GLabel 3650 1350 2    50   Input ~ 0
IN_2_a
$Comp
L Connector:AudioJack2_SwitchT J5
U 1 1 5EE6B97F
P 3450 2050
F 0 "J5" H 3480 2375 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 3480 2284 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 3450 2050 50  0001 C CNN
F 3 "~" H 3450 2050 50  0001 C CNN
	1    3450 2050
	1    0    0    -1  
$EndComp
Text Notes 3050 2200 1    50   ~ 0
IN_1_b
$Comp
L power:GND #PWR010
U 1 1 5EE6B986
P 3650 1950
F 0 "#PWR010" H 3650 1700 50  0001 C CNN
F 1 "GND" V 3655 1822 50  0000 R CNN
F 2 "" H 3650 1950 50  0001 C CNN
F 3 "" H 3650 1950 50  0001 C CNN
	1    3650 1950
	0    -1   -1   0   
$EndComp
NoConn ~ 3650 2150
Text GLabel 3650 2050 2    50   Input ~ 0
IN_2_b
$Comp
L Device:R_POT_Dual RV4
U 1 1 5EE6B98E
P 3550 2800
F 0 "RV4" V 3504 2613 50  0000 R CNN
F 1 "100k" V 3595 2613 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 3800 2725 50  0001 C CNN
F 3 "~" H 3800 2725 50  0001 C CNN
	1    3550 2800
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J6
U 1 1 5EE6B994
P 3500 4950
F 0 "J6" H 3530 5275 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 3530 5184 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 3500 4950 50  0001 C CNN
F 3 "~" H 3500 4950 50  0001 C CNN
	1    3500 4950
	1    0    0    -1  
$EndComp
Text Notes 3100 5100 1    50   ~ 0
OUT_2
$Comp
L power:GND #PWR011
U 1 1 5EE6B99B
P 3700 4850
F 0 "#PWR011" H 3700 4600 50  0001 C CNN
F 1 "GND" V 3705 4722 50  0000 R CNN
F 2 "" H 3700 4850 50  0001 C CNN
F 3 "" H 3700 4850 50  0001 C CNN
	1    3700 4850
	0    -1   -1   0   
$EndComp
NoConn ~ 3700 5050
Text GLabel 4350 4950 2    50   Input ~ 0
OUT_2
$Comp
L Device:R R3
U 1 1 5EE6B9A3
P 3450 4000
F 0 "R3" H 3520 4046 50  0000 L CNN
F 1 "4k7" H 3520 3955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3380 4000 50  0001 C CNN
F 3 "~" H 3450 4000 50  0001 C CNN
	1    3450 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5EE6B9A9
P 3450 4150
F 0 "#PWR08" H 3450 3900 50  0001 C CNN
F 1 "GND" H 3455 3977 50  0000 C CNN
F 2 "" H 3450 4150 50  0001 C CNN
F 3 "" H 3450 4150 50  0001 C CNN
	1    3450 4150
	1    0    0    -1  
$EndComp
Text GLabel 3500 3500 2    50   Input ~ 0
RES_2_a
Text GLabel 3600 3700 2    50   Input ~ 0
RES_2_a
Wire Wire Line
	3500 3500 3450 3500
Wire Wire Line
	3450 3500 3450 3550
Text Notes 3100 2950 1    50   ~ 0
frequency
Text GLabel 3700 2400 2    50   Input ~ 0
freq_2_a
Text GLabel 3700 2700 2    50   Input ~ 0
freq_2_b
Text GLabel 3700 3200 2    50   Input ~ 0
freq_2_d
Wire Wire Line
	3700 2400 3450 2400
Wire Wire Line
	3700 2700 3650 2700
Wire Wire Line
	3700 2900 3450 2900
Wire Wire Line
	3650 3200 3650 3050
Wire Wire Line
	3450 3200 3650 3200
Connection ~ 3650 3200
Wire Wire Line
	3650 3200 3700 3200
Wire Wire Line
	3650 2550 3650 2700
Connection ~ 3650 2700
Wire Wire Line
	3650 2700 3450 2700
$Comp
L Device:R R4
U 1 1 5EE6B9C2
P 4100 4950
F 0 "R4" V 3893 4950 50  0000 C CNN
F 1 "1k" V 3984 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4030 4950 50  0001 C CNN
F 3 "~" H 4100 4950 50  0001 C CNN
	1    4100 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 4950 4250 4950
Wire Wire Line
	3950 4950 3700 4950
$Comp
L Device:R_POT RV5
U 1 1 5EE6D9BB
P 5400 3700
F 0 "RV5" H 5330 3746 50  0000 R CNN
F 1 "50k" H 5330 3655 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 5400 3700 50  0001 C CNN
F 3 "~" H 5400 3700 50  0001 C CNN
	1    5400 3700
	1    0    0    1   
$EndComp
Text Notes 5050 3950 1    50   ~ 0
resonance
$Comp
L Connector:AudioJack2_SwitchT J7
U 1 1 5EE6D9C2
P 5400 1350
F 0 "J7" H 5430 1675 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 5430 1584 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 5400 1350 50  0001 C CNN
F 3 "~" H 5400 1350 50  0001 C CNN
	1    5400 1350
	1    0    0    -1  
$EndComp
Text Notes 5000 1500 1    50   ~ 0
IN_1_a
$Comp
L power:GND #PWR013
U 1 1 5EE6D9C9
P 5600 1250
F 0 "#PWR013" H 5600 1000 50  0001 C CNN
F 1 "GND" V 5605 1122 50  0000 R CNN
F 2 "" H 5600 1250 50  0001 C CNN
F 3 "" H 5600 1250 50  0001 C CNN
	1    5600 1250
	0    -1   -1   0   
$EndComp
NoConn ~ 5600 1450
Text GLabel 5600 1350 2    50   Input ~ 0
IN_3_a
$Comp
L Connector:AudioJack2_SwitchT J8
U 1 1 5EE6D9D1
P 5400 2050
F 0 "J8" H 5430 2375 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 5430 2284 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 5400 2050 50  0001 C CNN
F 3 "~" H 5400 2050 50  0001 C CNN
	1    5400 2050
	1    0    0    -1  
$EndComp
Text Notes 5000 2200 1    50   ~ 0
IN_1_b
$Comp
L power:GND #PWR014
U 1 1 5EE6D9D8
P 5600 1950
F 0 "#PWR014" H 5600 1700 50  0001 C CNN
F 1 "GND" V 5605 1822 50  0000 R CNN
F 2 "" H 5600 1950 50  0001 C CNN
F 3 "" H 5600 1950 50  0001 C CNN
	1    5600 1950
	0    -1   -1   0   
$EndComp
NoConn ~ 5600 2150
Text GLabel 5600 2050 2    50   Input ~ 0
IN_3_b
$Comp
L Device:R_POT_Dual RV6
U 1 1 5EE6D9E0
P 5500 2800
F 0 "RV6" V 5454 2613 50  0000 R CNN
F 1 "100k" V 5545 2613 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 5750 2725 50  0001 C CNN
F 3 "~" H 5750 2725 50  0001 C CNN
	1    5500 2800
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J9
U 1 1 5EE6D9E6
P 5450 4950
F 0 "J9" H 5480 5275 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 5480 5184 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 5450 4950 50  0001 C CNN
F 3 "~" H 5450 4950 50  0001 C CNN
	1    5450 4950
	1    0    0    -1  
$EndComp
Text Notes 5050 5100 1    50   ~ 0
OUT_3
$Comp
L power:GND #PWR015
U 1 1 5EE6D9ED
P 5650 4850
F 0 "#PWR015" H 5650 4600 50  0001 C CNN
F 1 "GND" V 5655 4722 50  0000 R CNN
F 2 "" H 5650 4850 50  0001 C CNN
F 3 "" H 5650 4850 50  0001 C CNN
	1    5650 4850
	0    -1   -1   0   
$EndComp
NoConn ~ 5650 5050
Text GLabel 6300 4950 2    50   Input ~ 0
OUT_3
$Comp
L Device:R R5
U 1 1 5EE6D9F5
P 5400 4000
F 0 "R5" H 5470 4046 50  0000 L CNN
F 1 "4k7" H 5470 3955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5330 4000 50  0001 C CNN
F 3 "~" H 5400 4000 50  0001 C CNN
	1    5400 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5EE6D9FB
P 5400 4150
F 0 "#PWR012" H 5400 3900 50  0001 C CNN
F 1 "GND" H 5405 3977 50  0000 C CNN
F 2 "" H 5400 4150 50  0001 C CNN
F 3 "" H 5400 4150 50  0001 C CNN
	1    5400 4150
	1    0    0    -1  
$EndComp
Text GLabel 5450 3500 2    50   Input ~ 0
RES_3_a
Text GLabel 5550 3700 2    50   Input ~ 0
RES_3_a
Wire Wire Line
	5450 3500 5400 3500
Wire Wire Line
	5400 3500 5400 3550
Text Notes 5050 2950 1    50   ~ 0
frequency
Text GLabel 5650 2400 2    50   Input ~ 0
freq_3_a
Text GLabel 5650 2700 2    50   Input ~ 0
freq_3_b
Text GLabel 5650 2900 2    50   Input ~ 0
freq_3_c
Text GLabel 5650 3200 2    50   Input ~ 0
freq_3_d
Wire Wire Line
	5650 2400 5400 2400
Wire Wire Line
	5650 2700 5600 2700
Wire Wire Line
	5650 2900 5400 2900
Wire Wire Line
	5600 3200 5600 3050
Wire Wire Line
	5400 3200 5600 3200
Connection ~ 5600 3200
Wire Wire Line
	5600 3200 5650 3200
Wire Wire Line
	5600 2550 5600 2700
Connection ~ 5600 2700
Wire Wire Line
	5600 2700 5400 2700
$Comp
L Device:R R6
U 1 1 5EE6DA14
P 6050 4950
F 0 "R6" V 5843 4950 50  0000 C CNN
F 1 "1k" V 5934 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5980 4950 50  0001 C CNN
F 3 "~" H 6050 4950 50  0001 C CNN
	1    6050 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 4950 6200 4950
Wire Wire Line
	5900 4950 5650 4950
Text GLabel 3700 2900 2    50   Input ~ 0
freq_2_c
$Comp
L Connector:AudioJack2_SwitchT J10
U 1 1 5EE7889D
P 7750 4950
F 0 "J10" H 7780 5275 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 7780 5184 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 7750 4950 50  0001 C CNN
F 3 "~" H 7750 4950 50  0001 C CNN
	1    7750 4950
	1    0    0    -1  
$EndComp
Text Notes 7350 5100 1    50   ~ 0
OUT
$Comp
L power:GND #PWR019
U 1 1 5EE788A4
P 7950 4850
F 0 "#PWR019" H 7950 4600 50  0001 C CNN
F 1 "GND" V 7955 4722 50  0000 R CNN
F 2 "" H 7950 4850 50  0001 C CNN
F 3 "" H 7950 4850 50  0001 C CNN
	1    7950 4850
	0    -1   -1   0   
$EndComp
NoConn ~ 7950 5050
Text GLabel 8600 4950 2    50   Input ~ 0
OUT
$Comp
L Device:R R7
U 1 1 5EE788AC
P 8350 4950
F 0 "R7" V 8143 4950 50  0000 C CNN
F 1 "1k" V 8234 4950 50  0000 C CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" V 8280 4950 50  0001 C CNN
F 3 "~" H 8350 4950 50  0001 C CNN
	1    8350 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 4950 8500 4950
Wire Wire Line
	8200 4950 7950 4950
$Comp
L Device:R_POT RV7
U 1 1 5EE8002E
P 7750 1400
F 0 "RV7" H 7680 1446 50  0000 R CNN
F 1 "100k" H 7680 1355 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 7750 1400 50  0001 C CNN
F 3 "~" H 7750 1400 50  0001 C CNN
	1    7750 1400
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5EE8003B
P 7750 1550
F 0 "#PWR016" H 7750 1300 50  0001 C CNN
F 1 "GND" H 7755 1377 50  0000 C CNN
F 2 "" H 7750 1550 50  0001 C CNN
F 3 "" H 7750 1550 50  0001 C CNN
	1    7750 1550
	1    0    0    -1  
$EndComp
Text GLabel 7800 1200 2    50   Input ~ 0
MIX_1_a
Text GLabel 7900 1400 2    50   Input ~ 0
MIX_1_b
Wire Wire Line
	7800 1200 7750 1200
Wire Wire Line
	7750 1200 7750 1250
$Comp
L Device:R_POT RV8
U 1 1 5EE814B4
P 7750 2400
F 0 "RV8" H 7680 2446 50  0000 R CNN
F 1 "100k" H 7680 2355 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 7750 2400 50  0001 C CNN
F 3 "~" H 7750 2400 50  0001 C CNN
	1    7750 2400
	1    0    0    1   
$EndComp
Text Notes 7400 2650 1    50   ~ 0
mixer
$Comp
L power:GND #PWR017
U 1 1 5EE814C1
P 7750 2550
F 0 "#PWR017" H 7750 2300 50  0001 C CNN
F 1 "GND" H 7755 2377 50  0000 C CNN
F 2 "" H 7750 2550 50  0001 C CNN
F 3 "" H 7750 2550 50  0001 C CNN
	1    7750 2550
	1    0    0    -1  
$EndComp
Text GLabel 7800 2200 2    50   Input ~ 0
MIX_2_a
Text GLabel 7900 2400 2    50   Input ~ 0
MIX_2_b
Wire Wire Line
	7800 2200 7750 2200
Wire Wire Line
	7750 2200 7750 2250
$Comp
L Device:R_POT RV9
U 1 1 5EE82B2E
P 7750 3450
F 0 "RV9" H 7680 3496 50  0000 R CNN
F 1 "100k" H 7680 3405 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 7750 3450 50  0001 C CNN
F 3 "~" H 7750 3450 50  0001 C CNN
	1    7750 3450
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5EE82B3B
P 7750 3600
F 0 "#PWR018" H 7750 3350 50  0001 C CNN
F 1 "GND" H 7755 3427 50  0000 C CNN
F 2 "" H 7750 3600 50  0001 C CNN
F 3 "" H 7750 3600 50  0001 C CNN
	1    7750 3600
	1    0    0    -1  
$EndComp
Text GLabel 7800 3250 2    50   Input ~ 0
MIX_3_a
Text GLabel 7900 3450 2    50   Input ~ 0
MIX_3_b
Wire Wire Line
	7800 3250 7750 3250
Wire Wire Line
	7750 3250 7750 3300
$Comp
L Connector:Conn_01x19_Female J11
U 1 1 5EE3332E
P 9400 2550
F 0 "J11" H 9428 2576 50  0000 L CNN
F 1 "Conn_01x19_Female" H 9428 2485 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x19_P2.54mm_Vertical" H 9400 2550 50  0001 C CNN
F 3 "~" H 9400 2550 50  0001 C CNN
	1    9400 2550
	1    0    0    -1  
$EndComp
Text GLabel 9200 1650 0    50   Input ~ 0
IN_1_a
Text GLabel 9200 1750 0    50   Input ~ 0
IN_1_b
Text GLabel 9200 1850 0    50   Input ~ 0
RES_1_a
Text GLabel 9200 1950 0    50   Input ~ 0
RES_2_b
Text GLabel 9200 2050 0    50   Input ~ 0
FREQ_1_a
Text GLabel 9200 2150 0    50   Input ~ 0
FREQ_1_b
Text GLabel 9200 2250 0    50   Input ~ 0
FREQ_2_a
Text GLabel 9200 2350 0    50   Input ~ 0
FREQ_2_b
Text GLabel 9200 2450 0    50   Input ~ 0
OUT_1
$EndSCHEMATC
