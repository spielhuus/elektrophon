EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 10
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
L Device:R R?
U 1 1 5FAB9224
P 2300 3450
AR Path="/5FAD6A8C/5FAB9224" Ref="R?"  Part="1" 
AR Path="/5FAA9C6D/5FAB9224" Ref="R47"  Part="1" 
F 0 "R47" V 2093 3450 50  0000 C CNN
F 1 "470k" V 2184 3450 50  0000 C CNN
F 2 "" V 2230 3450 50  0001 C CNN
F 3 "~" H 2300 3450 50  0001 C CNN
	1    2300 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FAB922A
P 2850 3000
AR Path="/5FAD6A8C/5FAB922A" Ref="R?"  Part="1" 
AR Path="/5FAA9C6D/5FAB922A" Ref="R48"  Part="1" 
F 0 "R48" V 2643 3000 50  0000 C CNN
F 1 "470k" V 2734 3000 50  0000 C CNN
F 2 "" V 2780 3000 50  0001 C CNN
F 3 "~" H 2850 3000 50  0001 C CNN
	1    2850 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 3000 2550 3000
Wire Wire Line
	2550 3000 2550 3450
Wire Wire Line
	3000 3000 3150 3000
Wire Wire Line
	3150 3000 3150 3450
Wire Wire Line
	2450 3450 2550 3450
$Comp
L Device:R R?
U 1 1 5FAB9235
P 3800 2700
AR Path="/5FAD6A8C/5FAB9235" Ref="R?"  Part="1" 
AR Path="/5FAA9C6D/5FAB9235" Ref="R49"  Part="1" 
F 0 "R49" V 3593 2700 50  0000 C CNN
F 1 "100k" V 3684 2700 50  0000 C CNN
F 2 "" V 3730 2700 50  0001 C CNN
F 3 "~" H 3800 2700 50  0001 C CNN
	1    3800 2700
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FAB923B
P 1950 3450
AR Path="/5FAD6A8C/5FAB923B" Ref="C?"  Part="1" 
AR Path="/5FAA9C6D/5FAB923B" Ref="C24"  Part="1" 
F 0 "C24" V 1698 3450 50  0000 C CNN
F 1 "10n" V 1789 3450 50  0000 C CNN
F 2 "" H 1988 3300 50  0001 C CNN
F 3 "~" H 1950 3450 50  0001 C CNN
	1    1950 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 3450 2150 3450
$Comp
L Device:C C?
U 1 1 5FAB9242
P 3500 2700
AR Path="/5FAD6A8C/5FAB9242" Ref="C?"  Part="1" 
AR Path="/5FAA9C6D/5FAB9242" Ref="C25"  Part="1" 
F 0 "C25" V 3248 2700 50  0000 C CNN
F 1 "100n" V 3339 2700 50  0000 C CNN
F 2 "" H 3538 2550 50  0001 C CNN
F 3 "~" H 3500 2700 50  0001 C CNN
	1    3500 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 2700 3350 2700
$Comp
L Device:R R?
U 1 1 5FAB9249
P 4200 2100
AR Path="/5FAD6A8C/5FAB9249" Ref="R?"  Part="1" 
AR Path="/5FAA9C6D/5FAB9249" Ref="R50"  Part="1" 
F 0 "R50" V 3993 2100 50  0000 C CNN
F 1 "100k" V 4084 2100 50  0000 C CNN
F 2 "" V 4130 2100 50  0001 C CNN
F 3 "~" H 4200 2100 50  0001 C CNN
	1    4200 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5FAB9252
P 4550 2100
AR Path="/5FAD6A8C/5FAB9252" Ref="RV?"  Part="1" 
AR Path="/5FAA9C6D/5FAB9252" Ref="RV2"  Part="1" 
F 0 "RV2" V 4343 2100 50  0000 C CNN
F 1 "500k lin" V 4434 2100 50  0000 C CNN
F 2 "" H 4550 2100 50  0001 C CNN
F 3 "~" H 4550 2100 50  0001 C CNN
F 4 "X" H 4550 2100 50  0001 C CNN "Spice_Primitive"
F 5 "voltage_divider_1" H 4550 2100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4550 2100 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4550 2100
	0    -1   1    0   
$EndComp
Wire Wire Line
	4050 2100 3950 2100
Wire Wire Line
	3950 2100 3950 2700
Wire Wire Line
	4550 2250 4550 2700
Wire Wire Line
	4350 2100 4400 2100
$Comp
L Device:R R?
U 1 1 5FAB925C
P 4950 2700
AR Path="/5FAD6A8C/5FAB925C" Ref="R?"  Part="1" 
AR Path="/5FAA9C6D/5FAB925C" Ref="R51"  Part="1" 
F 0 "R51" V 4743 2700 50  0000 C CNN
F 1 "10k" V 4834 2700 50  0000 C CNN
F 2 "" V 4880 2700 50  0001 C CNN
F 3 "~" H 4950 2700 50  0001 C CNN
	1    4950 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 2100 4800 2100
Wire Wire Line
	4800 2100 4800 2700
$Comp
L Device:C C?
U 1 1 5FAB9264
P 5250 2700
AR Path="/5FAD6A8C/5FAB9264" Ref="C?"  Part="1" 
AR Path="/5FAA9C6D/5FAB9264" Ref="C26"  Part="1" 
F 0 "C26" V 4998 2700 50  0000 C CNN
F 1 "470n" V 5089 2700 50  0000 C CNN
F 2 "" H 5288 2550 50  0001 C CNN
F 3 "~" H 5250 2700 50  0001 C CNN
	1    5250 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FAB926A
P 5700 2250
AR Path="/5FAD6A8C/5FAB926A" Ref="R?"  Part="1" 
AR Path="/5FAA9C6D/5FAB926A" Ref="R52"  Part="1" 
F 0 "R52" V 5493 2250 50  0000 C CNN
F 1 "1Meg" V 5584 2250 50  0000 C CNN
F 2 "" V 5630 2250 50  0001 C CNN
F 3 "~" H 5700 2250 50  0001 C CNN
	1    5700 2250
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 5FAB9273
P 5700 1850
AR Path="/5FAD6A8C/5FAB9273" Ref="D?"  Part="1" 
AR Path="/5FAA9C6D/5FAB9273" Ref="D4"  Part="1" 
F 0 "D4" H 5700 2067 50  0000 C CNN
F 1 "1N4148" H 5700 1976 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5700 1675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5700 1850 50  0001 C CNN
F 4 "D" H 5700 1850 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 5700 1850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5700 1850 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5700 1850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 5FAB927C
P 5700 1500
AR Path="/5FAD6A8C/5FAB927C" Ref="D?"  Part="1" 
AR Path="/5FAA9C6D/5FAB927C" Ref="D3"  Part="1" 
F 0 "D3" H 5700 1283 50  0000 C CNN
F 1 "1N4148" H 5700 1374 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5700 1325 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5700 1500 50  0001 C CNN
F 4 "D" H 5700 1500 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 5700 1500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5700 1500 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5700 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 1500 5400 1500
Wire Wire Line
	5400 1500 5400 1850
Wire Wire Line
	5850 1500 6000 1500
Wire Wire Line
	6000 1500 6000 1850
Wire Wire Line
	6000 1850 5850 1850
Wire Wire Line
	5550 1850 5400 1850
Connection ~ 6000 1850
Wire Wire Line
	6000 1850 6000 2250
Connection ~ 5400 1850
Wire Wire Line
	5400 1850 5400 2250
Wire Wire Line
	6000 2250 5850 2250
Wire Wire Line
	5550 2250 5400 2250
Connection ~ 6000 2250
Wire Wire Line
	6000 2250 6000 2700
Connection ~ 5400 2250
Wire Wire Line
	5400 2250 5400 2700
$Comp
L Device:R R?
U 1 1 5FAB9292
P 6450 2700
AR Path="/5FAD6A8C/5FAB9292" Ref="R?"  Part="1" 
AR Path="/5FAA9C6D/5FAB9292" Ref="R53"  Part="1" 
F 0 "R53" V 6243 2700 50  0000 C CNN
F 1 "100k" V 6334 2700 50  0000 C CNN
F 2 "" V 6380 2700 50  0001 C CNN
F 3 "~" H 6450 2700 50  0001 C CNN
	1    6450 2700
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FAB9298
P 6150 2700
AR Path="/5FAD6A8C/5FAB9298" Ref="C?"  Part="1" 
AR Path="/5FAA9C6D/5FAB9298" Ref="C27"  Part="1" 
F 0 "C27" V 5898 2700 50  0000 C CNN
F 1 "100n" V 5989 2700 50  0000 C CNN
F 2 "" H 6188 2550 50  0001 C CNN
F 3 "~" H 6150 2700 50  0001 C CNN
	1    6150 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FAB929E
P 7000 2250
AR Path="/5FAD6A8C/5FAB929E" Ref="R?"  Part="1" 
AR Path="/5FAA9C6D/5FAB929E" Ref="R55"  Part="1" 
F 0 "R55" V 6793 2250 50  0000 C CNN
F 1 "220k" V 6884 2250 50  0000 C CNN
F 2 "" V 6930 2250 50  0001 C CNN
F 3 "~" H 7000 2250 50  0001 C CNN
	1    7000 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 2250 6650 2250
Wire Wire Line
	6650 2250 6650 2700
Connection ~ 6650 2700
Wire Wire Line
	7150 2250 7250 2250
Wire Wire Line
	7250 2250 7250 2700
$Comp
L Device:C C?
U 1 1 5FAB92A9
P 7400 2700
AR Path="/5FAD6A8C/5FAB92A9" Ref="C?"  Part="1" 
AR Path="/5FAA9C6D/5FAB92A9" Ref="C29"  Part="1" 
F 0 "C29" V 7148 2700 50  0000 C CNN
F 1 "100n" V 7239 2700 50  0000 C CNN
F 2 "" H 7438 2550 50  0001 C CNN
F 3 "~" H 7400 2700 50  0001 C CNN
	1    7400 2700
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FAB92AF
P 6150 3450
AR Path="/5FAD6A8C/5FAB92AF" Ref="C?"  Part="1" 
AR Path="/5FAA9C6D/5FAB92AF" Ref="C28"  Part="1" 
F 0 "C28" V 5898 3450 50  0000 C CNN
F 1 "100n" V 5989 3450 50  0000 C CNN
F 2 "" H 6188 3300 50  0001 C CNN
F 3 "~" H 6150 3450 50  0001 C CNN
	1    6150 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FAB92B5
P 6450 3450
AR Path="/5FAD6A8C/5FAB92B5" Ref="R?"  Part="1" 
AR Path="/5FAA9C6D/5FAB92B5" Ref="R54"  Part="1" 
F 0 "R54" V 6243 3450 50  0000 C CNN
F 1 "100k" V 6334 3450 50  0000 C CNN
F 2 "" V 6380 3450 50  0001 C CNN
F 3 "~" H 6450 3450 50  0001 C CNN
	1    6450 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 2700 6650 3450
Wire Wire Line
	3150 2700 3150 3000
Connection ~ 3150 3000
Text Notes 4900 1150 0    50   ~ 0
gain\n
Text Notes 6850 1150 0    50   ~ 0
dry/wet mix\n
$Comp
L power:GND #PWR?
U 1 1 5FAB92C0
P 2700 7400
AR Path="/5FAD6A8C/5FAB92C0" Ref="#PWR?"  Part="1" 
AR Path="/5FAA9C6D/5FAB92C0" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 2700 7150 50  0001 C CNN
F 1 "GND" H 2705 7227 50  0000 C CNN
F 2 "" H 2700 7400 50  0001 C CNN
F 3 "" H 2700 7400 50  0001 C CNN
	1    2700 7400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FAB92C6
P 2700 6400
AR Path="/5FAD6A8C/5FAB92C6" Ref="#PWR?"  Part="1" 
AR Path="/5FAA9C6D/5FAB92C6" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 2700 6250 50  0001 C CNN
F 1 "+5V" H 2715 6573 50  0000 C CNN
F 2 "" H 2700 6400 50  0001 C CNN
F 3 "" H 2700 6400 50  0001 C CNN
	1    2700 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FAB92CC
P 8750 4600
AR Path="/5FAD6A8C/5FAB92CC" Ref="#PWR?"  Part="1" 
AR Path="/5FAA9C6D/5FAB92CC" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 8750 4350 50  0001 C CNN
F 1 "GND" H 8755 4427 50  0000 C CNN
F 2 "" H 8750 4600 50  0001 C CNN
F 3 "" H 8750 4600 50  0001 C CNN
	1    8750 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4600 8750 4450
Wire Wire Line
	8750 4000 9400 4000
Wire Wire Line
	9400 4000 9400 4450
Wire Wire Line
	8800 4450 8750 4450
Connection ~ 8750 4450
Wire Wire Line
	8750 4450 8750 4000
$Comp
L power:GND #PWR?
U 1 1 5FAB92D8
P 7550 3000
AR Path="/5FAD6A8C/5FAB92D8" Ref="#PWR?"  Part="1" 
AR Path="/5FAA9C6D/5FAB92D8" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 7550 2750 50  0001 C CNN
F 1 "GND" H 7555 2827 50  0000 C CNN
F 2 "" H 7550 3000 50  0001 C CNN
F 3 "" H 7550 3000 50  0001 C CNN
	1    7550 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FAB92DE
P 7550 2850
AR Path="/5FAD6A8C/5FAB92DE" Ref="R?"  Part="1" 
AR Path="/5FAA9C6D/5FAB92DE" Ref="R56"  Part="1" 
F 0 "R56" V 7343 2850 50  0000 C CNN
F 1 "1k" V 7434 2850 50  0000 C CNN
F 2 "" V 7480 2850 50  0001 C CNN
F 3 "~" H 7550 2850 50  0001 C CNN
	1    7550 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6600 2700 6650 2700
Text HLabel 1800 3450 0    50   Input ~ 0
IN
Text HLabel 7650 2700 2    50   Input ~ 0
OUT
Wire Wire Line
	7650 2700 7550 2700
Connection ~ 7550 2700
Wire Wire Line
	6000 3450 3150 3450
Wire Wire Line
	6600 3450 6650 3450
Wire Wire Line
	8750 2800 9400 2800
Wire Wire Line
	9400 2800 9400 3250
Wire Wire Line
	9400 3250 9350 3250
$Comp
L power:GND #PWR?
U 1 1 5FAB92EE
P 8750 3400
AR Path="/5FAD6A8C/5FAB92EE" Ref="#PWR?"  Part="1" 
AR Path="/5FAA9C6D/5FAB92EE" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 8750 3150 50  0001 C CNN
F 1 "GND" H 8755 3227 50  0000 C CNN
F 2 "" H 8750 3400 50  0001 C CNN
F 3 "" H 8750 3400 50  0001 C CNN
	1    8750 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2800 8750 3250
$Comp
L 4xxx:4049 U?
U 1 1 5FAB92F8
P 2850 3450
AR Path="/5FAD6A8C/5FAB92F8" Ref="U?"  Part="1" 
AR Path="/5FAA9C6D/5FAB92F8" Ref="U2"  Part="1" 
F 0 "U2" H 2850 3767 50  0000 C CNN
F 1 "4049" H 2850 3676 50  0000 C CNN
F 2 "" H 2850 3450 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4049ubms.pdf" H 2850 3450 50  0001 C CNN
F 4 "X" H 2850 3450 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 2850 3450 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2850 3450 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2850 3450
	1    0    0    -1  
$EndComp
Connection ~ 3150 3450
Connection ~ 2550 3450
$Comp
L 4xxx:4049 U?
U 2 1 5FAB9303
P 4250 2700
AR Path="/5FAD6A8C/5FAB9303" Ref="U?"  Part="2" 
AR Path="/5FAA9C6D/5FAB9303" Ref="U2"  Part="2" 
F 0 "U2" H 4250 3017 50  0000 C CNN
F 1 "4049" H 4250 2926 50  0000 C CNN
F 2 "" H 4250 2700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4049ubms.pdf" H 4250 2700 50  0001 C CNN
F 4 "X" H 4250 2700 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 4250 2700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4250 2700 50  0001 C CNN "Spice_Netlist_Enabled"
	2    4250 2700
	1    0    0    -1  
$EndComp
Connection ~ 3950 2700
$Comp
L 4xxx:4049 U?
U 3 1 5FAB930D
P 5700 2700
AR Path="/5FAD6A8C/5FAB930D" Ref="U?"  Part="3" 
AR Path="/5FAA9C6D/5FAB930D" Ref="U2"  Part="3" 
F 0 "U2" H 5700 3017 50  0000 C CNN
F 1 "4049" H 5700 2926 50  0000 C CNN
F 2 "" H 5700 2700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4049ubms.pdf" H 5700 2700 50  0001 C CNN
F 4 "X" H 5700 2700 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 5700 2700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5700 2700 50  0001 C CNN "Spice_Netlist_Enabled"
	3    5700 2700
	1    0    0    -1  
$EndComp
Connection ~ 6000 2700
Connection ~ 5400 2700
$Comp
L 4xxx:4049 U?
U 4 1 5FAB9318
P 6950 2700
AR Path="/5FAD6A8C/5FAB9318" Ref="U?"  Part="4" 
AR Path="/5FAA9C6D/5FAB9318" Ref="U2"  Part="4" 
F 0 "U2" H 6950 3017 50  0000 C CNN
F 1 "4049" H 6950 2926 50  0000 C CNN
F 2 "" H 6950 2700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4049ubms.pdf" H 6950 2700 50  0001 C CNN
F 4 "X" H 6950 2700 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 6950 2700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6950 2700 50  0001 C CNN "Spice_Netlist_Enabled"
	4    6950 2700
	1    0    0    -1  
$EndComp
Connection ~ 7250 2700
$Comp
L 4xxx:4049 U?
U 5 1 5FAB9322
P 9050 3250
AR Path="/5FAD6A8C/5FAB9322" Ref="U?"  Part="5" 
AR Path="/5FAA9C6D/5FAB9322" Ref="U2"  Part="5" 
F 0 "U2" H 9050 3567 50  0000 C CNN
F 1 "4049" H 9050 3476 50  0000 C CNN
F 2 "" H 9050 3250 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4049ubms.pdf" H 9050 3250 50  0001 C CNN
F 4 "X" H 9050 3250 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 9050 3250 50  0001 C CNN "Spice_Model"
F 6 "Y" H 9050 3250 50  0001 C CNN "Spice_Netlist_Enabled"
	5    9050 3250
	1    0    0    -1  
$EndComp
Connection ~ 8750 3250
Wire Wire Line
	8750 3250 8750 3400
$Comp
L 4xxx:4049 U?
U 6 1 5FAB932D
P 9100 4450
AR Path="/5FAD6A8C/5FAB932D" Ref="U?"  Part="6" 
AR Path="/5FAA9C6D/5FAB932D" Ref="U2"  Part="6" 
F 0 "U2" H 9100 4767 50  0000 C CNN
F 1 "4049" H 9100 4676 50  0000 C CNN
F 2 "" H 9100 4450 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4049ubms.pdf" H 9100 4450 50  0001 C CNN
F 4 "X" H 9100 4450 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 9100 4450 50  0001 C CNN "Spice_Model"
F 6 "Y" H 9100 4450 50  0001 C CNN "Spice_Netlist_Enabled"
	6    9100 4450
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4049 U?
U 7 1 5FAB9336
P 2700 6900
AR Path="/5FAD6A8C/5FAB9336" Ref="U?"  Part="7" 
AR Path="/5FAA9C6D/5FAB9336" Ref="U2"  Part="7" 
F 0 "U2" H 2930 6946 50  0000 L CNN
F 1 "4049" H 2930 6855 50  0000 L CNN
F 2 "" H 2700 6900 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4049ubms.pdf" H 2700 6900 50  0001 C CNN
F 4 "X" H 2700 6900 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 2700 6900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2700 6900 50  0001 C CNN "Spice_Netlist_Enabled"
	7    2700 6900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
