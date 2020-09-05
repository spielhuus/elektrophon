EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "differential pair amplifier analysis"
Date "2020-08-15"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
$Comp
L Device:R R2
U 1 1 5F0547AE
P 5550 2700
F 0 "R2" H 5480 2654 50  0000 R CNN
F 1 "33k" H 5480 2745 50  0000 R CNN
F 2 "" V 5480 2700 50  0001 C CNN
F 3 "~" H 5550 2700 50  0001 C CNN
	1    5550 2700
	-1   0    0    1   
$EndComp
$Comp
L power:-15V #PWR09
U 1 1 5F04C7B3
P 5550 3350
F 0 "#PWR09" H 5550 3450 50  0001 C CNN
F 1 "-15V" H 5565 3523 50  0000 C CNN
F 2 "" H 5550 3350 50  0001 C CNN
F 3 "" H 5550 3350 50  0001 C CNN
	1    5550 3350
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR010
U 1 1 5F042C4A
P 5950 1500
F 0 "#PWR010" H 5950 1350 50  0001 C CNN
F 1 "+15V" V 5965 1628 50  0000 L CNN
F 2 "" H 5950 1500 50  0001 C CNN
F 3 "" H 5950 1500 50  0001 C CNN
	1    5950 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR08
U 1 1 5F040C90
P 5200 1500
F 0 "#PWR08" H 5200 1350 50  0001 C CNN
F 1 "+15V" V 5215 1628 50  0000 L CNN
F 2 "" H 5200 1500 50  0001 C CNN
F 3 "" H 5200 1500 50  0001 C CNN
	1    5200 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5F03EDB8
P 5950 1650
F 0 "R4" H 5880 1604 50  0000 R CNN
F 1 "15k" H 5880 1695 50  0000 R CNN
F 2 "" V 5880 1650 50  0001 C CNN
F 3 "~" H 5950 1650 50  0001 C CNN
	1    5950 1650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5F03E94B
P 5200 1650
F 0 "R1" H 5130 1604 50  0000 R CNN
F 1 "15k" H 5130 1695 50  0000 R CNN
F 2 "" V 5130 1650 50  0001 C CNN
F 3 "~" H 5200 1650 50  0001 C CNN
	1    5200 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 2200 6300 2250
Wire Wire Line
	6250 2200 6300 2200
$Comp
L power:GND #PWR011
U 1 1 5F03B9D5
P 6300 2250
F 0 "#PWR011" H 6300 2000 50  0001 C CNN
F 1 "GND" H 6305 2077 50  0000 C CNN
F 2 "" H 6300 2250 50  0001 C CNN
F 3 "" H 6300 2250 50  0001 C CNN
	1    6300 2250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q3
U 1 1 5F03A84E
P 6050 2200
F 0 "Q3" H 6241 2246 50  0000 L CNN
F 1 "BC547" H 6241 2155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6250 2125 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6050 2200 50  0001 L CNN
F 4 "Q" H 6050 2200 50  0001 C CNN "Spice_Primitive"
F 5 "BC547B" H 6050 2200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6050 2200 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/BC547.mod" H 6050 2200 50  0001 C CNN "Spice_Lib_File"
	1    6050 2200
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q2
U 1 1 5F03A26E
P 5100 2200
F 0 "Q2" H 5291 2246 50  0000 L CNN
F 1 "BC547" H 5291 2155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5300 2125 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 5100 2200 50  0001 L CNN
F 4 "Q" H 5100 2200 50  0001 C CNN "Spice_Primitive"
F 5 "BC547B" H 5100 2200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5100 2200 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/BC547.mod" H 5100 2200 50  0001 C CNN "Spice_Lib_File"
	1    5100 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F199C2B
P 5550 3150
F 0 "R3" H 5480 3104 50  0000 R CNN
F 1 "15k" H 5480 3195 50  0000 R CNN
F 2 "" V 5480 3150 50  0001 C CNN
F 3 "~" H 5550 3150 50  0001 C CNN
	1    5550 3150
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 5F19A118
P 4900 3150
F 0 "Q1" H 5091 3196 50  0000 L CNN
F 1 "BC547" H 5091 3105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5100 3075 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4900 3150 50  0001 L CNN
F 4 "Q" H 4900 3150 50  0001 C CNN "Spice_Primitive"
F 5 "BC547B" H 4900 3150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4900 3150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/BC547.mod" H 4900 3150 50  0001 C CNN "Spice_Lib_File"
	1    4900 3150
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5F1A8CF9
P 5000 3350
F 0 "#PWR07" H 5000 3100 50  0001 C CNN
F 1 "GND" H 5005 3177 50  0000 C CNN
F 2 "" H 5000 3350 50  0001 C CNN
F 3 "" H 5000 3350 50  0001 C CNN
	1    5000 3350
	1    0    0    -1  
$EndComp
Text GLabel 5200 1900 2    50   Input ~ 0
Vout_a
Text GLabel 5950 1900 0    50   Input ~ 0
Vout_b
Text GLabel 4900 2200 0    50   Input ~ 0
Vin_a
Text GLabel 4700 3150 0    50   Input ~ 0
Vin_b
Wire Wire Line
	5200 2400 5200 2500
Wire Wire Line
	5950 2400 5950 2500
Wire Wire Line
	5200 2500 5550 2500
Wire Wire Line
	5550 2900 5000 2900
Wire Wire Line
	5000 2900 5000 2950
Wire Wire Line
	5550 2850 5550 2900
Connection ~ 5550 2900
Wire Wire Line
	5550 2550 5550 2500
Connection ~ 5550 2500
Wire Wire Line
	5550 2500 5950 2500
Wire Wire Line
	5550 3300 5550 3350
Wire Wire Line
	5550 2900 5550 3000
Wire Wire Line
	5200 1800 5200 2000
Wire Wire Line
	5950 1800 5950 2000
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 5F52BDBF
P 8350 2050
F 0 "J1" H 8458 2331 50  0000 C CNN
F 1 "Conn_01x04_Male" H 8458 2240 50  0000 C CNN
F 2 "" H 8350 2050 50  0001 C CNN
F 3 "~" H 8350 2050 50  0001 C CNN
F 4 "J" H 8350 2050 50  0001 C CNN "Spice_Primitive"
F 5 "Conn_01x04_Male" H 8350 2050 50  0001 C CNN "Spice_Model"
F 6 "N" H 8350 2050 50  0001 C CNN "Spice_Netlist_Enabled"
	1    8350 2050
	1    0    0    -1  
$EndComp
Text GLabel 8550 1950 2    50   Input ~ 0
Vin_a
Text GLabel 8550 2050 2    50   Input ~ 0
Vin_b
Text GLabel 8550 2150 2    50   Input ~ 0
Vout_a
Text GLabel 8550 2250 2    50   Input ~ 0
Vout_b
$EndSCHEMATC
