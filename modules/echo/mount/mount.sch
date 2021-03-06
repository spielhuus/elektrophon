EESchema Schematic File Version 4
LIBS:mount-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Echo"
Date "2019-12-29"
Rev "01"
Comp ""
Comment1 "Echo circuit using the PT2399"
Comment2 "Schema for main circuit"
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
$Comp
L Connector:AudioJack2_SwitchT J2
U 1 1 5D64A5B4
P 1400 1400
F 0 "J2" H 1432 1725 50  0000 C CNN
F 1 "IN" H 1432 1634 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1400 1400 50  0001 C CNN
F 3 "~" H 1400 1400 50  0001 C CNN
	1    1400 1400
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J6
U 1 1 5D64B3F0
P 8300 1950
F 0 "J6" H 8332 2275 50  0000 C CNN
F 1 "Mixed OUT" H 8332 2184 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 8300 1950 50  0001 C CNN
F 3 "~" H 8300 1950 50  0001 C CNN
	1    8300 1950
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D667130
P 1600 1300
F 0 "#PWR05" H 1600 1050 50  0001 C CNN
F 1 "GND" H 1605 1127 50  0000 C CNN
F 2 "" H 1600 1300 50  0001 C CNN
F 3 "" H 1600 1300 50  0001 C CNN
	1    1600 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1600 1400 1900 1400
NoConn ~ 1600 1500
NoConn ~ 8100 2050
$Comp
L power:GND #PWR017
U 1 1 5D7582F3
P 8100 1850
F 0 "#PWR017" H 8100 1600 50  0001 C CNN
F 1 "GND" H 8105 1677 50  0000 C CNN
F 2 "" H 8100 1850 50  0001 C CNN
F 3 "" H 8100 1850 50  0001 C CNN
	1    8100 1850
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J3
U 1 1 5E5F7AA8
P 1400 2100
F 0 "J3" H 1432 2425 50  0000 C CNN
F 1 "IN" H 1432 2334 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1400 2100 50  0001 C CNN
F 3 "~" H 1400 2100 50  0001 C CNN
	1    1400 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5E5F7AAE
P 1600 2000
F 0 "#PWR06" H 1600 1750 50  0001 C CNN
F 1 "GND" H 1605 1827 50  0000 C CNN
F 2 "" H 1600 2000 50  0001 C CNN
F 3 "" H 1600 2000 50  0001 C CNN
	1    1600 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1600 2100 1900 2100
NoConn ~ 1600 2200
Wire Wire Line
	7750 1950 8100 1950
$Comp
L Device:R_POT RV3
U 1 1 5E63779C
P 6150 1850
F 0 "RV3" H 6080 1896 50  0000 R CNN
F 1 "10k LIN" H 6080 1805 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 6150 1850 50  0001 C CNN
F 3 "~" H 6150 1850 50  0001 C CNN
	1    6150 1850
	1    0    0    -1  
$EndComp
Text Notes 5750 1900 1    50   ~ 0
MIX
$Comp
L Device:R_POT RV1
U 1 1 5E6D8A9C
P 1000 4750
F 0 "RV1" H 931 4796 50  0000 R CNN
F 1 "100k" H 931 4705 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1000 4750 50  0001 C CNN
F 3 "~" H 1000 4750 50  0001 C CNN
	1    1000 4750
	1    0    0    1   
$EndComp
Wire Wire Line
	1000 5000 1000 4900
$Comp
L Connector:AudioJack2_SwitchT J1
U 1 1 5E6F8D85
P 1000 5950
F 0 "J1" H 1032 6275 50  0000 C CNN
F 1 "CV" H 1032 6184 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1000 5950 50  0001 C CNN
F 3 "~" H 1000 5950 50  0001 C CNN
	1    1000 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E6F8D8B
P 1200 5850
F 0 "#PWR03" H 1200 5600 50  0001 C CNN
F 1 "GND" H 1205 5677 50  0000 C CNN
F 2 "" H 1200 5850 50  0001 C CNN
F 3 "" H 1200 5850 50  0001 C CNN
	1    1200 5850
	0    -1   -1   0   
$EndComp
NoConn ~ 1200 6050
$Comp
L Device:R_POT RV2
U 1 1 5E6FE1E4
P 1550 5600
F 0 "RV2" H 1480 5646 50  0000 R CNN
F 1 "10k" H 1480 5555 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1550 5600 50  0001 C CNN
F 3 "~" H 1550 5600 50  0001 C CNN
	1    1550 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5950 1550 5750
Wire Wire Line
	1200 5950 1550 5950
$Comp
L power:GND #PWR04
U 1 1 5E7032AC
P 1550 5450
F 0 "#PWR04" H 1550 5200 50  0001 C CNN
F 1 "GND" H 1555 5277 50  0000 C CNN
F 2 "" H 1550 5450 50  0001 C CNN
F 3 "" H 1550 5450 50  0001 C CNN
	1    1550 5450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5E7038B4
P 1850 5400
F 0 "R3" H 1920 5446 50  0000 L CNN
F 1 "100k" H 1920 5355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1780 5400 50  0001 C CNN
F 3 "~" H 1850 5400 50  0001 C CNN
	1    1850 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 5550 1850 5600
Wire Wire Line
	1850 5600 1700 5600
$Comp
L Device:R R2
U 1 1 5E7089C2
P 1600 4750
F 0 "R2" V 1393 4750 50  0000 C CNN
F 1 "300k" V 1484 4750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1530 4750 50  0001 C CNN
F 3 "~" H 1600 4750 50  0001 C CNN
	1    1600 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5E6DCECE
P 1000 4350
F 0 "R1" H 1070 4396 50  0000 L CNN
F 1 "360" H 1070 4305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 930 4350 50  0001 C CNN
F 3 "~" H 1000 4350 50  0001 C CNN
	1    1000 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5E796AB5
P 1000 5000
F 0 "#PWR02" H 1000 4750 50  0001 C CNN
F 1 "GND" H 1005 4827 50  0000 C CNN
F 2 "" H 1000 5000 50  0001 C CNN
F 3 "" H 1000 5000 50  0001 C CNN
	1    1000 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 4500 1000 4600
$Comp
L power:+15V #PWR01
U 1 1 5E7AB804
P 1000 4200
F 0 "#PWR01" H 1000 4050 50  0001 C CNN
F 1 "+15V" H 1015 4373 50  0000 C CNN
F 2 "" H 1000 4200 50  0001 C CNN
F 3 "" H 1000 4200 50  0001 C CNN
	1    1000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 4750 1450 4750
Wire Wire Line
	1750 4750 1850 4750
Wire Wire Line
	1850 5250 1850 4750
Connection ~ 1850 4750
Wire Wire Line
	1850 4750 2100 4750
Wire Wire Line
	6200 3600 6950 3600
Wire Wire Line
	6200 3600 6200 3750
$Comp
L power:GND #PWR010
U 1 1 5E6FD4E4
P 6350 3900
F 0 "#PWR010" H 6350 3650 50  0001 C CNN
F 1 "GND" H 6355 3727 50  0000 C CNN
F 2 "" H 6350 3900 50  0001 C CNN
F 3 "" H 6350 3900 50  0001 C CNN
	1    6350 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR09
U 1 1 5E6F6CDC
P 6050 3900
F 0 "#PWR09" H 6050 3750 50  0001 C CNN
F 1 "+15V" V 6065 4028 50  0000 L CNN
F 2 "" H 6050 3900 50  0001 C CNN
F 3 "" H 6050 3900 50  0001 C CNN
	1    6050 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_POT RV4
U 1 1 5E6F6CD6
P 6200 3900
F 0 "RV4" V 6085 3900 50  0000 C CNN
F 1 "10k" V 5994 3900 50  0000 C CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 6200 3900 50  0001 C CNN
F 3 "~" H 6200 3900 50  0001 C CNN
	1    6200 3900
	0    1    -1   0   
$EndComp
Wire Wire Line
	6400 3000 6950 3000
NoConn ~ 6400 3100
$Comp
L power:GND #PWR016
U 1 1 5E6E6811
P 6400 2900
F 0 "#PWR016" H 6400 2650 50  0001 C CNN
F 1 "GND" H 6405 2727 50  0000 C CNN
F 2 "" H 6400 2900 50  0001 C CNN
F 3 "" H 6400 2900 50  0001 C CNN
	1    6400 2900
	0    -1   -1   0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J5
U 1 1 5E6E680B
P 6200 3000
F 0 "J5" H 6232 3325 50  0000 C CNN
F 1 "RECIRC" H 6232 3234 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 6200 3000 50  0001 C CNN
F 3 "~" H 6200 3000 50  0001 C CNN
	1    6200 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J7
U 1 1 5EA45375
P 8300 2650
F 0 "J7" H 8332 2975 50  0000 C CNN
F 1 "delayed OUT" H 8332 2884 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 8300 2650 50  0001 C CNN
F 3 "~" H 8300 2650 50  0001 C CNN
	1    8300 2650
	-1   0    0    -1  
$EndComp
NoConn ~ 8100 2750
$Comp
L power:GND #PWR018
U 1 1 5EA4537C
P 8100 2550
F 0 "#PWR018" H 8100 2300 50  0001 C CNN
F 1 "GND" H 8105 2377 50  0000 C CNN
F 2 "" H 8100 2550 50  0001 C CNN
F 3 "" H 8100 2550 50  0001 C CNN
	1    8100 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 2650 7450 2650
Text Label 1900 1400 0    50   ~ 0
IN1
Text Label 6150 2000 3    50   ~ 0
MIX_3
Text Label 6300 1850 0    50   ~ 0
MIX_2
Text Label 6150 1700 1    50   ~ 0
MIX_1
Text Label 7750 1950 2    50   ~ 0
MIXED_OUT
Text Label 6950 3000 0    50   ~ 0
RECIRC_CV
Text Label 6950 3600 0    50   ~ 0
RECIRC_ATTEN
Text Label 2100 4750 0    50   ~ 0
CV
Text Label 1900 2100 0    50   ~ 0
IN2
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5E853315
P 6350 6150
F 0 "#FLG04" H 6350 6225 50  0001 C CNN
F 1 "PWR_FLAG" V 6350 6278 50  0000 L CNN
F 2 "" H 6350 6150 50  0001 C CNN
F 3 "~" H 6350 6150 50  0001 C CNN
	1    6350 6150
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR014
U 1 1 5E853316
P 6350 6150
F 0 "#PWR014" H 6350 6000 50  0001 C CNN
F 1 "+15V" V 6365 6278 50  0000 L CNN
F 2 "" H 6350 6150 50  0001 C CNN
F 3 "" H 6350 6150 50  0001 C CNN
	1    6350 6150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5E853318
P 6350 6350
F 0 "#PWR015" H 6350 6100 50  0001 C CNN
F 1 "GND" V 6350 6150 50  0000 C CNN
F 2 "" H 6350 6350 50  0001 C CNN
F 3 "" H 6350 6350 50  0001 C CNN
	1    6350 6350
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG05
U 1 1 5E85331A
P 6350 6350
F 0 "#FLG05" H 6350 6425 50  0001 C CNN
F 1 "PWR_FLAG" V 6350 6478 50  0000 L CNN
F 2 "" H 6350 6350 50  0001 C CNN
F 3 "~" H 6350 6350 50  0001 C CNN
	1    6350 6350
	0    -1   -1   0   
$EndComp
Text Label 5000 6000 2    50   ~ 0
IN1
Text Label 5000 6100 2    50   ~ 0
IN2
Text Label 5000 6800 2    50   ~ 0
CV
Text Label 5000 6700 2    50   ~ 0
RECIRC_ATTEN
Text Label 5000 6600 2    50   ~ 0
RECIRC_CV
Text Label 5000 6500 2    50   ~ 0
MIXED_OUT
Text Label 5000 6200 2    50   ~ 0
MIX_1
Text Label 5000 6300 2    50   ~ 0
MIX_2
Text Label 5000 6400 2    50   ~ 0
MIX_3
$Comp
L power:+15V #PWR07
U 1 1 5E86909A
P 5000 5900
F 0 "#PWR07" H 5000 5750 50  0001 C CNN
F 1 "+15V" V 5015 6028 50  0000 L CNN
F 2 "" H 5000 5900 50  0001 C CNN
F 3 "" H 5000 5900 50  0001 C CNN
	1    5000 5900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5E878386
P 5000 6900
F 0 "#PWR08" H 5000 6650 50  0001 C CNN
F 1 "GND" V 5000 6700 50  0000 C CNN
F 2 "" H 5000 6900 50  0001 C CNN
F 3 "" H 5000 6900 50  0001 C CNN
	1    5000 6900
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5E815540
P 10350 6250
F 0 "H4" H 10450 6296 50  0000 L CNN
F 1 "MountingHole" H 10450 6205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10350 6250 50  0001 C CNN
F 3 "~" H 10350 6250 50  0001 C CNN
	1    10350 6250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5E8161BC
P 10350 5950
F 0 "H3" H 10450 5996 50  0000 L CNN
F 1 "MountingHole" H 10450 5905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10350 5950 50  0001 C CNN
F 3 "~" H 10350 5950 50  0001 C CNN
	1    10350 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5E816D91
P 9550 6250
F 0 "H2" H 9650 6296 50  0000 L CNN
F 1 "MountingHole" H 9650 6205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9550 6250 50  0001 C CNN
F 3 "~" H 9550 6250 50  0001 C CNN
	1    9550 6250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5E817A44
P 9550 5950
F 0 "H1" H 9650 5996 50  0000 L CNN
F 1 "MountingHole" H 9650 5905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9550 5950 50  0001 C CNN
F 3 "~" H 9550 5950 50  0001 C CNN
	1    9550 5950
	1    0    0    -1  
$EndComp
Text Label 7300 2650 2    50   ~ 0
MIX_3
$Comp
L Device:R R4
U 1 1 5E862BD7
P 7600 2650
F 0 "R4" V 7393 2650 50  0000 C CNN
F 1 "1k" V 7484 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7530 2650 50  0001 C CNN
F 3 "~" H 7600 2650 50  0001 C CNN
	1    7600 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 2650 8100 2650
$Comp
L Connector:Conn_01x11_Male J4
U 1 1 5E84A8C9
P 5200 6400
F 0 "J4" H 5172 6424 50  0000 R CNN
F 1 "Conn_01x11_Male" H 5172 6333 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x11_P2.54mm_Vertical" H 5200 6400 50  0001 C CNN
F 3 "~" H 5200 6400 50  0001 C CNN
	1    5200 6400
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
