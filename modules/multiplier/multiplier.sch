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
U 1 1 5F3031BF
P 1900 2750
F 0 "U1" H 1900 2383 50  0000 C CNN
F 1 "TL072" H 1900 2474 50  0000 C CNN
F 2 "" H 1900 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1900 2750 50  0001 C CNN
F 4 "X" H 1900 2750 50  0001 C CNN "Spice_Primitive"
F 5 "OPA2134" H 1900 2750 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1900 2750 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/opamp/OPA2134.LIB" H 1900 2750 50  0001 C CNN "Spice_Lib_File"
F 8 "3 2 8 4 1" H 1900 2750 50  0001 C CNN "Spice_Node_Sequence"
	1    1900 2750
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 5F303472
P 1950 4300
F 0 "U1" H 1908 4346 50  0000 L CNN
F 1 "TL072" H 1908 4255 50  0000 L CNN
F 2 "" H 1950 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1950 4300 50  0001 C CNN
	3    1950 4300
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U2
U 1 1 5F309EDB
P 3850 2750
F 0 "U2" H 3850 2383 50  0000 C CNN
F 1 "TL072" H 3850 2474 50  0000 C CNN
F 2 "" H 3850 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3850 2750 50  0001 C CNN
F 4 "X" H 3850 2750 50  0001 C CNN "Spice_Primitive"
F 5 "OPA2134" H 3850 2750 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3850 2750 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/opamp/OPA2134.LIB" H 3850 2750 50  0001 C CNN "Spice_Lib_File"
F 8 "3 2 8 4 1" H 3850 2750 50  0001 C CNN "Spice_Node_Sequence"
	1    3850 2750
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U2
U 3 1 5F309EE1
P 3350 4300
F 0 "U2" H 3308 4346 50  0000 L CNN
F 1 "TL072" H 3308 4255 50  0000 L CNN
F 2 "" H 3350 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3350 4300 50  0001 C CNN
	3    3350 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F30B784
P 1900 2200
F 0 "R1" V 1693 2200 50  0000 C CNN
F 1 "82k" V 1784 2200 50  0000 C CNN
F 2 "" V 1830 2200 50  0001 C CNN
F 3 "~" H 1900 2200 50  0001 C CNN
	1    1900 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 2650 1600 2650
Wire Wire Line
	1750 2200 1450 2200
Wire Wire Line
	1450 2200 1450 2650
Wire Wire Line
	2350 2750 2200 2750
Wire Wire Line
	2050 2200 2350 2200
Connection ~ 2350 2200
Wire Wire Line
	2350 2200 2350 2750
$Comp
L power:GND #PWR01
U 1 1 5F30F494
P 1600 2850
F 0 "#PWR01" H 1600 2600 50  0001 C CNN
F 1 "GND" H 1605 2677 50  0000 C CNN
F 2 "" H 1600 2850 50  0001 C CNN
F 3 "" H 1600 2850 50  0001 C CNN
	1    1600 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F30F943
P 3850 2200
F 0 "R2" V 3643 2200 50  0000 C CNN
F 1 "100k" V 3734 2200 50  0000 C CNN
F 2 "" V 3780 2200 50  0001 C CNN
F 3 "~" H 3850 2200 50  0001 C CNN
	1    3850 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 2200 3450 2200
Wire Wire Line
	3450 2200 3450 2650
Wire Wire Line
	3450 2650 3550 2650
Wire Wire Line
	4000 2200 4250 2200
Wire Wire Line
	4250 2200 4250 2750
Wire Wire Line
	4250 2750 4150 2750
Text GLabel 7950 2750 2    50   Input ~ 0
OUT
Text GLabel 1450 2650 0    50   Input ~ 0
IN
$Comp
L Diode:1N4148 D2
U 1 1 5F31269A
P 3150 3100
F 0 "D2" V 3104 3180 50  0000 L CNN
F 1 "1N4148" V 3195 3180 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3150 2925 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3150 3100 50  0001 C CNN
F 4 "D" H 3150 3100 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 3150 3100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3150 3100 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/diode/1N4148.mod" H 3150 3100 50  0001 C CNN "Spice_Lib_File"
	1    3150 3100
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 5F313819
P 2950 3100
F 0 "D1" V 2996 3020 50  0000 R CNN
F 1 "1N4148" V 2905 3020 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2950 2925 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2950 3100 50  0001 C CNN
F 4 "D" H 2950 3100 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 2950 3100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2950 3100 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/diode/1N4148.mod" H 2950 3100 50  0001 C CNN "Spice_Lib_File"
	1    2950 3100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5F314696
P 3050 3350
F 0 "#PWR04" H 3050 3100 50  0001 C CNN
F 1 "GND" H 3055 3177 50  0000 C CNN
F 2 "" H 3050 3350 50  0001 C CNN
F 3 "" H 3050 3350 50  0001 C CNN
	1    3050 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3250 3050 3350
Wire Wire Line
	2950 3250 3050 3250
Connection ~ 3050 3250
Wire Wire Line
	3050 3250 3150 3250
Wire Wire Line
	2350 2850 2350 2750
Connection ~ 2350 2750
$Comp
L power:-15V #PWR03
U 1 1 5F318BB9
P 1850 4600
F 0 "#PWR03" H 1850 4700 50  0001 C CNN
F 1 "-15V" H 1865 4773 50  0000 C CNN
F 2 "" H 1850 4600 50  0001 C CNN
F 3 "" H 1850 4600 50  0001 C CNN
	1    1850 4600
	-1   0    0    1   
$EndComp
$Comp
L power:-15V #PWR06
U 1 1 5F319101
P 3250 4600
F 0 "#PWR06" H 3250 4700 50  0001 C CNN
F 1 "-15V" H 3265 4773 50  0000 C CNN
F 2 "" H 3250 4600 50  0001 C CNN
F 3 "" H 3250 4600 50  0001 C CNN
	1    3250 4600
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR05
U 1 1 5F3199D4
P 3250 4000
F 0 "#PWR05" H 3250 3850 50  0001 C CNN
F 1 "+15V" H 3265 4173 50  0000 C CNN
F 2 "" H 3250 4000 50  0001 C CNN
F 3 "" H 3250 4000 50  0001 C CNN
	1    3250 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR02
U 1 1 5F31A006
P 1850 4000
F 0 "#PWR02" H 1850 3850 50  0001 C CNN
F 1 "+15V" H 1865 4173 50  0000 C CNN
F 2 "" H 1850 4000 50  0001 C CNN
F 3 "" H 1850 4000 50  0001 C CNN
	1    1850 4000
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V1
U 1 1 5F31B952
P 5300 3900
F 0 "V1" H 5528 3946 50  0000 L CNN
F 1 "15" H 5528 3855 50  0000 L CNN
F 2 "" H 5300 3900 50  0001 C CNN
F 3 "~" H 5300 3900 50  0001 C CNN
	1    5300 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5F31CCF4
P 5300 4200
F 0 "#PWR08" H 5300 3950 50  0001 C CNN
F 1 "GND" H 5305 4027 50  0000 C CNN
F 2 "" H 5300 4200 50  0001 C CNN
F 3 "" H 5300 4200 50  0001 C CNN
	1    5300 4200
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V2
U 1 1 5F321168
P 6350 3900
F 0 "V2" H 6578 3946 50  0000 L CNN
F 1 "-15" H 6578 3855 50  0000 L CNN
F 2 "" H 6350 3900 50  0001 C CNN
F 3 "~" H 6350 3900 50  0001 C CNN
	1    6350 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5F32116E
P 6350 4200
F 0 "#PWR010" H 6350 3950 50  0001 C CNN
F 1 "GND" H 6355 4027 50  0000 C CNN
F 2 "" H 6350 4200 50  0001 C CNN
F 3 "" H 6350 4200 50  0001 C CNN
	1    6350 4200
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V3
U 1 1 5F321BD4
P 7400 3850
F 0 "V3" H 7628 3896 50  0000 L CNN
F 1 "VSOURCE" H 7628 3805 50  0000 L CNN
F 2 "" H 7400 3850 50  0001 C CNN
F 3 "~" H 7400 3850 50  0001 C CNN
F 4 "V" H 7400 3850 50  0001 C CNN "Spice_Primitive"
F 5 "sin(0 1 1k)" H 7400 3850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7400 3850 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7400 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5F321BDA
P 7400 4150
F 0 "#PWR011" H 7400 3900 50  0001 C CNN
F 1 "GND" H 7405 3977 50  0000 C CNN
F 2 "" H 7400 4150 50  0001 C CNN
F 3 "" H 7400 4150 50  0001 C CNN
	1    7400 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR07
U 1 1 5F322579
P 5300 3600
F 0 "#PWR07" H 5300 3450 50  0001 C CNN
F 1 "+15V" H 5315 3773 50  0000 C CNN
F 2 "" H 5300 3600 50  0001 C CNN
F 3 "" H 5300 3600 50  0001 C CNN
	1    5300 3600
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR09
U 1 1 5F322FC7
P 6350 3600
F 0 "#PWR09" H 6350 3700 50  0001 C CNN
F 1 "-15V" H 6365 3773 50  0000 C CNN
F 2 "" H 6350 3600 50  0001 C CNN
F 3 "" H 6350 3600 50  0001 C CNN
	1    6350 3600
	1    0    0    -1  
$EndComp
Text GLabel 7400 3550 1    50   Input ~ 0
IN
Text Notes 4150 4950 0    50   ~ 0
.tran 1u 2m\n
$Comp
L Device:R R4
U 1 1 5F330854
P 2650 2200
F 0 "R4" V 2443 2200 50  0000 C CNN
F 1 "100k" V 2534 2200 50  0000 C CNN
F 2 "" V 2580 2200 50  0001 C CNN
F 3 "~" H 2650 2200 50  0001 C CNN
	1    2650 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 2200 2350 2200
Connection ~ 3450 2200
$Comp
L Device:R R3
U 1 1 5F342B64
P 2600 2850
F 0 "R3" V 2393 2850 50  0000 C CNN
F 1 "33k" V 2484 2850 50  0000 C CNN
F 2 "" V 2530 2850 50  0001 C CNN
F 3 "~" H 2600 2850 50  0001 C CNN
	1    2600 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 2850 2450 2850
Wire Wire Line
	2750 2850 2950 2850
Wire Wire Line
	3150 2950 3150 2850
Connection ~ 3150 2850
Wire Wire Line
	3150 2850 3550 2850
Wire Wire Line
	2950 2950 2950 2850
Connection ~ 2950 2850
Wire Wire Line
	2950 2850 3150 2850
Wire Wire Line
	2800 2200 3450 2200
$Comp
L Amplifier_Operational:TL072 U3
U 1 1 5F36287F
P 5700 2750
F 0 "U3" H 5700 2383 50  0000 C CNN
F 1 "TL072" H 5700 2474 50  0000 C CNN
F 2 "" H 5700 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5700 2750 50  0001 C CNN
F 4 "X" H 5700 2750 50  0001 C CNN "Spice_Primitive"
F 5 "OPA2134" H 5700 2750 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5700 2750 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/opamp/OPA2134.LIB" H 5700 2750 50  0001 C CNN "Spice_Lib_File"
F 8 "3 2 8 4 1" H 5700 2750 50  0001 C CNN "Spice_Node_Sequence"
	1    5700 2750
	1    0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5F362885
P 5700 2200
F 0 "R7" V 5493 2200 50  0000 C CNN
F 1 "100k" V 5584 2200 50  0000 C CNN
F 2 "" V 5630 2200 50  0001 C CNN
F 3 "~" H 5700 2200 50  0001 C CNN
	1    5700 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 2200 5300 2200
Wire Wire Line
	5300 2200 5300 2650
Wire Wire Line
	5300 2650 5400 2650
Wire Wire Line
	5850 2200 6100 2200
Wire Wire Line
	6100 2200 6100 2750
Wire Wire Line
	6100 2750 6000 2750
$Comp
L Diode:1N4148 D4
U 1 1 5F362895
P 5000 3100
F 0 "D4" V 4954 3180 50  0000 L CNN
F 1 "1N4148" V 5045 3180 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5000 2925 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5000 3100 50  0001 C CNN
F 4 "D" H 5000 3100 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 5000 3100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5000 3100 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/diode/1N4148.mod" H 5000 3100 50  0001 C CNN "Spice_Lib_File"
	1    5000 3100
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D3
U 1 1 5F36289F
P 4800 3100
F 0 "D3" V 4846 3020 50  0000 R CNN
F 1 "1N4148" V 4755 3020 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4800 2925 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4800 3100 50  0001 C CNN
F 4 "D" H 4800 3100 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 4800 3100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4800 3100 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/diode/1N4148.mod" H 4800 3100 50  0001 C CNN "Spice_Lib_File"
	1    4800 3100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5F3628A5
P 4900 3350
F 0 "#PWR012" H 4900 3100 50  0001 C CNN
F 1 "GND" H 4905 3177 50  0000 C CNN
F 2 "" H 4900 3350 50  0001 C CNN
F 3 "" H 4900 3350 50  0001 C CNN
	1    4900 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3250 4900 3350
Wire Wire Line
	4800 3250 4900 3250
Connection ~ 4900 3250
Wire Wire Line
	4900 3250 5000 3250
$Comp
L Device:R R6
U 1 1 5F3628AF
P 4500 2200
F 0 "R6" V 4293 2200 50  0000 C CNN
F 1 "100k" V 4384 2200 50  0000 C CNN
F 2 "" V 4430 2200 50  0001 C CNN
F 3 "~" H 4500 2200 50  0001 C CNN
	1    4500 2200
	0    1    1    0   
$EndComp
Connection ~ 5300 2200
$Comp
L Device:R R5
U 1 1 5F3628B6
P 4450 2850
F 0 "R5" V 4243 2850 50  0000 C CNN
F 1 "33k" V 4334 2850 50  0000 C CNN
F 2 "" V 4380 2850 50  0001 C CNN
F 3 "~" H 4450 2850 50  0001 C CNN
	1    4450 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 2850 4800 2850
Wire Wire Line
	5000 2950 5000 2850
Connection ~ 5000 2850
Wire Wire Line
	5000 2850 5400 2850
Wire Wire Line
	4800 2950 4800 2850
Connection ~ 4800 2850
Wire Wire Line
	4800 2850 5000 2850
Wire Wire Line
	4650 2200 5300 2200
Wire Wire Line
	4350 2200 4250 2200
Connection ~ 4250 2200
Wire Wire Line
	4250 2750 4250 2850
Wire Wire Line
	4250 2850 4300 2850
Connection ~ 4250 2750
$Comp
L Amplifier_Operational:TL072 U4
U 1 1 5F368EC0
P 7550 2750
F 0 "U4" H 7550 2383 50  0000 C CNN
F 1 "TL072" H 7550 2474 50  0000 C CNN
F 2 "" H 7550 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7550 2750 50  0001 C CNN
F 4 "X" H 7550 2750 50  0001 C CNN "Spice_Primitive"
F 5 "OPA2134" H 7550 2750 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7550 2750 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/opamp/OPA2134.LIB" H 7550 2750 50  0001 C CNN "Spice_Lib_File"
F 8 "3 2 8 4 1" H 7550 2750 50  0001 C CNN "Spice_Node_Sequence"
	1    7550 2750
	1    0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 5F368EC6
P 7550 2200
F 0 "R10" V 7343 2200 50  0000 C CNN
F 1 "100k" V 7434 2200 50  0000 C CNN
F 2 "" V 7480 2200 50  0001 C CNN
F 3 "~" H 7550 2200 50  0001 C CNN
	1    7550 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 2200 7150 2200
Wire Wire Line
	7150 2200 7150 2650
Wire Wire Line
	7150 2650 7250 2650
Wire Wire Line
	7700 2200 7950 2200
Wire Wire Line
	7950 2200 7950 2750
Wire Wire Line
	7950 2750 7850 2750
$Comp
L Diode:1N4148 D6
U 1 1 5F368ED6
P 6850 3100
F 0 "D6" V 6804 3180 50  0000 L CNN
F 1 "1N4148" V 6895 3180 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6850 2925 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6850 3100 50  0001 C CNN
F 4 "D" H 6850 3100 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 6850 3100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6850 3100 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/diode/1N4148.mod" H 6850 3100 50  0001 C CNN "Spice_Lib_File"
	1    6850 3100
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D5
U 1 1 5F368EE0
P 6650 3100
F 0 "D5" V 6696 3020 50  0000 R CNN
F 1 "1N4148" V 6605 3020 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6650 2925 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6650 3100 50  0001 C CNN
F 4 "D" H 6650 3100 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 6650 3100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6650 3100 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/diode/1N4148.mod" H 6650 3100 50  0001 C CNN "Spice_Lib_File"
	1    6650 3100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5F368EE6
P 6750 3350
F 0 "#PWR013" H 6750 3100 50  0001 C CNN
F 1 "GND" H 6755 3177 50  0000 C CNN
F 2 "" H 6750 3350 50  0001 C CNN
F 3 "" H 6750 3350 50  0001 C CNN
	1    6750 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3250 6750 3350
Wire Wire Line
	6650 3250 6750 3250
Connection ~ 6750 3250
Wire Wire Line
	6750 3250 6850 3250
$Comp
L Device:R R9
U 1 1 5F368EF0
P 6350 2200
F 0 "R9" V 6143 2200 50  0000 C CNN
F 1 "100k" V 6234 2200 50  0000 C CNN
F 2 "" V 6280 2200 50  0001 C CNN
F 3 "~" H 6350 2200 50  0001 C CNN
	1    6350 2200
	0    1    1    0   
$EndComp
Connection ~ 7150 2200
$Comp
L Device:R R8
U 1 1 5F368EF7
P 6300 2850
F 0 "R8" V 6093 2850 50  0000 C CNN
F 1 "33k" V 6184 2850 50  0000 C CNN
F 2 "" V 6230 2850 50  0001 C CNN
F 3 "~" H 6300 2850 50  0001 C CNN
	1    6300 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 2850 6650 2850
Wire Wire Line
	6850 2950 6850 2850
Connection ~ 6850 2850
Wire Wire Line
	6850 2850 7250 2850
Wire Wire Line
	6650 2950 6650 2850
Connection ~ 6650 2850
Wire Wire Line
	6650 2850 6850 2850
Wire Wire Line
	6500 2200 7150 2200
Wire Wire Line
	6150 2850 6100 2850
Wire Wire Line
	6100 2850 6100 2750
Connection ~ 6100 2750
Connection ~ 6100 2200
Wire Wire Line
	6100 2200 6200 2200
$Comp
L Amplifier_Operational:TL072 U3
U 3 1 5F383063
P 5750 5300
F 0 "U3" H 5708 5346 50  0000 L CNN
F 1 "TL072" H 5708 5255 50  0000 L CNN
F 2 "" H 5750 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5750 5300 50  0001 C CNN
	3    5750 5300
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR015
U 1 1 5F383069
P 5650 5600
F 0 "#PWR015" H 5650 5700 50  0001 C CNN
F 1 "-15V" H 5665 5773 50  0000 C CNN
F 2 "" H 5650 5600 50  0001 C CNN
F 3 "" H 5650 5600 50  0001 C CNN
	1    5650 5600
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR014
U 1 1 5F38306F
P 5650 5000
F 0 "#PWR014" H 5650 4850 50  0001 C CNN
F 1 "+15V" H 5665 5173 50  0000 C CNN
F 2 "" H 5650 5000 50  0001 C CNN
F 3 "" H 5650 5000 50  0001 C CNN
	1    5650 5000
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U4
U 3 1 5F385CC7
P 7500 5450
F 0 "U4" H 7458 5496 50  0000 L CNN
F 1 "TL072" H 7458 5405 50  0000 L CNN
F 2 "" H 7500 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7500 5450 50  0001 C CNN
	3    7500 5450
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR017
U 1 1 5F385CCD
P 7400 5750
F 0 "#PWR017" H 7400 5850 50  0001 C CNN
F 1 "-15V" H 7415 5923 50  0000 C CNN
F 2 "" H 7400 5750 50  0001 C CNN
F 3 "" H 7400 5750 50  0001 C CNN
	1    7400 5750
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR016
U 1 1 5F385CD3
P 7400 5150
F 0 "#PWR016" H 7400 5000 50  0001 C CNN
F 1 "+15V" H 7415 5323 50  0000 C CNN
F 2 "" H 7400 5150 50  0001 C CNN
F 3 "" H 7400 5150 50  0001 C CNN
	1    7400 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1750 2350 2200
Wire Wire Line
	2050 1750 2350 1750
Connection ~ 1450 2200
Wire Wire Line
	1450 1750 1450 2200
Wire Wire Line
	1750 1750 1450 1750
$Comp
L Device:C C1
U 1 1 5F30C2D1
P 1900 1750
F 0 "C1" V 1648 1750 50  0000 C CNN
F 1 "150p" V 1739 1750 50  0000 C CNN
F 2 "" H 1938 1600 50  0001 C CNN
F 3 "~" H 1900 1750 50  0001 C CNN
	1    1900 1750
	0    1    1    0   
$EndComp
$EndSCHEMATC
