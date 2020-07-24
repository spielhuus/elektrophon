EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "kontrast"
Date "2020-04-24"
Rev "01"
Comp ""
Comment1 "Schema for main circuit"
Comment2 "mixer and attenuverter"
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
$Comp
L power:GND #PWR03
U 1 1 5EA3BC7F
P 3850 1600
F 0 "#PWR03" H 3850 1350 50  0001 C CNN
F 1 "GND" H 3855 1427 50  0000 C CNN
F 2 "" H 3850 1600 50  0001 C CNN
F 3 "" H 3850 1600 50  0001 C CNN
	1    3850 1600
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA2134 U1
U 3 1 5EB7BA39
P 2400 5950
F 0 "U1" H 2358 5996 50  0000 L CNN
F 1 "OPA2134" H 2358 5905 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2400 5950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa134.pdf" H 2400 5950 50  0001 C CNN
	3    2400 5950
	1    0    0    -1  
$EndComp
Text GLabel 3150 1300 0    50   Input ~ 0
INPUT
$Comp
L power:-15V #PWR02
U 1 1 5F1BC1A5
P 2300 6250
AR Path="/5F1BC1A5" Ref="#PWR02"  Part="1" 
AR Path="/5DD3665B/5F1BC1A5" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 2300 6350 50  0001 C CNN
F 1 "-15V" V 2315 6378 50  0000 L CNN
F 2 "" H 2300 6250 50  0001 C CNN
F 3 "" H 2300 6250 50  0001 C CNN
	1    2300 6250
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR0101
U 1 1 5F1C76AC
P 2300 5650
F 0 "#PWR0101" H 2300 5500 50  0001 C CNN
F 1 "+15V" H 2315 5823 50  0000 C CNN
F 2 "" H 2300 5650 50  0001 C CNN
F 3 "" H 2300 5650 50  0001 C CNN
	1    2300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1300 3450 1300
Wire Wire Line
	4350 900  4500 900 
Wire Wire Line
	4050 900  3850 900 
$Comp
L Device:R R2
U 1 1 5EA43020
P 4200 900
F 0 "R2" V 3993 900 50  0000 C CNN
F 1 "50k" V 4084 900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4130 900 50  0001 C CNN
F 3 "~" H 4200 900 50  0001 C CNN
	1    4200 900 
	0    1    1    0   
$EndComp
Text GLabel 4500 1400 2    50   Input ~ 0
OUTPUT
$Comp
L Amplifier_Operational:OPA2134 U1
U 1 1 5EB78EF1
P 4150 1400
F 0 "U1" H 4150 1033 50  0000 C CNN
F 1 "OPA2134" H 4150 1124 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4150 1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa134.pdf" H 4150 1400 50  0001 C CNN
F 4 "X" H 4150 1400 50  0001 C CNN "Spice_Primitive"
F 5 "OPA2134" H 4150 1400 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4150 1400 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/OPA2134.LIB" H 4150 1400 50  0001 C CNN "Spice_Lib_File"
F 8 "3 2 8 4 1" H 4150 1400 50  0001 C CNN "Spice_Node_Sequence"
	1    4150 1400
	1    0    0    1   
$EndComp
Wire Wire Line
	4500 1400 4450 1400
Wire Wire Line
	4500 900  4500 1400
Wire Wire Line
	3850 900  3850 1300
Wire Wire Line
	3850 1600 3850 1500
Connection ~ 3850 1300
Wire Wire Line
	3750 1300 3850 1300
$Comp
L Device:R R1
U 1 1 5EA3C7CD
P 3600 1300
F 0 "R1" V 3393 1300 50  0000 C CNN
F 1 "100k" V 3484 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3530 1300 50  0001 C CNN
F 3 "~" H 3600 1300 50  0001 C CNN
	1    3600 1300
	0    1    1    0   
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5F1883A7
P 2550 2450
F 0 "V?" H 2778 2496 50  0000 L CNN
F 1 "VSOURCE" H 2778 2405 50  0000 L CNN
F 2 "" H 2550 2450 50  0001 C CNN
F 3 "~" H 2550 2450 50  0001 C CNN
	1    2550 2450
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5F188896
P 3500 2450
F 0 "V?" H 3728 2496 50  0000 L CNN
F 1 "VSOURCE" H 3728 2405 50  0000 L CNN
F 2 "" H 3500 2450 50  0001 C CNN
F 3 "~" H 3500 2450 50  0001 C CNN
	1    3500 2450
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5F188E0B
P 4450 2450
F 0 "V?" H 4678 2496 50  0000 L CNN
F 1 "VSOURCE" H 4678 2405 50  0000 L CNN
F 2 "" H 4450 2450 50  0001 C CNN
F 3 "~" H 4450 2450 50  0001 C CNN
	1    4450 2450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
