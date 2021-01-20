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
L Device:C C1
U 1 1 5FE86A82
P 3750 2950
F 0 "C1" H 3865 2996 50  0000 L CNN
F 1 "1u" H 3865 2905 50  0000 L CNN
F 2 "" H 3788 2800 50  0001 C CNN
F 3 "~" H 3750 2950 50  0001 C CNN
	1    3750 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FE86E1E
P 3450 2700
F 0 "R1" V 3243 2700 50  0000 C CNN
F 1 "1k" V 3334 2700 50  0000 C CNN
F 2 "" V 3380 2700 50  0001 C CNN
F 3 "~" H 3450 2700 50  0001 C CNN
	1    3450 2700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5FE8719E
P 3750 3100
F 0 "#PWR01" H 3750 2850 50  0001 C CNN
F 1 "GND" H 3755 2927 50  0000 C CNN
F 2 "" H 3750 3100 50  0001 C CNN
F 3 "" H 3750 3100 50  0001 C CNN
	1    3750 3100
	1    0    0    -1  
$EndComp
Text GLabel 3200 2700 0    50   Input ~ 0
IN
Text GLabel 4050 2700 2    50   Input ~ 0
OUT
Wire Wire Line
	4050 2700 3750 2700
Wire Wire Line
	3300 2700 3200 2700
Wire Wire Line
	3750 2800 3750 2700
Connection ~ 3750 2700
Wire Wire Line
	3750 2700 3600 2700
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 5FE88584
P 6300 3600
F 0 "J1" H 6328 3576 50  0000 L CNN
F 1 "Conn_01x02_Female" H 6328 3485 50  0000 L CNN
F 2 "" H 6300 3600 50  0001 C CNN
F 3 "~" H 6300 3600 50  0001 C CNN
F 4 "J" H 6300 3600 50  0001 C CNN "Spice_Primitive"
F 5 "Conn_01x02_Female" H 6300 3600 50  0001 C CNN "Spice_Model"
F 6 "N" H 6300 3600 50  0001 C CNN "Spice_Netlist_Enabled"
	1    6300 3600
	1    0    0    -1  
$EndComp
Text GLabel 6100 3700 0    50   Input ~ 0
OUT
Text GLabel 6100 3600 0    50   Input ~ 0
IN
$EndSCHEMATC
