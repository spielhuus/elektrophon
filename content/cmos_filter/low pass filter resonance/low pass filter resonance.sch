EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 4100 2700 0    50   Input ~ 0
IN
Wire Wire Line
	4100 2700 4250 2700
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 5FE89B5F
P 6650 6000
F 0 "J1" H 6678 5976 50  0000 L CNN
F 1 "Conn_01x02_Female" H 6678 5885 50  0000 L CNN
F 2 "" H 6650 6000 50  0001 C CNN
F 3 "~" H 6650 6000 50  0001 C CNN
F 4 "J" H 6650 6000 50  0001 C CNN "Spice_Primitive"
F 5 "Conn_01x02_Female" H 6650 6000 50  0001 C CNN "Spice_Model"
F 6 "N" H 6650 6000 50  0001 C CNN "Spice_Netlist_Enabled"
	1    6650 6000
	1    0    0    -1  
$EndComp
Text GLabel 6450 6100 0    50   Input ~ 0
OUT
Text GLabel 6450 6000 0    50   Input ~ 0
IN
$Comp
L 4xxx:4069 U1
U 1 1 5FEA3AA0
P 5150 2700
F 0 "U1" H 5150 3017 50  0000 C CNN
F 1 "4069" H 5150 2926 50  0000 C CNN
F 2 "" H 5150 2700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 5150 2700 50  0001 C CNN
F 4 "X" H 5150 2700 50  0001 C CNN "Spice_Primitive"
F 5 "4069UB" H 5150 2700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5150 2700 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "1 2 14 7" H 5150 2700 50  0001 C CNN "Spice_Node_Sequence"
	1    5150 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FEA3AA6
P 5150 2200
F 0 "R2" V 4943 2200 50  0000 C CNN
F 1 "10k" V 5034 2200 50  0000 C CNN
F 2 "" V 5080 2200 50  0001 C CNN
F 3 "~" H 5150 2200 50  0001 C CNN
	1    5150 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 2700 4750 2200
Wire Wire Line
	4750 2700 4850 2700
Wire Wire Line
	5550 2700 5450 2700
Wire Wire Line
	5550 2700 5650 2700
Connection ~ 5550 2700
Wire Wire Line
	5550 2200 5300 2200
Wire Wire Line
	5000 2200 4750 2200
Wire Wire Line
	5550 2200 5550 2700
Connection ~ 4750 2700
Wire Wire Line
	4550 2700 4750 2700
$Comp
L Device:R R3
U 1 1 5FEA462C
P 5800 2700
F 0 "R3" V 5593 2700 50  0000 C CNN
F 1 "20k" V 5684 2700 50  0000 C CNN
F 2 "" V 5730 2700 50  0001 C CNN
F 3 "~" H 5800 2700 50  0001 C CNN
	1    5800 2700
	0    1    1    0   
$EndComp
$Comp
L 4xxx:4069 U2
U 1 1 5FEA76A3
P 6550 2700
F 0 "U2" H 6550 3017 50  0000 C CNN
F 1 "4069" H 6550 2926 50  0000 C CNN
F 2 "" H 6550 2700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 6550 2700 50  0001 C CNN
F 4 "X" H 6550 2700 50  0001 C CNN "Spice_Primitive"
F 5 "4069UB" H 6550 2700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6550 2700 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "1 2 14 7" H 6550 2700 50  0001 C CNN "Spice_Node_Sequence"
	1    6550 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2700 6150 2200
Wire Wire Line
	6150 2700 6250 2700
Wire Wire Line
	6950 2700 6850 2700
Wire Wire Line
	6950 2200 6700 2200
Wire Wire Line
	6400 2200 6150 2200
Wire Wire Line
	6950 2200 6950 2700
Connection ~ 6150 2700
Wire Wire Line
	5950 2700 6150 2700
$Comp
L 4xxx:4069 U3
U 1 1 5FE85ABA
P 7850 2700
F 0 "U3" H 7850 3017 50  0000 C CNN
F 1 "4069" H 7850 2926 50  0000 C CNN
F 2 "" H 7850 2700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 7850 2700 50  0001 C CNN
F 4 "X" H 7850 2700 50  0001 C CNN "Spice_Primitive"
F 5 "4069UB" H 7850 2700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7850 2700 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "1 2 14 7" H 7850 2700 50  0001 C CNN "Spice_Node_Sequence"
	1    7850 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2700 7400 2700
$Comp
L Device:C C2
U 1 1 5FEADD42
P 7850 2200
F 0 "C2" V 7598 2200 50  0000 C CNN
F 1 "0.01u" V 7689 2200 50  0000 C CNN
F 2 "" H 7888 2050 50  0001 C CNN
F 3 "~" H 7850 2200 50  0001 C CNN
	1    7850 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 2700 8150 2700
Connection ~ 7400 2700
Wire Wire Line
	8200 2700 8200 2200
$Comp
L Device:R_POT RV1
U 1 1 5FEB870F
P 6150 3400
F 0 "RV1" V 6035 3400 50  0000 C CNN
F 1 "100k" V 5944 3400 50  0000 C CNN
F 2 "" H 6150 3400 50  0001 C CNN
F 3 "~" H 6150 3400 50  0001 C CNN
F 4 "X" H 6150 3400 50  0001 C CNN "Spice_Primitive"
F 5 "voltage_divider_1" H 6150 3400 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6150 3400 50  0001 C CNN "Spice_Netlist_Enabled"
	1    6150 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 3250 6150 3150
NoConn ~ 6000 3400
Wire Wire Line
	6300 3400 8200 3400
$Comp
L 4xxx:4069 U3
U 7 1 5FEBC2C5
P 4700 6450
F 0 "U3" H 4930 6496 50  0000 L CNN
F 1 "4069" H 4930 6405 50  0000 L CNN
F 2 "" H 4700 6450 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 4700 6450 50  0001 C CNN
F 4 "X" H 4700 6450 50  0001 C CNN "Spice_Primitive"
F 5 "4069UB" H 4700 6450 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4700 6450 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "1 2 14 7" H 4700 6450 50  0001 C CNN "Spice_Node_Sequence"
	7    4700 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5FEBC2CB
P 4700 6950
F 0 "#PWR06" H 4700 6700 50  0001 C CNN
F 1 "GND" H 4705 6777 50  0000 C CNN
F 2 "" H 4700 6950 50  0001 C CNN
F 3 "" H 4700 6950 50  0001 C CNN
	1    4700 6950
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U2
U 7 1 5FEBE477
P 3850 6450
F 0 "U2" H 4080 6496 50  0000 L CNN
F 1 "4069" H 4080 6405 50  0000 L CNN
F 2 "" H 3850 6450 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 3850 6450 50  0001 C CNN
F 4 "X" H 3850 6450 50  0001 C CNN "Spice_Primitive"
F 5 "4069UB" H 3850 6450 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3850 6450 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "1 2 14 7" H 3850 6450 50  0001 C CNN "Spice_Node_Sequence"
	7    3850 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FEBE47D
P 3850 6950
F 0 "#PWR04" H 3850 6700 50  0001 C CNN
F 1 "GND" H 3855 6777 50  0000 C CNN
F 2 "" H 3850 6950 50  0001 C CNN
F 3 "" H 3850 6950 50  0001 C CNN
	1    3850 6950
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U1
U 7 1 5FEBFAA8
P 2950 6450
F 0 "U1" H 3180 6496 50  0000 L CNN
F 1 "4069" H 3180 6405 50  0000 L CNN
F 2 "" H 2950 6450 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 2950 6450 50  0001 C CNN
F 4 "X" H 2950 6450 50  0001 C CNN "Spice_Primitive"
F 5 "4069UB" H 2950 6450 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2950 6450 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "1 2 14 7" H 2950 6450 50  0001 C CNN "Spice_Node_Sequence"
	7    2950 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5FEBFAAE
P 2950 6950
F 0 "#PWR02" H 2950 6700 50  0001 C CNN
F 1 "GND" H 2955 6777 50  0000 C CNN
F 2 "" H 2950 6950 50  0001 C CNN
F 3 "" H 2950 6950 50  0001 C CNN
	1    2950 6950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 5FEC0EC3
P 4700 5950
F 0 "#PWR05" H 4700 5800 50  0001 C CNN
F 1 "+5V" H 4715 6123 50  0000 C CNN
F 2 "" H 4700 5950 50  0001 C CNN
F 3 "" H 4700 5950 50  0001 C CNN
	1    4700 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5FEC13C8
P 3850 5950
F 0 "#PWR03" H 3850 5800 50  0001 C CNN
F 1 "+5V" H 3865 6123 50  0000 C CNN
F 2 "" H 3850 5950 50  0001 C CNN
F 3 "" H 3850 5950 50  0001 C CNN
	1    3850 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5FEC1964
P 2950 5950
F 0 "#PWR01" H 2950 5800 50  0001 C CNN
F 1 "+5V" H 2965 6123 50  0000 C CNN
F 2 "" H 2950 5950 50  0001 C CNN
F 3 "" H 2950 5950 50  0001 C CNN
	1    2950 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FE9FE69
P 4400 2700
F 0 "R1" V 4193 2700 50  0000 C CNN
F 1 "10k" V 4284 2700 50  0000 C CNN
F 2 "" V 4330 2700 50  0001 C CNN
F 3 "~" H 4400 2700 50  0001 C CNN
	1    4400 2700
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5FEA0192
P 6550 2200
F 0 "C1" V 6298 2200 50  0000 C CNN
F 1 "0.1u" V 6389 2200 50  0000 C CNN
F 2 "" H 6588 2050 50  0001 C CNN
F 3 "~" H 6550 2200 50  0001 C CNN
	1    6550 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5FEA0981
P 7200 2700
F 0 "R5" V 6993 2700 50  0000 C CNN
F 1 "20k" V 7084 2700 50  0000 C CNN
F 2 "" V 7130 2700 50  0001 C CNN
F 3 "~" H 7200 2700 50  0001 C CNN
	1    7200 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 2700 7400 2700
Wire Wire Line
	6950 2700 7050 2700
Connection ~ 6950 2700
Wire Wire Line
	8200 2200 8000 2200
Wire Wire Line
	7400 2200 7400 2700
Wire Wire Line
	7700 2200 7400 2200
Wire Wire Line
	8200 2700 8200 3400
Connection ~ 8200 2700
$Comp
L Device:R R4
U 1 1 5FEA60FC
P 6150 3000
F 0 "R4" V 5943 3000 50  0000 C CNN
F 1 "6.8k" V 6034 3000 50  0000 C CNN
F 2 "" V 6080 3000 50  0001 C CNN
F 3 "~" H 6150 3000 50  0001 C CNN
	1    6150 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 2850 6150 2700
Wire Wire Line
	8200 2700 8300 2700
Text GLabel 8300 2700 2    50   Input ~ 0
OUT
$Comp
L RF_Module:ESP32-S2-WROVER U4
U 1 1 5FF30068
P 10350 4250
F 0 "U4" H 10350 5631 50  0000 C CNN
F 1 "ESP32-S2-WROVER" H 10350 5540 50  0000 C CNN
F 2 "RF_Module:ESP32-S2-WROVER" H 11100 3100 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-s2-wroom_esp32-s2-wroom-i_datasheet_en.pdf" H 10050 3450 50  0001 C CNN
	1    10350 4250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
