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
P 5400 7200
F 0 "H1" H 5500 7246 50  0000 L CNN
F 1 "MountingHole" H 5500 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 5400 7200 50  0001 C CNN
F 3 "~" H 5400 7200 50  0001 C CNN
	1    5400 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6097A580
P 5400 7500
F 0 "H2" H 5500 7546 50  0000 L CNN
F 1 "MountingHole" H 5500 7455 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 5400 7500 50  0001 C CNN
F 3 "~" H 5400 7500 50  0001 C CNN
	1    5400 7500
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR025
U 1 1 5F816C5C
P 10350 6100
F 0 "#PWR025" H 10350 5950 50  0001 C CNN
F 1 "+15V" H 10365 6273 50  0000 C CNN
F 2 "" H 10350 6100 50  0001 C CNN
F 3 "" H 10350 6100 50  0001 C CNN
	1    10350 6100
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR026
U 1 1 5F816FAE
P 10600 6100
F 0 "#PWR026" H 10600 6200 50  0001 C CNN
F 1 "-15V" H 10615 6273 50  0000 C CNN
F 2 "" H 10600 6100 50  0001 C CNN
F 3 "" H 10600 6100 50  0001 C CNN
	1    10600 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5F817A91
P 10850 6200
F 0 "#PWR027" H 10850 5950 50  0001 C CNN
F 1 "GND" H 10855 6027 50  0000 C CNN
F 2 "" H 10850 6200 50  0001 C CNN
F 3 "" H 10850 6200 50  0001 C CNN
	1    10850 6200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5F737716
P 10350 6100
F 0 "#FLG01" H 10350 6175 50  0001 C CNN
F 1 "PWR_FLAG" H 10350 6273 50  0001 C CNN
F 2 "" H 10350 6100 50  0001 C CNN
F 3 "~" H 10350 6100 50  0001 C CNN
	1    10350 6100
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5F737C0D
P 10600 6100
F 0 "#FLG02" H 10600 6175 50  0001 C CNN
F 1 "PWR_FLAG" H 10600 6273 50  0001 C CNN
F 2 "" H 10600 6100 50  0001 C CNN
F 3 "~" H 10600 6100 50  0001 C CNN
	1    10600 6100
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5F737FC5
P 10850 6200
F 0 "#FLG03" H 10850 6275 50  0001 C CNN
F 1 "PWR_FLAG" H 10850 6373 50  0001 C CNN
F 2 "" H 10850 6200 50  0001 C CNN
F 3 "~" H 10850 6200 50  0001 C CNN
	1    10850 6200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 6098DECA
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
U 1 1 6098DED0
P 6150 7500
F 0 "H4" H 6250 7546 50  0000 L CNN
F 1 "MountingHole" H 6250 7455 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6150 7500 50  0001 C CNN
F 3 "~" H 6150 7500 50  0001 C CNN
	1    6150 7500
	1    0    0    -1  
$EndComp
Text Notes 4100 1300 0    50   ~ 0
Output
$Comp
L Connector:AudioJack2_SwitchT J8
U 1 1 5D4DE69B
P 4250 3700
F 0 "J8" H 4280 4025 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 4280 3934 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 4250 3700 50  0001 C CNN
F 3 "~" H 4250 3700 50  0001 C CNN
	1    4250 3700
	-1   0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J9
U 1 1 5D4DE6A9
P 4250 4900
F 0 "J9" H 4280 5225 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 4280 5134 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 4250 4900 50  0001 C CNN
F 3 "~" H 4250 4900 50  0001 C CNN
	1    4250 4900
	-1   0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J6
U 1 1 5D4DE6B0
P 4250 1850
F 0 "J6" H 4280 2175 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 4280 2084 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 4250 1850 50  0001 C CNN
F 3 "~" H 4250 1850 50  0001 C CNN
	1    4250 1850
	-1   0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J7
U 1 1 5D4DE6B7
P 4250 2800
F 0 "J7" H 4280 3125 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 4280 3034 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 4250 2800 50  0001 C CNN
F 3 "~" H 4250 2800 50  0001 C CNN
	1    4250 2800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5D5E48D6
P 4050 3600
F 0 "#PWR020" H 4050 3350 50  0001 C CNN
F 1 "GND" V 4055 3472 50  0000 R CNN
F 2 "" H 4050 3600 50  0001 C CNN
F 3 "" H 4050 3600 50  0001 C CNN
	1    4050 3600
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5D5E512F
P 4050 1750
F 0 "#PWR018" H 4050 1500 50  0001 C CNN
F 1 "GND" V 4055 1622 50  0000 R CNN
F 2 "" H 4050 1750 50  0001 C CNN
F 3 "" H 4050 1750 50  0001 C CNN
	1    4050 1750
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5D5E541B
P 4050 2700
F 0 "#PWR019" H 4050 2450 50  0001 C CNN
F 1 "GND" V 4055 2572 50  0000 R CNN
F 2 "" H 4050 2700 50  0001 C CNN
F 3 "" H 4050 2700 50  0001 C CNN
	1    4050 2700
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5D5E5932
P 4050 4800
F 0 "#PWR021" H 4050 4550 50  0001 C CNN
F 1 "GND" V 4055 4672 50  0000 R CNN
F 2 "" H 4050 4800 50  0001 C CNN
F 3 "" H 4050 4800 50  0001 C CNN
	1    4050 4800
	0    1    -1   0   
$EndComp
NoConn ~ 4050 1950
NoConn ~ 4050 3800
NoConn ~ 4050 2900
NoConn ~ 4050 5000
Text Label 3350 1850 2    50   ~ 0
triangle
Text Label 3300 2800 2    50   ~ 0
ramp
Text Label 3100 3700 2    50   ~ 0
sine
Text Label 3300 4900 2    50   ~ 0
pulse
$Comp
L power:GND #PWR022
U 1 1 5ED996C7
P 6350 2900
F 0 "#PWR022" H 6350 2650 50  0001 C CNN
F 1 "GND" V 6355 2772 50  0000 R CNN
F 2 "" H 6350 2900 50  0001 C CNN
F 3 "" H 6350 2900 50  0001 C CNN
	1    6350 2900
	0    1    1    0   
$EndComp
$Comp
L power:+15V #PWR024
U 1 1 5ED9A66B
P 6350 3100
F 0 "#PWR024" H 6350 2950 50  0001 C CNN
F 1 "+15V" V 6365 3228 50  0000 L CNN
F 2 "" H 6350 3100 50  0001 C CNN
F 3 "" H 6350 3100 50  0001 C CNN
	1    6350 3100
	0    -1   -1   0   
$EndComp
$Comp
L power:-15V #PWR023
U 1 1 5EC8A94C
P 6350 3000
F 0 "#PWR023" H 6350 3100 50  0001 C CNN
F 1 "-15V" V 6365 3128 50  0000 L CNN
F 2 "" H 6350 3000 50  0001 C CNN
F 3 "" H 6350 3000 50  0001 C CNN
	1    6350 3000
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x12_Male J10
U 1 1 5ECC2450
P 6550 3400
F 0 "J10" H 6522 3374 50  0000 R CNN
F 1 "Conn_01x12_Male" H 6522 3283 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 6550 3400 50  0001 C CNN
F 3 "~" H 6550 3400 50  0001 C CNN
	1    6550 3400
	-1   0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J1
U 1 1 5EFF2392
P 1200 1500
F 0 "J1" H 1232 1825 50  0000 C CNN
F 1 "exp.fm" H 1232 1734 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1200 1500 50  0001 C CNN
F 3 "~" H 1200 1500 50  0001 C CNN
	1    1200 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J3
U 1 1 5EF06873
P 1200 4900
F 0 "J3" H 1232 5225 50  0000 C CNN
F 1 "lin.fm" H 1232 5134 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1200 4900 50  0001 C CNN
F 3 "~" H 1200 4900 50  0001 C CNN
	1    1200 4900
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J2
U 1 1 5EF0633D
P 1200 4300
F 0 "J2" H 1232 4625 50  0000 C CNN
F 1 "1v/oct" H 1232 4534 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1200 4300 50  0001 C CNN
F 3 "~" H 1200 4300 50  0001 C CNN
	1    1200 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5EFF2395
P 1600 1950
F 0 "RV1" H 1530 1996 50  0000 R CNN
F 1 "100k" H 1530 1905 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1600 1950 50  0001 C CNN
F 3 "~" H 1600 1950 50  0001 C CNN
	1    1600 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1500 1600 1500
Wire Wire Line
	1600 1500 1600 1800
$Comp
L power:GND #PWR01
U 1 1 5EF17EFC
P 1400 1400
F 0 "#PWR01" H 1400 1150 50  0001 C CNN
F 1 "GND" V 1405 1272 50  0000 R CNN
F 2 "" H 1400 1400 50  0001 C CNN
F 3 "" H 1400 1400 50  0001 C CNN
	1    1400 1400
	0    -1   -1   0   
$EndComp
NoConn ~ 1400 1600
$Comp
L power:GND #PWR05
U 1 1 5EF185BD
P 1600 2100
F 0 "#PWR05" H 1600 1850 50  0001 C CNN
F 1 "GND" H 1605 1927 50  0000 C CNN
F 2 "" H 1600 2100 50  0001 C CNN
F 3 "" H 1600 2100 50  0001 C CNN
	1    1600 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 5EFF2398
P 1600 2750
F 0 "RV2" H 1530 2796 50  0000 R CNN
F 1 "100k" H 1530 2705 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1600 2750 50  0001 C CNN
F 3 "~" H 1600 2750 50  0001 C CNN
	1    1600 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR06
U 1 1 5EF1A584
P 1600 2600
F 0 "#PWR06" H 1600 2450 50  0001 C CNN
F 1 "+15V" H 1615 2773 50  0000 C CNN
F 2 "" H 1600 2600 50  0001 C CNN
F 3 "" H 1600 2600 50  0001 C CNN
	1    1600 2600
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR07
U 1 1 5EF1AFF5
P 1600 2900
F 0 "#PWR07" H 1600 3000 50  0001 C CNN
F 1 "-15V" H 1615 3073 50  0000 C CNN
F 2 "" H 1600 2900 50  0001 C CNN
F 3 "" H 1600 2900 50  0001 C CNN
	1    1600 2900
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RV3
U 1 1 5EF1D799
P 1600 3550
F 0 "RV3" H 1530 3596 50  0000 R CNN
F 1 "100k" H 1530 3505 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1600 3550 50  0001 C CNN
F 3 "~" H 1600 3550 50  0001 C CNN
	1    1600 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR08
U 1 1 5EF1D79F
P 1600 3400
F 0 "#PWR08" H 1600 3250 50  0001 C CNN
F 1 "+15V" H 1615 3573 50  0000 C CNN
F 2 "" H 1600 3400 50  0001 C CNN
F 3 "" H 1600 3400 50  0001 C CNN
	1    1600 3400
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR09
U 1 1 5EF1D7A5
P 1600 3700
F 0 "#PWR09" H 1600 3800 50  0001 C CNN
F 1 "-15V" H 1615 3873 50  0000 C CNN
F 2 "" H 1600 3700 50  0001 C CNN
F 3 "" H 1600 3700 50  0001 C CNN
	1    1600 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5EFF239E
P 2000 2750
F 0 "R2" V 1793 2750 50  0000 C CNN
F 1 "100k" V 1884 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1930 2750 50  0001 C CNN
F 3 "~" H 2000 2750 50  0001 C CNN
	1    2000 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5EFF239F
P 2000 3550
F 0 "R3" V 1793 3550 50  0000 C CNN
F 1 "3M3" V 1884 3550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1930 3550 50  0001 C CNN
F 3 "~" H 2000 3550 50  0001 C CNN
	1    2000 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5EF26421
P 2000 4300
F 0 "R4" V 1793 4300 50  0000 C CNN
F 1 "100k" V 1884 4300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1930 4300 50  0001 C CNN
F 3 "~" H 2000 4300 50  0001 C CNN
	1    2000 4300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5EF26B8D
P 1400 4200
F 0 "#PWR02" H 1400 3950 50  0001 C CNN
F 1 "GND" V 1405 4072 50  0000 R CNN
F 2 "" H 1400 4200 50  0001 C CNN
F 3 "" H 1400 4200 50  0001 C CNN
	1    1400 4200
	0    -1   -1   0   
$EndComp
NoConn ~ 1400 4400
Wire Wire Line
	1850 4300 1400 4300
$Comp
L Device:R R1
U 1 1 5EF2930F
P 2000 1950
F 0 "R1" V 1793 1950 50  0000 C CNN
F 1 "100k" V 1884 1950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1930 1950 50  0001 C CNN
F 3 "~" H 2000 1950 50  0001 C CNN
	1    2000 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 4300 2150 4300
Wire Wire Line
	1750 2750 1850 2750
Wire Wire Line
	1750 3550 1850 3550
Wire Wire Line
	2150 3550 2400 3550
Connection ~ 2400 3550
Wire Wire Line
	2400 3550 2400 4300
Wire Wire Line
	2150 2750 2400 2750
Connection ~ 2400 2750
Wire Wire Line
	1750 1950 1850 1950
Wire Wire Line
	2400 1950 2400 2750
Wire Wire Line
	2150 1950 2400 1950
$Comp
L power:GND #PWR03
U 1 1 5EF41A26
P 1400 4800
F 0 "#PWR03" H 1400 4550 50  0001 C CNN
F 1 "GND" V 1405 4672 50  0000 R CNN
F 2 "" H 1400 4800 50  0001 C CNN
F 3 "" H 1400 4800 50  0001 C CNN
	1    1400 4800
	0    -1   -1   0   
$EndComp
NoConn ~ 1400 5000
$Comp
L Device:R_POT RV4
U 1 1 5EF433AE
P 1600 5350
F 0 "RV4" H 1531 5396 50  0000 R CNN
F 1 "100k" H 1531 5305 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1600 5350 50  0001 C CNN
F 3 "~" H 1600 5350 50  0001 C CNN
	1    1600 5350
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J4
U 1 1 5EF463D9
P 1200 6350
F 0 "J4" H 1232 6675 50  0000 C CNN
F 1 "sync" H 1232 6584 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1200 6350 50  0001 C CNN
F 3 "~" H 1200 6350 50  0001 C CNN
	1    1200 6350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5EF469E1
P 1400 6250
F 0 "#PWR04" H 1400 6000 50  0001 C CNN
F 1 "GND" V 1405 6122 50  0000 R CNN
F 2 "" H 1400 6250 50  0001 C CNN
F 3 "" H 1400 6250 50  0001 C CNN
	1    1400 6250
	0    -1   -1   0   
$EndComp
NoConn ~ 1400 6450
$Comp
L power:GND #PWR010
U 1 1 5EF47CDF
P 1600 5500
F 0 "#PWR010" H 1600 5250 50  0001 C CNN
F 1 "GND" H 1605 5327 50  0000 C CNN
F 2 "" H 1600 5500 50  0001 C CNN
F 3 "" H 1600 5500 50  0001 C CNN
	1    1600 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4900 1600 4900
$Comp
L Device:R R11
U 1 1 5F151D10
P 3500 1850
F 0 "R11" V 3293 1850 50  0000 C CNN
F 1 "2k" V 3384 1850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3430 1850 50  0001 C CNN
F 3 "~" H 3500 1850 50  0001 C CNN
	1    3500 1850
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5EFF23AA
P 3750 2050
F 0 "R13" V 3543 2050 50  0000 C CNN
F 1 "2k" V 3634 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3680 2050 50  0001 C CNN
F 3 "~" H 3750 2050 50  0001 C CNN
	1    3750 2050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5F173D10
P 3750 2200
F 0 "#PWR017" H 3750 1950 50  0001 C CNN
F 1 "GND" H 3755 2027 50  0000 C CNN
F 2 "" H 3750 2200 50  0001 C CNN
F 3 "" H 3750 2200 50  0001 C CNN
	1    3750 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1850 3750 1900
Wire Wire Line
	3650 1850 3750 1850
$Comp
L Device:R R8
U 1 1 5F18ADA4
P 3450 2800
F 0 "R8" V 3243 2800 50  0000 C CNN
F 1 "1k" V 3334 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3380 2800 50  0001 C CNN
F 3 "~" H 3450 2800 50  0001 C CNN
	1    3450 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5F2C54D0
P 3200 4000
F 0 "R7" V 2993 4000 50  0000 C CNN
F 1 "5k6" V 3084 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3130 4000 50  0001 C CNN
F 3 "~" H 3200 4000 50  0001 C CNN
	1    3200 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5F2C5A34
P 3450 3700
F 0 "R9" V 3243 3700 50  0000 C CNN
F 1 "1k" V 3334 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3380 3700 50  0001 C CNN
F 3 "~" H 3450 3700 50  0001 C CNN
	1    3450 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 3700 3200 3700
Wire Wire Line
	3200 3700 3200 3850
Connection ~ 3200 3700
Wire Wire Line
	3200 3700 3100 3700
$Comp
L power:-15V #PWR015
U 1 1 5EFF23AF
P 3200 4150
F 0 "#PWR015" H 3200 4250 50  0001 C CNN
F 1 "-15V" H 3215 4323 50  0000 C CNN
F 2 "" H 3200 4150 50  0001 C CNN
F 3 "" H 3200 4150 50  0001 C CNN
	1    3200 4150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 5EFF23B0
P 3450 4900
F 0 "R10" V 3243 4900 50  0000 C CNN
F 1 "3k" V 3334 4900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3380 4900 50  0001 C CNN
F 3 "~" H 3450 4900 50  0001 C CNN
	1    3450 4900
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5EFF23B1
P 3700 5150
F 0 "R12" V 3493 5150 50  0000 C CNN
F 1 "1k8" V 3584 5150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3630 5150 50  0001 C CNN
F 3 "~" H 3700 5150 50  0001 C CNN
	1    3700 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4900 3700 5000
Wire Wire Line
	3600 4900 3700 4900
$Comp
L power:GND #PWR016
U 1 1 5F3A1487
P 3700 5300
F 0 "#PWR016" H 3700 5050 50  0001 C CNN
F 1 "GND" H 3705 5127 50  0000 C CNN
F 2 "" H 3700 5300 50  0001 C CNN
F 3 "" H 3700 5300 50  0001 C CNN
	1    3700 5300
	1    0    0    -1  
$EndComp
Text Notes 850  2200 1    50   ~ 0
exp.fm.atten
Text Notes 850  2900 1    50   ~ 0
coarse
Text Notes 850  3600 1    50   ~ 0
fine\n
Text Notes 850  4450 1    50   ~ 0
1v/oct
Text Notes 850  1600 1    50   ~ 0
exp.fm
Text Notes 850  5000 1    50   ~ 0
lin.fm
Text Notes 850  5650 1    50   ~ 0
lin.fm.atten
Text Notes 850  6450 1    50   ~ 0
sync
$Comp
L Device:C C1
U 1 1 5EFF23A8
P 1600 5050
F 0 "C1" H 1715 5096 50  0000 L CNN
F 1 "0.22u" H 1715 5005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.5mm_W4.4mm_P5.00mm" H 1638 4900 50  0001 C CNN
F 3 "~" H 1600 5050 50  0001 C CNN
	1    1600 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2750 2400 3550
Wire Wire Line
	4050 1850 3750 1850
Connection ~ 3750 1850
Wire Wire Line
	3600 2800 4050 2800
Wire Wire Line
	3600 3700 4050 3700
Wire Wire Line
	3700 4900 4050 4900
Connection ~ 3700 4900
Text Label 2400 4300 1    50   ~ 0
exp_fm
Text Label 6350 3200 2    50   ~ 0
exp_fm
Text Label 1750 5350 0    50   ~ 0
lin_fm
Text Label 1400 6350 0    50   ~ 0
sync
Text Label 6350 3300 2    50   ~ 0
lin_fm
Text Label 6350 3400 2    50   ~ 0
sync
Text Label 6350 3500 2    50   ~ 0
triangle
Text Label 6350 3600 2    50   ~ 0
ramp
Text Label 6350 3700 2    50   ~ 0
sine
Text Label 6350 3800 2    50   ~ 0
pulse
$Comp
L Connector:AudioJack2_SwitchT J5
U 1 1 5F2EF732
P 2300 5800
F 0 "J5" H 2332 6125 50  0000 C CNN
F 1 "pwm" H 2332 6034 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 2300 5800 50  0001 C CNN
F 3 "~" H 2300 5800 50  0001 C CNN
	1    2300 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5F2EF738
P 2500 5700
F 0 "#PWR011" H 2500 5450 50  0001 C CNN
F 1 "GND" V 2505 5572 50  0000 R CNN
F 2 "" H 2500 5700 50  0001 C CNN
F 3 "" H 2500 5700 50  0001 C CNN
	1    2500 5700
	0    -1   -1   0   
$EndComp
NoConn ~ 2500 5900
$Comp
L Device:R_POT RV5
U 1 1 5F2EF73F
P 2700 6150
F 0 "RV5" H 2631 6196 50  0000 R CNN
F 1 "100k" H 2631 6105 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 2700 6150 50  0001 C CNN
F 3 "~" H 2700 6150 50  0001 C CNN
	1    2700 6150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5F2EF745
P 2700 6300
F 0 "#PWR012" H 2700 6050 50  0001 C CNN
F 1 "GND" H 2705 6127 50  0000 C CNN
F 2 "" H 2700 6300 50  0001 C CNN
F 3 "" H 2700 6300 50  0001 C CNN
	1    2700 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5800 2700 5800
Wire Wire Line
	2700 5800 2700 6000
$Comp
L Device:R_POT RV6
U 1 1 5F32C73A
P 2700 6950
F 0 "RV6" H 2631 6996 50  0000 R CNN
F 1 "100k" H 2631 6905 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 2700 6950 50  0001 C CNN
F 3 "~" H 2700 6950 50  0001 C CNN
	1    2700 6950
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR013
U 1 1 5F32CB98
P 2700 6800
F 0 "#PWR013" H 2700 6650 50  0001 C CNN
F 1 "+15V" H 2715 6973 50  0000 C CNN
F 2 "" H 2700 6800 50  0001 C CNN
F 3 "" H 2700 6800 50  0001 C CNN
	1    2700 6800
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR014
U 1 1 5F335901
P 2700 7100
F 0 "#PWR014" H 2700 7200 50  0001 C CNN
F 1 "-15V" H 2715 7273 50  0000 C CNN
F 2 "" H 2700 7100 50  0001 C CNN
F 3 "" H 2700 7100 50  0001 C CNN
	1    2700 7100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5F3367EF
P 3100 6950
F 0 "R6" V 2893 6950 50  0000 C CNN
F 1 "330k" V 2984 6950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3030 6950 50  0001 C CNN
F 3 "~" H 3100 6950 50  0001 C CNN
	1    3100 6950
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5F336D7E
P 3100 6150
F 0 "R5" V 2893 6150 50  0000 C CNN
F 1 "100k" V 2984 6150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3030 6150 50  0001 C CNN
F 3 "~" H 3100 6150 50  0001 C CNN
	1    3100 6150
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 6150 2850 6150
Wire Wire Line
	2850 6950 2950 6950
Wire Wire Line
	3350 6950 3350 6150
Wire Wire Line
	3250 6950 3350 6950
Wire Wire Line
	3350 6150 3250 6150
Text Label 3350 6150 0    50   ~ 0
pwm_cv
Text Label 6350 3900 2    50   ~ 0
pwm_cv
$EndSCHEMATC
