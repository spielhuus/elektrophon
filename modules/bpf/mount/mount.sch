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
P 1450 3850
F 0 "RV1" H 1380 3896 50  0000 R CNN
F 1 "50k" H 1380 3805 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1450 3850 50  0001 C CNN
F 3 "~" H 1450 3850 50  0001 C CNN
	1    1450 3850
	1    0    0    1   
$EndComp
Text Notes 1100 4100 1    50   ~ 0
resonance
$Comp
L Connector:AudioJack2_SwitchT J1
U 1 1 5D4DE229
P 1450 1500
F 0 "J1" H 1480 1825 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 1480 1734 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1450 1500 50  0001 C CNN
F 3 "~" H 1450 1500 50  0001 C CNN
	1    1450 1500
	1    0    0    -1  
$EndComp
Text Notes 1050 1650 1    50   ~ 0
IN_1
$Comp
L power:GND #PWR03
U 1 1 5D4F30EF
P 1650 1400
F 0 "#PWR03" H 1650 1150 50  0001 C CNN
F 1 "GND" V 1655 1272 50  0000 R CNN
F 2 "" H 1650 1400 50  0001 C CNN
F 3 "" H 1650 1400 50  0001 C CNN
	1    1650 1400
	0    -1   -1   0   
$EndComp
NoConn ~ 1650 1600
$Comp
L power:+15V #PWR06
U 1 1 5D4F7905
P 1950 6500
F 0 "#PWR06" H 1950 6350 50  0001 C CNN
F 1 "+15V" H 1965 6673 50  0000 C CNN
F 2 "" H 1950 6500 50  0001 C CNN
F 3 "" H 1950 6500 50  0001 C CNN
	1    1950 6500
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR07
U 1 1 5D4F7C4A
P 2400 6500
F 0 "#PWR07" H 2400 6600 50  0001 C CNN
F 1 "-15V" H 2415 6673 50  0000 C CNN
F 2 "" H 2400 6500 50  0001 C CNN
F 3 "" H 2400 6500 50  0001 C CNN
	1    2400 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D4F801B
P 1500 6500
F 0 "#PWR02" H 1500 6250 50  0001 C CNN
F 1 "GND" H 1505 6327 50  0000 C CNN
F 2 "" H 1500 6500 50  0001 C CNN
F 3 "" H 1500 6500 50  0001 C CNN
	1    1500 6500
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D4F9D7C
P 1500 6500
F 0 "#FLG01" H 1500 6575 50  0001 C CNN
F 1 "PWR_FLAG" H 1500 6673 50  0000 C CNN
F 2 "" H 1500 6500 50  0001 C CNN
F 3 "~" H 1500 6500 50  0001 C CNN
	1    1500 6500
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D4FA0A9
P 1950 6500
F 0 "#FLG02" H 1950 6575 50  0001 C CNN
F 1 "PWR_FLAG" H 1950 6673 50  0000 C CNN
F 2 "" H 1950 6500 50  0001 C CNN
F 3 "~" H 1950 6500 50  0001 C CNN
	1    1950 6500
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5D4FA24F
P 2400 6500
F 0 "#FLG03" H 2400 6575 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 6673 50  0000 C CNN
F 2 "" H 2400 6500 50  0001 C CNN
F 3 "~" H 2400 6500 50  0001 C CNN
	1    2400 6500
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5D6C300D
P 5900 6650
F 0 "H1" H 6000 6696 50  0000 L CNN
F 1 "MountingHole" H 6000 6605 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 5900 6650 50  0001 C CNN
F 3 "~" H 5900 6650 50  0001 C CNN
	1    5900 6650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5D6C3220
P 5900 6850
F 0 "H2" H 6000 6896 50  0000 L CNN
F 1 "MountingHole" H 6000 6805 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 5900 6850 50  0001 C CNN
F 3 "~" H 5900 6850 50  0001 C CNN
	1    5900 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5D6C3412
P 5900 7050
F 0 "H3" H 6000 7096 50  0000 L CNN
F 1 "MountingHole" H 6000 7005 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 5900 7050 50  0001 C CNN
F 3 "~" H 5900 7050 50  0001 C CNN
	1    5900 7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5D6C35D6
P 5900 7250
F 0 "H4" H 6000 7296 50  0000 L CNN
F 1 "MountingHole" H 6000 7205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 5900 7250 50  0001 C CNN
F 3 "~" H 5900 7250 50  0001 C CNN
	1    5900 7250
	1    0    0    -1  
$EndComp
Text GLabel 1650 1500 2    50   Input ~ 0
IN_1
$Comp
L Connector:AudioJack2_SwitchT J2
U 1 1 5EE25488
P 1450 2200
F 0 "J2" H 1480 2525 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 1480 2434 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1450 2200 50  0001 C CNN
F 3 "~" H 1450 2200 50  0001 C CNN
	1    1450 2200
	1    0    0    -1  
$EndComp
Text Notes 1050 2350 1    50   ~ 0
IN
$Comp
L power:GND #PWR04
U 1 1 5EE2548F
P 1650 2100
F 0 "#PWR04" H 1650 1850 50  0001 C CNN
F 1 "GND" V 1655 1972 50  0000 R CNN
F 2 "" H 1650 2100 50  0001 C CNN
F 3 "" H 1650 2100 50  0001 C CNN
	1    1650 2100
	0    -1   -1   0   
$EndComp
NoConn ~ 1650 2300
Text GLabel 1650 2200 2    50   Input ~ 0
IN
$Comp
L Device:R_POT_Dual RV2
U 1 1 5EE271C1
P 1550 2950
F 0 "RV2" V 1504 2763 50  0000 R CNN
F 1 "100k" V 1595 2763 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD902F-40-00D_Dual_Vertical" H 1800 2875 50  0001 C CNN
F 3 "~" H 1800 2875 50  0001 C CNN
	1    1550 2950
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J3
U 1 1 5EE337C1
P 1500 5100
F 0 "J3" H 1530 5425 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 1530 5334 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1500 5100 50  0001 C CNN
F 3 "~" H 1500 5100 50  0001 C CNN
	1    1500 5100
	1    0    0    -1  
$EndComp
Text Notes 1100 5250 1    50   ~ 0
OUT_1
$Comp
L power:GND #PWR05
U 1 1 5EE337C8
P 1700 5000
F 0 "#PWR05" H 1700 4750 50  0001 C CNN
F 1 "GND" V 1705 4872 50  0000 R CNN
F 2 "" H 1700 5000 50  0001 C CNN
F 3 "" H 1700 5000 50  0001 C CNN
	1    1700 5000
	0    -1   -1   0   
$EndComp
NoConn ~ 1700 5200
Text GLabel 2350 5100 2    50   Input ~ 0
OUT_1
$Comp
L Device:R R1
U 1 1 5EE37F99
P 1450 4150
F 0 "R1" H 1520 4196 50  0000 L CNN
F 1 "4k7" H 1520 4105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1380 4150 50  0001 C CNN
F 3 "~" H 1450 4150 50  0001 C CNN
	1    1450 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5EE388F1
P 1450 4300
F 0 "#PWR01" H 1450 4050 50  0001 C CNN
F 1 "GND" H 1455 4127 50  0000 C CNN
F 2 "" H 1450 4300 50  0001 C CNN
F 3 "" H 1450 4300 50  0001 C CNN
	1    1450 4300
	1    0    0    -1  
$EndComp
Text GLabel 1600 3850 2    50   Input ~ 0
RES_1
Wire Wire Line
	1500 3650 1450 3650
Wire Wire Line
	1450 3650 1450 3700
Text Notes 1100 3100 1    50   ~ 0
frequency
Text GLabel 1700 2550 2    50   Input ~ 0
FREQ_1_a
Text GLabel 1700 2850 2    50   Input ~ 0
FREQ_1_b
Text GLabel 1700 3050 2    50   Input ~ 0
FREQ_1_c
Text GLabel 1700 3350 2    50   Input ~ 0
OUT_1
Wire Wire Line
	1700 2550 1450 2550
Wire Wire Line
	1700 2850 1650 2850
Wire Wire Line
	1700 3050 1450 3050
Wire Wire Line
	1650 3350 1650 3200
Wire Wire Line
	1450 3350 1650 3350
Connection ~ 1650 3350
Wire Wire Line
	1650 3350 1700 3350
Wire Wire Line
	1650 2700 1650 2850
Connection ~ 1650 2850
Wire Wire Line
	1650 2850 1450 2850
$Comp
L Device:R R2
U 1 1 5EE527B2
P 2100 5100
F 0 "R2" V 1893 5100 50  0000 C CNN
F 1 "1k" V 1984 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2030 5100 50  0001 C CNN
F 3 "~" H 2100 5100 50  0001 C CNN
	1    2100 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 5100 2250 5100
Wire Wire Line
	1950 5100 1700 5100
$Comp
L Device:R_POT RV3
U 1 1 5EE6B969
P 3500 3850
F 0 "RV3" H 3430 3896 50  0000 R CNN
F 1 "50k" H 3430 3805 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 3500 3850 50  0001 C CNN
F 3 "~" H 3500 3850 50  0001 C CNN
	1    3500 3850
	1    0    0    1   
$EndComp
Text Notes 3150 4100 1    50   ~ 0
resonance
$Comp
L Connector:AudioJack2_SwitchT J4
U 1 1 5EE6B970
P 3500 1500
F 0 "J4" H 3530 1825 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 3530 1734 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 3500 1500 50  0001 C CNN
F 3 "~" H 3500 1500 50  0001 C CNN
	1    3500 1500
	1    0    0    -1  
$EndComp
Text Notes 3100 1650 1    50   ~ 0
IN_2
$Comp
L power:GND #PWR09
U 1 1 5EE6B977
P 3700 1400
F 0 "#PWR09" H 3700 1150 50  0001 C CNN
F 1 "GND" V 3705 1272 50  0000 R CNN
F 2 "" H 3700 1400 50  0001 C CNN
F 3 "" H 3700 1400 50  0001 C CNN
	1    3700 1400
	0    -1   -1   0   
$EndComp
NoConn ~ 3700 1600
Text GLabel 3700 1500 2    50   Input ~ 0
IN_2
$Comp
L Device:R_POT_Dual RV4
U 1 1 5EE6B98E
P 3600 2950
F 0 "RV4" V 3554 2763 50  0000 R CNN
F 1 "100k" V 3645 2763 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD902F-40-00D_Dual_Vertical" H 3850 2875 50  0001 C CNN
F 3 "~" H 3850 2875 50  0001 C CNN
	1    3600 2950
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J6
U 1 1 5EE6B994
P 3550 5100
F 0 "J6" H 3580 5425 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 3580 5334 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 3550 5100 50  0001 C CNN
F 3 "~" H 3550 5100 50  0001 C CNN
	1    3550 5100
	1    0    0    -1  
$EndComp
Text Notes 3150 5250 1    50   ~ 0
OUT_2
$Comp
L power:GND #PWR011
U 1 1 5EE6B99B
P 3750 5000
F 0 "#PWR011" H 3750 4750 50  0001 C CNN
F 1 "GND" V 3755 4872 50  0000 R CNN
F 2 "" H 3750 5000 50  0001 C CNN
F 3 "" H 3750 5000 50  0001 C CNN
	1    3750 5000
	0    -1   -1   0   
$EndComp
NoConn ~ 3750 5200
Text GLabel 4400 5100 2    50   Input ~ 0
OUT_2
$Comp
L Device:R R3
U 1 1 5EE6B9A3
P 3500 4150
F 0 "R3" H 3570 4196 50  0000 L CNN
F 1 "4k7" H 3570 4105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3430 4150 50  0001 C CNN
F 3 "~" H 3500 4150 50  0001 C CNN
	1    3500 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5EE6B9A9
P 3500 4300
F 0 "#PWR08" H 3500 4050 50  0001 C CNN
F 1 "GND" H 3505 4127 50  0000 C CNN
F 2 "" H 3500 4300 50  0001 C CNN
F 3 "" H 3500 4300 50  0001 C CNN
	1    3500 4300
	1    0    0    -1  
$EndComp
Text GLabel 3550 3650 2    50   Input ~ 0
OUT_2
Text GLabel 3650 3850 2    50   Input ~ 0
RES_2
Wire Wire Line
	3550 3650 3500 3650
Wire Wire Line
	3500 3650 3500 3700
Text Notes 3150 3100 1    50   ~ 0
frequency
Text GLabel 3750 2550 2    50   Input ~ 0
FREQ_2_a
Text GLabel 3750 2850 2    50   Input ~ 0
FREQ_2_b
Text GLabel 3750 3350 2    50   Input ~ 0
OUT_2
Wire Wire Line
	3750 2550 3500 2550
Wire Wire Line
	3750 2850 3700 2850
Wire Wire Line
	3750 3050 3500 3050
Wire Wire Line
	3700 3350 3700 3200
Wire Wire Line
	3500 3350 3700 3350
Connection ~ 3700 3350
Wire Wire Line
	3700 3350 3750 3350
Wire Wire Line
	3700 2700 3700 2850
Connection ~ 3700 2850
Wire Wire Line
	3700 2850 3500 2850
$Comp
L Device:R R4
U 1 1 5EE6B9C2
P 4150 5100
F 0 "R4" V 3943 5100 50  0000 C CNN
F 1 "1k" V 4034 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4080 5100 50  0001 C CNN
F 3 "~" H 4150 5100 50  0001 C CNN
	1    4150 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 5100 4300 5100
Wire Wire Line
	4000 5100 3750 5100
$Comp
L Device:R_POT RV5
U 1 1 5EE6D9BB
P 5450 3850
F 0 "RV5" H 5380 3896 50  0000 R CNN
F 1 "50k" H 5380 3805 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 5450 3850 50  0001 C CNN
F 3 "~" H 5450 3850 50  0001 C CNN
	1    5450 3850
	1    0    0    1   
$EndComp
Text Notes 5100 4100 1    50   ~ 0
resonance
$Comp
L Connector:AudioJack2_SwitchT J7
U 1 1 5EE6D9C2
P 5450 1500
F 0 "J7" H 5480 1825 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 5480 1734 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 5450 1500 50  0001 C CNN
F 3 "~" H 5450 1500 50  0001 C CNN
	1    5450 1500
	1    0    0    -1  
$EndComp
Text Notes 5050 1650 1    50   ~ 0
IN_3
$Comp
L power:GND #PWR013
U 1 1 5EE6D9C9
P 5650 1400
F 0 "#PWR013" H 5650 1150 50  0001 C CNN
F 1 "GND" V 5655 1272 50  0000 R CNN
F 2 "" H 5650 1400 50  0001 C CNN
F 3 "" H 5650 1400 50  0001 C CNN
	1    5650 1400
	0    -1   -1   0   
$EndComp
NoConn ~ 5650 1600
Text GLabel 5650 1500 2    50   Input ~ 0
IN_3
$Comp
L Device:R_POT_Dual RV6
U 1 1 5EE6D9E0
P 5550 2950
F 0 "RV6" V 5504 2763 50  0000 R CNN
F 1 "100k" V 5595 2763 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD902F-40-00D_Dual_Vertical" H 5800 2875 50  0001 C CNN
F 3 "~" H 5800 2875 50  0001 C CNN
	1    5550 2950
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J9
U 1 1 5EE6D9E6
P 5500 5100
F 0 "J9" H 5530 5425 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 5530 5334 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 5500 5100 50  0001 C CNN
F 3 "~" H 5500 5100 50  0001 C CNN
	1    5500 5100
	1    0    0    -1  
$EndComp
Text Notes 5100 5250 1    50   ~ 0
OUT_3
$Comp
L power:GND #PWR015
U 1 1 5EE6D9ED
P 5700 5000
F 0 "#PWR015" H 5700 4750 50  0001 C CNN
F 1 "GND" V 5705 4872 50  0000 R CNN
F 2 "" H 5700 5000 50  0001 C CNN
F 3 "" H 5700 5000 50  0001 C CNN
	1    5700 5000
	0    -1   -1   0   
$EndComp
NoConn ~ 5700 5200
Text GLabel 6350 5100 2    50   Input ~ 0
OUT_3
$Comp
L Device:R R5
U 1 1 5EE6D9F5
P 5450 4150
F 0 "R5" H 5520 4196 50  0000 L CNN
F 1 "4k7" H 5520 4105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5380 4150 50  0001 C CNN
F 3 "~" H 5450 4150 50  0001 C CNN
	1    5450 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5EE6D9FB
P 5450 4300
F 0 "#PWR012" H 5450 4050 50  0001 C CNN
F 1 "GND" H 5455 4127 50  0000 C CNN
F 2 "" H 5450 4300 50  0001 C CNN
F 3 "" H 5450 4300 50  0001 C CNN
	1    5450 4300
	1    0    0    -1  
$EndComp
Text GLabel 5500 3650 2    50   Input ~ 0
OUT_3
Text GLabel 5600 3850 2    50   Input ~ 0
RES_3
Wire Wire Line
	5500 3650 5450 3650
Wire Wire Line
	5450 3650 5450 3700
Text Notes 5100 3100 1    50   ~ 0
frequency
Text GLabel 5700 2550 2    50   Input ~ 0
FREQ_3_a
Text GLabel 5700 2850 2    50   Input ~ 0
FREQ_3_b
Text GLabel 5700 3050 2    50   Input ~ 0
FREQ_3_c
Text GLabel 5700 3350 2    50   Input ~ 0
OUT_3
Wire Wire Line
	5700 2550 5450 2550
Wire Wire Line
	5700 2850 5650 2850
Wire Wire Line
	5700 3050 5450 3050
Wire Wire Line
	5650 3350 5650 3200
Wire Wire Line
	5450 3350 5650 3350
Connection ~ 5650 3350
Wire Wire Line
	5650 3350 5700 3350
Wire Wire Line
	5650 2700 5650 2850
Connection ~ 5650 2850
Wire Wire Line
	5650 2850 5450 2850
$Comp
L Device:R R6
U 1 1 5EE6DA14
P 6100 5100
F 0 "R6" V 5893 5100 50  0000 C CNN
F 1 "1k" V 5984 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6030 5100 50  0001 C CNN
F 3 "~" H 6100 5100 50  0001 C CNN
	1    6100 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 5100 6250 5100
Wire Wire Line
	5950 5100 5700 5100
Text GLabel 3750 3050 2    50   Input ~ 0
FREQ_2_c
$Comp
L Connector:AudioJack2_SwitchT J10
U 1 1 5EE7889D
P 7800 5100
F 0 "J10" H 7830 5425 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 7830 5334 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 7800 5100 50  0001 C CNN
F 3 "~" H 7800 5100 50  0001 C CNN
	1    7800 5100
	1    0    0    -1  
$EndComp
Text Notes 7400 5250 1    50   ~ 0
OUT
$Comp
L power:GND #PWR019
U 1 1 5EE788A4
P 8000 5000
F 0 "#PWR019" H 8000 4750 50  0001 C CNN
F 1 "GND" V 8005 4872 50  0000 R CNN
F 2 "" H 8000 5000 50  0001 C CNN
F 3 "" H 8000 5000 50  0001 C CNN
	1    8000 5000
	0    -1   -1   0   
$EndComp
NoConn ~ 8000 5200
Text GLabel 8650 5100 2    50   Input ~ 0
OUT
$Comp
L Device:R R7
U 1 1 5EE788AC
P 8400 5100
F 0 "R7" V 8193 5100 50  0000 C CNN
F 1 "1k" V 8284 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8330 5100 50  0001 C CNN
F 3 "~" H 8400 5100 50  0001 C CNN
	1    8400 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 5100 8550 5100
Wire Wire Line
	8250 5100 8000 5100
$Comp
L Device:R_POT RV7
U 1 1 5EE8002E
P 7800 1550
F 0 "RV7" H 7730 1596 50  0000 R CNN
F 1 "100k" H 7730 1505 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 7800 1550 50  0001 C CNN
F 3 "~" H 7800 1550 50  0001 C CNN
	1    7800 1550
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5EE8003B
P 7800 1700
F 0 "#PWR016" H 7800 1450 50  0001 C CNN
F 1 "GND" H 7805 1527 50  0000 C CNN
F 2 "" H 7800 1700 50  0001 C CNN
F 3 "" H 7800 1700 50  0001 C CNN
	1    7800 1700
	1    0    0    -1  
$EndComp
Text GLabel 7850 1350 2    50   Input ~ 0
MIX_1_a
Text GLabel 7950 1550 2    50   Input ~ 0
MIX_1_b
Wire Wire Line
	7850 1350 7800 1350
Wire Wire Line
	7800 1350 7800 1400
$Comp
L Device:R_POT RV8
U 1 1 5EE814B4
P 7800 2550
F 0 "RV8" H 7730 2596 50  0000 R CNN
F 1 "100k" H 7730 2505 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 7800 2550 50  0001 C CNN
F 3 "~" H 7800 2550 50  0001 C CNN
	1    7800 2550
	1    0    0    1   
$EndComp
Text Notes 7450 2800 1    50   ~ 0
mixer
$Comp
L power:GND #PWR017
U 1 1 5EE814C1
P 7800 2700
F 0 "#PWR017" H 7800 2450 50  0001 C CNN
F 1 "GND" H 7805 2527 50  0000 C CNN
F 2 "" H 7800 2700 50  0001 C CNN
F 3 "" H 7800 2700 50  0001 C CNN
	1    7800 2700
	1    0    0    -1  
$EndComp
Text GLabel 7850 2350 2    50   Input ~ 0
MIX_2_a
Text GLabel 7950 2550 2    50   Input ~ 0
MIX_2_b
Wire Wire Line
	7850 2350 7800 2350
Wire Wire Line
	7800 2350 7800 2400
$Comp
L Device:R_POT RV9
U 1 1 5EE82B2E
P 7800 3600
F 0 "RV9" H 7730 3646 50  0000 R CNN
F 1 "100k" H 7730 3555 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 7800 3600 50  0001 C CNN
F 3 "~" H 7800 3600 50  0001 C CNN
	1    7800 3600
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5EE82B3B
P 7800 3750
F 0 "#PWR018" H 7800 3500 50  0001 C CNN
F 1 "GND" H 7805 3577 50  0000 C CNN
F 2 "" H 7800 3750 50  0001 C CNN
F 3 "" H 7800 3750 50  0001 C CNN
	1    7800 3750
	1    0    0    -1  
$EndComp
Text GLabel 7850 3400 2    50   Input ~ 0
MIX_3_a
Text GLabel 7950 3600 2    50   Input ~ 0
MIX_3_b
Wire Wire Line
	7850 3400 7800 3400
Wire Wire Line
	7800 3400 7800 3450
Text GLabel 1800 3650 2    50   Input ~ 0
OUT_1
$Comp
L Device:R R8
U 1 1 5EE25EEF
P 1650 3650
F 0 "R8" H 1720 3696 50  0000 L CNN
F 1 "22k" H 1720 3605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1580 3650 50  0001 C CNN
F 3 "~" H 1650 3650 50  0001 C CNN
	1    1650 3650
	0    -1   -1   0   
$EndComp
Text GLabel 10200 1150 0    50   Input ~ 0
IN
Text GLabel 10200 1250 0    50   Input ~ 0
IN_1
Text GLabel 10200 1350 0    50   Input ~ 0
RES_1
Text GLabel 10200 1450 0    50   Input ~ 0
FREQ_1_a
Text GLabel 10200 1550 0    50   Input ~ 0
FREQ_1_b
Text GLabel 10200 1650 0    50   Input ~ 0
FREQ_1_c
Text GLabel 10200 1750 0    50   Input ~ 0
OUT_1
Text GLabel 10200 1850 0    50   Input ~ 0
IN_2
Text GLabel 10200 1950 0    50   Input ~ 0
RES_2
Text GLabel 10200 2050 0    50   Input ~ 0
FREQ_2_a
Text GLabel 10200 2150 0    50   Input ~ 0
FREQ_2_b
Text GLabel 10200 2250 0    50   Input ~ 0
FREQ_2_c
Text GLabel 10200 2350 0    50   Input ~ 0
OUT_2
Text GLabel 10200 2450 0    50   Input ~ 0
IN_3
Text GLabel 10200 2550 0    50   Input ~ 0
RES_3
Text GLabel 10200 2650 0    50   Input ~ 0
FREQ_3_a
Text GLabel 10200 2750 0    50   Input ~ 0
FREQ_3_b
Text GLabel 10200 2850 0    50   Input ~ 0
FREQ_3_c
Text GLabel 10200 2950 0    50   Input ~ 0
OUT_3
Text GLabel 10200 3050 0    50   Input ~ 0
OUT
$Comp
L Connector:Conn_01x21_Male J5
U 1 1 5EE36FA0
P 10400 2050
F 0 "J5" H 10372 2074 50  0000 R CNN
F 1 "Conn_01x21_Male" H 10372 1983 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x21_P2.54mm_Vertical" H 10400 2050 50  0001 C CNN
F 3 "~" H 10400 2050 50  0001 C CNN
	1    10400 2050
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5EE3ADA4
P 10200 1050
F 0 "#PWR0101" H 10200 800 50  0001 C CNN
F 1 "GND" V 10205 922 50  0000 R CNN
F 2 "" H 10200 1050 50  0001 C CNN
F 3 "" H 10200 1050 50  0001 C CNN
	1    10200 1050
	0    1    1    0   
$EndComp
Text GLabel 10200 3450 0    50   Input ~ 0
MIX_1_a
Text GLabel 10200 3550 0    50   Input ~ 0
MIX_1_b
Text GLabel 10200 3650 0    50   Input ~ 0
MIX_2_a
Text GLabel 10200 3750 0    50   Input ~ 0
MIX_2_b
Text GLabel 10200 3850 0    50   Input ~ 0
MIX_3_a
Text GLabel 10200 3950 0    50   Input ~ 0
MIX_3_b
$Comp
L Connector:Conn_01x06_Male J8
U 1 1 5EE3756D
P 10400 3650
F 0 "J8" H 10372 3624 50  0000 R CNN
F 1 "Conn_01x06_Male" H 10372 3533 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 10400 3650 50  0001 C CNN
F 3 "~" H 10400 3650 50  0001 C CNN
	1    10400 3650
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
