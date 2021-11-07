EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
U 1 1 616A1EDB
P 3350 1600
AR Path="/6166EC9B/616A1EDB" Ref="R2"  Part="1" 
AR Path="/61728A8F/616A1EDB" Ref="R2"  Part="1" 
AR Path="/61729059/616A1EDB" Ref="R?"  Part="1" 
F 0 "R2" V 3143 1600 50  0000 C CNN
F 1 "27k" V 3234 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3280 1600 50  0001 C CNN
F 3 "~" H 3350 1600 50  0001 C CNN
	1    3350 1600
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 3 1 616A1EE4
P 7550 2500
AR Path="/6166EC9B/616A1EE4" Ref="U1"  Part="3" 
AR Path="/61728A8F/616A1EE4" Ref="U1"  Part="3" 
AR Path="/61729059/616A1EE4" Ref="U?"  Part="3" 
F 0 "U1" H 7550 2133 50  0000 C CNN
F 1 "LM324" H 7550 2224 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 7500 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 7600 2700 50  0001 C CNN
F 4 "X" H 7550 2500 50  0001 C CNN "Spice_Primitive"
F 5 "LM324c" H 7550 2500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7550 2500 50  0001 C CNN "Spice_Netlist_Enabled"
	3    7550 2500
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 61731053
P 2600 1900
AR Path="/6166EC9B/61731053" Ref="#PWR04"  Part="1" 
AR Path="/61728A8F/61731053" Ref="#PWR05"  Part="1" 
AR Path="/61729059/61731053" Ref="#PWR?"  Part="1" 
F 0 "#PWR05" H 2600 1650 50  0001 C CNN
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
U 4 1 616A1F03
P 5450 3900
AR Path="/6166EC9B/616A1F03" Ref="U1"  Part="4" 
AR Path="/61728A8F/616A1F03" Ref="U1"  Part="4" 
AR Path="/61729059/616A1F03" Ref="U?"  Part="4" 
F 0 "U1" H 5450 4267 50  0000 C CNN
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
U 2 1 616A1F0C
P 5050 2600
AR Path="/6166EC9B/616A1F0C" Ref="U1"  Part="2" 
AR Path="/61728A8F/616A1F0C" Ref="U1"  Part="2" 
AR Path="/61729059/616A1F0C" Ref="U?"  Part="2" 
F 0 "U1" H 5050 2233 50  0000 C CNN
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
U 1 1 616A1F12
P 2600 1750
AR Path="/6166EC9B/616A1F12" Ref="R1"  Part="1" 
AR Path="/61728A8F/616A1F12" Ref="R1"  Part="1" 
AR Path="/61729059/616A1F12" Ref="R?"  Part="1" 
F 0 "R1" H 2530 1704 50  0000 R CNN
F 1 "100k" H 2530 1795 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2530 1750 50  0001 C CNN
F 3 "~" H 2600 1750 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    2600 1750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 616A1F18
P 4100 1200
AR Path="/6166EC9B/616A1F18" Ref="R7"  Part="1" 
AR Path="/61728A8F/616A1F18" Ref="R7"  Part="1" 
AR Path="/61729059/616A1F18" Ref="R?"  Part="1" 
F 0 "R7" V 3893 1200 50  0000 C CNN
F 1 "470k" V 3984 1200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4030 1200 50  0001 C CNN
F 3 "~" H 4100 1200 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    4100 1200
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 1 1 616A1F21
P 4100 1700
AR Path="/6166EC9B/616A1F21" Ref="U1"  Part="1" 
AR Path="/61728A8F/616A1F21" Ref="U1"  Part="1" 
AR Path="/61729059/616A1F21" Ref="U?"  Part="1" 
F 0 "U1" H 4100 2067 50  0000 C CNN
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
U 1 1 616A1F3F
P 4500 2950
AR Path="/6166EC9B/616A1F3F" Ref="R8"  Part="1" 
AR Path="/61728A8F/616A1F3F" Ref="R8"  Part="1" 
AR Path="/61729059/616A1F3F" Ref="R?"  Part="1" 
F 0 "R8" H 4430 2904 50  0000 R CNN
F 1 "2.2k" H 4430 2995 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4430 2950 50  0001 C CNN
F 3 "~" H 4500 2950 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    4500 2950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 6173105C
P 4500 3500
AR Path="/6166EC9B/6173105C" Ref="#PWR014"  Part="1" 
AR Path="/61728A8F/6173105C" Ref="#PWR014"  Part="1" 
AR Path="/61729059/6173105C" Ref="#PWR?"  Part="1" 
F 0 "#PWR014" H 4500 3250 50  0001 C CNN
F 1 "GND" H 4505 3327 50  0000 C CNN
F 2 "" H 4500 3500 50  0001 C CNN
F 3 "" H 4500 3500 50  0001 C CNN
	1    4500 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 6173105D
P 4500 3350
AR Path="/6166EC9B/6173105D" Ref="R9"  Part="1" 
AR Path="/61728A8F/6173105D" Ref="R9"  Part="1" 
AR Path="/61729059/6173105D" Ref="R?"  Part="1" 
F 0 "R9" H 4430 3304 50  0000 R CNN
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
U 1 1 616A1F5D
P 3500 3700
AR Path="/6166EC9B/616A1F5D" Ref="R3"  Part="1" 
AR Path="/61728A8F/616A1F5D" Ref="R3"  Part="1" 
AR Path="/61729059/616A1F5D" Ref="R?"  Part="1" 
F 0 "R3" H 3430 3654 50  0000 R CNN
F 1 "390k" H 3430 3745 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3430 3700 50  0001 C CNN
F 3 "~" H 3500 3700 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    3500 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 616A1F63
P 3500 4100
AR Path="/6166EC9B/616A1F63" Ref="R4"  Part="1" 
AR Path="/61728A8F/616A1F63" Ref="R4"  Part="1" 
AR Path="/61729059/616A1F63" Ref="R?"  Part="1" 
F 0 "R4" H 3430 4054 50  0000 R CNN
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
U 1 1 616A1F6D
P 3500 4250
AR Path="/6166EC9B/616A1F6D" Ref="#PWR09"  Part="1" 
AR Path="/61728A8F/616A1F6D" Ref="#PWR09"  Part="1" 
AR Path="/61729059/616A1F6D" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 3500 4000 50  0001 C CNN
F 1 "GND" H 3505 4077 50  0000 C CNN
F 2 "" H 3500 4250 50  0001 C CNN
F 3 "" H 3500 4250 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
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
U 1 1 61731064
P 7150 3100
AR Path="/6166EC9B/61731064" Ref="C7"  Part="1" 
AR Path="/61728A8F/61731064" Ref="C7"  Part="1" 
AR Path="/61729059/61731064" Ref="C?"  Part="1" 
F 0 "C7" H 7265 3146 50  0000 L CNN
F 1 "2.2u" H 7265 3055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W4.4mm_P5.00mm" H 7188 2950 50  0001 C CNN
F 3 "~" H 7150 3100 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC (25V, L=6 mm, W=5.5 mm, LS=5 mm)" H 2600 1750 50  0001 C CNN "Description"
	1    7150 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 61731066
P 7150 3250
AR Path="/6166EC9B/61731066" Ref="#PWR025"  Part="1" 
AR Path="/61728A8F/61731066" Ref="#PWR023"  Part="1" 
AR Path="/61729059/61731066" Ref="#PWR?"  Part="1" 
F 0 "#PWR023" H 7150 3000 50  0001 C CNN
F 1 "GND" H 7155 3077 50  0000 C CNN
F 2 "" H 7150 3250 50  0001 C CNN
F 3 "" H 7150 3250 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    7150 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 61731067
P 6350 1300
AR Path="/6166EC9B/61731067" Ref="R10"  Part="1" 
AR Path="/61728A8F/61731067" Ref="R10"  Part="1" 
AR Path="/61729059/61731067" Ref="R?"  Part="1" 
F 0 "R10" V 6143 1300 50  0000 C CNN
F 1 "10k" V 6234 1300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6280 1300 50  0001 C CNN
F 3 "~" H 6350 1300 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    6350 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 2850 6050 2850
Wire Wire Line
	6100 2400 6050 2400
Wire Wire Line
	5350 2600 5400 2600
Wire Wire Line
	7050 2400 7150 2400
Wire Wire Line
	7250 2600 7150 2600
Connection ~ 7150 2600
Wire Wire Line
	7150 2400 7150 2600
Wire Wire Line
	7900 2500 8050 2500
Connection ~ 7900 2500
Wire Wire Line
	7850 2500 7900 2500
$Comp
L power:GND #PWR010
U 1 1 616A1FF0
P 3750 1850
AR Path="/6166EC9B/616A1FF0" Ref="#PWR010"  Part="1" 
AR Path="/61728A8F/616A1FF0" Ref="#PWR010"  Part="1" 
AR Path="/61729059/616A1FF0" Ref="#PWR?"  Part="1" 
F 0 "#PWR010" H 3750 1600 50  0001 C CNN
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
	7900 1300 7900 2000
Wire Wire Line
	7250 2400 7250 2000
Wire Wire Line
	7250 2000 7900 2000
Connection ~ 7900 2000
Wire Wire Line
	7900 2000 7900 2500
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
	7900 2500 7900 4000
$Comp
L Amplifier_Operational:LM324 U2
U 1 1 616A2023
P 6700 4750
AR Path="/6166EC9B/616A2023" Ref="U2"  Part="1" 
AR Path="/61728A8F/616A2023" Ref="U2"  Part="1" 
AR Path="/61729059/616A2023" Ref="U?"  Part="1" 
F 0 "U2" H 6700 4400 50  0000 C CNN
F 1 "LM324" H 6700 4500 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 6650 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 6750 4950 50  0001 C CNN
F 4 "X" H 6700 4750 50  0001 C CNN "Spice_Primitive"
F 5 "LM324c" H 6700 4750 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6700 4750 50  0001 C CNN "Spice_Netlist_Enabled"
	1    6700 4750
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U2
U 2 1 616A202C
P 6700 5300
AR Path="/6166EC9B/616A202C" Ref="U2"  Part="2" 
AR Path="/61728A8F/616A202C" Ref="U2"  Part="2" 
AR Path="/61729059/616A202C" Ref="U?"  Part="2" 
F 0 "U2" H 6700 4933 50  0000 C CNN
F 1 "LM324" H 6700 5024 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 6650 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 6750 5500 50  0001 C CNN
F 4 "X" H 6700 5300 50  0001 C CNN "Spice_Primitive"
F 5 "LM324c" H 6700 5300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6700 5300 50  0001 C CNN "Spice_Netlist_Enabled"
	2    6700 5300
	1    0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 616A2032
P 6200 4400
AR Path="/6166EC9B/616A2032" Ref="R11"  Part="1" 
AR Path="/61728A8F/616A2032" Ref="R11"  Part="1" 
AR Path="/61729059/616A2032" Ref="R?"  Part="1" 
F 0 "R11" H 6130 4354 50  0000 R CNN
F 1 "36k" H 6130 4445 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6130 4400 50  0001 C CNN
F 3 "~" H 6200 4400 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    6200 4400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R12
U 1 1 616A2038
P 6200 5000
AR Path="/6166EC9B/616A2038" Ref="R12"  Part="1" 
AR Path="/61728A8F/616A2038" Ref="R12"  Part="1" 
AR Path="/61729059/616A2038" Ref="R?"  Part="1" 
F 0 "R12" H 6130 4954 50  0000 R CNN
F 1 "1k" H 6130 5045 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6130 5000 50  0001 C CNN
F 3 "~" H 6200 5000 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    6200 5000
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 61731074
P 6200 4250
AR Path="/61731074" Ref="#PWR?"  Part="1" 
AR Path="/5DD3665B/61731074" Ref="#PWR?"  Part="1" 
AR Path="/6166EC9B/61731074" Ref="#PWR022"  Part="1" 
AR Path="/61728A8F/61731074" Ref="#PWR015"  Part="1" 
AR Path="/61729059/61731074" Ref="#PWR?"  Part="1" 
F 0 "#PWR015" H 6200 4100 50  0001 C CNN
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
U 1 1 616A2063
P 7700 5050
AR Path="/6166EC9B/616A2063" Ref="R16"  Part="1" 
AR Path="/61728A8F/616A2063" Ref="R16"  Part="1" 
AR Path="/61729059/616A2063" Ref="R?"  Part="1" 
F 0 "R16" V 7493 5050 50  0000 C CNN
F 1 "100k" V 7584 5050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7630 5050 50  0001 C CNN
F 3 "~" H 7700 5050 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    7700 5050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR033
U 1 1 616A2073
P 8000 5450
AR Path="/6166EC9B/616A2073" Ref="#PWR033"  Part="1" 
AR Path="/61728A8F/616A2073" Ref="#PWR030"  Part="1" 
AR Path="/61729059/616A2073" Ref="#PWR?"  Part="1" 
F 0 "#PWR030" H 8000 5200 50  0001 C CNN
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
$Comp
L 4xxx:4001 U3
U 1 1 616A2083
P 8450 4950
AR Path="/6166EC9B/616A2083" Ref="U3"  Part="1" 
AR Path="/61728A8F/616A2083" Ref="U3"  Part="1" 
AR Path="/61729059/616A2083" Ref="U?"  Part="1" 
F 0 "U3" H 8450 5275 50  0000 C CNN
F 1 "4001" H 8450 5184 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 8450 4950 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4000bms-01bms-02bms-25bms.pdf" H 8450 4950 50  0001 C CNN
	1    8450 4950
	1    0    0    -1  
$EndComp
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
U 1 1 6173107E
P 6200 5700
AR Path="/6173107E" Ref="R?"  Part="1" 
AR Path="/6166EC9B/6173107E" Ref="R13"  Part="1" 
AR Path="/61728A8F/6173107E" Ref="R13"  Part="1" 
AR Path="/61729059/6173107E" Ref="R?"  Part="1" 
F 0 "R13" H 6130 5654 50  0000 R CNN
F 1 "220" H 6130 5745 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6130 5700 50  0001 C CNN
F 3 "~" H 6200 5700 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    6200 5700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 616B593B
P 6200 5850
AR Path="/616B593B" Ref="#PWR?"  Part="1" 
AR Path="/6166EC9B/616B593B" Ref="#PWR023"  Part="1" 
AR Path="/61728A8F/616B593B" Ref="#PWR022"  Part="1" 
AR Path="/61729059/616B593B" Ref="#PWR?"  Part="1" 
F 0 "#PWR022" H 6200 5600 50  0001 C CNN
F 1 "GND" H 6205 5677 50  0000 C CNN
F 2 "" H 6200 5850 50  0001 C CNN
F 3 "" H 6200 5850 50  0001 C CNN
	1    6200 5850
	1    0    0    -1  
$EndComp
Text HLabel 8050 2500 2    50   Input ~ 0
OUT1
Text HLabel 8900 4950 2    50   Input ~ 0
EOE1
Text HLabel 2300 1600 0    50   Input ~ 0
IN1
Wire Wire Line
	2300 1600 2600 1600
Connection ~ 2600 1600
Text HLabel 6100 2400 1    50   Input ~ 0
AA1
Text HLabel 6650 2400 1    50   Input ~ 0
AA2
Text HLabel 6100 2850 1    50   Input ~ 0
DA1
Wire Wire Line
	7150 2600 7150 2850
$Comp
L Device:R R?
U 1 1 6169695F
P 6900 2400
AR Path="/6166EC9B/6169695F" Ref="R?"  Part="1" 
AR Path="/61728A8F/6169695F" Ref="R17"  Part="1" 
AR Path="/61729059/6169695F" Ref="R?"  Part="1" 
F 0 "R17" V 6693 2400 50  0000 C CNN
F 1 "1k" V 6784 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6830 2400 50  0001 C CNN
F 3 "~" H 6900 2400 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    6900 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6169719E
P 6900 2850
AR Path="/6166EC9B/6169719E" Ref="R?"  Part="1" 
AR Path="/61728A8F/6169719E" Ref="R18"  Part="1" 
AR Path="/61729059/6169719E" Ref="R?"  Part="1" 
F 0 "R18" V 6693 2850 50  0000 C CNN
F 1 "1k" V 6784 2850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6830 2850 50  0001 C CNN
F 3 "~" H 6900 2850 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 2600 1750 50  0001 C CNN "Description"
	1    6900 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 2850 7150 2850
Connection ~ 7150 2850
Wire Wire Line
	7150 2850 7150 2950
Text HLabel 6650 2850 1    50   Input ~ 0
DA2
Wire Wire Line
	6750 2400 6650 2400
Wire Wire Line
	6750 2850 6650 2850
Wire Wire Line
	4700 1300 6200 1300
Wire Wire Line
	6500 1300 7900 1300
Wire Wire Line
	5900 4000 7900 4000
$Comp
L Diode:1N4148 D1
U 1 1 616B340C
P 3000 1600
F 0 "D1" H 3000 1383 50  0000 C CNN
F 1 "1N4148" H 3000 1474 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3000 1425 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3000 1600 50  0001 C CNN
	1    3000 1600
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D2
U 1 1 616BBED2
P 4500 1950
F 0 "D2" V 4550 2200 50  0000 R CNN
F 1 "1N4148" V 4450 2350 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_KathodeUp" H 4500 1775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4500 1950 50  0001 C CNN
	1    4500 1950
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D3
U 1 1 616BD07B
P 4500 2250
F 0 "D3" V 4550 2500 50  0000 R CNN
F 1 "1N4148" V 4450 2650 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_KathodeUp" H 4500 2075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4500 2250 50  0001 C CNN
	1    4500 2250
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D5
U 1 1 616BFF25
P 5050 1750
F 0 "D5" H 5100 1950 50  0000 R CNN
F 1 "1N4148" H 5200 1850 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_KathodeUp" H 5050 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5050 1750 50  0001 C CNN
	1    5050 1750
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D6
U 1 1 616C0CD6
P 5050 2100
F 0 "D6" H 5100 1900 50  0000 R CNN
F 1 "1N4148" H 5200 2000 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_KathodeUp" H 5050 1925 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5050 2100 50  0001 C CNN
	1    5050 2100
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D7
U 1 1 616CAED4
P 5900 2400
F 0 "D7" H 5950 2200 50  0000 R CNN
F 1 "1N4148" H 6050 2300 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5900 2225 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5900 2400 50  0001 C CNN
	1    5900 2400
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D8
U 1 1 616CBD7E
P 5900 2850
F 0 "D8" H 5950 3050 50  0000 R CNN
F 1 "1N4148" H 6050 2950 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5900 2675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5900 2850 50  0001 C CNN
	1    5900 2850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D4
U 1 1 616CD90E
P 4950 3900
F 0 "D4" H 5000 3700 50  0000 R CNN
F 1 "1N4148" H 5100 3800 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4950 3725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4950 3900 50  0001 C CNN
	1    4950 3900
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D9
U 1 1 616CFABD
P 7200 4750
F 0 "D9" H 7250 4550 50  0000 R CNN
F 1 "1N4148" H 7350 4650 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7200 4575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7200 4750 50  0001 C CNN
	1    7200 4750
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D10
U 1 1 616D0B71
P 7200 5300
F 0 "D10" H 7250 5100 50  0000 R CNN
F 1 "1N4148" H 7350 5200 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7200 5125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7200 5300 50  0001 C CNN
	1    7200 5300
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D11
U 1 1 616D222E
P 8000 5300
F 0 "D11" V 8050 5550 50  0000 R CNN
F 1 "1N4148" V 7950 5700 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8000 5125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8000 5300 50  0001 C CNN
	1    8000 5300
	0    1    1    0   
$EndComp
$EndSCHEMATC
