EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 10
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
U 1 1 5FAC272B
P 2300 3400
AR Path="/5FAD6A8C/5FAC272B" Ref="R?"  Part="1" 
AR Path="/5FAAAAA4/5FAC272B" Ref="R67"  Part="1" 
F 0 "R67" V 2093 3400 50  0000 C CNN
F 1 "470k" V 2184 3400 50  0000 C CNN
F 2 "" V 2230 3400 50  0001 C CNN
F 3 "~" H 2300 3400 50  0001 C CNN
	1    2300 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FAC2731
P 2850 2950
AR Path="/5FAD6A8C/5FAC2731" Ref="R?"  Part="1" 
AR Path="/5FAAAAA4/5FAC2731" Ref="R68"  Part="1" 
F 0 "R68" V 2643 2950 50  0000 C CNN
F 1 "470k" V 2734 2950 50  0000 C CNN
F 2 "" V 2780 2950 50  0001 C CNN
F 3 "~" H 2850 2950 50  0001 C CNN
	1    2850 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 2950 2550 2950
Wire Wire Line
	2550 2950 2550 3400
Wire Wire Line
	3000 2950 3150 2950
Wire Wire Line
	3150 2950 3150 3400
Wire Wire Line
	2450 3400 2550 3400
$Comp
L Device:R R?
U 1 1 5FAC273C
P 3800 2650
AR Path="/5FAD6A8C/5FAC273C" Ref="R?"  Part="1" 
AR Path="/5FAAAAA4/5FAC273C" Ref="R69"  Part="1" 
F 0 "R69" V 3593 2650 50  0000 C CNN
F 1 "100k" V 3684 2650 50  0000 C CNN
F 2 "" V 3730 2650 50  0001 C CNN
F 3 "~" H 3800 2650 50  0001 C CNN
	1    3800 2650
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FAC2742
P 1950 3400
AR Path="/5FAD6A8C/5FAC2742" Ref="C?"  Part="1" 
AR Path="/5FAAAAA4/5FAC2742" Ref="C36"  Part="1" 
F 0 "C36" V 1698 3400 50  0000 C CNN
F 1 "10n" V 1789 3400 50  0000 C CNN
F 2 "" H 1988 3250 50  0001 C CNN
F 3 "~" H 1950 3400 50  0001 C CNN
	1    1950 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 3400 2150 3400
$Comp
L Device:C C?
U 1 1 5FAC2749
P 3500 2650
AR Path="/5FAD6A8C/5FAC2749" Ref="C?"  Part="1" 
AR Path="/5FAAAAA4/5FAC2749" Ref="C37"  Part="1" 
F 0 "C37" V 3248 2650 50  0000 C CNN
F 1 "100n" V 3339 2650 50  0000 C CNN
F 2 "" H 3538 2500 50  0001 C CNN
F 3 "~" H 3500 2650 50  0001 C CNN
	1    3500 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 2650 3350 2650
$Comp
L Device:R R?
U 1 1 5FAC2750
P 4200 2050
AR Path="/5FAD6A8C/5FAC2750" Ref="R?"  Part="1" 
AR Path="/5FAAAAA4/5FAC2750" Ref="R70"  Part="1" 
F 0 "R70" V 3993 2050 50  0000 C CNN
F 1 "100k" V 4084 2050 50  0000 C CNN
F 2 "" V 4130 2050 50  0001 C CNN
F 3 "~" H 4200 2050 50  0001 C CNN
	1    4200 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5FAC2759
P 4550 2050
AR Path="/5FAD6A8C/5FAC2759" Ref="RV?"  Part="1" 
AR Path="/5FAAAAA4/5FAC2759" Ref="RV4"  Part="1" 
F 0 "RV4" V 4343 2050 50  0000 C CNN
F 1 "500k lin" V 4434 2050 50  0000 C CNN
F 2 "" H 4550 2050 50  0001 C CNN
F 3 "~" H 4550 2050 50  0001 C CNN
F 4 "X" H 4550 2050 50  0001 C CNN "Spice_Primitive"
F 5 "voltage_divider_1" H 4550 2050 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4550 2050 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4550 2050
	0    -1   1    0   
$EndComp
Wire Wire Line
	4050 2050 3950 2050
Wire Wire Line
	3950 2050 3950 2650
Wire Wire Line
	4550 2200 4550 2650
Wire Wire Line
	4350 2050 4400 2050
Wire Wire Line
	4700 2050 4800 2050
Wire Wire Line
	4800 2050 4800 2650
$Comp
L Device:R R?
U 1 1 5FAC2771
P 5700 2200
AR Path="/5FAD6A8C/5FAC2771" Ref="R?"  Part="1" 
AR Path="/5FAAAAA4/5FAC2771" Ref="R72"  Part="1" 
F 0 "R72" V 5493 2200 50  0000 C CNN
F 1 "1Meg" V 5584 2200 50  0000 C CNN
F 2 "" V 5630 2200 50  0001 C CNN
F 3 "~" H 5700 2200 50  0001 C CNN
	1    5700 2200
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 5FAC277A
P 5700 1800
AR Path="/5FAD6A8C/5FAC277A" Ref="D?"  Part="1" 
AR Path="/5FAAAAA4/5FAC277A" Ref="D8"  Part="1" 
F 0 "D8" H 5700 2017 50  0000 C CNN
F 1 "1N4148" H 5700 1926 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5700 1625 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5700 1800 50  0001 C CNN
F 4 "D" H 5700 1800 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 5700 1800 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5700 1800 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5700 1800
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 5FAC2783
P 5700 1450
AR Path="/5FAD6A8C/5FAC2783" Ref="D?"  Part="1" 
AR Path="/5FAAAAA4/5FAC2783" Ref="D7"  Part="1" 
F 0 "D7" H 5700 1233 50  0000 C CNN
F 1 "1N4148" H 5700 1324 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5700 1275 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5700 1450 50  0001 C CNN
F 4 "D" H 5700 1450 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 5700 1450 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5700 1450 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5700 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 1450 5400 1450
Wire Wire Line
	5400 1450 5400 1800
Wire Wire Line
	5850 1450 6000 1450
Wire Wire Line
	6000 1450 6000 1800
Wire Wire Line
	6000 1800 5850 1800
Wire Wire Line
	5550 1800 5400 1800
Connection ~ 6000 1800
Wire Wire Line
	6000 1800 6000 2200
Connection ~ 5400 1800
Wire Wire Line
	5400 1800 5400 2200
Wire Wire Line
	6000 2200 5850 2200
Wire Wire Line
	5550 2200 5400 2200
Connection ~ 6000 2200
Wire Wire Line
	6000 2200 6000 2650
Connection ~ 5400 2200
Wire Wire Line
	5400 2200 5400 2650
$Comp
L Device:R R?
U 1 1 5FAC2799
P 6450 2650
AR Path="/5FAD6A8C/5FAC2799" Ref="R?"  Part="1" 
AR Path="/5FAAAAA4/5FAC2799" Ref="R73"  Part="1" 
F 0 "R73" V 6243 2650 50  0000 C CNN
F 1 "100k" V 6334 2650 50  0000 C CNN
F 2 "" V 6380 2650 50  0001 C CNN
F 3 "~" H 6450 2650 50  0001 C CNN
	1    6450 2650
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FAC279F
P 6150 2650
AR Path="/5FAD6A8C/5FAC279F" Ref="C?"  Part="1" 
AR Path="/5FAAAAA4/5FAC279F" Ref="C39"  Part="1" 
F 0 "C39" V 5898 2650 50  0000 C CNN
F 1 "100n" V 5989 2650 50  0000 C CNN
F 2 "" H 6188 2500 50  0001 C CNN
F 3 "~" H 6150 2650 50  0001 C CNN
	1    6150 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FAC27A5
P 7000 2200
AR Path="/5FAD6A8C/5FAC27A5" Ref="R?"  Part="1" 
AR Path="/5FAAAAA4/5FAC27A5" Ref="R75"  Part="1" 
F 0 "R75" V 6793 2200 50  0000 C CNN
F 1 "220k" V 6884 2200 50  0000 C CNN
F 2 "" V 6930 2200 50  0001 C CNN
F 3 "~" H 7000 2200 50  0001 C CNN
	1    7000 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 2200 6650 2200
Wire Wire Line
	6650 2200 6650 2650
Connection ~ 6650 2650
Wire Wire Line
	7150 2200 7250 2200
Wire Wire Line
	7250 2200 7250 2650
$Comp
L Device:C C?
U 1 1 5FAC27B0
P 7400 2650
AR Path="/5FAD6A8C/5FAC27B0" Ref="C?"  Part="1" 
AR Path="/5FAAAAA4/5FAC27B0" Ref="C41"  Part="1" 
F 0 "C41" V 7148 2650 50  0000 C CNN
F 1 "100n" V 7239 2650 50  0000 C CNN
F 2 "" H 7438 2500 50  0001 C CNN
F 3 "~" H 7400 2650 50  0001 C CNN
	1    7400 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 2650 3150 2950
Connection ~ 3150 2950
Text Notes 4900 1100 0    50   ~ 0
gain\n
Text Notes 6850 1100 0    50   ~ 0
dry/wet mix\n
$Comp
L power:GND #PWR?
U 1 1 5FAC27C7
P 2700 7350
AR Path="/5FAD6A8C/5FAC27C7" Ref="#PWR?"  Part="1" 
AR Path="/5FAAAAA4/5FAC27C7" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 2700 7100 50  0001 C CNN
F 1 "GND" H 2705 7177 50  0000 C CNN
F 2 "" H 2700 7350 50  0001 C CNN
F 3 "" H 2700 7350 50  0001 C CNN
	1    2700 7350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FAC27CD
P 2700 6350
AR Path="/5FAD6A8C/5FAC27CD" Ref="#PWR?"  Part="1" 
AR Path="/5FAAAAA4/5FAC27CD" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 2700 6200 50  0001 C CNN
F 1 "+5V" H 2715 6523 50  0000 C CNN
F 2 "" H 2700 6350 50  0001 C CNN
F 3 "" H 2700 6350 50  0001 C CNN
	1    2700 6350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FAC27D3
P 8750 4550
AR Path="/5FAD6A8C/5FAC27D3" Ref="#PWR?"  Part="1" 
AR Path="/5FAAAAA4/5FAC27D3" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 8750 4300 50  0001 C CNN
F 1 "GND" H 8755 4377 50  0000 C CNN
F 2 "" H 8750 4550 50  0001 C CNN
F 3 "" H 8750 4550 50  0001 C CNN
	1    8750 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4550 8750 4400
Wire Wire Line
	8750 3950 9400 3950
Wire Wire Line
	9400 3950 9400 4400
Wire Wire Line
	8800 4400 8750 4400
Connection ~ 8750 4400
Wire Wire Line
	8750 4400 8750 3950
$Comp
L power:GND #PWR?
U 1 1 5FAC27DF
P 7550 2950
AR Path="/5FAD6A8C/5FAC27DF" Ref="#PWR?"  Part="1" 
AR Path="/5FAAAAA4/5FAC27DF" Ref="#PWR048"  Part="1" 
F 0 "#PWR048" H 7550 2700 50  0001 C CNN
F 1 "GND" H 7555 2777 50  0000 C CNN
F 2 "" H 7550 2950 50  0001 C CNN
F 3 "" H 7550 2950 50  0001 C CNN
	1    7550 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FAC27E5
P 7550 2800
AR Path="/5FAD6A8C/5FAC27E5" Ref="R?"  Part="1" 
AR Path="/5FAAAAA4/5FAC27E5" Ref="R76"  Part="1" 
F 0 "R76" V 7343 2800 50  0000 C CNN
F 1 "1k" V 7434 2800 50  0000 C CNN
F 2 "" V 7480 2800 50  0001 C CNN
F 3 "~" H 7550 2800 50  0001 C CNN
	1    7550 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6600 2650 6650 2650
Text HLabel 1800 3400 0    50   Input ~ 0
IN
Text HLabel 7650 2650 2    50   Input ~ 0
OUT
Wire Wire Line
	7650 2650 7550 2650
Connection ~ 7550 2650
Wire Wire Line
	8750 2750 9400 2750
Wire Wire Line
	9400 2750 9400 3200
Wire Wire Line
	9400 3200 9350 3200
$Comp
L power:GND #PWR?
U 1 1 5FAC27F5
P 8750 3350
AR Path="/5FAD6A8C/5FAC27F5" Ref="#PWR?"  Part="1" 
AR Path="/5FAAAAA4/5FAC27F5" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 8750 3100 50  0001 C CNN
F 1 "GND" H 8755 3177 50  0000 C CNN
F 2 "" H 8750 3350 50  0001 C CNN
F 3 "" H 8750 3350 50  0001 C CNN
	1    8750 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2750 8750 3200
$Comp
L 4xxx:4049 U?
U 1 1 5FAC27FF
P 2850 3400
AR Path="/5FAD6A8C/5FAC27FF" Ref="U?"  Part="1" 
AR Path="/5FAAAAA4/5FAC27FF" Ref="U4"  Part="1" 
F 0 "U4" H 2850 3717 50  0000 C CNN
F 1 "4049" H 2850 3626 50  0000 C CNN
F 2 "" H 2850 3400 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4049ubms.pdf" H 2850 3400 50  0001 C CNN
F 4 "X" H 2850 3400 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 2850 3400 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2850 3400 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2850 3400
	1    0    0    -1  
$EndComp
Connection ~ 2550 3400
$Comp
L 4xxx:4049 U?
U 2 1 5FAC280A
P 4250 2650
AR Path="/5FAD6A8C/5FAC280A" Ref="U?"  Part="2" 
AR Path="/5FAAAAA4/5FAC280A" Ref="U4"  Part="2" 
F 0 "U4" H 4250 2967 50  0000 C CNN
F 1 "4049" H 4250 2876 50  0000 C CNN
F 2 "" H 4250 2650 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4049ubms.pdf" H 4250 2650 50  0001 C CNN
F 4 "X" H 4250 2650 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 4250 2650 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4250 2650 50  0001 C CNN "Spice_Netlist_Enabled"
	2    4250 2650
	1    0    0    -1  
$EndComp
Connection ~ 3950 2650
$Comp
L 4xxx:4049 U?
U 3 1 5FAC2814
P 5700 2650
AR Path="/5FAD6A8C/5FAC2814" Ref="U?"  Part="3" 
AR Path="/5FAAAAA4/5FAC2814" Ref="U4"  Part="3" 
F 0 "U4" H 5700 2967 50  0000 C CNN
F 1 "4049" H 5700 2876 50  0000 C CNN
F 2 "" H 5700 2650 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4049ubms.pdf" H 5700 2650 50  0001 C CNN
F 4 "X" H 5700 2650 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 5700 2650 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5700 2650 50  0001 C CNN "Spice_Netlist_Enabled"
	3    5700 2650
	1    0    0    -1  
$EndComp
Connection ~ 6000 2650
Connection ~ 5400 2650
$Comp
L 4xxx:4049 U?
U 4 1 5FAC281F
P 6950 2650
AR Path="/5FAD6A8C/5FAC281F" Ref="U?"  Part="4" 
AR Path="/5FAAAAA4/5FAC281F" Ref="U4"  Part="4" 
F 0 "U4" H 6950 2967 50  0000 C CNN
F 1 "4049" H 6950 2876 50  0000 C CNN
F 2 "" H 6950 2650 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4049ubms.pdf" H 6950 2650 50  0001 C CNN
F 4 "X" H 6950 2650 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 6950 2650 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6950 2650 50  0001 C CNN "Spice_Netlist_Enabled"
	4    6950 2650
	1    0    0    -1  
$EndComp
Connection ~ 7250 2650
$Comp
L 4xxx:4049 U?
U 5 1 5FAC2829
P 9050 3200
AR Path="/5FAD6A8C/5FAC2829" Ref="U?"  Part="5" 
AR Path="/5FAAAAA4/5FAC2829" Ref="U4"  Part="5" 
F 0 "U4" H 9050 3517 50  0000 C CNN
F 1 "4049" H 9050 3426 50  0000 C CNN
F 2 "" H 9050 3200 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4049ubms.pdf" H 9050 3200 50  0001 C CNN
F 4 "X" H 9050 3200 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 9050 3200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 9050 3200 50  0001 C CNN "Spice_Netlist_Enabled"
	5    9050 3200
	1    0    0    -1  
$EndComp
Connection ~ 8750 3200
Wire Wire Line
	8750 3200 8750 3350
$Comp
L 4xxx:4049 U?
U 6 1 5FAC2834
P 9100 4400
AR Path="/5FAD6A8C/5FAC2834" Ref="U?"  Part="6" 
AR Path="/5FAAAAA4/5FAC2834" Ref="U4"  Part="6" 
F 0 "U4" H 9100 4717 50  0000 C CNN
F 1 "4049" H 9100 4626 50  0000 C CNN
F 2 "" H 9100 4400 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4049ubms.pdf" H 9100 4400 50  0001 C CNN
F 4 "X" H 9100 4400 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 9100 4400 50  0001 C CNN "Spice_Model"
F 6 "Y" H 9100 4400 50  0001 C CNN "Spice_Netlist_Enabled"
	6    9100 4400
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4049 U?
U 7 1 5FAC283D
P 2700 6850
AR Path="/5FAD6A8C/5FAC283D" Ref="U?"  Part="7" 
AR Path="/5FAAAAA4/5FAC283D" Ref="U4"  Part="7" 
F 0 "U4" H 2930 6896 50  0000 L CNN
F 1 "4049" H 2930 6805 50  0000 L CNN
F 2 "" H 2700 6850 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4049ubms.pdf" H 2700 6850 50  0001 C CNN
F 4 "X" H 2700 6850 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 2700 6850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2700 6850 50  0001 C CNN "Spice_Netlist_Enabled"
	7    2700 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3400 6650 3400
Connection ~ 3150 3400
Wire Wire Line
	6000 3400 3150 3400
Wire Wire Line
	6650 2650 6650 3400
$Comp
L Device:R R?
U 1 1 5FAC27BC
P 6450 3400
AR Path="/5FAD6A8C/5FAC27BC" Ref="R?"  Part="1" 
AR Path="/5FAAAAA4/5FAC27BC" Ref="R74"  Part="1" 
F 0 "R74" V 6243 3400 50  0000 C CNN
F 1 "100k" V 6334 3400 50  0000 C CNN
F 2 "" V 6380 3400 50  0001 C CNN
F 3 "~" H 6450 3400 50  0001 C CNN
	1    6450 3400
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FAC27B6
P 6150 3400
AR Path="/5FAD6A8C/5FAC27B6" Ref="C?"  Part="1" 
AR Path="/5FAAAAA4/5FAC27B6" Ref="C40"  Part="1" 
F 0 "C40" V 5898 3400 50  0000 C CNN
F 1 "100n" V 5989 3400 50  0000 C CNN
F 2 "" H 6188 3250 50  0001 C CNN
F 3 "~" H 6150 3400 50  0001 C CNN
	1    6150 3400
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FAC276B
P 5250 2650
AR Path="/5FAD6A8C/5FAC276B" Ref="C?"  Part="1" 
AR Path="/5FAAAAA4/5FAC276B" Ref="C38"  Part="1" 
F 0 "C38" V 4998 2650 50  0000 C CNN
F 1 "470n" V 5089 2650 50  0000 C CNN
F 2 "" H 5288 2500 50  0001 C CNN
F 3 "~" H 5250 2650 50  0001 C CNN
	1    5250 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FAC2763
P 4950 2650
AR Path="/5FAD6A8C/5FAC2763" Ref="R?"  Part="1" 
AR Path="/5FAAAAA4/5FAC2763" Ref="R71"  Part="1" 
F 0 "R71" V 4743 2650 50  0000 C CNN
F 1 "10k" V 4834 2650 50  0000 C CNN
F 2 "" V 4880 2650 50  0001 C CNN
F 3 "~" H 4950 2650 50  0001 C CNN
	1    4950 2650
	0    1    1    0   
$EndComp
$EndSCHEMATC
