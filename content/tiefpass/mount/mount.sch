EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "(title)"
Date ""
Rev "R01"
Comp ""
Comment1 "schema for pcb"
Comment2 "(description)"
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
$Comp
L Mechanical:MountingHole H1
U 1 1 6097A217
P 9650 6000
F 0 "H1" H 9750 6046 50  0000 L CNN
F 1 "MountingHole" H 9750 5955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9650 6000 50  0001 C CNN
F 3 "~" H 9650 6000 50  0001 C CNN
	1    9650 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6097A580
P 9650 6300
F 0 "H2" H 9750 6346 50  0000 L CNN
F 1 "MountingHole" H 9750 6255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9650 6300 50  0001 C CNN
F 3 "~" H 9650 6300 50  0001 C CNN
	1    9650 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR010
U 1 1 5F816C5C
P 6050 7300
F 0 "#PWR010" H 6050 7150 50  0001 C CNN
F 1 "+15V" H 6065 7473 50  0000 C CNN
F 2 "" H 6050 7300 50  0001 C CNN
F 3 "" H 6050 7300 50  0001 C CNN
	1    6050 7300
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR011
U 1 1 5F816FAE
P 6300 7300
F 0 "#PWR011" H 6300 7400 50  0001 C CNN
F 1 "-15V" H 6315 7473 50  0000 C CNN
F 2 "" H 6300 7300 50  0001 C CNN
F 3 "" H 6300 7300 50  0001 C CNN
	1    6300 7300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5F817A91
P 6550 7400
F 0 "#PWR012" H 6550 7150 50  0001 C CNN
F 1 "GND" H 6555 7227 50  0000 C CNN
F 2 "" H 6550 7400 50  0001 C CNN
F 3 "" H 6550 7400 50  0001 C CNN
	1    6550 7400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5F737716
P 6050 7300
F 0 "#FLG02" H 6050 7375 50  0001 C CNN
F 1 "PWR_FLAG" H 6050 7473 50  0001 C CNN
F 2 "" H 6050 7300 50  0001 C CNN
F 3 "~" H 6050 7300 50  0001 C CNN
	1    6050 7300
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5F737C0D
P 6300 7300
F 0 "#FLG03" H 6300 7375 50  0001 C CNN
F 1 "PWR_FLAG" H 6300 7473 50  0001 C CNN
F 2 "" H 6300 7300 50  0001 C CNN
F 3 "~" H 6300 7300 50  0001 C CNN
	1    6300 7300
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5F737FC5
P 6550 7400
F 0 "#FLG04" H 6550 7475 50  0001 C CNN
F 1 "PWR_FLAG" H 6550 7573 50  0001 C CNN
F 2 "" H 6550 7400 50  0001 C CNN
F 3 "~" H 6550 7400 50  0001 C CNN
	1    6550 7400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 6098DECA
P 10400 6000
F 0 "H3" H 10500 6046 50  0000 L CNN
F 1 "MountingHole" H 10500 5955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10400 6000 50  0001 C CNN
F 3 "~" H 10400 6000 50  0001 C CNN
	1    10400 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6098DED0
P 10400 6300
F 0 "H4" H 10500 6346 50  0000 L CNN
F 1 "MountingHole" H 10500 6255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10400 6300 50  0001 C CNN
F 3 "~" H 10400 6300 50  0001 C CNN
	1    10400 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 61163D6E
P 4600 1600
F 0 "R10" V 4393 1600 50  0000 C CNN
F 1 "1k" V 4484 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4530 1600 50  0001 C CNN
F 3 "~" H 4600 1600 50  0001 C CNN
	1    4600 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 6115F4B1
P 1100 1350
F 0 "RV1" H 1030 1304 50  0000 R CNN
F 1 "10k" H 1030 1395 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1100 1350 50  0001 C CNN
F 3 "~" H 1100 1350 50  0001 C CNN
	1    1100 1350
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J2
U 1 1 61160212
P 1050 2150
F 0 "J2" H 1082 2475 50  0000 C CNN
F 1 "CV1" H 1082 2384 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1050 2150 50  0001 C CNN
F 3 "~" H 1050 2150 50  0001 C CNN
	1    1050 2150
	1    0    0    -1  
$EndComp
NoConn ~ 1250 2250
$Comp
L power:GND #PWR0101
U 1 1 61162C2F
P 1100 1500
F 0 "#PWR0101" H 1100 1250 50  0001 C CNN
F 1 "GND" H 1105 1327 50  0000 C CNN
F 2 "" H 1100 1500 50  0001 C CNN
F 3 "" H 1100 1500 50  0001 C CNN
	1    1100 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0102
U 1 1 611631F5
P 1100 1200
F 0 "#PWR0102" H 1100 1050 50  0001 C CNN
F 1 "+15V" H 1115 1373 50  0000 C CNN
F 2 "" H 1100 1200 50  0001 C CNN
F 3 "" H 1100 1200 50  0001 C CNN
	1    1100 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 611636A3
P 1550 2400
F 0 "RV2" H 1481 2354 50  0000 R CNN
F 1 "100k" H 1481 2445 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1550 2400 50  0001 C CNN
F 3 "~" H 1550 2400 50  0001 C CNN
	1    1550 2400
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 61164691
P 1550 2550
F 0 "#PWR0103" H 1550 2300 50  0001 C CNN
F 1 "GND" H 1555 2377 50  0000 C CNN
F 2 "" H 1550 2550 50  0001 C CNN
F 3 "" H 1550 2550 50  0001 C CNN
	1    1550 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J3
U 1 1 6116680B
P 1050 3000
F 0 "J3" H 1082 3325 50  0000 C CNN
F 1 "CV2" H 1082 3234 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1050 3000 50  0001 C CNN
F 3 "~" H 1050 3000 50  0001 C CNN
	1    1050 3000
	1    0    0    -1  
$EndComp
NoConn ~ 1250 3100
$Comp
L Device:R_POT RV3
U 1 1 61166812
P 1550 3250
F 0 "RV3" H 1481 3204 50  0000 R CNN
F 1 "100k" H 1481 3295 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1550 3250 50  0001 C CNN
F 3 "~" H 1550 3250 50  0001 C CNN
	1    1550 3250
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 6116681A
P 1550 3400
F 0 "#PWR0104" H 1550 3150 50  0001 C CNN
F 1 "GND" H 1555 3227 50  0000 C CNN
F 2 "" H 1550 3400 50  0001 C CNN
F 3 "" H 1550 3400 50  0001 C CNN
	1    1550 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2400 1800 2400
Wire Wire Line
	1700 3250 1800 3250
Wire Wire Line
	1250 1350 1800 1350
$Comp
L Device:R_POT RV4
U 1 1 6126F85B
P 3100 1800
F 0 "RV4" V 2893 1800 50  0000 C CNN
F 1 "50k" V 2984 1800 50  0000 C CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 3100 1800 50  0001 C CNN
F 3 "~" H 3100 1800 50  0001 C CNN
	1    3100 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 2150 1550 2150
Wire Wire Line
	1550 2150 1550 2250
$Comp
L power:GND #PWR0120
U 1 1 61327C6C
P 1250 2050
F 0 "#PWR0120" H 1250 1800 50  0001 C CNN
F 1 "GND" V 1255 1922 50  0000 R CNN
F 2 "" H 1250 2050 50  0001 C CNN
F 3 "" H 1250 2050 50  0001 C CNN
	1    1250 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1250 3000 1550 3000
Wire Wire Line
	1550 3000 1550 3100
$Comp
L power:GND #PWR0121
U 1 1 61338C47
P 1250 2900
F 0 "#PWR0121" H 1250 2650 50  0001 C CNN
F 1 "GND" V 1255 2772 50  0000 R CNN
F 2 "" H 1250 2900 50  0001 C CNN
F 3 "" H 1250 2900 50  0001 C CNN
	1    1250 2900
	0    -1   -1   0   
$EndComp
$Comp
L elektrophon:SWITCH_3PDT SW1
U 1 1 6117D57A
P 4750 3250
F 0 "SW1" H 4750 3831 50  0000 C CNN
F 1 "SWITCH_3PDT" H 4750 3740 50  0000 C CNN
F 2 "elektrophon:3PDT" H 4750 3250 50  0001 C CNN
F 3 "" H 4750 3250 50  0001 C CNN
	1    4750 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J4
U 1 1 612055E8
P 5250 1600
F 0 "J4" H 5282 1925 50  0000 C CNN
F 1 "CV" H 5282 1834 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 5250 1600 50  0001 C CNN
F 3 "~" H 5250 1600 50  0001 C CNN
	1    5250 1600
	-1   0    0    -1  
$EndComp
NoConn ~ 5050 1700
$Comp
L power:GND #PWR020
U 1 1 61217C71
P 5050 1500
F 0 "#PWR020" H 5050 1250 50  0001 C CNN
F 1 "GND" V 5055 1372 50  0000 R CNN
F 2 "" H 5050 1500 50  0001 C CNN
F 3 "" H 5050 1500 50  0001 C CNN
	1    5050 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 1600 5050 1600
Text Label 4650 3250 2    50   ~ 0
S2
Text Label 4650 2950 2    50   ~ 0
S1
$Comp
L power:GND #PWR018
U 1 1 61253BD0
P 4850 2850
F 0 "#PWR018" H 4850 2600 50  0001 C CNN
F 1 "GND" V 4855 2722 50  0000 R CNN
F 2 "" H 4850 2850 50  0001 C CNN
F 3 "" H 4850 2850 50  0001 C CNN
	1    4850 2850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 612545E8
P 4850 3150
F 0 "#PWR019" H 4850 2900 50  0001 C CNN
F 1 "GND" V 4855 3022 50  0000 R CNN
F 2 "" H 4850 3150 50  0001 C CNN
F 3 "" H 4850 3150 50  0001 C CNN
	1    4850 3150
	0    -1   -1   0   
$EndComp
NoConn ~ 4850 2950
NoConn ~ 4850 3250
NoConn ~ 4850 3450
Text Label 4650 3550 2    50   ~ 0
S3
Text Label 4850 3550 0    50   ~ 0
S4
$Comp
L Connector:AudioJack2_SwitchT J1
U 1 1 611C9A2D
P 1050 4050
F 0 "J1" H 1082 4375 50  0000 C CNN
F 1 "IN" H 1082 4284 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1050 4050 50  0001 C CNN
F 3 "~" H 1050 4050 50  0001 C CNN
	1    1050 4050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT SW2
U 1 1 61178968
P 3450 3750
F 0 "SW2" H 3450 4035 50  0000 C CNN
F 1 "SW_SPDT" H 3450 3944 50  0000 C CNN
F 2 "elektrophon:SPDT_KIT" H 3450 3750 50  0001 C CNN
F 3 "~" H 3450 3750 50  0001 C CNN
	1    3450 3750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
