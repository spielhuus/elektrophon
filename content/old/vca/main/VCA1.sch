EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
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
L Amplifier_Operational:LM13700 U2
U 1 1 6169D753
P 3600 1850
F 0 "U2" H 3600 2217 50  0000 C CNN
F 1 "LM13700" H 3600 2126 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 3300 1875 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 3300 1875 50  0001 C CNN
F 4 "X" H 3600 1850 50  0001 C CNN "Spice_Primitive"
F 5 "LM13700/NS" H 3600 1850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3600 1850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "16 15 14 13 12 6 10 9 11" H 3600 1850 50  0001 C CNN "Spice_Node_Sequence"
	1    3600 1850
	1    0    0    -1  
$EndComp
NoConn ~ 3300 1850
$Comp
L Device:R R48
U 1 1 6169D75A
P 3150 2250
F 0 "R48" H 3220 2296 50  0000 L CNN
F 1 "620" H 3220 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3080 2250 50  0001 C CNN
F 3 "~" H 3150 2250 50  0001 C CNN
	1    3150 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R46
U 1 1 6169D760
P 2850 2250
F 0 "R46" H 2920 2296 50  0000 L CNN
F 1 "620" H 2920 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2780 2250 50  0001 C CNN
F 3 "~" H 2850 2250 50  0001 C CNN
	1    2850 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R45
U 1 1 6169D766
P 2500 1750
F 0 "R45" V 2293 1750 50  0000 C CNN
F 1 "100k" V 2384 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2430 1750 50  0001 C CNN
F 3 "~" H 2500 1750 50  0001 C CNN
	1    2500 1750
	0    1    1    0   
$EndComp
$Comp
L Device:C C17
U 1 1 6169D76C
P 2050 1750
F 0 "C17" V 1798 1750 50  0000 C CNN
F 1 "470n" V 1889 1750 50  0000 C CNN
F 2 "Capacitor_SMD:C_2220_5650Metric" H 2088 1600 50  0001 C CNN
F 3 "~" H 2050 1750 50  0001 C CNN
	1    2050 1750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR086
U 1 1 6169D772
P 2850 2400
F 0 "#PWR086" H 2850 2150 50  0001 C CNN
F 1 "GND" H 2855 2227 50  0000 C CNN
F 2 "" H 2850 2400 50  0001 C CNN
F 3 "" H 2850 2400 50  0001 C CNN
	1    2850 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR087
U 1 1 6169D778
P 3150 2400
F 0 "#PWR087" H 3150 2150 50  0001 C CNN
F 1 "GND" H 3155 2227 50  0000 C CNN
F 2 "" H 3150 2400 50  0001 C CNN
F 3 "" H 3150 2400 50  0001 C CNN
	1    3150 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1750 1900 1750
Wire Wire Line
	2650 1750 2850 1750
Wire Wire Line
	2200 1750 2350 1750
Wire Wire Line
	2850 2100 2850 1750
Connection ~ 2850 1750
Wire Wire Line
	2850 1750 3300 1750
Wire Wire Line
	3150 2100 3150 1950
Wire Wire Line
	3150 1950 3300 1950
$Comp
L Amplifier_Operational:TL072 U4
U 2 1 6169D793
P 4750 1950
F 0 "U4" H 4750 1583 50  0000 C CNN
F 1 "TL072" H 4750 1674 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4750 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4750 1950 50  0001 C CNN
F 4 "X" H 4750 1950 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 4750 1950 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4750 1950 50  0001 C CNN "Spice_Netlist_Enabled"
	2    4750 1950
	1    0    0    1   
$EndComp
$Comp
L Device:R R51
U 1 1 6169D799
P 4800 1450
F 0 "R51" V 4593 1450 50  0000 C CNN
F 1 "18k" V 4684 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4730 1450 50  0001 C CNN
F 3 "~" H 4800 1450 50  0001 C CNN
	1    4800 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 1450 5150 1950
Wire Wire Line
	5150 1950 5050 1950
Wire Wire Line
	4450 1850 4400 1850
$Comp
L power:GND #PWR088
U 1 1 6169D7A2
P 4400 2100
F 0 "#PWR088" H 4400 1850 50  0001 C CNN
F 1 "GND" H 4405 1927 50  0000 C CNN
F 2 "" H 4400 2100 50  0001 C CNN
F 3 "" H 4400 2100 50  0001 C CNN
	1    4400 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2050 4400 2050
Wire Wire Line
	4400 2050 4400 2100
Wire Wire Line
	4400 1850 4400 1450
Connection ~ 4400 1850
Wire Wire Line
	4400 1850 3900 1850
Wire Wire Line
	4400 1450 4650 1450
Wire Wire Line
	4950 1450 5150 1450
Wire Wire Line
	5250 1950 5150 1950
Connection ~ 5150 1950
$Comp
L Device:R R50
U 1 1 6169D7F7
P 4200 2850
F 0 "R50" V 3993 2850 50  0000 C CNN
F 1 "1k" V 4084 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4130 2850 50  0001 C CNN
F 3 "~" H 4200 2850 50  0001 C CNN
	1    4200 2850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR089
U 1 1 6169D820
P 4450 2900
F 0 "#PWR089" H 4450 2650 50  0001 C CNN
F 1 "GND" H 4455 2727 50  0000 C CNN
F 2 "" H 4450 2900 50  0001 C CNN
F 3 "" H 4450 2900 50  0001 C CNN
	1    4450 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2900 4450 2850
Wire Wire Line
	4350 2850 4450 2850
$Comp
L Device:R R49
U 1 1 6169D82B
P 3900 2200
F 0 "R49" H 3970 2246 50  0000 L CNN
F 1 "6.8k" H 3970 2155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3830 2200 50  0001 C CNN
F 3 "~" H 3900 2200 50  0001 C CNN
	1    3900 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1950 3900 2050
Wire Wire Line
	3900 2350 3900 4400
Text HLabel 1800 1750 0    50   Input ~ 0
IN_1
Text HLabel 5250 1950 2    50   Input ~ 0
OUT_1
Text HLabel 1750 4100 0    50   Input ~ 0
CV_1
$Comp
L Transistor_BJT:MMBT3906 Q16
U 1 1 6171ACC1
P 3500 4200
F 0 "Q16" H 3691 4154 50  0000 L CNN
F 1 "MMBT3906" H 3691 4245 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3700 4125 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 3500 4200 50  0001 L CNN
	1    3500 4200
	1    0    0    1   
$EndComp
$Comp
L Diode:1N4148W D31
U 1 1 616F2DE4
P 2950 3250
F 0 "D31" H 2950 3467 50  0000 C CNN
F 1 "1N4148W" H 2950 3376 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 2950 3075 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 2950 3250 50  0001 C CNN
	1    2950 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2850 4050 2850
Wire Wire Line
	3900 4400 3600 4400
Wire Wire Line
	3600 4000 3600 2850
Wire Wire Line
	3300 3650 3300 3250
Connection ~ 3300 3650
Wire Wire Line
	3100 3650 3300 3650
Wire Wire Line
	3100 3250 3300 3250
Wire Wire Line
	3300 4200 3300 3650
Wire Wire Line
	2600 3650 2600 3250
Connection ~ 2600 3650
Wire Wire Line
	2800 3650 2600 3650
Wire Wire Line
	2600 4100 2600 3650
Wire Wire Line
	2600 3250 2600 2850
Connection ~ 2600 3250
Wire Wire Line
	2800 3250 2600 3250
Wire Wire Line
	2600 4100 2200 4100
Connection ~ 2600 4100
Wire Wire Line
	2600 2850 2800 2850
Wire Wire Line
	2600 4300 2650 4300
Wire Wire Line
	2600 4350 2600 4300
$Comp
L power:GND #PWR085
U 1 1 6169D7FF
P 2600 4350
F 0 "#PWR085" H 2600 4100 50  0001 C CNN
F 1 "GND" H 2605 4177 50  0000 C CNN
F 2 "" H 2600 4350 50  0001 C CNN
F 3 "" H 2600 4350 50  0001 C CNN
	1    2600 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4100 1750 4100
Wire Wire Line
	2650 4100 2600 4100
$Comp
L Device:R R47
U 1 1 6169D7F1
P 2950 2850
F 0 "R47" V 2743 2850 50  0000 C CNN
F 1 "33k" V 2834 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2880 2850 50  0001 C CNN
F 3 "~" H 2950 2850 50  0001 C CNN
	1    2950 2850
	0    1    1    0   
$EndComp
$Comp
L Device:C C18
U 1 1 6169D7E1
P 2950 3650
F 0 "C18" V 2698 3650 50  0000 C CNN
F 1 "1n" V 2789 3650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2988 3500 50  0001 C CNN
F 3 "~" H 2950 3650 50  0001 C CNN
	1    2950 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R44
U 1 1 6169D7DB
P 2050 4100
F 0 "R44" V 1843 4100 50  0000 C CNN
F 1 "330k" V 1934 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1980 4100 50  0001 C CNN
F 3 "~" H 2050 4100 50  0001 C CNN
	1    2050 4100
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:TL072 U4
U 1 1 6169D78A
P 2950 4200
F 0 "U4" H 2950 3833 50  0000 C CNN
F 1 "TL072" H 2950 3924 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2950 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2950 4200 50  0001 C CNN
F 4 "X" H 2950 4200 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 2950 4200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2950 4200 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2950 4200
	1    0    0    1   
$EndComp
Wire Wire Line
	3250 4200 3300 4200
Connection ~ 3300 4200
Wire Wire Line
	3100 2850 3600 2850
Connection ~ 3600 2850
$EndSCHEMATC
