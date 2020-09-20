EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "pegel"
Date "2020-09-20"
Rev "01"
Comp ""
Comment1 "schema for main circuit"
Comment2 "voltage controlled attenuator and ring modulator"
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 5F7A8E19
P 1750 2050
AR Path="/5F7A8E19" Ref="#PWR?"  Part="1" 
AR Path="/5F796C17/5F7A8E19" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 1750 1800 50  0001 C CNN
F 1 "GND" H 1755 1877 50  0000 C CNN
F 2 "" H 1750 2050 50  0001 C CNN
F 3 "" H 1750 2050 50  0001 C CNN
	1    1750 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 2650 2250 2650
Wire Wire Line
	2200 2450 2200 2050
Wire Wire Line
	2200 2050 2400 2050
Wire Wire Line
	2250 2450 2200 2450
Wire Wire Line
	2850 2550 2900 2550
$Comp
L Device:R R?
U 1 1 5F7A8E25
P 1900 2050
AR Path="/5F7A8E25" Ref="R?"  Part="1" 
AR Path="/5F796C17/5F7A8E25" Ref="R20"  Part="1" 
F 0 "R20" V 1693 2050 50  0000 C CNN
F 1 "100k" V 1784 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1830 2050 50  0001 C CNN
F 3 "~" H 1900 2050 50  0001 C CNN
	1    1900 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F7A8E2B
P 2550 2050
AR Path="/5F7A8E2B" Ref="R?"  Part="1" 
AR Path="/5F796C17/5F7A8E2B" Ref="R22"  Part="1" 
F 0 "R22" V 2343 2050 50  0000 C CNN
F 1 "100k" V 2434 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2480 2050 50  0001 C CNN
F 3 "~" H 2550 2050 50  0001 C CNN
	1    2550 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 2050 2900 2050
Wire Wire Line
	2050 2050 2200 2050
Wire Wire Line
	2900 2050 2900 2550
Wire Wire Line
	3000 2550 2900 2550
Connection ~ 2900 2550
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5F7A8E3B
P 2550 2550
AR Path="/5F7A8E3B" Ref="U?"  Part="1" 
AR Path="/5F796C17/5F7A8E3B" Ref="U3"  Part="1" 
F 0 "U3" H 2550 2300 50  0000 C CNN
F 1 "TL072" H 2550 2200 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2550 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2550 2550 50  0001 C CNN
F 4 "X" H 2550 2550 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 2550 2550 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2550 2550 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/opamp/TL072-dual.lib" H 2550 2550 50  0001 C CNN "Spice_Lib_File"
	1    2550 2550
	1    0    0    1   
$EndComp
Text GLabel 3500 2550 2    50   Input ~ 0
Xb
Wire Wire Line
	3500 2550 3400 2550
Wire Wire Line
	3400 2550 3400 2650
Connection ~ 3400 2550
Wire Wire Line
	3300 2550 3400 2550
$Comp
L Device:R R?
U 1 1 5F7A8E46
P 3150 2550
AR Path="/5F7A8E46" Ref="R?"  Part="1" 
AR Path="/5F796C17/5F7A8E46" Ref="R24"  Part="1" 
F 0 "R24" V 2943 2550 50  0000 C CNN
F 1 "10k" V 3034 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3080 2550 50  0001 C CNN
F 3 "~" H 3150 2550 50  0001 C CNN
	1    3150 2550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F7A8E4C
P 3400 2950
AR Path="/5F7A8E4C" Ref="#PWR?"  Part="1" 
AR Path="/5F796C17/5F7A8E4C" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 3400 2700 50  0001 C CNN
F 1 "GND" H 3405 2777 50  0000 C CNN
F 2 "" H 3400 2950 50  0001 C CNN
F 3 "" H 3400 2950 50  0001 C CNN
	1    3400 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F7A8E52
P 3400 2800
AR Path="/5F7A8E52" Ref="R?"  Part="1" 
AR Path="/5F796C17/5F7A8E52" Ref="R26"  Part="1" 
F 0 "R26" V 3193 2800 50  0000 C CNN
F 1 "22" V 3284 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3330 2800 50  0001 C CNN
F 3 "~" H 3400 2800 50  0001 C CNN
	1    3400 2800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F7A8E58
P 1750 3400
AR Path="/5F7A8E58" Ref="#PWR?"  Part="1" 
AR Path="/5F796C17/5F7A8E58" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 1750 3150 50  0001 C CNN
F 1 "GND" H 1755 3227 50  0000 C CNN
F 2 "" H 1750 3400 50  0001 C CNN
F 3 "" H 1750 3400 50  0001 C CNN
	1    1750 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 4000 2250 4000
Wire Wire Line
	2200 3800 2200 3400
Wire Wire Line
	2200 3400 2400 3400
Wire Wire Line
	2250 3800 2200 3800
Wire Wire Line
	2850 3900 2900 3900
$Comp
L Device:R R?
U 1 1 5F7A8E64
P 2550 3400
AR Path="/5F7A8E64" Ref="R?"  Part="1" 
AR Path="/5F796C17/5F7A8E64" Ref="R23"  Part="1" 
F 0 "R23" V 2343 3400 50  0000 C CNN
F 1 "100k" V 2434 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2480 3400 50  0001 C CNN
F 3 "~" H 2550 3400 50  0001 C CNN
	1    2550 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 3400 2900 3400
Wire Wire Line
	2900 3400 2900 3900
Wire Wire Line
	3000 3900 2900 3900
Connection ~ 2900 3900
Text GLabel 3500 3900 2    50   Input ~ 0
Yb
Wire Wire Line
	3500 3900 3400 3900
Wire Wire Line
	3400 3900 3400 4000
Connection ~ 3400 3900
Wire Wire Line
	3300 3900 3400 3900
$Comp
L Device:R R?
U 1 1 5F7A8E74
P 3150 3900
AR Path="/5F7A8E74" Ref="R?"  Part="1" 
AR Path="/5F796C17/5F7A8E74" Ref="R25"  Part="1" 
F 0 "R25" V 2943 3900 50  0000 C CNN
F 1 "10k" V 3034 3900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3080 3900 50  0001 C CNN
F 3 "~" H 3150 3900 50  0001 C CNN
	1    3150 3900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F7A8E7A
P 3400 4300
AR Path="/5F7A8E7A" Ref="#PWR?"  Part="1" 
AR Path="/5F796C17/5F7A8E7A" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 3400 4050 50  0001 C CNN
F 1 "GND" H 3405 4127 50  0000 C CNN
F 2 "" H 3400 4300 50  0001 C CNN
F 3 "" H 3400 4300 50  0001 C CNN
	1    3400 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F7A8E80
P 3400 4150
AR Path="/5F7A8E80" Ref="R?"  Part="1" 
AR Path="/5F796C17/5F7A8E80" Ref="R27"  Part="1" 
F 0 "R27" V 3193 4150 50  0000 C CNN
F 1 "22" V 3284 4150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3330 4150 50  0001 C CNN
F 3 "~" H 3400 4150 50  0001 C CNN
	1    3400 4150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F7A8E86
P 1900 3400
AR Path="/5F7A8E86" Ref="R?"  Part="1" 
AR Path="/5F796C17/5F7A8E86" Ref="R21"  Part="1" 
F 0 "R21" V 1693 3400 50  0000 C CNN
F 1 "100k" V 1784 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1830 3400 50  0001 C CNN
F 3 "~" H 1900 3400 50  0001 C CNN
	1    1900 3400
	0    1    1    0   
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 5F7A8EC8
P 5750 1300
AR Path="/5F7A8EC8" Ref="#PWR?"  Part="1" 
AR Path="/5F796C17/5F7A8EC8" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 5750 1150 50  0001 C CNN
F 1 "+15V" H 5765 1473 50  0000 C CNN
F 2 "" H 5750 1300 50  0001 C CNN
F 3 "" H 5750 1300 50  0001 C CNN
	1    5750 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1300 5750 1450
Wire Wire Line
	4700 2250 6050 2250
Wire Wire Line
	6050 2250 6050 2300
Connection ~ 4700 2250
Wire Wire Line
	4700 2250 4700 2300
Wire Wire Line
	5450 2100 5450 2300
Connection ~ 6800 2100
Wire Wire Line
	6800 2100 6800 2250
Text GLabel 4800 1950 2    50   Input ~ 0
DIFF1_b
Text GLabel 6650 1950 0    50   Input ~ 0
DIFF2_b
Wire Wire Line
	6050 2700 6450 2700
Wire Wire Line
	5100 2700 5100 3700
Wire Wire Line
	4700 2700 5100 2700
Connection ~ 5100 2700
Wire Wire Line
	6450 2700 6450 3700
Connection ~ 6450 2700
Wire Wire Line
	6450 2700 6800 2700
$Comp
L Device:R R?
U 1 1 5F7A8EDF
P 6800 1700
AR Path="/5F7A8EDF" Ref="R?"  Part="1" 
AR Path="/5F796C17/5F7A8EDF" Ref="R31"  Part="1" 
F 0 "R31" H 6870 1746 50  0000 L CNN
F 1 "720" H 6870 1655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6730 1700 50  0001 C CNN
F 3 "~" H 6800 1700 50  0001 C CNN
	1    6800 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F7A8EE5
P 4700 1700
AR Path="/5F7A8EE5" Ref="R?"  Part="1" 
AR Path="/5F796C17/5F7A8EE5" Ref="R28"  Part="1" 
F 0 "R28" H 4770 1746 50  0000 L CNN
F 1 "720" H 4770 1655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4630 1700 50  0001 C CNN
F 3 "~" H 4700 1700 50  0001 C CNN
	1    4700 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F7A8EEB
P 5750 2550
AR Path="/5F7A8EEB" Ref="#PWR?"  Part="1" 
AR Path="/5F796C17/5F7A8EEB" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 5750 2300 50  0001 C CNN
F 1 "GND" H 5755 2377 50  0000 C CNN
F 2 "" H 5750 2550 50  0001 C CNN
F 3 "" H 5750 2550 50  0001 C CNN
	1    5750 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2050 9250 2050
Wire Wire Line
	9350 1500 9350 2050
Wire Wire Line
	9150 1500 9350 1500
Wire Wire Line
	8600 1950 8650 1950
Wire Wire Line
	8600 1500 8600 1950
Wire Wire Line
	8850 1500 8600 1500
Wire Wire Line
	8600 2150 8550 2150
Wire Wire Line
	8600 2350 8600 2150
Connection ~ 8600 2150
Wire Wire Line
	8650 2150 8600 2150
Connection ~ 8600 1950
Wire Wire Line
	8550 1950 8600 1950
Text GLabel 8250 2150 0    50   Input ~ 0
DIFF2_b
Text GLabel 8250 1950 0    50   Input ~ 0
DIFF1_b
$Comp
L Device:R R?
U 1 1 5F7A8EFF
P 9000 1500
AR Path="/5F7A8EFF" Ref="R?"  Part="1" 
AR Path="/5F796C17/5F7A8EFF" Ref="R38"  Part="1" 
F 0 "R38" V 9207 1500 50  0000 C CNN
F 1 "440k" V 9116 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8930 1500 50  0001 C CNN
F 3 "~" H 9000 1500 50  0001 C CNN
	1    9000 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F7A8F05
P 8600 2500
AR Path="/5F7A8F05" Ref="R?"  Part="1" 
AR Path="/5F796C17/5F7A8F05" Ref="R37"  Part="1" 
F 0 "R37" H 8530 2454 50  0000 R CNN
F 1 "440k" H 8530 2545 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8530 2500 50  0001 C CNN
F 3 "~" H 8600 2500 50  0001 C CNN
	1    8600 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F7A8F15
P 8400 1950
AR Path="/5F7A8F15" Ref="R?"  Part="1" 
AR Path="/5F796C17/5F7A8F15" Ref="R35"  Part="1" 
F 0 "R35" V 8607 1950 50  0000 C CNN
F 1 "10k" V 8516 1950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8330 1950 50  0001 C CNN
F 3 "~" H 8400 1950 50  0001 C CNN
	1    8400 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F7A8F1B
P 8400 2150
AR Path="/5F7A8F1B" Ref="R?"  Part="1" 
AR Path="/5F796C17/5F7A8F1B" Ref="R36"  Part="1" 
F 0 "R36" V 8300 2150 50  0000 C CNN
F 1 "10k" V 8200 2150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8330 2150 50  0001 C CNN
F 3 "~" H 8400 2150 50  0001 C CNN
	1    8400 2150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F7A8F21
P 5750 4700
AR Path="/5F7A8F21" Ref="R?"  Part="1" 
AR Path="/5F796C17/5F7A8F21" Ref="R30"  Part="1" 
F 0 "R30" H 5820 4746 50  0000 L CNN
F 1 "720" H 5820 4655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5680 4700 50  0001 C CNN
F 3 "~" H 5750 4700 50  0001 C CNN
	1    5750 4700
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR?
U 1 1 5F7A8F27
P 5750 4850
AR Path="/5F7A8F27" Ref="#PWR?"  Part="1" 
AR Path="/5F796C17/5F7A8F27" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 5750 4950 50  0001 C CNN
F 1 "-15V" H 5765 5023 50  0000 C CNN
F 2 "" H 5750 4850 50  0001 C CNN
F 3 "" H 5750 4850 50  0001 C CNN
	1    5750 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 4400 5750 4400
Wire Wire Line
	5750 4400 5750 4550
$Comp
L Device:C C?
U 1 1 5F7A8F2F
P 4650 3900
AR Path="/5F7A8F2F" Ref="C?"  Part="1" 
AR Path="/5F796C17/5F7A8F2F" Ref="C9"  Part="1" 
F 0 "C9" V 4398 3900 50  0000 C CNN
F 1 "0.22u" V 4489 3900 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D9.0mm_W5.0mm_P5.00mm" H 4688 3750 50  0001 C CNN
F 3 "~" H 4650 3900 50  0001 C CNN
	1    4650 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F7A8F35
P 7200 4150
AR Path="/5F7A8F35" Ref="R?"  Part="1" 
AR Path="/5F796C17/5F7A8F35" Ref="R34"  Part="1" 
F 0 "R34" H 7270 4196 50  0000 L CNN
F 1 "1k" H 7270 4105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7130 4150 50  0001 C CNN
F 3 "~" H 7200 4150 50  0001 C CNN
	1    7200 4150
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR?
U 1 1 5F7A8F3B
P 7200 4300
AR Path="/5F7A8F3B" Ref="#PWR?"  Part="1" 
AR Path="/5F796C17/5F7A8F3B" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 7200 4400 50  0001 C CNN
F 1 "-15V" H 7215 4473 50  0000 C CNN
F 2 "" H 7200 4300 50  0001 C CNN
F 3 "" H 7200 4300 50  0001 C CNN
	1    7200 4300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F7A8F41
P 7200 3450
AR Path="/5F7A8F41" Ref="R?"  Part="1" 
AR Path="/5F796C17/5F7A8F41" Ref="R33"  Part="1" 
F 0 "R33" H 7270 3496 50  0000 L CNN
F 1 "3k" H 7270 3405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7130 3450 50  0001 C CNN
F 3 "~" H 7200 3450 50  0001 C CNN
	1    7200 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 5F7A8F47
P 7200 3300
AR Path="/5F7A8F47" Ref="#PWR?"  Part="1" 
AR Path="/5F796C17/5F7A8F47" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 7200 3150 50  0001 C CNN
F 1 "+15V" H 7215 3473 50  0000 C CNN
F 2 "" H 7200 3300 50  0001 C CNN
F 3 "" H 7200 3300 50  0001 C CNN
	1    7200 3300
	1    0    0    -1  
$EndComp
Connection ~ 7200 3900
Wire Wire Line
	7200 3900 7200 4000
$Comp
L Device:R R?
U 1 1 5F7A8F4F
P 6900 3900
AR Path="/5F7A8F4F" Ref="R?"  Part="1" 
AR Path="/5F796C17/5F7A8F4F" Ref="R32"  Part="1" 
F 0 "R32" V 6693 3900 50  0000 C CNN
F 1 "2.2k" V 6784 3900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6830 3900 50  0001 C CNN
F 3 "~" H 6900 3900 50  0001 C CNN
	1    6900 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F7A8F55
P 5550 3650
AR Path="/5F7A8F55" Ref="R?"  Part="1" 
AR Path="/5F796C17/5F7A8F55" Ref="R29"  Part="1" 
F 0 "R29" V 5343 3650 50  0000 C CNN
F 1 "2.2k" V 5434 3650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5480 3650 50  0001 C CNN
F 3 "~" H 5550 3650 50  0001 C CNN
	1    5550 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 3900 7200 3900
$Comp
L Device:C C?
U 1 1 5F7A8F5C
P 7550 4000
AR Path="/5F7A8F5C" Ref="C?"  Part="1" 
AR Path="/5F796C17/5F7A8F5C" Ref="C10"  Part="1" 
F 0 "C10" H 7435 3954 50  0000 R CNN
F 1 "0.1u" H 7435 4045 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 7588 3850 50  0001 C CNN
F 3 "~" H 7550 4000 50  0001 C CNN
	1    7550 4000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F7A8F62
P 8600 2650
AR Path="/5F7A8F62" Ref="#PWR?"  Part="1" 
AR Path="/5F796C17/5F7A8F62" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 8600 2400 50  0001 C CNN
F 1 "GND" H 8605 2477 50  0000 C CNN
F 2 "" H 8600 2650 50  0001 C CNN
F 3 "" H 8600 2650 50  0001 C CNN
	1    8600 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F7A8F68
P 7550 4150
AR Path="/5F7A8F68" Ref="#PWR?"  Part="1" 
AR Path="/5F796C17/5F7A8F68" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 7550 3900 50  0001 C CNN
F 1 "GND" H 7555 3977 50  0000 C CNN
F 2 "" H 7550 4150 50  0001 C CNN
F 3 "" H 7550 4150 50  0001 C CNN
	1    7550 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3850 7550 3750
Connection ~ 7200 3750
Wire Wire Line
	7200 3750 7200 3900
Text GLabel 4400 2500 0    50   Input ~ 0
Yb
Text GLabel 4500 3900 0    50   Input ~ 0
Xb
Wire Wire Line
	4700 1450 5750 1450
Wire Wire Line
	4400 2500 4400 2850
Wire Wire Line
	7200 3600 7200 3650
Wire Wire Line
	4800 3900 4800 3650
Wire Wire Line
	4800 3650 5400 3650
Wire Wire Line
	6800 2100 5450 2100
Wire Wire Line
	6650 1950 6800 1950
Wire Wire Line
	6800 1850 6800 1950
Wire Wire Line
	4800 1950 4700 1950
Wire Wire Line
	4700 1850 4700 1950
Connection ~ 5750 1450
Wire Wire Line
	5750 1450 6800 1450
Connection ~ 4700 1950
Wire Wire Line
	4700 1950 4700 2250
Connection ~ 6800 1950
Wire Wire Line
	6800 1950 6800 2100
Wire Wire Line
	5100 2700 5450 2700
Wire Wire Line
	5750 2550 5750 2500
Wire Wire Line
	7100 2500 7100 2850
Wire Wire Line
	4400 2850 7100 2850
Connection ~ 7200 3650
Wire Wire Line
	7200 3650 7200 3750
Connection ~ 5750 4400
Wire Wire Line
	5750 4400 6450 4400
Wire Wire Line
	5700 3650 7200 3650
Wire Wire Line
	7550 3750 7200 3750
Connection ~ 9350 2050
Wire Wire Line
	2050 3400 2200 3400
Wire Wire Line
	4700 1450 4700 1550
Wire Wire Line
	6800 1450 6800 1550
Wire Wire Line
	6450 4100 6450 4400
Wire Wire Line
	5100 4400 5100 4100
$Comp
L Amplifier_Operational:TL072 U?
U 2 1 5F7A8F9A
P 2550 3900
AR Path="/5F7A8F9A" Ref="U?"  Part="2" 
AR Path="/5F796C17/5F7A8F9A" Ref="U3"  Part="2" 
F 0 "U3" H 2550 3533 50  0000 C CNN
F 1 "TL072" H 2550 3624 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2550 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2550 3900 50  0001 C CNN
F 4 "X" H 2550 3900 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 2550 3900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2550 3900 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/opamp/TL072-dual.lib" H 2550 3900 50  0001 C CNN "Spice_Lib_File"
	2    2550 3900
	1    0    0    1   
$EndComp
Text GLabel 2200 2650 0    50   Input ~ 0
IN_1b
Text GLabel 2200 4000 0    50   Input ~ 0
IN_2b
Text GLabel 9450 3900 2    50   Input ~ 0
OUT_b
Connection ~ 2200 2050
Connection ~ 2200 3400
$Comp
L Amplifier_Operational:TL072 U?
U 2 1 5F6DF8CF
P 9100 3900
AR Path="/5F6DF8CF" Ref="U?"  Part="2" 
AR Path="/5F796C17/5F6DF8CF" Ref="U4"  Part="2" 
F 0 "U4" H 9100 3533 50  0000 C CNN
F 1 "TL072" H 9100 3624 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 9100 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 9100 3900 50  0001 C CNN
	2    9100 3900
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F6DF8D5
P 9150 3350
AR Path="/5F6DF8D5" Ref="R?"  Part="1" 
AR Path="/5F796C17/5F6DF8D5" Ref="R42"  Part="1" 
F 0 "R42" V 9357 3350 50  0000 C CNN
F 1 "100k" V 9266 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9080 3350 50  0001 C CNN
F 3 "~" H 9150 3350 50  0001 C CNN
	1    9150 3350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F6DF8DB
P 8750 4050
AR Path="/5F6DF8DB" Ref="#PWR?"  Part="1" 
AR Path="/5F796C17/5F6DF8DB" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 8750 3800 50  0001 C CNN
F 1 "GND" H 8755 3877 50  0000 C CNN
F 2 "" H 8750 4050 50  0001 C CNN
F 3 "" H 8750 4050 50  0001 C CNN
	1    8750 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4000 8750 4000
Wire Wire Line
	8750 4000 8750 4050
Wire Wire Line
	8800 3800 8800 3350
Wire Wire Line
	9450 3350 9450 3900
Wire Wire Line
	9450 3900 9400 3900
Wire Wire Line
	9300 3350 9450 3350
Wire Wire Line
	8800 3350 9000 3350
$Comp
L Device:R R?
U 1 1 5F6DF8E8
P 8550 3800
AR Path="/5F6DF8E8" Ref="R?"  Part="1" 
AR Path="/5F796C17/5F6DF8E8" Ref="R41"  Part="1" 
F 0 "R41" V 8757 3800 50  0000 C CNN
F 1 "100k" V 8666 3800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8480 3800 50  0001 C CNN
F 3 "~" H 8550 3800 50  0001 C CNN
	1    8550 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8800 3800 8700 3800
Connection ~ 8800 3800
Wire Wire Line
	8400 3800 8250 3800
Wire Wire Line
	8250 3800 8250 3050
Wire Wire Line
	8250 3050 9600 3050
Wire Wire Line
	9600 3050 9600 2050
Wire Wire Line
	9350 2050 9600 2050
$Comp
L Amplifier_Operational:TL072 U4
U 1 1 5F6FEF40
P 8950 2050
F 0 "U4" H 8950 1683 50  0000 C CNN
F 1 "TL072" H 8950 1774 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8950 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8950 2050 50  0001 C CNN
	1    8950 2050
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F699D9E
P 5550 2500
AR Path="/5F699D9E" Ref="Q?"  Part="1" 
AR Path="/5F796C17/5F699D9E" Ref="Q9"  Part="1" 
F 0 "Q9" H 5741 2546 50  0000 L CNN
F 1 "BC550" H 5741 2455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 5750 2425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 5550 2500 50  0001 L CNN
F 4 "Q" H 5550 2500 50  0001 C CNN "Spice_Primitive"
F 5 "BC547B" H 5550 2500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5550 2500 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/BC547.mod" H 5550 2500 50  0001 C CNN "Spice_Lib_File"
	1    5550 2500
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F69D5AC
P 4600 2500
AR Path="/5F69D5AC" Ref="Q?"  Part="1" 
AR Path="/5F796C17/5F69D5AC" Ref="Q7"  Part="1" 
F 0 "Q7" H 4791 2546 50  0000 L CNN
F 1 "BC550" H 4791 2455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 4800 2425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4600 2500 50  0001 L CNN
F 4 "Q" H 4600 2500 50  0001 C CNN "Spice_Primitive"
F 5 "BC547B" H 4600 2500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4600 2500 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/BC547.mod" H 4600 2500 50  0001 C CNN "Spice_Lib_File"
	1    4600 2500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F69DF2C
P 5950 2500
AR Path="/5F69DF2C" Ref="Q?"  Part="1" 
AR Path="/5F796C17/5F69DF2C" Ref="Q10"  Part="1" 
F 0 "Q10" H 6141 2546 50  0000 L CNN
F 1 "BC550" H 6141 2455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 6150 2425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 5950 2500 50  0001 L CNN
F 4 "Q" H 5950 2500 50  0001 C CNN "Spice_Primitive"
F 5 "BC547B" H 5950 2500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5950 2500 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/BC547.mod" H 5950 2500 50  0001 C CNN "Spice_Lib_File"
	1    5950 2500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F69E70E
P 5000 3900
AR Path="/5F69E70E" Ref="Q?"  Part="1" 
AR Path="/5F796C17/5F69E70E" Ref="Q8"  Part="1" 
F 0 "Q8" H 5191 3946 50  0000 L CNN
F 1 "BC550" H 5191 3855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 5200 3825 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 5000 3900 50  0001 L CNN
F 4 "Q" H 5000 3900 50  0001 C CNN "Spice_Primitive"
F 5 "BC547B" H 5000 3900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5000 3900 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/BC547.mod" H 5000 3900 50  0001 C CNN "Spice_Lib_File"
	1    5000 3900
	1    0    0    -1  
$EndComp
Connection ~ 4800 3900
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F6A1B3F
P 6550 3900
AR Path="/5F6A1B3F" Ref="Q?"  Part="1" 
AR Path="/5F796C17/5F6A1B3F" Ref="Q11"  Part="1" 
F 0 "Q11" H 6741 3946 50  0000 L CNN
F 1 "BC550" H 6741 3855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 6750 3825 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6550 3900 50  0001 L CNN
F 4 "Q" H 6550 3900 50  0001 C CNN "Spice_Primitive"
F 5 "BC547B" H 6550 3900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6550 3900 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/BC547.mod" H 6550 3900 50  0001 C CNN "Spice_Lib_File"
	1    6550 3900
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F6A2450
P 6900 2500
AR Path="/5F6A2450" Ref="Q?"  Part="1" 
AR Path="/5F796C17/5F6A2450" Ref="Q12"  Part="1" 
F 0 "Q12" H 7091 2546 50  0000 L CNN
F 1 "BC550" H 7091 2455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 7100 2425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6900 2500 50  0001 L CNN
F 4 "Q" H 6900 2500 50  0001 C CNN "Spice_Primitive"
F 5 "BC547B" H 6900 2500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6900 2500 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/BC547.mod" H 6900 2500 50  0001 C CNN "Spice_Lib_File"
	1    6900 2500
	-1   0    0    -1  
$EndComp
Connection ~ 6800 2250
Wire Wire Line
	6800 2250 6800 2300
Connection ~ 5750 2500
$EndSCHEMATC
