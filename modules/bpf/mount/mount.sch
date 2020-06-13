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
Comment2 "resonant band pass filter"
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
$Comp
L Device:R_POT RV1
U 1 1 5D4C79A5
P 1250 3750
F 0 "RV1" H 1180 3796 50  0000 R CNN
F 1 "50k" H 1180 3705 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1250 3750 50  0001 C CNN
F 3 "~" H 1250 3750 50  0001 C CNN
	1    1250 3750
	1    0    0    1   
$EndComp
Text Notes 900  4000 1    50   ~ 0
resonance
$Comp
L Connector:AudioJack2_SwitchT J1
U 1 1 5D4DE229
P 1250 1400
F 0 "J1" H 1280 1725 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 1280 1634 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1250 1400 50  0001 C CNN
F 3 "~" H 1250 1400 50  0001 C CNN
	1    1250 1400
	1    0    0    -1  
$EndComp
Text Notes 850  1550 1    50   ~ 0
IN_1
$Comp
L power:GND #PWR03
U 1 1 5D4F30EF
P 1450 1300
F 0 "#PWR03" H 1450 1050 50  0001 C CNN
F 1 "GND" V 1455 1172 50  0000 R CNN
F 2 "" H 1450 1300 50  0001 C CNN
F 3 "" H 1450 1300 50  0001 C CNN
	1    1450 1300
	0    -1   -1   0   
$EndComp
NoConn ~ 1450 1500
$Comp
L power:+15V #PWR05
U 1 1 5D4F7905
P 1700 7000
F 0 "#PWR05" H 1700 6850 50  0001 C CNN
F 1 "+15V" H 1715 7173 50  0000 C CNN
F 2 "" H 1700 7000 50  0001 C CNN
F 3 "" H 1700 7000 50  0001 C CNN
	1    1700 7000
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR08
U 1 1 5D4F7C4A
P 2150 7000
F 0 "#PWR08" H 2150 7100 50  0001 C CNN
F 1 "-15V" H 2165 7173 50  0000 C CNN
F 2 "" H 2150 7000 50  0001 C CNN
F 3 "" H 2150 7000 50  0001 C CNN
	1    2150 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D4F801B
P 1250 7000
F 0 "#PWR02" H 1250 6750 50  0001 C CNN
F 1 "GND" H 1255 6827 50  0000 C CNN
F 2 "" H 1250 7000 50  0001 C CNN
F 3 "" H 1250 7000 50  0001 C CNN
	1    1250 7000
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D4F9D7C
P 1250 7000
F 0 "#FLG01" H 1250 7075 50  0001 C CNN
F 1 "PWR_FLAG" H 1250 7173 50  0000 C CNN
F 2 "" H 1250 7000 50  0001 C CNN
F 3 "~" H 1250 7000 50  0001 C CNN
	1    1250 7000
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D4FA0A9
P 1700 7000
F 0 "#FLG02" H 1700 7075 50  0001 C CNN
F 1 "PWR_FLAG" H 1700 7173 50  0000 C CNN
F 2 "" H 1700 7000 50  0001 C CNN
F 3 "~" H 1700 7000 50  0001 C CNN
	1    1700 7000
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5D4FA24F
P 2150 7000
F 0 "#FLG03" H 2150 7075 50  0001 C CNN
F 1 "PWR_FLAG" H 2150 7173 50  0000 C CNN
F 2 "" H 2150 7000 50  0001 C CNN
F 3 "~" H 2150 7000 50  0001 C CNN
	1    2150 7000
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5D6C300D
P 6000 6650
F 0 "H1" H 6100 6696 50  0000 L CNN
F 1 "MountingHole" H 6100 6605 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6000 6650 50  0001 C CNN
F 3 "~" H 6000 6650 50  0001 C CNN
	1    6000 6650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5D6C3220
P 6000 6850
F 0 "H2" H 6100 6896 50  0000 L CNN
F 1 "MountingHole" H 6100 6805 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6000 6850 50  0001 C CNN
F 3 "~" H 6000 6850 50  0001 C CNN
	1    6000 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5D6C3412
P 6000 7050
F 0 "H3" H 6100 7096 50  0000 L CNN
F 1 "MountingHole" H 6100 7005 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6000 7050 50  0001 C CNN
F 3 "~" H 6000 7050 50  0001 C CNN
	1    6000 7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5D6C35D6
P 6000 7250
F 0 "H4" H 6100 7296 50  0000 L CNN
F 1 "MountingHole" H 6100 7205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6000 7250 50  0001 C CNN
F 3 "~" H 6000 7250 50  0001 C CNN
	1    6000 7250
	1    0    0    -1  
$EndComp
Text GLabel 1450 1400 2    50   Input ~ 0
IN_1
$Comp
L Connector:AudioJack2_SwitchT J2
U 1 1 5EE25488
P 1250 2100
F 0 "J2" H 1280 2425 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 1280 2334 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1250 2100 50  0001 C CNN
F 3 "~" H 1250 2100 50  0001 C CNN
	1    1250 2100
	1    0    0    -1  
$EndComp
Text Notes 850  2250 1    50   ~ 0
IN
$Comp
L power:GND #PWR04
U 1 1 5EE2548F
P 1450 2000
F 0 "#PWR04" H 1450 1750 50  0001 C CNN
F 1 "GND" V 1455 1872 50  0000 R CNN
F 2 "" H 1450 2000 50  0001 C CNN
F 3 "" H 1450 2000 50  0001 C CNN
	1    1450 2000
	0    -1   -1   0   
$EndComp
NoConn ~ 1450 2200
Text GLabel 1450 2100 2    50   Input ~ 0
IN
$Comp
L Device:R_POT_Dual RV2
U 1 1 5EE271C1
P 1350 2850
F 0 "RV2" V 1304 2663 50  0000 R CNN
F 1 "100k" V 1395 2663 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD902F-40-00D_Dual_Vertical" H 1600 2775 50  0001 C CNN
F 3 "~" H 1600 2775 50  0001 C CNN
	1    1350 2850
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J3
U 1 1 5EE337C1
P 1600 5100
F 0 "J3" H 1630 5425 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 1630 5334 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1600 5100 50  0001 C CNN
F 3 "~" H 1600 5100 50  0001 C CNN
	1    1600 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5EE337C8
P 1800 5000
F 0 "#PWR06" H 1800 4750 50  0001 C CNN
F 1 "GND" V 1805 4872 50  0000 R CNN
F 2 "" H 1800 5000 50  0001 C CNN
F 3 "" H 1800 5000 50  0001 C CNN
	1    1800 5000
	0    -1   -1   0   
$EndComp
NoConn ~ 1800 5200
Text GLabel 2450 5100 2    50   Input ~ 0
OUT_1
$Comp
L Device:R R1
U 1 1 5EE37F99
P 1250 4050
F 0 "R1" H 1320 4096 50  0000 L CNN
F 1 "4k7" H 1320 4005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1180 4050 50  0001 C CNN
F 3 "~" H 1250 4050 50  0001 C CNN
	1    1250 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5EE388F1
P 1250 4200
F 0 "#PWR01" H 1250 3950 50  0001 C CNN
F 1 "GND" H 1255 4027 50  0000 C CNN
F 2 "" H 1250 4200 50  0001 C CNN
F 3 "" H 1250 4200 50  0001 C CNN
	1    1250 4200
	1    0    0    -1  
$EndComp
Text GLabel 1400 3750 2    50   Input ~ 0
RES_1
Wire Wire Line
	1300 3550 1250 3550
Wire Wire Line
	1250 3550 1250 3600
Text Notes 900  3000 1    50   ~ 0
frequency
Text GLabel 1500 2450 2    50   Input ~ 0
FREQ_1_a
Text GLabel 1500 2750 2    50   Input ~ 0
FREQ_1_b
Text GLabel 1500 2950 2    50   Input ~ 0
FREQ_1_c
Text GLabel 1500 3250 2    50   Input ~ 0
OUT_1
Wire Wire Line
	1500 2450 1250 2450
Wire Wire Line
	1500 2750 1450 2750
Wire Wire Line
	1500 2950 1250 2950
Wire Wire Line
	1450 3250 1450 3100
Wire Wire Line
	1250 3250 1450 3250
Connection ~ 1450 3250
Wire Wire Line
	1450 3250 1500 3250
Wire Wire Line
	1450 2600 1450 2750
Connection ~ 1450 2750
Wire Wire Line
	1450 2750 1250 2750
$Comp
L Device:R R3
U 1 1 5EE527B2
P 2200 5100
F 0 "R3" V 1993 5100 50  0000 C CNN
F 1 "1k" V 2084 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2130 5100 50  0001 C CNN
F 3 "~" H 2200 5100 50  0001 C CNN
	1    2200 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 5100 2350 5100
Wire Wire Line
	2050 5100 1800 5100
$Comp
L Device:R_POT RV3
U 1 1 5EE6B969
P 2400 3700
F 0 "RV3" H 2330 3746 50  0000 R CNN
F 1 "50k" H 2330 3655 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 2400 3700 50  0001 C CNN
F 3 "~" H 2400 3700 50  0001 C CNN
	1    2400 3700
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J5
U 1 1 5EE6B970
P 2400 1350
F 0 "J5" H 2430 1675 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 2430 1584 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 2400 1350 50  0001 C CNN
F 3 "~" H 2400 1350 50  0001 C CNN
	1    2400 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5EE6B977
P 2600 1250
F 0 "#PWR010" H 2600 1000 50  0001 C CNN
F 1 "GND" V 2605 1122 50  0000 R CNN
F 2 "" H 2600 1250 50  0001 C CNN
F 3 "" H 2600 1250 50  0001 C CNN
	1    2600 1250
	0    -1   -1   0   
$EndComp
NoConn ~ 2600 1450
Text GLabel 2600 1350 2    50   Input ~ 0
IN_2
$Comp
L Device:R_POT_Dual RV4
U 1 1 5EE6B98E
P 2500 2800
F 0 "RV4" V 2454 2613 50  0000 R CNN
F 1 "100k" V 2545 2613 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD902F-40-00D_Dual_Vertical" H 2750 2725 50  0001 C CNN
F 3 "~" H 2750 2725 50  0001 C CNN
	1    2500 2800
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J7
U 1 1 5EE6B994
P 3650 5100
F 0 "J7" H 3680 5425 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 3680 5334 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 3650 5100 50  0001 C CNN
F 3 "~" H 3650 5100 50  0001 C CNN
	1    3650 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5EE6B99B
P 3850 5000
F 0 "#PWR013" H 3850 4750 50  0001 C CNN
F 1 "GND" V 3855 4872 50  0000 R CNN
F 2 "" H 3850 5000 50  0001 C CNN
F 3 "" H 3850 5000 50  0001 C CNN
	1    3850 5000
	0    -1   -1   0   
$EndComp
NoConn ~ 3850 5200
Text GLabel 4500 5100 2    50   Input ~ 0
OUT_2
$Comp
L Device:R R5
U 1 1 5EE6B9A3
P 2400 4000
F 0 "R5" H 2470 4046 50  0000 L CNN
F 1 "4k7" H 2470 3955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2330 4000 50  0001 C CNN
F 3 "~" H 2400 4000 50  0001 C CNN
	1    2400 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5EE6B9A9
P 2400 4150
F 0 "#PWR09" H 2400 3900 50  0001 C CNN
F 1 "GND" H 2405 3977 50  0000 C CNN
F 2 "" H 2400 4150 50  0001 C CNN
F 3 "" H 2400 4150 50  0001 C CNN
	1    2400 4150
	1    0    0    -1  
$EndComp
Text GLabel 2550 3700 2    50   Input ~ 0
RES_2
Wire Wire Line
	2450 3500 2400 3500
Wire Wire Line
	2400 3500 2400 3550
Text GLabel 2650 2400 2    50   Input ~ 0
FREQ_2_a
Text GLabel 2650 2700 2    50   Input ~ 0
FREQ_2_b
Text GLabel 2650 3200 2    50   Input ~ 0
OUT_2
Wire Wire Line
	2650 2400 2400 2400
Wire Wire Line
	2650 2700 2600 2700
Wire Wire Line
	2650 2900 2400 2900
Wire Wire Line
	2600 3200 2600 3050
Wire Wire Line
	2400 3200 2600 3200
Connection ~ 2600 3200
Wire Wire Line
	2600 3200 2650 3200
Wire Wire Line
	2600 2550 2600 2700
Connection ~ 2600 2700
Wire Wire Line
	2600 2700 2400 2700
$Comp
L Device:R R9
U 1 1 5EE6B9C2
P 4250 5100
F 0 "R9" V 4043 5100 50  0000 C CNN
F 1 "1k" V 4134 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4180 5100 50  0001 C CNN
F 3 "~" H 4250 5100 50  0001 C CNN
	1    4250 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 5100 4400 5100
Wire Wire Line
	4100 5100 3850 5100
$Comp
L Device:R_POT RV5
U 1 1 5EE6D9BB
P 3550 3700
F 0 "RV5" H 3480 3746 50  0000 R CNN
F 1 "50k" H 3480 3655 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 3550 3700 50  0001 C CNN
F 3 "~" H 3550 3700 50  0001 C CNN
	1    3550 3700
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J6
U 1 1 5EE6D9C2
P 3550 1350
F 0 "J6" H 3580 1675 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 3580 1584 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 3550 1350 50  0001 C CNN
F 3 "~" H 3550 1350 50  0001 C CNN
	1    3550 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5EE6D9C9
P 3750 1250
F 0 "#PWR012" H 3750 1000 50  0001 C CNN
F 1 "GND" V 3755 1122 50  0000 R CNN
F 2 "" H 3750 1250 50  0001 C CNN
F 3 "" H 3750 1250 50  0001 C CNN
	1    3750 1250
	0    -1   -1   0   
$EndComp
NoConn ~ 3750 1450
Text GLabel 3750 1350 2    50   Input ~ 0
IN_3
$Comp
L Device:R_POT_Dual RV6
U 1 1 5EE6D9E0
P 3650 2800
F 0 "RV6" V 3604 2613 50  0000 R CNN
F 1 "100k" V 3695 2613 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD902F-40-00D_Dual_Vertical" H 3900 2725 50  0001 C CNN
F 3 "~" H 3900 2725 50  0001 C CNN
	1    3650 2800
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J4
U 1 1 5EE6D9E6
P 1600 5750
F 0 "J4" H 1630 6075 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 1630 5984 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1600 5750 50  0001 C CNN
F 3 "~" H 1600 5750 50  0001 C CNN
	1    1600 5750
	1    0    0    -1  
$EndComp
Text Notes 900  5550 1    50   ~ 0
individual out
$Comp
L power:GND #PWR07
U 1 1 5EE6D9ED
P 1800 5650
F 0 "#PWR07" H 1800 5400 50  0001 C CNN
F 1 "GND" V 1805 5522 50  0000 R CNN
F 2 "" H 1800 5650 50  0001 C CNN
F 3 "" H 1800 5650 50  0001 C CNN
	1    1800 5650
	0    -1   -1   0   
$EndComp
NoConn ~ 1800 5850
Text GLabel 2450 5750 2    50   Input ~ 0
OUT_3
$Comp
L Device:R R7
U 1 1 5EE6D9F5
P 3550 4000
F 0 "R7" H 3620 4046 50  0000 L CNN
F 1 "4k7" H 3620 3955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3480 4000 50  0001 C CNN
F 3 "~" H 3550 4000 50  0001 C CNN
	1    3550 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5EE6D9FB
P 3550 4150
F 0 "#PWR011" H 3550 3900 50  0001 C CNN
F 1 "GND" H 3555 3977 50  0000 C CNN
F 2 "" H 3550 4150 50  0001 C CNN
F 3 "" H 3550 4150 50  0001 C CNN
	1    3550 4150
	1    0    0    -1  
$EndComp
Text GLabel 3700 3700 2    50   Input ~ 0
RES_3
Wire Wire Line
	3600 3500 3550 3500
Wire Wire Line
	3550 3500 3550 3550
Text GLabel 3800 2400 2    50   Input ~ 0
FREQ_3_a
Text GLabel 3800 2700 2    50   Input ~ 0
FREQ_3_b
Text GLabel 3800 2900 2    50   Input ~ 0
FREQ_3_c
Text GLabel 3800 3200 2    50   Input ~ 0
OUT_3
Wire Wire Line
	3800 2400 3550 2400
Wire Wire Line
	3800 2700 3750 2700
Wire Wire Line
	3800 2900 3550 2900
Wire Wire Line
	3750 3200 3750 3050
Wire Wire Line
	3550 3200 3750 3200
Connection ~ 3750 3200
Wire Wire Line
	3750 3200 3800 3200
Wire Wire Line
	3750 2550 3750 2700
Connection ~ 3750 2700
Wire Wire Line
	3750 2700 3550 2700
$Comp
L Device:R R4
U 1 1 5EE6DA14
P 2200 5750
F 0 "R4" V 1993 5750 50  0000 C CNN
F 1 "1k" V 2084 5750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2130 5750 50  0001 C CNN
F 3 "~" H 2200 5750 50  0001 C CNN
	1    2200 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 5750 2350 5750
Wire Wire Line
	2050 5750 1800 5750
Text GLabel 2650 2900 2    50   Input ~ 0
FREQ_2_c
$Comp
L Connector:AudioJack2_SwitchT J10
U 1 1 5EE7889D
P 7900 5100
F 0 "J10" H 7930 5425 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 7930 5334 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 7900 5100 50  0001 C CNN
F 3 "~" H 7900 5100 50  0001 C CNN
	1    7900 5100
	1    0    0    -1  
$EndComp
Text Notes 7500 5250 1    50   ~ 0
OUT
$Comp
L power:GND #PWR021
U 1 1 5EE788A4
P 8100 5000
F 0 "#PWR021" H 8100 4750 50  0001 C CNN
F 1 "GND" V 8105 4872 50  0000 R CNN
F 2 "" H 8100 5000 50  0001 C CNN
F 3 "" H 8100 5000 50  0001 C CNN
	1    8100 5000
	0    -1   -1   0   
$EndComp
NoConn ~ 8100 5200
Text GLabel 8750 5100 2    50   Input ~ 0
OUT
$Comp
L Device:R R13
U 1 1 5EE788AC
P 8500 5100
F 0 "R13" V 8293 5100 50  0000 C CNN
F 1 "1k" V 8384 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8430 5100 50  0001 C CNN
F 3 "~" H 8500 5100 50  0001 C CNN
	1    8500 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 5100 8650 5100
Wire Wire Line
	8350 5100 8100 5100
$Comp
L Device:R_POT RV10
U 1 1 5EE8002E
P 7900 1550
F 0 "RV10" H 7830 1596 50  0000 R CNN
F 1 "100k" H 7830 1505 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 7900 1550 50  0001 C CNN
F 3 "~" H 7900 1550 50  0001 C CNN
	1    7900 1550
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5EE8003B
P 7900 1700
F 0 "#PWR018" H 7900 1450 50  0001 C CNN
F 1 "GND" H 7905 1527 50  0000 C CNN
F 2 "" H 7900 1700 50  0001 C CNN
F 3 "" H 7900 1700 50  0001 C CNN
	1    7900 1700
	1    0    0    -1  
$EndComp
Text GLabel 7950 1350 2    50   Input ~ 0
OUT_1
Text GLabel 8050 1550 2    50   Input ~ 0
MIX_1
Wire Wire Line
	7950 1350 7900 1350
Wire Wire Line
	7900 1350 7900 1400
$Comp
L Device:R_POT RV11
U 1 1 5EE814B4
P 7900 2300
F 0 "RV11" H 7830 2346 50  0000 R CNN
F 1 "100k" H 7830 2255 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 7900 2300 50  0001 C CNN
F 3 "~" H 7900 2300 50  0001 C CNN
	1    7900 2300
	1    0    0    1   
$EndComp
Text Notes 7350 2750 1    50   ~ 0
mixer
$Comp
L power:GND #PWR019
U 1 1 5EE814C1
P 7900 2450
F 0 "#PWR019" H 7900 2200 50  0001 C CNN
F 1 "GND" H 7905 2277 50  0000 C CNN
F 2 "" H 7900 2450 50  0001 C CNN
F 3 "" H 7900 2450 50  0001 C CNN
	1    7900 2450
	1    0    0    -1  
$EndComp
Text GLabel 7950 2100 2    50   Input ~ 0
OUT_2
Text GLabel 8050 2300 2    50   Input ~ 0
MIX_2
Wire Wire Line
	7950 2100 7900 2100
Wire Wire Line
	7900 2100 7900 2150
$Comp
L Device:R_POT RV12
U 1 1 5EE82B2E
P 7900 3050
F 0 "RV12" H 7830 3096 50  0000 R CNN
F 1 "100k" H 7830 3005 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 7900 3050 50  0001 C CNN
F 3 "~" H 7900 3050 50  0001 C CNN
	1    7900 3050
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5EE82B3B
P 7900 3200
F 0 "#PWR020" H 7900 2950 50  0001 C CNN
F 1 "GND" H 7905 3027 50  0000 C CNN
F 2 "" H 7900 3200 50  0001 C CNN
F 3 "" H 7900 3200 50  0001 C CNN
	1    7900 3200
	1    0    0    -1  
$EndComp
Text GLabel 7950 2850 2    50   Input ~ 0
OUT_3
Text GLabel 8050 3050 2    50   Input ~ 0
MIX_3
Wire Wire Line
	7950 2850 7900 2850
Wire Wire Line
	7900 2850 7900 2900
Text GLabel 1600 3550 2    50   Input ~ 0
OUT_1
$Comp
L Device:R R2
U 1 1 5EE25EEF
P 1450 3550
F 0 "R2" H 1520 3596 50  0000 L CNN
F 1 "22k" H 1520 3505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1380 3550 50  0001 C CNN
F 3 "~" H 1450 3550 50  0001 C CNN
	1    1450 3550
	0    -1   -1   0   
$EndComp
Text GLabel 10200 3850 0    50   Input ~ 0
MIX_1
Text GLabel 10200 3950 0    50   Input ~ 0
MIX_2
Text GLabel 10200 4050 0    50   Input ~ 0
MIX_3
$Comp
L Device:R_POT RV9
U 1 1 5EE4FCFC
P 7850 3800
F 0 "RV9" H 7780 3846 50  0000 R CNN
F 1 "100k" H 7780 3755 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 7850 3800 50  0001 C CNN
F 3 "~" H 7850 3800 50  0001 C CNN
	1    7850 3800
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5EE4FD02
P 7850 3950
F 0 "#PWR017" H 7850 3700 50  0001 C CNN
F 1 "GND" H 7855 3777 50  0000 C CNN
F 2 "" H 7850 3950 50  0001 C CNN
F 3 "" H 7850 3950 50  0001 C CNN
	1    7850 3950
	1    0    0    -1  
$EndComp
Text GLabel 7900 3600 2    50   Input ~ 0
OUT_4
Text GLabel 8000 3800 2    50   Input ~ 0
MIX_4
Wire Wire Line
	7900 3600 7850 3600
Wire Wire Line
	7850 3600 7850 3650
$Comp
L Device:R_POT RV7
U 1 1 5EE9639C
P 4800 3650
F 0 "RV7" H 4730 3696 50  0000 R CNN
F 1 "50k" H 4730 3605 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 4800 3650 50  0001 C CNN
F 3 "~" H 4800 3650 50  0001 C CNN
	1    4800 3650
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J9
U 1 1 5EE963A2
P 4800 1300
F 0 "J9" H 4830 1625 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 4830 1534 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 4800 1300 50  0001 C CNN
F 3 "~" H 4800 1300 50  0001 C CNN
	1    4800 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5EE963A8
P 5000 1200
F 0 "#PWR016" H 5000 950 50  0001 C CNN
F 1 "GND" V 5005 1072 50  0000 R CNN
F 2 "" H 5000 1200 50  0001 C CNN
F 3 "" H 5000 1200 50  0001 C CNN
	1    5000 1200
	0    -1   -1   0   
$EndComp
NoConn ~ 5000 1400
Text GLabel 5000 1300 2    50   Input ~ 0
IN_4
$Comp
L Device:R_POT_Dual RV8
U 1 1 5EE963B0
P 4900 2750
F 0 "RV8" V 4854 2563 50  0000 R CNN
F 1 "100k" V 4945 2563 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD902F-40-00D_Dual_Vertical" H 5150 2675 50  0001 C CNN
F 3 "~" H 5150 2675 50  0001 C CNN
	1    4900 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5EE963B6
P 4800 3950
F 0 "R11" H 4870 3996 50  0000 L CNN
F 1 "4k7" H 4870 3905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4730 3950 50  0001 C CNN
F 3 "~" H 4800 3950 50  0001 C CNN
	1    4800 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5EE963BC
P 4800 4100
F 0 "#PWR015" H 4800 3850 50  0001 C CNN
F 1 "GND" H 4805 3927 50  0000 C CNN
F 2 "" H 4800 4100 50  0001 C CNN
F 3 "" H 4800 4100 50  0001 C CNN
	1    4800 4100
	1    0    0    -1  
$EndComp
Text GLabel 4950 3650 2    50   Input ~ 0
RES_4
Wire Wire Line
	4850 3450 4800 3450
Wire Wire Line
	4800 3450 4800 3500
Text GLabel 5050 2350 2    50   Input ~ 0
FREQ_4_a
Text GLabel 5050 2650 2    50   Input ~ 0
FREQ_4_b
Text GLabel 5050 2850 2    50   Input ~ 0
FREQ_4_c
Text GLabel 5050 3150 2    50   Input ~ 0
OUT_4
Wire Wire Line
	5050 2350 4800 2350
Wire Wire Line
	5050 2650 5000 2650
Wire Wire Line
	5050 2850 4800 2850
Wire Wire Line
	5000 3150 5000 3000
Wire Wire Line
	4800 3150 5000 3150
Connection ~ 5000 3150
Wire Wire Line
	5000 3150 5050 3150
Wire Wire Line
	5000 2500 5000 2650
Connection ~ 5000 2650
Wire Wire Line
	5000 2650 4800 2650
$Comp
L Connector:AudioJack2_SwitchT J8
U 1 1 5EEBA84D
P 3650 5750
F 0 "J8" H 3680 6075 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 3680 5984 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 3650 5750 50  0001 C CNN
F 3 "~" H 3650 5750 50  0001 C CNN
	1    3650 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5EEBA854
P 3850 5650
F 0 "#PWR014" H 3850 5400 50  0001 C CNN
F 1 "GND" V 3855 5522 50  0000 R CNN
F 2 "" H 3850 5650 50  0001 C CNN
F 3 "" H 3850 5650 50  0001 C CNN
	1    3850 5650
	0    -1   -1   0   
$EndComp
NoConn ~ 3850 5850
Text GLabel 4500 5750 2    50   Input ~ 0
OUT_4
$Comp
L Device:R R10
U 1 1 5EEBA85C
P 4250 5750
F 0 "R10" V 4043 5750 50  0000 C CNN
F 1 "1k" V 4134 5750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4180 5750 50  0001 C CNN
F 3 "~" H 4250 5750 50  0001 C CNN
	1    4250 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 5750 4400 5750
Wire Wire Line
	4100 5750 3850 5750
Text GLabel 10200 1000 0    50   Input ~ 0
IN
Text GLabel 10200 1100 0    50   Input ~ 0
IN_1
Text GLabel 10200 1300 0    50   Input ~ 0
RES_1
Text GLabel 10200 1200 0    50   Input ~ 0
FREQ_1_a
Text GLabel 10200 1500 0    50   Input ~ 0
FREQ_1_b
Text GLabel 10200 1400 0    50   Input ~ 0
FREQ_1_c
Text GLabel 10200 1600 0    50   Input ~ 0
OUT_1
Text GLabel 10200 1700 0    50   Input ~ 0
IN_2
Text GLabel 10200 1800 0    50   Input ~ 0
FREQ_2_a
Text GLabel 10200 2100 0    50   Input ~ 0
FREQ_2_b
Text GLabel 10200 2000 0    50   Input ~ 0
FREQ_2_c
Text GLabel 10200 2200 0    50   Input ~ 0
OUT_2
Text GLabel 10200 2300 0    50   Input ~ 0
IN_3
Text GLabel 10200 2500 0    50   Input ~ 0
RES_3
Text GLabel 10200 2400 0    50   Input ~ 0
FREQ_3_a
Text GLabel 10200 2700 0    50   Input ~ 0
FREQ_3_b
Text GLabel 10200 2600 0    50   Input ~ 0
FREQ_3_c
Text GLabel 10200 2800 0    50   Input ~ 0
OUT_3
Text GLabel 10200 4250 0    50   Input ~ 0
OUT
$Comp
L power:GND #PWR022
U 1 1 5EE3DC0A
P 10200 900
F 0 "#PWR022" H 10200 650 50  0001 C CNN
F 1 "GND" V 10205 772 50  0000 R CNN
F 2 "" H 10200 900 50  0001 C CNN
F 3 "" H 10200 900 50  0001 C CNN
	1    10200 900 
	0    1    1    0   
$EndComp
Text GLabel 10200 1900 0    50   Input ~ 0
RES_2
Text GLabel 10200 2900 0    50   Input ~ 0
IN_4
Text GLabel 10200 3100 0    50   Input ~ 0
RES_4
Text GLabel 10200 3000 0    50   Input ~ 0
FREQ_4_a
Text GLabel 10200 3300 0    50   Input ~ 0
FREQ_4_b
Text GLabel 10200 3200 0    50   Input ~ 0
FREQ_4_c
Text GLabel 10200 3400 0    50   Input ~ 0
OUT_4
Text GLabel 10200 4150 0    50   Input ~ 0
MIX_4
Text GLabel 2750 3500 2    50   Input ~ 0
OUT_2
$Comp
L Device:R R6
U 1 1 5EE68E16
P 2600 3500
F 0 "R6" H 2670 3546 50  0000 L CNN
F 1 "22k" H 2670 3455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2530 3500 50  0001 C CNN
F 3 "~" H 2600 3500 50  0001 C CNN
	1    2600 3500
	0    -1   -1   0   
$EndComp
Text GLabel 3900 3500 2    50   Input ~ 0
OUT_3
$Comp
L Device:R R8
U 1 1 5EE6A006
P 3750 3500
F 0 "R8" H 3820 3546 50  0000 L CNN
F 1 "22k" H 3820 3455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3680 3500 50  0001 C CNN
F 3 "~" H 3750 3500 50  0001 C CNN
	1    3750 3500
	0    -1   -1   0   
$EndComp
Text GLabel 5150 3450 2    50   Input ~ 0
OUT_4
$Comp
L Device:R R12
U 1 1 5EE6B17A
P 5000 3450
F 0 "R12" H 5070 3496 50  0000 L CNN
F 1 "22k" H 5070 3405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4930 3450 50  0001 C CNN
F 3 "~" H 5000 3450 50  0001 C CNN
	1    5000 3450
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x26_Male J11
U 1 1 5EE4FEB7
P 10400 2100
F 0 "J11" H 10372 2074 50  0000 R CNN
F 1 "Conn_01x26_Male" H 10372 1983 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x26_P2.54mm_Vertical" H 10400 2100 50  0001 C CNN
F 3 "~" H 10400 2100 50  0001 C CNN
	1    10400 2100
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J12
U 1 1 5EE5B807
P 10400 4050
F 0 "J12" H 10372 4074 50  0000 R CNN
F 1 "Conn_01x05_Male" H 10372 3983 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 10400 4050 50  0001 C CNN
F 3 "~" H 10400 4050 50  0001 C CNN
	1    10400 4050
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
