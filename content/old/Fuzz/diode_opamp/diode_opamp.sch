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
Text GLabel 4900 3200 2    50   Input ~ 0
OUT
Text GLabel 3050 3100 0    50   Input ~ 0
IN
$Comp
L Device:C C1
U 1 1 5F9F32B7
P 3200 3100
F 0 "C1" V 2948 3100 50  0000 C CNN
F 1 "10u" V 3039 3100 50  0000 C CNN
F 2 "" H 3238 2950 50  0001 C CNN
F 3 "~" H 3200 3100 50  0001 C CNN
	1    3200 3100
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 5F9F99E0
P 6900 3200
F 0 "J1" H 6928 3176 50  0000 L CNN
F 1 "Conn_01x04_Female" H 6928 3085 50  0000 L CNN
F 2 "" H 6900 3200 50  0001 C CNN
F 3 "~" H 6900 3200 50  0001 C CNN
F 4 "J" H 6900 3200 50  0001 C CNN "Spice_Primitive"
F 5 "Conn_01x04_Female" H 6900 3200 50  0001 C CNN "Spice_Model"
F 6 "N" H 6900 3200 50  0001 C CNN "Spice_Netlist_Enabled"
	1    6900 3200
	1    0    0    -1  
$EndComp
NoConn ~ 6700 3300
NoConn ~ 6700 3400
Text GLabel 6700 3100 0    50   Input ~ 0
IN
Text GLabel 6700 3200 0    50   Input ~ 0
OUT
$Comp
L Amplifier_Operational:TL072 U1
U 1 1 5FA06C97
P 4450 3200
F 0 "U1" H 4450 3567 50  0000 C CNN
F 1 "TL072" H 4450 3476 50  0000 C CNN
F 2 "" H 4450 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4450 3200 50  0001 C CNN
F 4 "X" H 4450 3200 50  0001 C CNN "Spice_Primitive"
F 5 "TL072" H 4450 3200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4450 3200 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/opamp/TL072.lib" H 4450 3200 50  0001 C CNN "Spice_Lib_File"
F 8 "2 3 8 4 1" H 4450 3200 50  0001 C CNN "Spice_Node_Sequence"
	1    4450 3200
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 5FA07990
P 5650 4500
F 0 "U1" H 5608 4546 50  0000 L CNN
F 1 "TL072" H 5608 4455 50  0000 L CNN
F 2 "" H 5650 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5650 4500 50  0001 C CNN
F 4 "X" H 5650 4500 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 5650 4500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5650 4500 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/opamp/TL072-dual.lib" H 5650 4500 50  0001 C CNN "Spice_Lib_File"
	3    5650 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5FA0CA01
P 4350 2600
F 0 "C2" V 4098 2600 50  0000 C CNN
F 1 "47p" V 4189 2600 50  0000 C CNN
F 2 "" H 4388 2450 50  0001 C CNN
F 3 "~" H 4350 2600 50  0001 C CNN
	1    4350 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5FA0DFF1
P 4350 2900
F 0 "R2" V 4143 2900 50  0000 C CNN
F 1 "100k" V 4234 2900 50  0000 C CNN
F 2 "" V 4280 2900 50  0001 C CNN
F 3 "~" H 4350 2900 50  0001 C CNN
	1    4350 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 3200 4900 3200
Wire Wire Line
	4500 2600 4900 2600
Wire Wire Line
	4150 3100 3850 3100
Wire Wire Line
	3850 3100 3850 2900
Wire Wire Line
	4200 2600 3850 2600
Wire Wire Line
	4200 2900 3850 2900
Connection ~ 3850 2900
Wire Wire Line
	3850 2900 3850 2600
Wire Wire Line
	4500 2900 4900 2900
Wire Wire Line
	4900 2600 4900 2900
Connection ~ 4900 2900
Wire Wire Line
	4900 2900 4900 3200
Wire Wire Line
	3650 3100 3850 3100
Connection ~ 3850 3100
$Comp
L power:GND #PWR01
U 1 1 5FA1C474
P 4100 3350
F 0 "#PWR01" H 4100 3100 50  0001 C CNN
F 1 "GND" H 4105 3177 50  0000 C CNN
F 2 "" H 4100 3350 50  0001 C CNN
F 3 "" H 4100 3350 50  0001 C CNN
	1    4100 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3300 4100 3300
Wire Wire Line
	4100 3300 4100 3350
$Comp
L power:+15V #PWR02
U 1 1 5FA1EA94
P 5550 4200
F 0 "#PWR02" H 5550 4050 50  0001 C CNN
F 1 "+15V" H 5565 4373 50  0000 C CNN
F 2 "" H 5550 4200 50  0001 C CNN
F 3 "" H 5550 4200 50  0001 C CNN
	1    5550 4200
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR03
U 1 1 5FA2009E
P 5550 4800
F 0 "#PWR03" H 5550 4900 50  0001 C CNN
F 1 "-15V" H 5565 4973 50  0000 C CNN
F 2 "" H 5550 4800 50  0001 C CNN
F 3 "" H 5550 4800 50  0001 C CNN
	1    5550 4800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5FA16E4D
P 3500 3100
F 0 "R1" V 3293 3100 50  0000 C CNN
F 1 "3.3k" V 3384 3100 50  0000 C CNN
F 2 "" V 3430 3100 50  0001 C CNN
F 3 "~" H 3500 3100 50  0001 C CNN
	1    3500 3100
	0    1    1    0   
$EndComp
Connection ~ 4900 2600
Wire Wire Line
	4900 2600 4900 2300
Wire Wire Line
	4900 2300 4850 2300
Connection ~ 3850 2600
Wire Wire Line
	3850 2600 3850 2300
Wire Wire Line
	3950 2300 3850 2300
$Comp
L Diode:1N4148 D6
U 1 1 5FA057EB
P 4700 2300
F 0 "D6" H 4700 2517 50  0000 C CNN
F 1 "1N4148" H 4700 2426 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4700 2125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4700 2300 50  0001 C CNN
F 4 "D" H 4700 2300 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 4700 2300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4700 2300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/diode/1N4148.mod" H 4700 2300 50  0001 C CNN "Spice_Lib_File"
	1    4700 2300
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D4
U 1 1 5FA04CF2
P 4400 2300
F 0 "D4" H 4400 2517 50  0000 C CNN
F 1 "1N4148" H 4400 2426 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4400 2125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4400 2300 50  0001 C CNN
F 4 "D" H 4400 2300 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 4400 2300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4400 2300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/diode/1N4148.mod" H 4400 2300 50  0001 C CNN "Spice_Lib_File"
	1    4400 2300
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D2
U 1 1 5FA03D1E
P 4100 2300
F 0 "D2" H 4100 2517 50  0000 C CNN
F 1 "1N4148" H 4100 2426 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4100 2125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4100 2300 50  0001 C CNN
F 4 "D" H 4100 2300 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 4100 2300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4100 2300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/diode/1N4148.mod" H 4100 2300 50  0001 C CNN "Spice_Lib_File"
	1    4100 2300
	1    0    0    -1  
$EndComp
Connection ~ 3850 2300
Wire Wire Line
	3850 2300 3850 1750
Wire Wire Line
	3850 1750 3950 1750
Connection ~ 4900 2300
Wire Wire Line
	4900 2300 4900 1750
Wire Wire Line
	4900 1750 4850 1750
$Comp
L Diode:1N4148 D1
U 1 1 5FA090FA
P 4100 1750
F 0 "D1" H 4100 1967 50  0000 C CNN
F 1 "1N4148" H 4100 1876 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4100 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4100 1750 50  0001 C CNN
F 4 "D" H 4100 1750 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 4100 1750 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4100 1750 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/diode/1N4148.mod" H 4100 1750 50  0001 C CNN "Spice_Lib_File"
	1    4100 1750
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D3
U 1 1 5FA090F4
P 4400 1750
F 0 "D3" H 4400 1967 50  0000 C CNN
F 1 "1N4148" H 4400 1876 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4400 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4400 1750 50  0001 C CNN
F 4 "D" H 4400 1750 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 4400 1750 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4400 1750 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/diode/1N4148.mod" H 4400 1750 50  0001 C CNN "Spice_Lib_File"
	1    4400 1750
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D5
U 1 1 5FA090EE
P 4700 1750
F 0 "D5" H 4700 1967 50  0000 C CNN
F 1 "1N4148" H 4700 1876 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4700 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4700 1750 50  0001 C CNN
F 4 "D" H 4700 1750 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 4700 1750 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4700 1750 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/diode/1N4148.mod" H 4700 1750 50  0001 C CNN "Spice_Lib_File"
	1    4700 1750
	-1   0    0    1   
$EndComp
$EndSCHEMATC
