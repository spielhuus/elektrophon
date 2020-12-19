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
L Amplifier_Operational:TL072 U1
U 1 1 5FD9C7EE
P 3600 2900
F 0 "U1" H 3600 2533 50  0000 C CNN
F 1 "TL072" H 3600 2624 50  0000 C CNN
F 2 "" H 3600 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3600 2900 50  0001 C CNN
F 4 "X" H 3600 2900 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 3600 2900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3600 2900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    3600 2900
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 2 1 5FD9D26A
P 5150 3000
F 0 "U1" H 5150 3367 50  0000 C CNN
F 1 "TL072" H 5150 3276 50  0000 C CNN
F 2 "" H 5150 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5150 3000 50  0001 C CNN
F 4 "X" H 5150 3000 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 5150 3000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5150 3000 50  0001 C CNN "Spice_Netlist_Enabled"
	2    5150 3000
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 5FD9E3CF
P 4150 4700
F 0 "U1" H 4108 4746 50  0000 L CNN
F 1 "TL072" H 4108 4655 50  0000 L CNN
F 2 "" H 4150 4700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4150 4700 50  0001 C CNN
F 4 "X" H 4150 4700 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 4150 4700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4150 4700 50  0001 C CNN "Spice_Netlist_Enabled"
	3    4150 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR02
U 1 1 5FD9F910
P 4050 4400
F 0 "#PWR02" H 4050 4250 50  0001 C CNN
F 1 "+15V" H 4065 4573 50  0000 C CNN
F 2 "" H 4050 4400 50  0001 C CNN
F 3 "" H 4050 4400 50  0001 C CNN
	1    4050 4400
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR03
U 1 1 5FDA0EBF
P 4050 5000
F 0 "#PWR03" H 4050 5100 50  0001 C CNN
F 1 "-15V" H 4065 5173 50  0000 C CNN
F 2 "" H 4050 5000 50  0001 C CNN
F 3 "" H 4050 5000 50  0001 C CNN
	1    4050 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 3000 3250 3000
Text GLabel 2950 2800 0    50   Input ~ 0
SAW_IN
$Comp
L Device:R R1
U 1 1 5FDA39E1
P 4150 2350
F 0 "R1" V 3943 2350 50  0000 C CNN
F 1 "100k" V 4034 2350 50  0000 C CNN
F 2 "" V 4080 2350 50  0001 C CNN
F 3 "~" H 4150 2350 50  0001 C CNN
	1    4150 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5FDA41C9
P 4150 2900
F 0 "R2" V 3943 2900 50  0000 C CNN
F 1 "300k" V 4034 2900 50  0000 C CNN
F 2 "" V 4080 2900 50  0001 C CNN
F 3 "~" H 4150 2900 50  0001 C CNN
	1    4150 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 2800 3200 2800
Wire Wire Line
	4000 2350 3200 2350
Wire Wire Line
	3200 2350 3200 2800
Connection ~ 3200 2800
Wire Wire Line
	3200 2800 3300 2800
Wire Wire Line
	3900 2900 4000 2900
Wire Wire Line
	4500 2900 4500 2350
Wire Wire Line
	4500 2350 4300 2350
Wire Wire Line
	4300 2900 4500 2900
$Comp
L Device:R R4
U 1 1 5FDAB0C3
P 5150 3500
F 0 "R4" V 4943 3500 50  0000 C CNN
F 1 "100k" V 5034 3500 50  0000 C CNN
F 2 "" V 5080 3500 50  0001 C CNN
F 3 "~" H 5150 3500 50  0001 C CNN
	1    5150 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 3100 4850 3100
Wire Wire Line
	4850 2900 4500 2900
Connection ~ 4500 2900
Wire Wire Line
	5000 3500 4650 3500
Wire Wire Line
	4650 3500 4650 3100
Wire Wire Line
	5300 3500 5650 3500
Wire Wire Line
	5650 3500 5650 3000
Wire Wire Line
	5650 3000 5450 3000
Text GLabel 5650 3000 2    50   Input ~ 0
OUT
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 5FDB3C2A
P 6900 3250
F 0 "J1" H 6928 3180 50  0000 L CNN
F 1 "Conn_01x04_Female" H 6928 3135 50  0001 L CNN
F 2 "" H 6900 3250 50  0001 C CNN
F 3 "~" H 6900 3250 50  0001 C CNN
F 4 "J" H 6900 3250 50  0001 C CNN "Spice_Primitive"
F 5 "Conn_01x04_Female" H 6900 3250 50  0001 C CNN "Spice_Model"
F 6 "N" H 6900 3250 50  0001 C CNN "Spice_Netlist_Enabled"
	1    6900 3250
	1    0    0    -1  
$EndComp
Text GLabel 6700 3150 0    50   Input ~ 0
SAW_IN
Text GLabel 6700 3250 0    50   Input ~ 0
OUT
NoConn ~ 6700 3450
$Comp
L Device:R R3
U 1 1 5FD9F185
P 4150 3500
F 0 "R3" V 3943 3500 50  0000 C CNN
F 1 "300k" V 4034 3500 50  0000 C CNN
F 2 "" V 4080 3500 50  0001 C CNN
F 3 "~" H 4150 3500 50  0001 C CNN
	1    4150 3500
	0    1    1    0   
$EndComp
Text GLabel 2950 3500 0    50   Input ~ 0
PHASE_SHIFT
Wire Wire Line
	4650 3500 4300 3500
Wire Wire Line
	4000 3500 3250 3500
Connection ~ 4650 3500
Text GLabel 6700 3350 0    50   Input ~ 0
PHASE_SHIFT
Wire Wire Line
	3250 3000 3250 3500
Connection ~ 3250 3500
Wire Wire Line
	3250 3500 2950 3500
$EndSCHEMATC
