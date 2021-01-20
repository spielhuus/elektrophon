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
$Comp
L 4xxx:4069 U1
U 1 1 5FE85ABA
P 5550 2700
F 0 "U1" H 5550 3017 50  0000 C CNN
F 1 "4069" H 5550 2926 50  0000 C CNN
F 2 "" H 5550 2700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 5550 2700 50  0001 C CNN
F 4 "X" H 5550 2700 50  0001 C CNN "Spice_Primitive"
F 5 "4069UB" H 5550 2700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5550 2700 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "1 2 14 7" H 5550 2700 50  0001 C CNN "Spice_Node_Sequence"
	1    5550 2700
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U1
U 7 1 5FE862CE
P 5550 6450
F 0 "U1" H 5780 6496 50  0000 L CNN
F 1 "4069" H 5780 6405 50  0000 L CNN
F 2 "" H 5550 6450 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 5550 6450 50  0001 C CNN
F 4 "X" H 5550 6450 50  0001 C CNN "Spice_Primitive"
F 5 "4069UB" H 5550 6450 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5550 6450 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "1 2 14 7" H 5550 6450 50  0001 C CNN "Spice_Node_Sequence"
	7    5550 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FE86FDE
P 5550 2200
F 0 "R2" V 5343 2200 50  0000 C CNN
F 1 "33k" V 5434 2200 50  0000 C CNN
F 2 "" V 5480 2200 50  0001 C CNN
F 3 "~" H 5550 2200 50  0001 C CNN
	1    5550 2200
	0    1    1    0   
$EndComp
Text GLabel 6050 2700 2    50   Input ~ 0
OUT
Text GLabel 4400 2700 0    50   Input ~ 0
IN
Wire Wire Line
	5150 2700 5150 2200
Connection ~ 5150 2700
Wire Wire Line
	5150 2700 5250 2700
Wire Wire Line
	5950 2700 5850 2700
Wire Wire Line
	5950 2700 6050 2700
Connection ~ 5950 2700
Wire Wire Line
	5950 2200 5700 2200
Wire Wire Line
	5400 2200 5150 2200
Wire Wire Line
	5950 2200 5950 2700
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
L power:GND #PWR02
U 1 1 5FE8A4F1
P 5550 6950
F 0 "#PWR02" H 5550 6700 50  0001 C CNN
F 1 "GND" H 5555 6777 50  0000 C CNN
F 2 "" H 5550 6950 50  0001 C CNN
F 3 "" H 5550 6950 50  0001 C CNN
	1    5550 6950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5FE9AB0C
P 5550 5950
F 0 "#PWR01" H 5550 5800 50  0001 C CNN
F 1 "+5V" H 5565 6123 50  0000 C CNN
F 2 "" H 5550 5950 50  0001 C CNN
F 3 "" H 5550 5950 50  0001 C CNN
	1    5550 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2700 5150 2700
$Comp
L Device:C C1
U 1 1 5FE87B21
P 4950 2700
F 0 "C1" V 4698 2700 50  0000 C CNN
F 1 "47n" V 4789 2700 50  0000 C CNN
F 2 "" H 4988 2550 50  0001 C CNN
F 3 "~" H 4950 2700 50  0001 C CNN
	1    4950 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5FE9C5BD
P 4600 2700
F 0 "R1" V 4393 2700 50  0000 C CNN
F 1 "33k" V 4484 2700 50  0000 C CNN
F 2 "" V 4530 2700 50  0001 C CNN
F 3 "~" H 4600 2700 50  0001 C CNN
	1    4600 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 2700 4450 2700
Wire Wire Line
	4750 2700 4800 2700
$EndSCHEMATC
