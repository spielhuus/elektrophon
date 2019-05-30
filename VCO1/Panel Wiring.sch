EESchema Schematic File Version 4
LIBS:VCO-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R_POT RV?
U 1 1 5CF55A2A
P 2500 2000
AR Path="/5CF55A2A" Ref="RV?"  Part="1" 
AR Path="/5CF42726/5CF55A2A" Ref="RV1"  Part="1" 
F 0 "RV1" H 2430 2046 50  0000 R CNN
F 1 "100k" H 2430 1955 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2500 2000 50  0001 C CNN
F 3 "~" H 2500 2000 50  0001 C CNN
	1    2500 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5CF55A30
P 2500 2750
AR Path="/5CF55A30" Ref="RV?"  Part="1" 
AR Path="/5CF42726/5CF55A30" Ref="RV2"  Part="1" 
F 0 "RV2" H 2430 2796 50  0000 R CNN
F 1 "100k" H 2430 2705 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2500 2750 50  0001 C CNN
F 3 "~" H 2500 2750 50  0001 C CNN
	1    2500 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5CF55A36
P 2500 3500
AR Path="/5CF55A36" Ref="RV?"  Part="1" 
AR Path="/5CF42726/5CF55A36" Ref="RV3"  Part="1" 
F 0 "RV3" H 2430 3546 50  0000 R CNN
F 1 "100k" H 2430 3455 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2500 3500 50  0001 C CNN
F 3 "~" H 2500 3500 50  0001 C CNN
	1    2500 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CF55A3C
P 2500 3650
AR Path="/5CF55A3C" Ref="#PWR?"  Part="1" 
AR Path="/5CF42726/5CF55A3C" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 2500 3400 50  0001 C CNN
F 1 "GND" H 2505 3477 50  0000 C CNN
F 2 "" H 2500 3650 50  0001 C CNN
F 3 "" H 2500 3650 50  0001 C CNN
	1    2500 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 5CF55A42
P 2500 1850
AR Path="/5CF55A42" Ref="#PWR?"  Part="1" 
AR Path="/5CF42726/5CF55A42" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 2500 1700 50  0001 C CNN
F 1 "+15V" H 2515 2023 50  0000 C CNN
F 2 "" H 2500 1850 50  0001 C CNN
F 3 "" H 2500 1850 50  0001 C CNN
	1    2500 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 5CF55A48
P 2500 2600
AR Path="/5CF55A48" Ref="#PWR?"  Part="1" 
AR Path="/5CF42726/5CF55A48" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 2500 2450 50  0001 C CNN
F 1 "+15V" H 2515 2773 50  0000 C CNN
F 2 "" H 2500 2600 50  0001 C CNN
F 3 "" H 2500 2600 50  0001 C CNN
	1    2500 2600
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR?
U 1 1 5CF55A4E
P 2500 2150
AR Path="/5CF55A4E" Ref="#PWR?"  Part="1" 
AR Path="/5CF42726/5CF55A4E" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 2500 2250 50  0001 C CNN
F 1 "-15V" H 2515 2323 50  0000 C CNN
F 2 "" H 2500 2150 50  0001 C CNN
F 3 "" H 2500 2150 50  0001 C CNN
	1    2500 2150
	-1   0    0    1   
$EndComp
$Comp
L power:-15V #PWR?
U 1 1 5CF55A54
P 2500 2900
AR Path="/5CF55A54" Ref="#PWR?"  Part="1" 
AR Path="/5CF42726/5CF55A54" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 2500 3000 50  0001 C CNN
F 1 "-15V" H 2515 3073 50  0000 C CNN
F 2 "" H 2500 2900 50  0001 C CNN
F 3 "" H 2500 2900 50  0001 C CNN
	1    2500 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 2000 2650 2000
Wire Wire Line
	3050 2750 2650 2750
$Comp
L power:GND #PWR?
U 1 1 5CF55A5C
P 2700 4850
AR Path="/5CF55A5C" Ref="#PWR?"  Part="1" 
AR Path="/5CF42726/5CF55A5C" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 2700 4600 50  0001 C CNN
F 1 "GND" H 2705 4677 50  0000 C CNN
F 2 "" H 2700 4850 50  0001 C CNN
F 3 "" H 2700 4850 50  0001 C CNN
	1    2700 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3250 2500 3250
Wire Wire Line
	2500 3250 2500 3350
$Comp
L Device:C C?
U 1 1 5CF55A64
P 2700 4400
AR Path="/5CF55A64" Ref="C?"  Part="1" 
AR Path="/5CF42726/5CF55A64" Ref="C1"  Part="1" 
F 0 "C1" V 2448 4400 50  0000 C CNN
F 1 "0.22u" V 2539 4400 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 2738 4250 50  0001 C CNN
F 3 "~" H 2700 4400 50  0001 C CNN
	1    2700 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5CF55A6A
P 2500 5900
AR Path="/5CF55A6A" Ref="RV?"  Part="1" 
AR Path="/5CF42726/5CF55A6A" Ref="RV4"  Part="1" 
F 0 "RV4" H 2430 5946 50  0000 R CNN
F 1 "100k" H 2430 5855 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2500 5900 50  0001 C CNN
F 3 "~" H 2500 5900 50  0001 C CNN
	1    2500 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 5CF55A70
P 2500 5750
AR Path="/5CF55A70" Ref="#PWR?"  Part="1" 
AR Path="/5CF42726/5CF55A70" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 2500 5600 50  0001 C CNN
F 1 "+15V" H 2515 5923 50  0000 C CNN
F 2 "" H 2500 5750 50  0001 C CNN
F 3 "" H 2500 5750 50  0001 C CNN
	1    2500 5750
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR?
U 1 1 5CF55A76
P 2500 6050
AR Path="/5CF55A76" Ref="#PWR?"  Part="1" 
AR Path="/5CF42726/5CF55A76" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 2500 6150 50  0001 C CNN
F 1 "-15V" H 2515 6223 50  0000 C CNN
F 2 "" H 2500 6050 50  0001 C CNN
F 3 "" H 2500 6050 50  0001 C CNN
	1    2500 6050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 5900 3050 5900
Wire Wire Line
	2500 1550 3050 1550
Wire Wire Line
	2500 5400 3050 5400
Text Notes 2000 2150 1    50   ~ 0
Coarse
Text Notes 2000 2850 1    50   ~ 0
FINE
Text Notes 2000 4750 1    50   ~ 0
FM
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5CF55A82
P 2300 1550
AR Path="/5CF55A82" Ref="J?"  Part="1" 
AR Path="/5CF42726/5CF55A82" Ref="J3"  Part="1" 
F 0 "J3" H 2192 1325 50  0000 C CNN
F 1 "CV (1V/OCT)" H 2192 1416 50  0000 C CNN
F 2 "Connector:Banana_Jack_1Pin" H 2300 1550 50  0001 C CNN
F 3 "~" H 2300 1550 50  0001 C CNN
	1    2300 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 3500 2650 3500
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5CF55A89
P 2100 3250
AR Path="/5CF55A89" Ref="J?"  Part="1" 
AR Path="/5CF42726/5CF55A89" Ref="J1"  Part="1" 
F 0 "J1" H 1992 3025 50  0000 C CNN
F 1 "EXP FM" H 1992 3116 50  0000 C CNN
F 2 "Connector:Banana_Jack_1Pin" H 2100 3250 50  0001 C CNN
F 3 "~" H 2100 3250 50  0001 C CNN
	1    2100 3250
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5CF55A8F
P 2100 4200
AR Path="/5CF55A8F" Ref="J?"  Part="1" 
AR Path="/5CF42726/5CF55A8F" Ref="J2"  Part="1" 
F 0 "J2" H 1992 3975 50  0000 C CNN
F 1 "LIN FM" H 1992 4066 50  0000 C CNN
F 2 "Connector:Banana_Jack_1Pin" H 2100 4200 50  0001 C CNN
F 3 "~" H 2100 4200 50  0001 C CNN
	1    2100 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2300 4200 2700 4200
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5CF55A96
P 2300 5400
AR Path="/5CF55A96" Ref="J?"  Part="1" 
AR Path="/5CF42726/5CF55A96" Ref="J4"  Part="1" 
F 0 "J4" H 2192 5175 50  0000 C CNN
F 1 "PWM" H 2192 5266 50  0000 C CNN
F 2 "Connector:Banana_Jack_1Pin" H 2300 5400 50  0001 C CNN
F 3 "~" H 2300 5400 50  0001 C CNN
	1    2300 5400
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5CFA31E0
P 6150 2400
AR Path="/5CFA31E0" Ref="J?"  Part="1" 
AR Path="/5CF42726/5CFA31E0" Ref="J5"  Part="1" 
F 0 "J5" H 6178 2426 50  0000 L CNN
F 1 "Triangle" H 6178 2335 50  0000 L CNN
F 2 "Connector:Banana_Jack_1Pin" H 6150 2400 50  0001 C CNN
F 3 "~" H 6150 2400 50  0001 C CNN
	1    6150 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5CFA31E6
P 6150 3250
AR Path="/5CFA31E6" Ref="J?"  Part="1" 
AR Path="/5CF42726/5CFA31E6" Ref="J6"  Part="1" 
F 0 "J6" H 6178 3276 50  0000 L CNN
F 1 "Sine" H 6178 3185 50  0000 L CNN
F 2 "Connector:Banana_Jack_1Pin" H 6150 3250 50  0001 C CNN
F 3 "~" H 6150 3250 50  0001 C CNN
	1    6150 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5CFA31EC
P 6150 5000
AR Path="/5CFA31EC" Ref="J?"  Part="1" 
AR Path="/5CF42726/5CFA31EC" Ref="J7"  Part="1" 
F 0 "J7" H 6178 5026 50  0000 L CNN
F 1 "Pulse" H 6178 4935 50  0000 L CNN
F 2 "Connector:Banana_Jack_1Pin" H 6150 5000 50  0001 C CNN
F 3 "~" H 6150 5000 50  0001 C CNN
	1    6150 5000
	1    0    0    -1  
$EndComp
Text GLabel 6200 2700 2    50   Input ~ 0
Triangle
Text GLabel 6200 3650 2    50   Input ~ 0
Sine
$Comp
L Connector:Conn_01x10_Female J?
U 1 1 5CEB0CC0
P 4700 3950
AR Path="/5CEB0CC0" Ref="J?"  Part="1" 
AR Path="/5CFCA4E3/5CEB0CC0" Ref="J?"  Part="1" 
AR Path="/5CF42726/5CEB0CC0" Ref="J10"  Part="1" 
F 0 "J10" H 4728 3926 50  0000 L CNN
F 1 "con" H 4728 3835 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 4700 3950 50  0001 C CNN
F 3 "~" H 4700 3950 50  0001 C CNN
	1    4700 3950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
