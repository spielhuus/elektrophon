EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L Device:R R2
U 1 1 61731051
P 3350 1600
AR Path="/6166EC9B/61731051" Ref="R2"  Part="1" 
AR Path="/61728A8F/61731051" Ref="R?"  Part="1" 
AR Path="/61729059/61731051" Ref="R20"  Part="1" 
F 0 "R20" V 3143 1600 50  0000 C CNN
F 1 "27k" V 3234 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3280 1600 50  0001 C CNN
F 3 "~" H 3350 1600 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    3350 1600
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 3 1 61731052
P 7250 2500
AR Path="/6166EC9B/61731052" Ref="U1"  Part="3" 
AR Path="/61728A8F/61731052" Ref="U?"  Part="3" 
AR Path="/61729059/61731052" Ref="U4"  Part="3" 
F 0 "U4" H 7250 2133 50  0000 C CNN
F 1 "LM324" H 7250 2224 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 7200 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 7300 2700 50  0001 C CNN
F 4 "X" H 7250 2500 50  0001 C CNN "Spice_Primitive"
F 5 "LM324c" H 7250 2500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7250 2500 50  0001 C CNN "Spice_Netlist_Enabled"
	3    7250 2500
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 616A1EEA
P 2600 1900
AR Path="/6166EC9B/616A1EEA" Ref="#PWR04"  Part="1" 
AR Path="/61728A8F/616A1EEA" Ref="#PWR?"  Part="1" 
AR Path="/61729059/616A1EEA" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 2600 1650 50  0001 C CNN
F 1 "GND" H 2605 1727 50  0000 C CNN
F 2 "" H 2600 1900 50  0001 C CNN
F 3 "" H 2600 1900 50  0001 C CNN
	1    2600 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1200 4500 1200
Wire Wire Line
	4500 1200 4500 1700
Wire Wire Line
	4500 1700 4400 1700
Wire Wire Line
	2850 1600 2600 1600
Wire Wire Line
	3700 1200 3700 1600
Wire Wire Line
	3700 1200 3950 1200
Connection ~ 3700 1600
Wire Wire Line
	3700 1600 3800 1600
Wire Wire Line
	4500 1800 4500 1700
Connection ~ 4500 1700
Wire Wire Line
	4750 2500 4700 2500
Wire Wire Line
	3500 1600 3700 1600
Wire Wire Line
	5100 3900 5150 3900
$Comp
L Amplifier_Operational:LM324 U1
U 4 1 61731054
P 5450 3900
AR Path="/6166EC9B/61731054" Ref="U1"  Part="4" 
AR Path="/61728A8F/61731054" Ref="U?"  Part="4" 
AR Path="/61729059/61731054" Ref="U4"  Part="4" 
F 0 "U4" H 5450 4267 50  0000 C CNN
F 1 "LM324" H 5450 4176 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5400 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 5500 4100 50  0001 C CNN
F 4 "X" H 5450 3900 50  0001 C CNN "Spice_Primitive"
F 5 "LM324c" H 5450 3900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5450 3900 50  0001 C CNN "Spice_Netlist_Enabled"
	4    5450 3900
	-1   0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 2 1 61731055
P 5050 2600
AR Path="/6166EC9B/61731055" Ref="U1"  Part="2" 
AR Path="/61728A8F/61731055" Ref="U?"  Part="2" 
AR Path="/61729059/61731055" Ref="U4"  Part="2" 
F 0 "U4" H 5050 2233 50  0000 C CNN
F 1 "LM324" H 5050 2324 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5000 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 5100 2800 50  0001 C CNN
F 4 "X" H 5050 2600 50  0001 C CNN "Spice_Primitive"
F 5 "LM324c" H 5050 2600 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5050 2600 50  0001 C CNN "Spice_Netlist_Enabled"
	2    5050 2600
	1    0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 61731056
P 2600 1750
AR Path="/6166EC9B/61731056" Ref="R1"  Part="1" 
AR Path="/61728A8F/61731056" Ref="R?"  Part="1" 
AR Path="/61729059/61731056" Ref="R19"  Part="1" 
F 0 "R19" H 2530 1704 50  0000 R CNN
F 1 "100k" H 2530 1795 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2530 1750 50  0001 C CNN
F 3 "~" H 2600 1750 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    2600 1750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 61731057
P 4100 1200
AR Path="/6166EC9B/61731057" Ref="R7"  Part="1" 
AR Path="/61728A8F/61731057" Ref="R?"  Part="1" 
AR Path="/61729059/61731057" Ref="R23"  Part="1" 
F 0 "R23" V 3893 1200 50  0000 C CNN
F 1 "470k" V 3984 1200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4030 1200 50  0001 C CNN
F 3 "~" H 4100 1200 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    4100 1200
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 1 1 61731058
P 4100 1700
AR Path="/6166EC9B/61731058" Ref="U1"  Part="1" 
AR Path="/61728A8F/61731058" Ref="U?"  Part="1" 
AR Path="/61729059/61731058" Ref="U4"  Part="1" 
F 0 "U4" H 4100 2067 50  0000 C CNN
F 1 "LM324" H 4100 1976 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 4050 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 4150 1900 50  0001 C CNN
F 4 "X" H 4100 1700 50  0001 C CNN "Spice_Primitive"
F 5 "LM324c" H 4100 1700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4100 1700 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4100 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2400 4500 2700
Wire Wire Line
	4500 2700 4500 2800
Connection ~ 4500 2700
Wire Wire Line
	4500 2700 4750 2700
$Comp
L Device:R R8
U 1 1 6173105B
P 4500 2950
AR Path="/6166EC9B/6173105B" Ref="R8"  Part="1" 
AR Path="/61728A8F/6173105B" Ref="R?"  Part="1" 
AR Path="/61729059/6173105B" Ref="R24"  Part="1" 
F 0 "R24" H 4430 2904 50  0000 R CNN
F 1 "2.2k" H 4430 2995 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4430 2950 50  0001 C CNN
F 3 "~" H 4500 2950 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    4500 2950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 616A1F45
P 4500 3500
AR Path="/6166EC9B/616A1F45" Ref="#PWR014"  Part="1" 
AR Path="/61728A8F/616A1F45" Ref="#PWR?"  Part="1" 
AR Path="/61729059/616A1F45" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 4500 3250 50  0001 C CNN
F 1 "GND" H 4505 3327 50  0000 C CNN
F 2 "" H 4500 3500 50  0001 C CNN
F 3 "" H 4500 3500 50  0001 C CNN
	1    4500 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 616A1F4B
P 4500 3350
AR Path="/6166EC9B/616A1F4B" Ref="R9"  Part="1" 
AR Path="/61728A8F/616A1F4B" Ref="R?"  Part="1" 
AR Path="/61729059/616A1F4B" Ref="R25"  Part="1" 
F 0 "R25" H 4430 3304 50  0000 R CNN
F 1 "47k" H 4430 3395 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4430 3350 50  0001 C CNN
F 3 "~" H 4500 3350 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    4500 3350
	-1   0    0    1   
$EndComp
Connection ~ 3500 1600
Wire Wire Line
	3500 3550 3500 1600
$Comp
L Device:R R3
U 1 1 6173105F
P 3500 3700
AR Path="/6166EC9B/6173105F" Ref="R3"  Part="1" 
AR Path="/61728A8F/6173105F" Ref="R?"  Part="1" 
AR Path="/61729059/6173105F" Ref="R21"  Part="1" 
F 0 "R21" H 3430 3654 50  0000 R CNN
F 1 "390k" H 3430 3745 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3430 3700 50  0001 C CNN
F 3 "~" H 3500 3700 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    3500 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 61731060
P 3500 4100
AR Path="/6166EC9B/61731060" Ref="R4"  Part="1" 
AR Path="/61728A8F/61731060" Ref="R?"  Part="1" 
AR Path="/61729059/61731060" Ref="R22"  Part="1" 
F 0 "R22" H 3430 4054 50  0000 R CNN
F 1 "47k" H 3430 4145 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3430 4100 50  0001 C CNN
F 3 "~" H 3500 4100 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    3500 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 3950 3500 3900
Wire Wire Line
	3500 3900 4800 3900
Connection ~ 3500 3900
Wire Wire Line
	3500 3900 3500 3850
$Comp
L power:GND #PWR09
U 1 1 61731061
P 3500 4250
AR Path="/6166EC9B/61731061" Ref="#PWR09"  Part="1" 
AR Path="/61728A8F/61731061" Ref="#PWR?"  Part="1" 
AR Path="/61729059/61731061" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 3500 4000 50  0001 C CNN
F 1 "GND" H 3505 4077 50  0000 C CNN
F 2 "" H 3500 4250 50  0001 C CNN
F 3 "" H 3500 4250 50  0001 C CNN
	1    3500 4250
	1    0    0    -1  
$EndComp
Connection ~ 4700 1750
Wire Wire Line
	4700 1300 4700 1750
Wire Wire Line
	4700 1750 4700 2100
Wire Wire Line
	4700 2100 4700 2500
Connection ~ 4700 2100
$Comp
L Device:C C7
U 1 1 616A1F8C
P 6850 3100
AR Path="/6166EC9B/616A1F8C" Ref="C7"  Part="1" 
AR Path="/61728A8F/616A1F8C" Ref="C?"  Part="1" 
AR Path="/61729059/616A1F8C" Ref="C9"  Part="1" 
F 0 "C9" H 6965 3146 50  0000 L CNN
F 1 "2.2u" H 6965 3055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W4.4mm_P5.00mm" H 6888 2950 50  0001 C CNN
F 3 "~" H 6850 3100 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC (25V, L=6 mm, W=5.5 mm, LS=5 mm)" H 6850 3100 50  0001 C CNN "Description"
	1    6850 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 616A1F9C
P 6850 3250
AR Path="/6166EC9B/616A1F9C" Ref="#PWR025"  Part="1" 
AR Path="/61728A8F/616A1F9C" Ref="#PWR?"  Part="1" 
AR Path="/61729059/616A1F9C" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 6850 3000 50  0001 C CNN
F 1 "GND" H 6855 3077 50  0000 C CNN
F 2 "" H 6850 3250 50  0001 C CNN
F 3 "" H 6850 3250 50  0001 C CNN
	1    6850 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 616A1FA3
P 6100 1300
AR Path="/6166EC9B/616A1FA3" Ref="R10"  Part="1" 
AR Path="/61728A8F/616A1FA3" Ref="R?"  Part="1" 
AR Path="/61729059/616A1FA3" Ref="R26"  Part="1" 
F 0 "R26" V 5893 1300 50  0000 C CNN
F 1 "10k" V 5984 1300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6030 1300 50  0001 C CNN
F 3 "~" H 6100 1300 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    6100 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 2850 6050 2850
Wire Wire Line
	6100 2400 6050 2400
Wire Wire Line
	5350 2600 5400 2600
Wire Wire Line
	6750 2400 6850 2400
Wire Wire Line
	6950 2600 6850 2600
Connection ~ 6850 2600
Wire Wire Line
	6850 2400 6850 2600
Wire Wire Line
	7600 2500 7750 2500
Connection ~ 7600 2500
Wire Wire Line
	7550 2500 7600 2500
$Comp
L power:GND #PWR010
U 1 1 6173106E
P 3750 1850
AR Path="/6166EC9B/6173106E" Ref="#PWR010"  Part="1" 
AR Path="/61728A8F/6173106E" Ref="#PWR?"  Part="1" 
AR Path="/61729059/6173106E" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 3750 1600 50  0001 C CNN
F 1 "GND" H 3755 1677 50  0000 C CNN
F 2 "" H 3750 1850 50  0001 C CNN
F 3 "" H 3750 1850 50  0001 C CNN
	1    3750 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1850 3750 1800
Wire Wire Line
	3750 1800 3800 1800
Wire Wire Line
	3200 1600 3150 1600
Wire Wire Line
	4700 1750 4900 1750
Wire Wire Line
	5200 1750 5400 1750
Wire Wire Line
	4700 2100 4900 2100
Wire Wire Line
	5200 2100 5400 2100
Connection ~ 5400 2100
Wire Wire Line
	4500 3100 4500 3150
Wire Wire Line
	5400 1750 5400 2100
Wire Wire Line
	5400 2100 5400 2600
Wire Wire Line
	5400 2600 5600 2600
Wire Wire Line
	5600 2600 5600 2400
Wire Wire Line
	5600 2400 5750 2400
Connection ~ 5400 2600
Wire Wire Line
	5600 2600 5600 2850
Wire Wire Line
	5600 2850 5750 2850
Connection ~ 5600 2600
Wire Wire Line
	7600 1300 7600 2000
Wire Wire Line
	6950 2400 6950 2000
Wire Wire Line
	6950 2000 7600 2000
Connection ~ 7600 2000
Wire Wire Line
	7600 2000 7600 2500
Wire Wire Line
	6250 1300 7600 1300
Wire Wire Line
	4500 3150 5900 3150
Wire Wire Line
	5900 3150 5900 3800
Wire Wire Line
	5900 3800 5750 3800
Connection ~ 4500 3150
Wire Wire Line
	4500 3150 4500 3200
Wire Wire Line
	5750 4000 5900 4000
Wire Wire Line
	7600 2500 7600 4000
$Comp
L Device:R R11
U 1 1 61731072
P 6200 4400
AR Path="/6166EC9B/61731072" Ref="R11"  Part="1" 
AR Path="/61728A8F/61731072" Ref="R?"  Part="1" 
AR Path="/61729059/61731072" Ref="R27"  Part="1" 
F 0 "R27" H 6130 4354 50  0000 R CNN
F 1 "36k" H 6130 4445 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6130 4400 50  0001 C CNN
F 3 "~" H 6200 4400 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    6200 4400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R12
U 1 1 61731073
P 6200 5000
AR Path="/6166EC9B/61731073" Ref="R12"  Part="1" 
AR Path="/61728A8F/61731073" Ref="R?"  Part="1" 
AR Path="/61729059/61731073" Ref="R28"  Part="1" 
F 0 "R28" H 6130 4954 50  0000 R CNN
F 1 "1k" H 6130 5045 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6130 5000 50  0001 C CNN
F 3 "~" H 6200 5000 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    6200 5000
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 616A203E
P 6200 4250
AR Path="/616A203E" Ref="#PWR?"  Part="1" 
AR Path="/5DD3665B/616A203E" Ref="#PWR?"  Part="1" 
AR Path="/6166EC9B/616A203E" Ref="#PWR022"  Part="1" 
AR Path="/61728A8F/616A203E" Ref="#PWR?"  Part="1" 
AR Path="/61729059/616A203E" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 6200 4100 50  0001 C CNN
F 1 "+15V" H 6100 4400 50  0000 L CNN
F 2 "" H 6200 4250 50  0001 C CNN
F 3 "" H 6200 4250 50  0001 C CNN
	1    6200 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5550 6200 5400
Wire Wire Line
	6200 4850 6200 4650
Wire Wire Line
	6400 4650 6200 4650
Connection ~ 6200 4650
Wire Wire Line
	6200 4650 6200 4550
Wire Wire Line
	6400 5400 6200 5400
Connection ~ 6200 5400
Wire Wire Line
	6200 5400 6200 5150
Wire Wire Line
	5900 4850 5900 5200
Wire Wire Line
	5900 5200 6400 5200
Wire Wire Line
	5900 4850 6400 4850
$Comp
L Device:R R16
U 1 1 61731077
P 7700 5050
AR Path="/6166EC9B/61731077" Ref="R16"  Part="1" 
AR Path="/61728A8F/61731077" Ref="R?"  Part="1" 
AR Path="/61729059/61731077" Ref="R32"  Part="1" 
F 0 "R32" V 7493 5050 50  0000 C CNN
F 1 "100k" V 7584 5050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7630 5050 50  0001 C CNN
F 3 "~" H 7700 5050 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    7700 5050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR033
U 1 1 61731079
P 8000 5450
AR Path="/6166EC9B/61731079" Ref="#PWR033"  Part="1" 
AR Path="/61728A8F/61731079" Ref="#PWR?"  Part="1" 
AR Path="/61729059/61731079" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 8000 5200 50  0001 C CNN
F 1 "GND" H 8005 5277 50  0000 C CNN
F 2 "" H 8000 5450 50  0001 C CNN
F 3 "" H 8000 5450 50  0001 C CNN
	1    8000 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4750 7050 4750
Wire Wire Line
	7450 4750 7450 5050
Wire Wire Line
	7450 5300 7350 5300
Wire Wire Line
	7350 4750 7450 4750
Wire Wire Line
	7050 5300 7000 5300
Wire Wire Line
	7550 5050 7450 5050
Connection ~ 7450 5050
Wire Wire Line
	7450 5050 7450 5300
Wire Wire Line
	8000 5050 8000 5150
Wire Wire Line
	7850 5050 8000 5050
Wire Wire Line
	5900 4850 5900 4000
Connection ~ 5900 4850
Connection ~ 5900 4000
Wire Wire Line
	5900 3800 8150 3800
Wire Wire Line
	8150 3800 8150 4850
Connection ~ 5900 3800
Wire Wire Line
	8150 5050 8000 5050
Connection ~ 8000 5050
Wire Wire Line
	8750 4950 8900 4950
$Comp
L Device:R R?
U 1 1 616B5935
P 6200 5700
AR Path="/616B5935" Ref="R?"  Part="1" 
AR Path="/6166EC9B/616B5935" Ref="R13"  Part="1" 
AR Path="/61728A8F/616B5935" Ref="R?"  Part="1" 
AR Path="/61729059/616B5935" Ref="R29"  Part="1" 
F 0 "R29" H 6130 5654 50  0000 R CNN
F 1 "220" H 6130 5745 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6130 5700 50  0001 C CNN
F 3 "~" H 6200 5700 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    6200 5700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6173107F
P 6200 5850
AR Path="/6173107F" Ref="#PWR?"  Part="1" 
AR Path="/6166EC9B/6173107F" Ref="#PWR023"  Part="1" 
AR Path="/61728A8F/6173107F" Ref="#PWR?"  Part="1" 
AR Path="/61729059/6173107F" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 6200 5600 50  0001 C CNN
F 1 "GND" H 6205 5677 50  0000 C CNN
F 2 "" H 6200 5850 50  0001 C CNN
F 3 "" H 6200 5850 50  0001 C CNN
	1    6200 5850
	1    0    0    -1  
$EndComp
Text HLabel 2450 1600 0    50   Input ~ 0
IN2
Wire Wire Line
	2450 1600 2600 1600
Connection ~ 2600 1600
Text HLabel 7750 2500 2    50   Input ~ 0
OUT2
Text HLabel 8900 4950 2    50   Input ~ 0
EOE2
Text HLabel 6100 2400 1    50   Input ~ 0
AB1
Text HLabel 6400 2400 1    50   Input ~ 0
AB2
Text HLabel 6100 2850 1    50   Input ~ 0
DB1
$Comp
L Amplifier_Operational:LM324 U?
U 3 1 61689EB0
P 6700 4750
AR Path="/6166EC9B/61689EB0" Ref="U?"  Part="3" 
AR Path="/61728A8F/61689EB0" Ref="U?"  Part="3" 
AR Path="/61729059/61689EB0" Ref="U2"  Part="3" 
F 0 "U2" H 6700 4383 50  0000 C CNN
F 1 "LM324" H 6700 4474 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 6650 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 6750 4950 50  0001 C CNN
F 4 "X" H 6700 4750 50  0001 C CNN "Spice_Primitive"
F 5 "LM324c" H 6700 4750 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6700 4750 50  0001 C CNN "Spice_Netlist_Enabled"
	3    6700 4750
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 4 1 6168BAC9
P 6700 5300
AR Path="/6166EC9B/6168BAC9" Ref="U?"  Part="4" 
AR Path="/61728A8F/6168BAC9" Ref="U?"  Part="4" 
AR Path="/61729059/6168BAC9" Ref="U2"  Part="4" 
F 0 "U2" H 6700 5667 50  0000 C CNN
F 1 "LM324" H 6700 5576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 6650 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 6750 5500 50  0001 C CNN
F 4 "X" H 6700 5300 50  0001 C CNN "Spice_Primitive"
F 5 "LM324c" H 6700 5300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6700 5300 50  0001 C CNN "Spice_Netlist_Enabled"
	4    6700 5300
	1    0    0    1   
$EndComp
$Comp
L 4xxx:4001 U3
U 2 1 616A8D64
P 8450 4950
F 0 "U3" H 8450 5275 50  0000 C CNN
F 1 "4001" H 8450 5184 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 8450 4950 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4000bms-01bms-02bms-25bms.pdf" H 8450 4950 50  0001 C CNN
	2    8450 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2600 6850 2850
$Comp
L Device:R R?
U 1 1 616BCF24
P 6600 2400
AR Path="/6166EC9B/616BCF24" Ref="R?"  Part="1" 
AR Path="/61728A8F/616BCF24" Ref="R?"  Part="1" 
AR Path="/61729059/616BCF24" Ref="R14"  Part="1" 
F 0 "R14" V 6393 2400 50  0000 C CNN
F 1 "1k" V 6484 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6530 2400 50  0001 C CNN
F 3 "~" H 6600 2400 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    6600 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 616BD711
P 6600 2850
AR Path="/6166EC9B/616BD711" Ref="R?"  Part="1" 
AR Path="/61728A8F/616BD711" Ref="R?"  Part="1" 
AR Path="/61729059/616BD711" Ref="R15"  Part="1" 
F 0 "R15" V 6393 2850 50  0000 C CNN
F 1 "1k" V 6484 2850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6530 2850 50  0001 C CNN
F 3 "~" H 6600 2850 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    6600 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 2850 6850 2850
Connection ~ 6850 2850
Wire Wire Line
	6850 2850 6850 2950
Text HLabel 6400 2850 1    50   Input ~ 0
DB2
Wire Wire Line
	6400 2850 6450 2850
Wire Wire Line
	6450 2400 6400 2400
Wire Wire Line
	4700 1300 5950 1300
$Comp
L Diode:1N4148 D12
U 1 1 616DA6BD
P 3000 1600
F 0 "D12" H 3000 1383 50  0000 C CNN
F 1 "1N4148" H 3000 1474 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3000 1425 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3000 1600 50  0001 C CNN
	1    3000 1600
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D17
U 1 1 616DB57D
P 5050 2100
F 0 "D17" H 5050 1883 50  0000 C CNN
F 1 "1N4148" H 5050 1974 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_KathodeUp" H 5050 1925 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5050 2100 50  0001 C CNN
	1    5050 2100
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D16
U 1 1 616DBF82
P 5050 1750
F 0 "D16" H 5050 1967 50  0000 C CNN
F 1 "1N4148" H 5050 1876 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_KathodeUp" H 5050 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5050 1750 50  0001 C CNN
	1    5050 1750
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D13
U 1 1 616DCC14
P 4500 1950
F 0 "D13" V 4550 2150 50  0000 R CNN
F 1 "1N4148" V 4450 2350 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_KathodeUp" H 4500 1775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4500 1950 50  0001 C CNN
	1    4500 1950
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D14
U 1 1 616DD54C
P 4500 2250
F 0 "D14" V 4550 2450 50  0000 R CNN
F 1 "1N4148" V 4450 2650 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_KathodeUp" H 4500 2075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4500 2250 50  0001 C CNN
	1    4500 2250
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D18
U 1 1 616E0B1D
P 5900 2400
F 0 "D18" H 5900 2183 50  0000 C CNN
F 1 "1N4148" H 5900 2274 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5900 2225 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5900 2400 50  0001 C CNN
	1    5900 2400
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D19
U 1 1 616E1CDD
P 5900 2850
F 0 "D19" H 5900 3067 50  0000 C CNN
F 1 "1N4148" H 5900 2976 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5900 2675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5900 2850 50  0001 C CNN
	1    5900 2850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D15
U 1 1 616E2D8E
P 4950 3900
F 0 "D15" H 4950 3683 50  0000 C CNN
F 1 "1N4148" H 4950 3774 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4950 3725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4950 3900 50  0001 C CNN
	1    4950 3900
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D20
U 1 1 616E63B4
P 7200 4750
F 0 "D20" H 7200 4533 50  0000 C CNN
F 1 "1N4148" H 7200 4624 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7200 4575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7200 4750 50  0001 C CNN
	1    7200 4750
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D21
U 1 1 616E6F5D
P 7200 5300
F 0 "D21" H 7200 5083 50  0000 C CNN
F 1 "1N4148" H 7200 5174 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7200 5125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7200 5300 50  0001 C CNN
	1    7200 5300
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D22
U 1 1 616E86BB
P 8000 5300
F 0 "D22" V 8046 5220 50  0000 R CNN
F 1 "1N4148" V 7955 5220 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8000 5125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8000 5300 50  0001 C CNN
	1    8000 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 4000 7600 4000
$EndSCHEMATC
