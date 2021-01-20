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
P 4900 1750
F 0 "R2" V 4693 1750 50  0000 C CNN
F 1 "100k" V 4784 1750 50  0000 C CNN
F 2 "" V 4830 1750 50  0001 C CNN
F 3 "~" H 4900 1750 50  0001 C CNN
	1    4900 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 1750 4650 1750
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
F 1 "200k" V 4284 2700 50  0000 C CNN
F 2 "" V 4330 2700 50  0001 C CNN
F 3 "~" H 4400 2700 50  0001 C CNN
	1    4400 2700
	0    1    1    0   
$EndComp
Text GLabel 5650 2700 2    50   Input ~ 0
OUT
Wire Wire Line
	4550 2700 4650 2700
Wire Wire Line
	5450 2700 5650 2700
$Comp
L Device:R R3
U 1 1 5FEA127A
P 5400 1750
F 0 "R3" V 5193 1750 50  0000 C CNN
F 1 "100k" V 5284 1750 50  0000 C CNN
F 2 "" V 5330 1750 50  0001 C CNN
F 3 "~" H 5400 1750 50  0001 C CNN
	1    5400 1750
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5FEA164E
P 5150 2000
F 0 "C1" V 4898 2000 50  0000 C CNN
F 1 "0.01u" V 4989 2000 50  0000 C CNN
F 2 "" H 5188 1850 50  0001 C CNN
F 3 "~" H 5150 2000 50  0001 C CNN
	1    5150 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 1750 4650 2700
Connection ~ 4650 2700
Wire Wire Line
	4650 2700 4850 2700
Wire Wire Line
	5050 1750 5150 1750
Wire Wire Line
	5650 1750 5650 2700
Wire Wire Line
	5550 1750 5650 1750
Wire Wire Line
	5150 1850 5150 1750
Connection ~ 5150 1750
Wire Wire Line
	5150 1750 5250 1750
$Comp
L power:GND #PWR03
U 1 1 5FEA3C59
P 5150 2150
F 0 "#PWR03" H 5150 1900 50  0001 C CNN
F 1 "GND" H 5155 1977 50  0000 C CNN
F 2 "" H 5150 2150 50  0001 C CNN
F 3 "" H 5150 2150 50  0001 C CNN
	1    5150 2150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
