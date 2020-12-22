EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 10
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
U 1 1 5FABD7B4
P 2400 3450
AR Path="/5FAD6A8C/5FABD7B4" Ref="R?"  Part="1" 
AR Path="/5FAAA432/5FABD7B4" Ref="R57"  Part="1" 
F 0 "R57" V 2193 3450 50  0000 C CNN
F 1 "470k" V 2284 3450 50  0000 C CNN
F 2 "" V 2330 3450 50  0001 C CNN
F 3 "~" H 2400 3450 50  0001 C CNN
	1    2400 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FABD7BA
P 2950 3000
AR Path="/5FAD6A8C/5FABD7BA" Ref="R?"  Part="1" 
AR Path="/5FAAA432/5FABD7BA" Ref="R58"  Part="1" 
F 0 "R58" V 2743 3000 50  0000 C CNN
F 1 "470k" V 2834 3000 50  0000 C CNN
F 2 "" V 2880 3000 50  0001 C CNN
F 3 "~" H 2950 3000 50  0001 C CNN
	1    2950 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 3000 2650 3000
Wire Wire Line
	2650 3000 2650 3450
Wire Wire Line
	3100 3000 3250 3000
Wire Wire Line
	3250 3000 3250 3450
Wire Wire Line
	2550 3450 2650 3450
$Comp
L Device:R R?
U 1 1 5FABD7C5
P 3900 2700
AR Path="/5FAD6A8C/5FABD7C5" Ref="R?"  Part="1" 
AR Path="/5FAAA432/5FABD7C5" Ref="R59"  Part="1" 
F 0 "R59" V 3693 2700 50  0000 C CNN
F 1 "100k" V 3784 2700 50  0000 C CNN
F 2 "" V 3830 2700 50  0001 C CNN
F 3 "~" H 3900 2700 50  0001 C CNN
	1    3900 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 3450 2250 3450
$Comp
L Device:C C?
U 1 1 5FABD7D2
P 3600 2700
AR Path="/5FAD6A8C/5FABD7D2" Ref="C?"  Part="1" 
AR Path="/5FAAA432/5FABD7D2" Ref="C31"  Part="1" 
F 0 "C31" V 3348 2700 50  0000 C CNN
F 1 "100n" V 3439 2700 50  0000 C CNN
F 2 "" H 3638 2550 50  0001 C CNN
F 3 "~" H 3600 2700 50  0001 C CNN
	1    3600 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 2700 3450 2700
$Comp
L Device:R R?
U 1 1 5FABD7D9
P 4300 2100
AR Path="/5FAD6A8C/5FABD7D9" Ref="R?"  Part="1" 
AR Path="/5FAAA432/5FABD7D9" Ref="R60"  Part="1" 
F 0 "R60" V 4093 2100 50  0000 C CNN
F 1 "100k" V 4184 2100 50  0000 C CNN
F 2 "" V 4230 2100 50  0001 C CNN
F 3 "~" H 4300 2100 50  0001 C CNN
	1    4300 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5FABD7E2
P 4650 2100
AR Path="/5FAD6A8C/5FABD7E2" Ref="RV?"  Part="1" 
AR Path="/5FAAA432/5FABD7E2" Ref="RV3"  Part="1" 
F 0 "RV3" V 4443 2100 50  0000 C CNN
F 1 "500k lin" V 4534 2100 50  0000 C CNN
F 2 "" H 4650 2100 50  0001 C CNN
F 3 "~" H 4650 2100 50  0001 C CNN
F 4 "X" H 4650 2100 50  0001 C CNN "Spice_Primitive"
F 5 "voltage_divider_1" H 4650 2100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4650 2100 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4650 2100
	0    -1   1    0   
$EndComp
Wire Wire Line
	4150 2100 4050 2100
Wire Wire Line
	4050 2100 4050 2700
Wire Wire Line
	4650 2250 4650 2700
Wire Wire Line
	4450 2100 4500 2100
$Comp
L Device:R R?
U 1 1 5FABD7EC
P 5050 2700
AR Path="/5FAD6A8C/5FABD7EC" Ref="R?"  Part="1" 
AR Path="/5FAAA432/5FABD7EC" Ref="R61"  Part="1" 
F 0 "R61" V 4843 2700 50  0000 C CNN
F 1 "10k" V 4934 2700 50  0000 C CNN
F 2 "" V 4980 2700 50  0001 C CNN
F 3 "~" H 5050 2700 50  0001 C CNN
	1    5050 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 2100 4900 2100
Wire Wire Line
	4900 2100 4900 2700
$Comp
L Device:C C?
U 1 1 5FABD7F4
P 5350 2700
AR Path="/5FAD6A8C/5FABD7F4" Ref="C?"  Part="1" 
AR Path="/5FAAA432/5FABD7F4" Ref="C32"  Part="1" 
F 0 "C32" V 5098 2700 50  0000 C CNN
F 1 "470n" V 5189 2700 50  0000 C CNN
F 2 "" H 5388 2550 50  0001 C CNN
F 3 "~" H 5350 2700 50  0001 C CNN
	1    5350 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FABD7FA
P 5800 2250
AR Path="/5FAD6A8C/5FABD7FA" Ref="R?"  Part="1" 
AR Path="/5FAAA432/5FABD7FA" Ref="R62"  Part="1" 
F 0 "R62" V 5593 2250 50  0000 C CNN
F 1 "1Meg" V 5684 2250 50  0000 C CNN
F 2 "" V 5730 2250 50  0001 C CNN
F 3 "~" H 5800 2250 50  0001 C CNN
	1    5800 2250
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 5FABD803
P 5800 1850
AR Path="/5FAD6A8C/5FABD803" Ref="D?"  Part="1" 
AR Path="/5FAAA432/5FABD803" Ref="D6"  Part="1" 
F 0 "D6" H 5800 2067 50  0000 C CNN
F 1 "1N4148" H 5800 1976 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5800 1675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5800 1850 50  0001 C CNN
F 4 "D" H 5800 1850 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 5800 1850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5800 1850 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5800 1850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 5FABD80C
P 5800 1500
AR Path="/5FAD6A8C/5FABD80C" Ref="D?"  Part="1" 
AR Path="/5FAAA432/5FABD80C" Ref="D5"  Part="1" 
F 0 "D5" H 5800 1283 50  0000 C CNN
F 1 "1N4148" H 5800 1374 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5800 1325 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5800 1500 50  0001 C CNN
F 4 "D" H 5800 1500 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 5800 1500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5800 1500 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5800 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5650 1500 5500 1500
Wire Wire Line
	5500 1500 5500 1850
Wire Wire Line
	5950 1500 6100 1500
Wire Wire Line
	6100 1500 6100 1850
Wire Wire Line
	6100 1850 5950 1850
Wire Wire Line
	5650 1850 5500 1850
Connection ~ 6100 1850
Wire Wire Line
	6100 1850 6100 2250
Connection ~ 5500 1850
Wire Wire Line
	5500 1850 5500 2250
Wire Wire Line
	6100 2250 5950 2250
Wire Wire Line
	5650 2250 5500 2250
Connection ~ 6100 2250
Wire Wire Line
	6100 2250 6100 2700
Connection ~ 5500 2250
Wire Wire Line
	5500 2250 5500 2700
$Comp
L Device:R R?
U 1 1 5FABD822
P 6550 2700
AR Path="/5FAD6A8C/5FABD822" Ref="R?"  Part="1" 
AR Path="/5FAAA432/5FABD822" Ref="R63"  Part="1" 
F 0 "R63" V 6343 2700 50  0000 C CNN
F 1 "100k" V 6434 2700 50  0000 C CNN
F 2 "" V 6480 2700 50  0001 C CNN
F 3 "~" H 6550 2700 50  0001 C CNN
	1    6550 2700
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FABD828
P 6250 2700
AR Path="/5FAD6A8C/5FABD828" Ref="C?"  Part="1" 
AR Path="/5FAAA432/5FABD828" Ref="C33"  Part="1" 
F 0 "C33" V 5998 2700 50  0000 C CNN
F 1 "100n" V 6089 2700 50  0000 C CNN
F 2 "" H 6288 2550 50  0001 C CNN
F 3 "~" H 6250 2700 50  0001 C CNN
	1    6250 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FABD82E
P 7100 2250
AR Path="/5FAD6A8C/5FABD82E" Ref="R?"  Part="1" 
AR Path="/5FAAA432/5FABD82E" Ref="R65"  Part="1" 
F 0 "R65" V 6893 2250 50  0000 C CNN
F 1 "220k" V 6984 2250 50  0000 C CNN
F 2 "" V 7030 2250 50  0001 C CNN
F 3 "~" H 7100 2250 50  0001 C CNN
	1    7100 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 2250 6750 2250
Wire Wire Line
	6750 2250 6750 2700
Connection ~ 6750 2700
Wire Wire Line
	7250 2250 7350 2250
Wire Wire Line
	7350 2250 7350 2700
$Comp
L Device:C C?
U 1 1 5FABD839
P 7500 2700
AR Path="/5FAD6A8C/5FABD839" Ref="C?"  Part="1" 
AR Path="/5FAAA432/5FABD839" Ref="C35"  Part="1" 
F 0 "C35" V 7248 2700 50  0000 C CNN
F 1 "100n" V 7339 2700 50  0000 C CNN
F 2 "" H 7538 2550 50  0001 C CNN
F 3 "~" H 7500 2700 50  0001 C CNN
	1    7500 2700
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FABD83F
P 6250 3450
AR Path="/5FAD6A8C/5FABD83F" Ref="C?"  Part="1" 
AR Path="/5FAAA432/5FABD83F" Ref="C34"  Part="1" 
F 0 "C34" V 5998 3450 50  0000 C CNN
F 1 "100n" V 6089 3450 50  0000 C CNN
F 2 "" H 6288 3300 50  0001 C CNN
F 3 "~" H 6250 3450 50  0001 C CNN
	1    6250 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FABD845
P 6550 3450
AR Path="/5FAD6A8C/5FABD845" Ref="R?"  Part="1" 
AR Path="/5FAAA432/5FABD845" Ref="R64"  Part="1" 
F 0 "R64" V 6343 3450 50  0000 C CNN
F 1 "100k" V 6434 3450 50  0000 C CNN
F 2 "" V 6480 3450 50  0001 C CNN
F 3 "~" H 6550 3450 50  0001 C CNN
	1    6550 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 2700 6750 3450
Wire Wire Line
	3250 2700 3250 3000
Connection ~ 3250 3000
Text Notes 5000 1150 0    50   ~ 0
gain\n
Text Notes 6950 1150 0    50   ~ 0
dry/wet mix\n
$Comp
L power:GND #PWR?
U 1 1 5FABD850
P 2800 7400
AR Path="/5FAD6A8C/5FABD850" Ref="#PWR?"  Part="1" 
AR Path="/5FAAA432/5FABD850" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 2800 7150 50  0001 C CNN
F 1 "GND" H 2805 7227 50  0000 C CNN
F 2 "" H 2800 7400 50  0001 C CNN
F 3 "" H 2800 7400 50  0001 C CNN
	1    2800 7400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FABD856
P 2800 6400
AR Path="/5FAD6A8C/5FABD856" Ref="#PWR?"  Part="1" 
AR Path="/5FAAA432/5FABD856" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 2800 6250 50  0001 C CNN
F 1 "+5V" H 2815 6573 50  0000 C CNN
F 2 "" H 2800 6400 50  0001 C CNN
F 3 "" H 2800 6400 50  0001 C CNN
	1    2800 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FABD85C
P 8850 4600
AR Path="/5FAD6A8C/5FABD85C" Ref="#PWR?"  Part="1" 
AR Path="/5FAAA432/5FABD85C" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 8850 4350 50  0001 C CNN
F 1 "GND" H 8855 4427 50  0000 C CNN
F 2 "" H 8850 4600 50  0001 C CNN
F 3 "" H 8850 4600 50  0001 C CNN
	1    8850 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4600 8850 4450
Wire Wire Line
	8850 4000 9500 4000
Wire Wire Line
	9500 4000 9500 4450
Wire Wire Line
	8900 4450 8850 4450
Connection ~ 8850 4450
Wire Wire Line
	8850 4450 8850 4000
$Comp
L power:GND #PWR?
U 1 1 5FABD868
P 7650 3000
AR Path="/5FAD6A8C/5FABD868" Ref="#PWR?"  Part="1" 
AR Path="/5FAAA432/5FABD868" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 7650 2750 50  0001 C CNN
F 1 "GND" H 7655 2827 50  0000 C CNN
F 2 "" H 7650 3000 50  0001 C CNN
F 3 "" H 7650 3000 50  0001 C CNN
	1    7650 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FABD86E
P 7650 2850
AR Path="/5FAD6A8C/5FABD86E" Ref="R?"  Part="1" 
AR Path="/5FAAA432/5FABD86E" Ref="R66"  Part="1" 
F 0 "R66" V 7443 2850 50  0000 C CNN
F 1 "1k" V 7534 2850 50  0000 C CNN
F 2 "" V 7580 2850 50  0001 C CNN
F 3 "~" H 7650 2850 50  0001 C CNN
	1    7650 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 2700 6750 2700
Text HLabel 7750 2700 2    50   Input ~ 0
OUT
Wire Wire Line
	7750 2700 7650 2700
Connection ~ 7650 2700
Wire Wire Line
	6100 3450 3250 3450
Wire Wire Line
	6700 3450 6750 3450
Wire Wire Line
	8850 2800 9500 2800
Wire Wire Line
	9500 2800 9500 3250
Wire Wire Line
	9500 3250 9450 3250
$Comp
L power:GND #PWR?
U 1 1 5FABD87E
P 8850 3400
AR Path="/5FAD6A8C/5FABD87E" Ref="#PWR?"  Part="1" 
AR Path="/5FAAA432/5FABD87E" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 8850 3150 50  0001 C CNN
F 1 "GND" H 8855 3227 50  0000 C CNN
F 2 "" H 8850 3400 50  0001 C CNN
F 3 "" H 8850 3400 50  0001 C CNN
	1    8850 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2800 8850 3250
$Comp
L 4xxx:4049 U?
U 1 1 5FABD888
P 2950 3450
AR Path="/5FAD6A8C/5FABD888" Ref="U?"  Part="1" 
AR Path="/5FAAA432/5FABD888" Ref="U3"  Part="1" 
F 0 "U3" H 2950 3767 50  0000 C CNN
F 1 "4049" H 2950 3676 50  0000 C CNN
F 2 "" H 2950 3450 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4049ubms.pdf" H 2950 3450 50  0001 C CNN
F 4 "X" H 2950 3450 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 2950 3450 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2950 3450 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2950 3450
	1    0    0    -1  
$EndComp
Connection ~ 3250 3450
Connection ~ 2650 3450
$Comp
L 4xxx:4049 U?
U 2 1 5FABD893
P 4350 2700
AR Path="/5FAD6A8C/5FABD893" Ref="U?"  Part="2" 
AR Path="/5FAAA432/5FABD893" Ref="U3"  Part="2" 
F 0 "U3" H 4350 3017 50  0000 C CNN
F 1 "4049" H 4350 2926 50  0000 C CNN
F 2 "" H 4350 2700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4049ubms.pdf" H 4350 2700 50  0001 C CNN
F 4 "X" H 4350 2700 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 4350 2700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4350 2700 50  0001 C CNN "Spice_Netlist_Enabled"
	2    4350 2700
	1    0    0    -1  
$EndComp
Connection ~ 4050 2700
$Comp
L 4xxx:4049 U?
U 3 1 5FABD89D
P 5800 2700
AR Path="/5FAD6A8C/5FABD89D" Ref="U?"  Part="3" 
AR Path="/5FAAA432/5FABD89D" Ref="U3"  Part="3" 
F 0 "U3" H 5800 3017 50  0000 C CNN
F 1 "4049" H 5800 2926 50  0000 C CNN
F 2 "" H 5800 2700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4049ubms.pdf" H 5800 2700 50  0001 C CNN
F 4 "X" H 5800 2700 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 5800 2700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5800 2700 50  0001 C CNN "Spice_Netlist_Enabled"
	3    5800 2700
	1    0    0    -1  
$EndComp
Connection ~ 6100 2700
Connection ~ 5500 2700
$Comp
L 4xxx:4049 U?
U 4 1 5FABD8A8
P 7050 2700
AR Path="/5FAD6A8C/5FABD8A8" Ref="U?"  Part="4" 
AR Path="/5FAAA432/5FABD8A8" Ref="U3"  Part="4" 
F 0 "U3" H 7050 3017 50  0000 C CNN
F 1 "4049" H 7050 2926 50  0000 C CNN
F 2 "" H 7050 2700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4049ubms.pdf" H 7050 2700 50  0001 C CNN
F 4 "X" H 7050 2700 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 7050 2700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7050 2700 50  0001 C CNN "Spice_Netlist_Enabled"
	4    7050 2700
	1    0    0    -1  
$EndComp
Connection ~ 7350 2700
$Comp
L 4xxx:4049 U?
U 5 1 5FABD8B2
P 9150 3250
AR Path="/5FAD6A8C/5FABD8B2" Ref="U?"  Part="5" 
AR Path="/5FAAA432/5FABD8B2" Ref="U3"  Part="5" 
F 0 "U3" H 9150 3567 50  0000 C CNN
F 1 "4049" H 9150 3476 50  0000 C CNN
F 2 "" H 9150 3250 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4049ubms.pdf" H 9150 3250 50  0001 C CNN
F 4 "X" H 9150 3250 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 9150 3250 50  0001 C CNN "Spice_Model"
F 6 "Y" H 9150 3250 50  0001 C CNN "Spice_Netlist_Enabled"
	5    9150 3250
	1    0    0    -1  
$EndComp
Connection ~ 8850 3250
Wire Wire Line
	8850 3250 8850 3400
$Comp
L 4xxx:4049 U?
U 6 1 5FABD8BD
P 1600 3450
AR Path="/5FAD6A8C/5FABD8BD" Ref="U?"  Part="6" 
AR Path="/5FAAA432/5FABD8BD" Ref="U3"  Part="6" 
F 0 "U3" H 1600 3767 50  0000 C CNN
F 1 "4049" H 1600 3676 50  0000 C CNN
F 2 "" H 1600 3450 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4049ubms.pdf" H 1600 3450 50  0001 C CNN
F 4 "X" H 1600 3450 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 1600 3450 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1600 3450 50  0001 C CNN "Spice_Netlist_Enabled"
	6    1600 3450
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4049 U?
U 7 1 5FABD8C6
P 2800 6900
AR Path="/5FAD6A8C/5FABD8C6" Ref="U?"  Part="7" 
AR Path="/5FAAA432/5FABD8C6" Ref="U3"  Part="7" 
F 0 "U3" H 3030 6946 50  0000 L CNN
F 1 "4049" H 3030 6855 50  0000 L CNN
F 2 "" H 2800 6900 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4049ubms.pdf" H 2800 6900 50  0001 C CNN
F 4 "X" H 2800 6900 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 2800 6900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2800 6900 50  0001 C CNN "Spice_Netlist_Enabled"
	7    2800 6900
	1    0    0    -1  
$EndComp
Text HLabel 1200 3450 0    50   Input ~ 0
IN
$Comp
L Device:C C?
U 1 1 5FABD7CB
P 2050 3450
AR Path="/5FAD6A8C/5FABD7CB" Ref="C?"  Part="1" 
AR Path="/5FAAA432/5FABD7CB" Ref="C30"  Part="1" 
F 0 "C30" V 1798 3450 50  0000 C CNN
F 1 "10n" V 1889 3450 50  0000 C CNN
F 2 "" H 2088 3300 50  0001 C CNN
F 3 "~" H 2050 3450 50  0001 C CNN
	1    2050 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 3450 1900 3050
Wire Wire Line
	1900 3050 1750 3050
Connection ~ 1900 3450
Connection ~ 1300 3450
Wire Wire Line
	1300 3050 1300 3450
Wire Wire Line
	1300 3450 1200 3450
$Comp
L Device:R R?
U 1 1 5FACA3E6
P 1600 3050
AR Path="/5FAD6A8C/5FACA3E6" Ref="R?"  Part="1" 
AR Path="/5FAAA432/5FACA3E6" Ref="R77"  Part="1" 
F 0 "R77" V 1393 3050 50  0000 C CNN
F 1 "1Meg" V 1484 3050 50  0000 C CNN
F 2 "" V 1530 3050 50  0001 C CNN
F 3 "~" H 1600 3050 50  0001 C CNN
	1    1600 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 3050 1300 3050
$EndSCHEMATC
