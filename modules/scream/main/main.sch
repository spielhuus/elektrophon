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
U 1 1 5FA42081
P 4300 2550
F 0 "U1" H 4300 2867 50  0000 C CNN
F 1 "4069" H 4300 2776 50  0000 C CNN
F 2 "" H 4300 2550 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 4300 2550 50  0001 C CNN
F 4 "X" H 4300 2550 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UB" H 4300 2550 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4300 2550 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "2,1,14,7" H 4300 2550 50  0001 C CNN "Spice_Node_Sequence"
F 8 "/home/etienne/Documents/elektrophon/lib/spice/cmos/CD4069UB.lib" H 4300 2550 50  0001 C CNN "Spice_Lib_File"
	1    4300 2550
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U1
U 7 1 5FA423FC
P 3600 4850
F 0 "U1" H 3830 4896 50  0000 L CNN
F 1 "4069" H 3830 4805 50  0000 L CNN
F 2 "" H 3600 4850 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 3600 4850 50  0001 C CNN
F 4 "X" H 3600 4850 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UB" H 3600 4850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3600 4850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "2,1,14,7" H 3600 4850 50  0001 C CNN "Spice_Node_Sequence"
F 8 "/home/etienne/Documents/elektrophon/lib/spice/cmos/CD4069UB.lib" H 3600 4850 50  0001 C CNN "Spice_Lib_File"
	7    3600 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5FA42984
P 3600 5350
F 0 "#PWR03" H 3600 5100 50  0001 C CNN
F 1 "GND" H 3605 5177 50  0000 C CNN
F 2 "" H 3600 5350 50  0001 C CNN
F 3 "" H 3600 5350 50  0001 C CNN
	1    3600 5350
	1    0    0    -1  
$EndComp
Text GLabel 4750 2550 2    50   Input ~ 0
OUT
$Comp
L power:+5V #PWR02
U 1 1 5FA4508F
P 3600 4350
F 0 "#PWR02" H 3600 4200 50  0001 C CNN
F 1 "+5V" H 3615 4523 50  0000 C CNN
F 2 "" H 3600 4350 50  0001 C CNN
F 3 "" H 3600 4350 50  0001 C CNN
	1    3600 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 5FA49858
P 7300 3000
F 0 "J1" H 7328 2976 50  0000 L CNN
F 1 "Conn_01x02_Female" H 7328 2885 50  0000 L CNN
F 2 "" H 7300 3000 50  0001 C CNN
F 3 "~" H 7300 3000 50  0001 C CNN
F 4 "J" H 7300 3000 50  0001 C CNN "Spice_Primitive"
F 5 "Conn_01x02_Female" H 7300 3000 50  0001 C CNN "Spice_Model"
F 6 "N" H 7300 3000 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7300 3000
	1    0    0    -1  
$EndComp
Text GLabel 7100 3000 0    50   Input ~ 0
OUT
Wire Wire Line
	3900 2550 4000 2550
Text GLabel 7100 3100 0    50   Input ~ 0
IN
Text GLabel 1350 2450 0    50   Input ~ 0
IN
Wire Wire Line
	3900 3050 4350 3050
$Comp
L Device:R R3
U 1 1 5FA5D7EB
P 4500 3050
F 0 "R3" V 4293 3050 50  0000 C CNN
F 1 "1Meg" V 4384 3050 50  0000 C CNN
F 2 "" V 4430 3050 50  0001 C CNN
F 3 "~" H 4500 3050 50  0001 C CNN
	1    4500 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 3050 4700 3050
Wire Wire Line
	3900 3050 3900 2550
Wire Wire Line
	4700 2550 4750 2550
Wire Wire Line
	4600 2550 4700 2550
Connection ~ 4700 2550
Wire Wire Line
	4700 3050 4700 2550
$Comp
L Amplifier_Operational:TL072 U2
U 1 1 5FA6FC71
P 2300 2550
F 0 "U2" H 2300 2183 50  0000 C CNN
F 1 "TL072" H 2300 2274 50  0000 C CNN
F 2 "" H 2300 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2300 2550 50  0001 C CNN
F 4 "X" H 2300 2550 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 2300 2550 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2300 2550 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/opamp/TL072-dual.lib" H 2300 2550 50  0001 C CNN "Spice_Lib_File"
	1    2300 2550
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U2
U 2 1 5FA71A6A
P 2600 3850
F 0 "U2" H 2600 4217 50  0000 C CNN
F 1 "TL072" H 2600 4126 50  0000 C CNN
F 2 "" H 2600 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2600 3850 50  0001 C CNN
F 4 "X" H 2600 3850 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 2600 3850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2600 3850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/opamp/TL072-dual.lib" H 2600 3850 50  0001 C CNN "Spice_Lib_File"
	2    2600 3850
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U2
U 3 1 5FA7314F
P 2500 4900
F 0 "U2" H 2458 4946 50  0000 L CNN
F 1 "TL072" H 2458 4855 50  0000 L CNN
F 2 "" H 2500 4900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2500 4900 50  0001 C CNN
F 4 "X" H 2500 4900 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 2500 4900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2500 4900 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/opamp/TL072-dual.lib" H 2500 4900 50  0001 C CNN "Spice_Lib_File"
	3    2500 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR01
U 1 1 5FA768B8
P 2400 4600
F 0 "#PWR01" H 2400 4450 50  0001 C CNN
F 1 "+15V" H 2415 4773 50  0000 C CNN
F 2 "" H 2400 4600 50  0001 C CNN
F 3 "" H 2400 4600 50  0001 C CNN
	1    2400 4600
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR04
U 1 1 5FA77CF3
P 2400 5200
F 0 "#PWR04" H 2400 5300 50  0001 C CNN
F 1 "-15V" H 2415 5373 50  0000 C CNN
F 2 "" H 2400 5200 50  0001 C CNN
F 3 "" H 2400 5200 50  0001 C CNN
	1    2400 5200
	-1   0    0    1   
$EndComp
NoConn ~ 2300 3750
NoConn ~ 2300 3950
NoConn ~ 2900 3850
$Comp
L power:GND #PWR05
U 1 1 5FA85A70
P 1950 2700
F 0 "#PWR05" H 1950 2450 50  0001 C CNN
F 1 "GND" H 1955 2527 50  0000 C CNN
F 2 "" H 1950 2700 50  0001 C CNN
F 3 "" H 1950 2700 50  0001 C CNN
	1    1950 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2650 1950 2650
Wire Wire Line
	1950 2650 1950 2700
$Comp
L Device:C C1
U 1 1 5FA89AB9
P 1500 2450
F 0 "C1" V 1248 2450 50  0000 C CNN
F 1 "0.22u" V 1339 2450 50  0000 C CNN
F 2 "" H 1538 2300 50  0001 C CNN
F 3 "~" H 1500 2450 50  0001 C CNN
	1    1500 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5FA8A563
P 1800 2450
F 0 "R1" V 1593 2450 50  0000 C CNN
F 1 "100k" V 1684 2450 50  0000 C CNN
F 2 "" V 1730 2450 50  0001 C CNN
F 3 "~" H 1800 2450 50  0001 C CNN
	1    1800 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5FA8AD58
P 2300 2000
F 0 "R2" V 2093 2000 50  0000 C CNN
F 1 "100k" V 2184 2000 50  0000 C CNN
F 2 "" V 2230 2000 50  0001 C CNN
F 3 "~" H 2300 2000 50  0001 C CNN
	1    2300 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 2000 1950 2000
Wire Wire Line
	1950 2000 1950 2450
Wire Wire Line
	2450 2000 2650 2000
Wire Wire Line
	2650 2000 2650 2550
Wire Wire Line
	2650 2550 2600 2550
Connection ~ 3900 2550
Connection ~ 2650 2550
Wire Wire Line
	2000 2450 1950 2450
Connection ~ 1950 2450
Wire Wire Line
	2650 2550 2950 2550
$Comp
L Device:R R4
U 1 1 5FA6A2A0
P 3100 2550
F 0 "R4" V 2893 2550 50  0000 C CNN
F 1 "10k" V 2984 2550 50  0000 C CNN
F 2 "" V 3030 2550 50  0001 C CNN
F 3 "~" H 3100 2550 50  0001 C CNN
	1    3100 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 2550 3400 2550
Wire Wire Line
	3900 2550 3700 2550
$Comp
L Device:C C2
U 1 1 5FA666E6
P 3550 2550
F 0 "C2" V 3298 2550 50  0000 C CNN
F 1 "22n" V 3389 2550 50  0000 C CNN
F 2 "" H 3588 2400 50  0001 C CNN
F 3 "~" H 3550 2550 50  0001 C CNN
	1    3550 2550
	0    1    1    0   
$EndComp
$EndSCHEMATC
