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
P 1250 3850
F 0 "RV1" H 1180 3896 50  0000 R CNN
F 1 "50k" H 1180 3805 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1250 3850 50  0001 C CNN
F 3 "~" H 1250 3850 50  0001 C CNN
	1    1250 3850
	1    0    0    1   
$EndComp
Text Notes 850  4200 1    50   ~ 0
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
Text Notes 850  1600 1    50   ~ 0
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
P 1350 2950
F 0 "RV2" V 1304 2763 50  0000 R CNN
F 1 "100k" V 1395 2763 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD902F-40-00D_Dual_Vertical" H 1600 2875 50  0001 C CNN
F 3 "~" H 1600 2875 50  0001 C CNN
	1    1350 2950
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J3
U 1 1 5EE337C1
P 1300 5100
F 0 "J3" H 1330 5425 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 1330 5334 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1300 5100 50  0001 C CNN
F 3 "~" H 1300 5100 50  0001 C CNN
	1    1300 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5EE337C8
P 1500 5000
F 0 "#PWR06" H 1500 4750 50  0001 C CNN
F 1 "GND" V 1505 4872 50  0000 R CNN
F 2 "" H 1500 5000 50  0001 C CNN
F 3 "" H 1500 5000 50  0001 C CNN
	1    1500 5000
	0    -1   -1   0   
$EndComp
NoConn ~ 1500 5200
Text GLabel 2150 5100 2    50   Input ~ 0
OUT_1
$Comp
L Device:R R1
U 1 1 5EE37F99
P 1250 4150
F 0 "R1" H 1320 4196 50  0000 L CNN
F 1 "470" H 1320 4105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1180 4150 50  0001 C CNN
F 3 "~" H 1250 4150 50  0001 C CNN
	1    1250 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5EE388F1
P 1250 4300
F 0 "#PWR01" H 1250 4050 50  0001 C CNN
F 1 "GND" H 1255 4127 50  0000 C CNN
F 2 "" H 1250 4300 50  0001 C CNN
F 3 "" H 1250 4300 50  0001 C CNN
	1    1250 4300
	1    0    0    -1  
$EndComp
Text GLabel 1400 3850 2    50   Input ~ 0
RES_1
Wire Wire Line
	1300 3650 1250 3650
Wire Wire Line
	1250 3650 1250 3700
Text Notes 850  3250 1    50   ~ 0
frequency
Text GLabel 1500 2850 2    50   Input ~ 0
FREQ_1_a
Text GLabel 1500 2550 2    50   Input ~ 0
FREQ_1_b
Text GLabel 1500 3350 2    50   Input ~ 0
FREQ_1_c
Text GLabel 1500 3050 2    50   Input ~ 0
OUT_1
$Comp
L Device:R R3
U 1 1 5EE527B2
P 1900 5100
F 0 "R3" V 1693 5100 50  0000 C CNN
F 1 "1k" V 1784 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1830 5100 50  0001 C CNN
F 3 "~" H 1900 5100 50  0001 C CNN
	1    1900 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 5100 2050 5100
Wire Wire Line
	1750 5100 1500 5100
$Comp
L Device:R_POT RV3
U 1 1 5EE6B969
P 2350 3850
F 0 "RV3" H 2280 3896 50  0000 R CNN
F 1 "50k" H 2280 3805 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 2350 3850 50  0001 C CNN
F 3 "~" H 2350 3850 50  0001 C CNN
	1    2350 3850
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
P 2450 2950
F 0 "RV4" V 2404 2763 50  0000 R CNN
F 1 "100k" V 2495 2763 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD902F-40-00D_Dual_Vertical" H 2700 2875 50  0001 C CNN
F 3 "~" H 2700 2875 50  0001 C CNN
	1    2450 2950
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J7
U 1 1 5EE6B994
P 3000 5100
F 0 "J7" H 3030 5425 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 3030 5334 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 3000 5100 50  0001 C CNN
F 3 "~" H 3000 5100 50  0001 C CNN
	1    3000 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5EE6B99B
P 3200 5000
F 0 "#PWR013" H 3200 4750 50  0001 C CNN
F 1 "GND" V 3205 4872 50  0000 R CNN
F 2 "" H 3200 5000 50  0001 C CNN
F 3 "" H 3200 5000 50  0001 C CNN
	1    3200 5000
	0    -1   -1   0   
$EndComp
NoConn ~ 3200 5200
Text GLabel 3850 5100 2    50   Input ~ 0
OUT_2
$Comp
L Device:R R5
U 1 1 5EE6B9A3
P 2350 4150
F 0 "R5" H 2420 4196 50  0000 L CNN
F 1 "470" H 2420 4105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2280 4150 50  0001 C CNN
F 3 "~" H 2350 4150 50  0001 C CNN
	1    2350 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5EE6B9A9
P 2350 4300
F 0 "#PWR09" H 2350 4050 50  0001 C CNN
F 1 "GND" H 2355 4127 50  0000 C CNN
F 2 "" H 2350 4300 50  0001 C CNN
F 3 "" H 2350 4300 50  0001 C CNN
	1    2350 4300
	1    0    0    -1  
$EndComp
Text GLabel 2500 3850 2    50   Input ~ 0
RES_2
Wire Wire Line
	2400 3650 2350 3650
Wire Wire Line
	2350 3650 2350 3700
Text GLabel 2600 2850 2    50   Input ~ 0
FREQ_2_a
Text GLabel 2600 2550 2    50   Input ~ 0
FREQ_2_b
Text GLabel 2600 3050 2    50   Input ~ 0
OUT_2
$Comp
L Device:R R9
U 1 1 5EE6B9C2
P 3600 5100
F 0 "R9" V 3393 5100 50  0000 C CNN
F 1 "1k" V 3484 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3530 5100 50  0001 C CNN
F 3 "~" H 3600 5100 50  0001 C CNN
	1    3600 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 5100 3750 5100
Wire Wire Line
	3450 5100 3200 5100
$Comp
L Device:R_POT RV5
U 1 1 5EE6D9BB
P 3550 3850
F 0 "RV5" H 3480 3896 50  0000 R CNN
F 1 "50k" H 3480 3805 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 3550 3850 50  0001 C CNN
F 3 "~" H 3550 3850 50  0001 C CNN
	1    3550 3850
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
P 3650 2950
F 0 "RV6" V 3604 2763 50  0000 R CNN
F 1 "100k" V 3695 2763 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD902F-40-00D_Dual_Vertical" H 3900 2875 50  0001 C CNN
F 3 "~" H 3900 2875 50  0001 C CNN
	1    3650 2950
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J4
U 1 1 5EE6D9E6
P 1300 5750
F 0 "J4" H 1330 6075 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 1330 5984 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1300 5750 50  0001 C CNN
F 3 "~" H 1300 5750 50  0001 C CNN
	1    1300 5750
	1    0    0    -1  
$EndComp
Text Notes 850  5550 1    50   ~ 0
individual out
$Comp
L power:GND #PWR07
U 1 1 5EE6D9ED
P 1500 5650
F 0 "#PWR07" H 1500 5400 50  0001 C CNN
F 1 "GND" V 1505 5522 50  0000 R CNN
F 2 "" H 1500 5650 50  0001 C CNN
F 3 "" H 1500 5650 50  0001 C CNN
	1    1500 5650
	0    -1   -1   0   
$EndComp
NoConn ~ 1500 5850
Text GLabel 2150 5750 2    50   Input ~ 0
OUT_3
$Comp
L Device:R R7
U 1 1 5EE6D9F5
P 3550 4150
F 0 "R7" H 3620 4196 50  0000 L CNN
F 1 "470" H 3620 4105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3480 4150 50  0001 C CNN
F 3 "~" H 3550 4150 50  0001 C CNN
	1    3550 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5EE6D9FB
P 3550 4300
F 0 "#PWR011" H 3550 4050 50  0001 C CNN
F 1 "GND" H 3555 4127 50  0000 C CNN
F 2 "" H 3550 4300 50  0001 C CNN
F 3 "" H 3550 4300 50  0001 C CNN
	1    3550 4300
	1    0    0    -1  
$EndComp
Text GLabel 3700 3850 2    50   Input ~ 0
RES_3
Wire Wire Line
	3600 3650 3550 3650
Wire Wire Line
	3550 3650 3550 3700
Text GLabel 3800 2850 2    50   Input ~ 0
FREQ_3_a
Text GLabel 3800 2550 2    50   Input ~ 0
FREQ_3_b
Text GLabel 3800 3350 2    50   Input ~ 0
FREQ_3_c
Text GLabel 3800 3050 2    50   Input ~ 0
OUT_3
$Comp
L Device:R R4
U 1 1 5EE6DA14
P 1900 5750
F 0 "R4" V 1693 5750 50  0000 C CNN
F 1 "1k" V 1784 5750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1830 5750 50  0001 C CNN
F 3 "~" H 1900 5750 50  0001 C CNN
	1    1900 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 5750 2050 5750
Wire Wire Line
	1750 5750 1500 5750
Text GLabel 2600 3350 2    50   Input ~ 0
FREQ_2_c
$Comp
L Connector:AudioJack2_SwitchT J10
U 1 1 5EE7889D
P 6100 2100
F 0 "J10" H 6130 2425 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 6130 2334 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 6100 2100 50  0001 C CNN
F 3 "~" H 6100 2100 50  0001 C CNN
	1    6100 2100
	1    0    0    -1  
$EndComp
Text Notes 5700 2150 1    50   ~ 0
OUT
$Comp
L power:GND #PWR021
U 1 1 5EE788A4
P 6300 2000
F 0 "#PWR021" H 6300 1750 50  0001 C CNN
F 1 "GND" V 6305 1872 50  0000 R CNN
F 2 "" H 6300 2000 50  0001 C CNN
F 3 "" H 6300 2000 50  0001 C CNN
	1    6300 2000
	0    -1   -1   0   
$EndComp
NoConn ~ 6300 2200
Text GLabel 6950 2100 2    50   Input ~ 0
OUT
$Comp
L Device:R R13
U 1 1 5EE788AC
P 6700 2100
F 0 "R13" V 6493 2100 50  0000 C CNN
F 1 "1k" V 6584 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6630 2100 50  0001 C CNN
F 3 "~" H 6700 2100 50  0001 C CNN
	1    6700 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 2100 6850 2100
Wire Wire Line
	6550 2100 6300 2100
$Comp
L Device:R_POT RV10
U 1 1 5EE8002E
P 8100 1250
F 0 "RV10" H 8030 1296 50  0000 R CNN
F 1 "100k" H 8030 1205 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 8100 1250 50  0001 C CNN
F 3 "~" H 8100 1250 50  0001 C CNN
	1    8100 1250
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5EE8003B
P 8100 1400
F 0 "#PWR018" H 8100 1150 50  0001 C CNN
F 1 "GND" H 8105 1227 50  0000 C CNN
F 2 "" H 8100 1400 50  0001 C CNN
F 3 "" H 8100 1400 50  0001 C CNN
	1    8100 1400
	1    0    0    -1  
$EndComp
Text GLabel 8150 1050 2    50   Input ~ 0
OUT_1
Text GLabel 8250 1250 2    50   Input ~ 0
MIX_1
Wire Wire Line
	8150 1050 8100 1050
Wire Wire Line
	8100 1050 8100 1100
$Comp
L Device:R_POT RV11
U 1 1 5EE814B4
P 8100 2000
F 0 "RV11" H 8030 2046 50  0000 R CNN
F 1 "100k" H 8030 1955 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 8100 2000 50  0001 C CNN
F 3 "~" H 8100 2000 50  0001 C CNN
	1    8100 2000
	1    0    0    1   
$EndComp
Text Notes 7650 2450 1    50   ~ 0
mixer
$Comp
L power:GND #PWR019
U 1 1 5EE814C1
P 8100 2150
F 0 "#PWR019" H 8100 1900 50  0001 C CNN
F 1 "GND" H 8105 1977 50  0000 C CNN
F 2 "" H 8100 2150 50  0001 C CNN
F 3 "" H 8100 2150 50  0001 C CNN
	1    8100 2150
	1    0    0    -1  
$EndComp
Text GLabel 8150 1800 2    50   Input ~ 0
OUT_2
Text GLabel 8250 2000 2    50   Input ~ 0
MIX_2
Wire Wire Line
	8150 1800 8100 1800
Wire Wire Line
	8100 1800 8100 1850
$Comp
L Device:R_POT RV12
U 1 1 5EE82B2E
P 8100 2750
F 0 "RV12" H 8030 2796 50  0000 R CNN
F 1 "100k" H 8030 2705 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 8100 2750 50  0001 C CNN
F 3 "~" H 8100 2750 50  0001 C CNN
	1    8100 2750
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5EE82B3B
P 8100 2900
F 0 "#PWR020" H 8100 2650 50  0001 C CNN
F 1 "GND" H 8105 2727 50  0000 C CNN
F 2 "" H 8100 2900 50  0001 C CNN
F 3 "" H 8100 2900 50  0001 C CNN
	1    8100 2900
	1    0    0    -1  
$EndComp
Text GLabel 8150 2550 2    50   Input ~ 0
OUT_3
Text GLabel 8250 2750 2    50   Input ~ 0
MIX_3
Wire Wire Line
	8150 2550 8100 2550
Wire Wire Line
	8100 2550 8100 2600
Text GLabel 1600 3650 2    50   Input ~ 0
OUT_1
$Comp
L Device:R R2
U 1 1 5EE25EEF
P 1450 3650
F 0 "R2" H 1520 3696 50  0000 L CNN
F 1 "22k" H 1520 3605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1380 3650 50  0001 C CNN
F 3 "~" H 1450 3650 50  0001 C CNN
	1    1450 3650
	0    -1   -1   0   
$EndComp
Text GLabel 9750 3850 0    50   Input ~ 0
MIX_1
Text GLabel 9750 3950 0    50   Input ~ 0
MIX_2
Text GLabel 9750 4050 0    50   Input ~ 0
MIX_3
$Comp
L Device:R_POT RV9
U 1 1 5EE4FCFC
P 8050 3500
F 0 "RV9" H 7980 3546 50  0000 R CNN
F 1 "100k" H 7980 3455 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 8050 3500 50  0001 C CNN
F 3 "~" H 8050 3500 50  0001 C CNN
	1    8050 3500
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5EE4FD02
P 8050 3650
F 0 "#PWR017" H 8050 3400 50  0001 C CNN
F 1 "GND" H 8055 3477 50  0000 C CNN
F 2 "" H 8050 3650 50  0001 C CNN
F 3 "" H 8050 3650 50  0001 C CNN
	1    8050 3650
	1    0    0    -1  
$EndComp
Text GLabel 8100 3300 2    50   Input ~ 0
OUT_4
Text GLabel 8200 3500 2    50   Input ~ 0
MIX_4
Wire Wire Line
	8100 3300 8050 3300
Wire Wire Line
	8050 3300 8050 3350
$Comp
L Device:R_POT RV7
U 1 1 5EE9639C
P 4750 3850
F 0 "RV7" H 4680 3896 50  0000 R CNN
F 1 "50k" H 4680 3805 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 4750 3850 50  0001 C CNN
F 3 "~" H 4750 3850 50  0001 C CNN
	1    4750 3850
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
P 4850 2950
F 0 "RV8" V 4804 2763 50  0000 R CNN
F 1 "100k" V 4895 2763 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD902F-40-00D_Dual_Vertical" H 5100 2875 50  0001 C CNN
F 3 "~" H 5100 2875 50  0001 C CNN
	1    4850 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5EE963B6
P 4750 4150
F 0 "R11" H 4820 4196 50  0000 L CNN
F 1 "470" H 4820 4105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4680 4150 50  0001 C CNN
F 3 "~" H 4750 4150 50  0001 C CNN
	1    4750 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5EE963BC
P 4750 4300
F 0 "#PWR015" H 4750 4050 50  0001 C CNN
F 1 "GND" H 4755 4127 50  0000 C CNN
F 2 "" H 4750 4300 50  0001 C CNN
F 3 "" H 4750 4300 50  0001 C CNN
	1    4750 4300
	1    0    0    -1  
$EndComp
Text GLabel 4900 3850 2    50   Input ~ 0
RES_4
Wire Wire Line
	4800 3650 4750 3650
Wire Wire Line
	4750 3650 4750 3700
Text GLabel 5000 2850 2    50   Input ~ 0
FREQ_4_a
Text GLabel 5000 2550 2    50   Input ~ 0
FREQ_4_b
Text GLabel 5000 3350 2    50   Input ~ 0
FREQ_4_c
Text GLabel 5000 3050 2    50   Input ~ 0
OUT_4
$Comp
L Connector:AudioJack2_SwitchT J8
U 1 1 5EEBA84D
P 3000 5750
F 0 "J8" H 3030 6075 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 3030 5984 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 3000 5750 50  0001 C CNN
F 3 "~" H 3000 5750 50  0001 C CNN
	1    3000 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5EEBA854
P 3200 5650
F 0 "#PWR014" H 3200 5400 50  0001 C CNN
F 1 "GND" V 3205 5522 50  0000 R CNN
F 2 "" H 3200 5650 50  0001 C CNN
F 3 "" H 3200 5650 50  0001 C CNN
	1    3200 5650
	0    -1   -1   0   
$EndComp
NoConn ~ 3200 5850
Text GLabel 3850 5750 2    50   Input ~ 0
OUT_4
$Comp
L Device:R R10
U 1 1 5EEBA85C
P 3600 5750
F 0 "R10" V 3393 5750 50  0000 C CNN
F 1 "1k" V 3484 5750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3530 5750 50  0001 C CNN
F 3 "~" H 3600 5750 50  0001 C CNN
	1    3600 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 5750 3750 5750
Wire Wire Line
	3450 5750 3200 5750
Text GLabel 9750 1000 0    50   Input ~ 0
IN
Text GLabel 9750 1100 0    50   Input ~ 0
IN_1
Text GLabel 9750 1300 0    50   Input ~ 0
RES_1
Text GLabel 9750 1200 0    50   Input ~ 0
FREQ_1_a
Text GLabel 9750 1500 0    50   Input ~ 0
FREQ_1_b
Text GLabel 9750 1400 0    50   Input ~ 0
FREQ_1_c
Text GLabel 9750 1600 0    50   Input ~ 0
OUT_1
Text GLabel 9750 1700 0    50   Input ~ 0
IN_2
Text GLabel 9750 1800 0    50   Input ~ 0
FREQ_2_a
Text GLabel 9750 2100 0    50   Input ~ 0
FREQ_2_b
Text GLabel 9750 2000 0    50   Input ~ 0
FREQ_2_c
Text GLabel 9750 2200 0    50   Input ~ 0
OUT_2
Text GLabel 9750 2300 0    50   Input ~ 0
IN_3
Text GLabel 9750 2500 0    50   Input ~ 0
RES_3
Text GLabel 9750 2400 0    50   Input ~ 0
FREQ_3_a
Text GLabel 9750 2700 0    50   Input ~ 0
FREQ_3_b
Text GLabel 9750 2600 0    50   Input ~ 0
FREQ_3_c
Text GLabel 9750 2800 0    50   Input ~ 0
OUT_3
Text GLabel 9750 4250 0    50   Input ~ 0
OUT
$Comp
L power:GND #PWR022
U 1 1 5EE3DC0A
P 9750 900
F 0 "#PWR022" H 9750 650 50  0001 C CNN
F 1 "GND" V 9755 772 50  0000 R CNN
F 2 "" H 9750 900 50  0001 C CNN
F 3 "" H 9750 900 50  0001 C CNN
	1    9750 900 
	0    1    1    0   
$EndComp
Text GLabel 9750 1900 0    50   Input ~ 0
RES_2
Text GLabel 9750 2900 0    50   Input ~ 0
IN_4
Text GLabel 9750 3100 0    50   Input ~ 0
RES_4
Text GLabel 9750 3000 0    50   Input ~ 0
FREQ_4_a
Text GLabel 9750 3300 0    50   Input ~ 0
FREQ_4_b
Text GLabel 9750 3200 0    50   Input ~ 0
FREQ_4_c
Text GLabel 9750 3400 0    50   Input ~ 0
OUT_4
Text GLabel 9750 4150 0    50   Input ~ 0
MIX_4
Text GLabel 2700 3650 2    50   Input ~ 0
OUT_2
$Comp
L Device:R R6
U 1 1 5EE68E16
P 2550 3650
F 0 "R6" H 2620 3696 50  0000 L CNN
F 1 "22k" H 2620 3605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2480 3650 50  0001 C CNN
F 3 "~" H 2550 3650 50  0001 C CNN
	1    2550 3650
	0    -1   -1   0   
$EndComp
Text GLabel 3900 3650 2    50   Input ~ 0
OUT_3
$Comp
L Device:R R8
U 1 1 5EE6A006
P 3750 3650
F 0 "R8" H 3820 3696 50  0000 L CNN
F 1 "22k" H 3820 3605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3680 3650 50  0001 C CNN
F 3 "~" H 3750 3650 50  0001 C CNN
	1    3750 3650
	0    -1   -1   0   
$EndComp
Text GLabel 5100 3650 2    50   Input ~ 0
OUT_4
$Comp
L Device:R R12
U 1 1 5EE6B17A
P 4950 3650
F 0 "R12" H 5020 3696 50  0000 L CNN
F 1 "22k" H 5020 3605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4880 3650 50  0001 C CNN
F 3 "~" H 4950 3650 50  0001 C CNN
	1    4950 3650
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x26_Male J11
U 1 1 5EE4FEB7
P 9950 2100
F 0 "J11" H 9922 2074 50  0000 R CNN
F 1 "Conn_01x26_Male" H 9922 1983 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x26_P2.54mm_Vertical" H 9950 2100 50  0001 C CNN
F 3 "~" H 9950 2100 50  0001 C CNN
	1    9950 2100
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J12
U 1 1 5EE5B807
P 9950 4050
F 0 "J12" H 9922 4074 50  0000 R CNN
F 1 "Conn_01x05_Male" H 9922 3983 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 9950 4050 50  0001 C CNN
F 3 "~" H 9950 4050 50  0001 C CNN
	1    9950 4050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1250 2850 1450 2850
Wire Wire Line
	1250 3350 1450 3350
Wire Wire Line
	2350 2850 2550 2850
Wire Wire Line
	2350 3350 2550 3350
Wire Wire Line
	3550 2850 3750 2850
Wire Wire Line
	3550 3350 3750 3350
Wire Wire Line
	4750 2850 4950 2850
Wire Wire Line
	4750 3350 4950 3350
Wire Wire Line
	1250 2550 1500 2550
Wire Wire Line
	1450 2700 1450 2850
Connection ~ 1450 2850
Wire Wire Line
	1450 2850 1500 2850
Wire Wire Line
	1250 3050 1500 3050
Wire Wire Line
	1450 3200 1450 3350
Connection ~ 1450 3350
Wire Wire Line
	1450 3350 1500 3350
Wire Wire Line
	2350 2550 2600 2550
Wire Wire Line
	2350 3050 2600 3050
Wire Wire Line
	3550 2550 3800 2550
Wire Wire Line
	3550 3050 3800 3050
Wire Wire Line
	2550 2700 2550 2850
Connection ~ 2550 2850
Wire Wire Line
	2550 2850 2600 2850
Wire Wire Line
	2550 3200 2550 3350
Connection ~ 2550 3350
Wire Wire Line
	2550 3350 2600 3350
Wire Wire Line
	3750 2700 3750 2850
Connection ~ 3750 2850
Wire Wire Line
	3750 2850 3800 2850
Wire Wire Line
	3750 3200 3750 3350
Connection ~ 3750 3350
Wire Wire Line
	3750 3350 3800 3350
Wire Wire Line
	4750 2550 5000 2550
Wire Wire Line
	4750 3050 5000 3050
Wire Wire Line
	4950 2700 4950 2850
Connection ~ 4950 2850
Wire Wire Line
	4950 2850 5000 2850
Wire Wire Line
	4950 3200 4950 3350
Connection ~ 4950 3350
Wire Wire Line
	4950 3350 5000 3350
$EndSCHEMATC
