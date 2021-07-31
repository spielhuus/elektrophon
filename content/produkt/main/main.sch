EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "produkt"
Date "2021-07-28"
Rev "R01"
Comp ""
Comment1 "schema for main pcb"
Comment2 "vca and ringmodulator"
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
$Comp
L Mechanical:MountingHole H1
U 1 1 60E46C31
P 9700 5950
F 0 "H1" H 9800 5996 50  0000 L CNN
F 1 "MountingHole" H 9800 5905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9700 5950 50  0001 C CNN
F 3 "~" H 9700 5950 50  0001 C CNN
	1    9700 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6097A580
P 9700 6250
F 0 "H2" H 9800 6296 50  0000 L CNN
F 1 "MountingHole" H 9800 6205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9700 6250 50  0001 C CNN
F 3 "~" H 9700 6250 50  0001 C CNN
	1    9700 6250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 6098DECA
P 10450 5950
F 0 "H3" H 10550 5996 50  0000 L CNN
F 1 "MountingHole" H 10550 5905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10450 5950 50  0001 C CNN
F 3 "~" H 10450 5950 50  0001 C CNN
	1    10450 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6098DED0
P 10450 6250
F 0 "H4" H 10550 6296 50  0000 L CNN
F 1 "MountingHole" H 10550 6205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10450 6250 50  0001 C CNN
F 3 "~" H 10450 6250 50  0001 C CNN
	1    10450 6250
	1    0    0    -1  
$EndComp
Text GLabel 7950 5750 2    50   Input ~ 0
Xa
Text GLabel 7950 5850 2    50   Input ~ 0
Ya
Text GLabel 7950 5950 2    50   Input ~ 0
OUTa
Text GLabel 8700 5550 2    50   Input ~ 0
Xb
Text GLabel 8700 5650 2    50   Input ~ 0
Yb
Text GLabel 8700 5750 2    50   Input ~ 0
OUTb
$Comp
L power:GND #PWR037
U 1 1 609EFA41
P 7950 5650
F 0 "#PWR037" H 7950 5400 50  0001 C CNN
F 1 "GND" V 7955 5522 50  0000 R CNN
F 2 "" H 7950 5650 50  0001 C CNN
F 3 "" H 7950 5650 50  0001 C CNN
	1    7950 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6650 2150 6800 2150
Text GLabel 6800 2150 2    50   Input ~ 0
OUTa
Wire Wire Line
	3550 1500 3850 1500
Wire Wire Line
	3850 1850 3850 1500
Wire Wire Line
	4500 1850 3850 1850
Wire Wire Line
	3550 2600 3900 2600
Wire Wire Line
	3900 2250 4500 2250
Wire Wire Line
	3900 2600 3900 2250
Wire Wire Line
	2700 2700 2900 2700
Wire Wire Line
	2700 1600 2900 1600
Wire Wire Line
	5900 2600 6000 2600
Wire Wire Line
	5550 2600 5600 2600
Wire Wire Line
	5550 2650 5550 2600
$Comp
L power:GND #PWR025
U 1 1 5F793DA6
P 5550 2650
F 0 "#PWR025" H 5550 2400 50  0001 C CNN
F 1 "GND" H 5555 2477 50  0000 C CNN
F 2 "" H 5550 2650 50  0001 C CNN
F 3 "" H 5550 2650 50  0001 C CNN
	1    5550 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F793822
P 5750 2600
F 0 "R3" V 5543 2600 50  0000 C CNN
F 1 "10k" V 5634 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5680 2600 50  0001 C CNN
F 3 "~" H 5750 2600 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 5750 2600 50  0001 C CNN "Description"
	1    5750 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 2600 6000 2250
Connection ~ 6000 2600
Wire Wire Line
	6200 2600 6000 2600
Wire Wire Line
	6650 2600 6650 2150
Wire Wire Line
	6500 2600 6650 2600
$Comp
L Device:R R5
U 1 1 5F78B0A7
P 6350 2600
F 0 "R5" V 6143 2600 50  0000 C CNN
F 1 "10k" V 6234 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6280 2600 50  0001 C CNN
F 3 "~" H 6350 2600 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 6350 2600 50  0001 C CNN "Description"
	1    6350 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 2050 6050 2050
Wire Wire Line
	2850 2100 3550 2100
Wire Wire Line
	2850 1000 3550 1000
Wire Wire Line
	4250 2050 4500 2050
$Comp
L power:-15V #PWR020
U 1 1 5F7F0FCE
P 5000 2950
F 0 "#PWR020" H 5000 3050 50  0001 C CNN
F 1 "-15V" H 5015 3123 50  0000 C CNN
F 2 "" H 5000 2950 50  0001 C CNN
F 3 "" H 5000 2950 50  0001 C CNN
	1    5000 2950
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR019
U 1 1 5F7EE1F9
P 5000 1350
F 0 "#PWR019" H 5000 1200 50  0001 C CNN
F 1 "+15V" H 5015 1523 50  0000 C CNN
F 2 "" H 5000 1350 50  0001 C CNN
F 3 "" H 5000 1350 50  0001 C CNN
	1    5000 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2950 5000 2650
Wire Wire Line
	5000 1350 5000 1650
$Comp
L power:GND #PWR014
U 1 1 5F755EA3
P 4250 2550
F 0 "#PWR014" H 4250 2300 50  0001 C CNN
F 1 "GND" H 4255 2377 50  0000 C CNN
F 2 "" H 4250 2550 50  0001 C CNN
F 3 "" H 4250 2550 50  0001 C CNN
	1    4250 2550
	1    0    0    -1  
$EndComp
$Comp
L elektrophon:AD633 U3
U 1 1 5F74D4F3
P 5000 2050
F 0 "U3" H 5200 2650 50  0000 C CNN
F 1 "AD633" H 5200 2550 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5600 1450 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD633.pdf" H 5850 1650 50  0001 C CNN
F 4 "X" H 5000 2050 50  0001 C CNN "Spice_Primitive"
F 5 "AD633" H 5000 2050 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5000 2050 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Analog Multiplier, DIP-8/SOIC-8" H 5000 2050 50  0001 C CNN "Description"
	1    5000 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2250 6000 2250
Text GLabel 2700 2700 0    50   Input ~ 0
Ya
Wire Wire Line
	3550 2100 3550 2600
Connection ~ 3550 2600
Wire Wire Line
	3500 2600 3550 2600
Wire Wire Line
	2900 2500 2850 2500
Wire Wire Line
	2850 2500 2850 2100
Text GLabel 2700 1600 0    50   Input ~ 0
Xa
Wire Wire Line
	3550 1000 3550 1500
Connection ~ 3550 1500
Wire Wire Line
	3500 1500 3550 1500
Wire Wire Line
	2900 1400 2850 1400
Wire Wire Line
	2850 1400 2850 1000
Text GLabel 1050 7300 0    50   Input ~ 0
VN
Text GLabel 1550 7300 2    50   Input ~ 0
VN
Text GLabel 1050 7200 0    50   Input ~ 0
VP
Text GLabel 1550 7200 2    50   Input ~ 0
VP
Text GLabel 2150 7450 0    50   Input ~ 0
VN
Text GLabel 2150 6850 0    50   Input ~ 0
VP
Wire Wire Line
	2500 7450 2700 7450
$Comp
L Device:R R2
U 1 1 60980ED8
P 2300 7450
F 0 "R2" V 2093 7450 50  0000 C CNN
F 1 "10" V 2184 7450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2230 7450 50  0001 C CNN
F 3 "~" H 2300 7450 50  0001 C CNN
F 4 "R" H 2300 7450 50  0001 C CNN "Spice_Primitive"
F 5 "10" H 2300 7450 50  0001 C CNN "Spice_Model"
F 6 "N" H 2300 7450 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2300 7450 50  0001 C CNN "Description"
	1    2300 7450
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR09
U 1 1 5FC69BA2
P 2500 7450
AR Path="/5FC69BA2" Ref="#PWR09"  Part="1" 
AR Path="/5DD3665B/5FC69BA2" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 2500 7550 50  0001 C CNN
F 1 "-15V" H 2400 7600 50  0000 L CNN
F 2 "" H 2500 7450 50  0001 C CNN
F 3 "" H 2500 7450 50  0001 C CNN
	1    2500 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 6850 2700 6850
Wire Wire Line
	2450 6850 2500 6850
Connection ~ 2500 6850
$Comp
L power:+15V #PWR07
U 1 1 60E46C2C
P 2500 6850
AR Path="/60E46C2C" Ref="#PWR07"  Part="1" 
AR Path="/5DD3665B/60E46C2C" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 2500 6700 50  0001 C CNN
F 1 "+15V" H 2400 7000 50  0000 L CNN
F 2 "" H 2500 6850 50  0001 C CNN
F 3 "" H 2500 6850 50  0001 C CNN
	1    2500 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 609809F6
P 2300 6850
F 0 "R1" V 2093 6850 50  0000 C CNN
F 1 "10" V 2184 6850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2230 6850 50  0001 C CNN
F 3 "~" H 2300 6850 50  0001 C CNN
F 4 "R" H 2300 6850 50  0001 C CNN "Spice_Primitive"
F 5 "10" H 2300 6850 50  0001 C CNN "Spice_Model"
F 6 "N" H 2300 6850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2300 6850 50  0001 C CNN "Description"
	1    2300 6850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60980ECA
P 2500 7150
AR Path="/60980ECA" Ref="#PWR08"  Part="1" 
AR Path="/5DD3665B/60980ECA" Ref="#PWR?"  Part="1" 
F 0 "#PWR08" H 2500 6900 50  0001 C CNN
F 1 "GND" V 2500 6950 50  0000 C CNN
F 2 "" H 2500 7150 50  0001 C CNN
F 3 "" H 2500 7150 50  0001 C CNN
	1    2500 7150
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 60E46C2E
P 1350 7100
AR Path="/60E46C2E" Ref="J1"  Part="1" 
AR Path="/5DD3665B/60E46C2E" Ref="J?"  Part="1" 
F 0 "J1" H 1400 7517 50  0000 C CNN
F 1 "10 Pos" H 1400 7426 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 1350 7100 50  0001 C CNN
F 3 "~" H 1350 7100 50  0001 C CNN
F 4 "J" H 1350 7100 50  0001 C CNN "Spice_Primitive"
F 5 "IDC Header" H 1350 7100 50  0001 C CNN "Spice_Model"
F 6 "N" H 1350 7100 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Pin Header IDC (2.54mm)" H 1350 7100 50  0001 C CNN "Description"
	1    1350 7100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 609809F1
P 1050 7100
AR Path="/609809F1" Ref="#PWR03"  Part="1" 
AR Path="/5DD3665B/609809F1" Ref="#PWR?"  Part="1" 
F 0 "#PWR03" H 1050 6850 50  0001 C CNN
F 1 "GND" V 1055 6972 50  0000 R CNN
F 2 "" H 1050 7100 50  0001 C CNN
F 3 "" H 1050 7100 50  0001 C CNN
	1    1050 7100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60980ECD
P 1050 7000
AR Path="/60980ECD" Ref="#PWR02"  Part="1" 
AR Path="/5DD3665B/60980ECD" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 1050 6750 50  0001 C CNN
F 1 "GND" V 1055 6872 50  0000 R CNN
F 2 "" H 1050 7000 50  0001 C CNN
F 3 "" H 1050 7000 50  0001 C CNN
	1    1050 7000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 60980EDA
P 1550 7000
AR Path="/60980EDA" Ref="#PWR05"  Part="1" 
AR Path="/5DD3665B/60980EDA" Ref="#PWR?"  Part="1" 
F 0 "#PWR05" H 1550 6750 50  0001 C CNN
F 1 "GND" V 1555 6872 50  0000 R CNN
F 2 "" H 1550 7000 50  0001 C CNN
F 3 "" H 1550 7000 50  0001 C CNN
	1    1550 7000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 60980ED7
P 1550 7100
AR Path="/60980ED7" Ref="#PWR06"  Part="1" 
AR Path="/5DD3665B/60980ED7" Ref="#PWR?"  Part="1" 
F 0 "#PWR06" H 1550 6850 50  0001 C CNN
F 1 "GND" V 1555 6972 50  0000 R CNN
F 2 "" H 1550 7100 50  0001 C CNN
F 3 "" H 1550 7100 50  0001 C CNN
	1    1550 7100
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 5FCD1660
P 1550 6900
AR Path="/5FCD1660" Ref="#PWR04"  Part="1" 
AR Path="/5DD3665B/5FCD1660" Ref="#PWR?"  Part="1" 
F 0 "#PWR04" H 1550 6750 50  0001 C CNN
F 1 "+5V" V 1565 7028 50  0000 L CNN
F 2 "" H 1550 6900 50  0001 C CNN
F 3 "" H 1550 6900 50  0001 C CNN
	1    1550 6900
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 60E46C30
P 1050 6900
AR Path="/60E46C30" Ref="#PWR01"  Part="1" 
AR Path="/5DD3665B/60E46C30" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 1050 6750 50  0001 C CNN
F 1 "+5V" V 1065 7028 50  0000 L CNN
F 2 "" H 1050 6900 50  0001 C CNN
F 3 "" H 1050 6900 50  0001 C CNN
	1    1050 6900
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 609809FC
P 1050 6900
AR Path="/609809FC" Ref="#FLG01"  Part="1" 
AR Path="/5DD3665B/609809FC" Ref="#FLG?"  Part="1" 
F 0 "#FLG01" H 1050 6975 50  0001 C CNN
F 1 "PWR_FLAG" H 1050 7028 50  0001 L CNN
F 2 "" H 1050 6900 50  0001 C CNN
F 3 "~" H 1050 6900 50  0001 C CNN
	1    1050 6900
	1    0    0    -1  
$EndComp
Connection ~ 1050 6900
Connection ~ 2500 7450
Wire Wire Line
	2450 7450 2500 7450
Wire Wire Line
	2700 7150 2500 7150
$Comp
L Device:CP C2
U 1 1 60980EC9
P 2700 7300
AR Path="/60980EC9" Ref="C2"  Part="1" 
AR Path="/5DD3665B/60980EC9" Ref="C?"  Part="1" 
F 0 "C2" H 2818 7346 50  0000 L CNN
F 1 "22u" H 2818 7255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2738 7150 50  0001 C CNN
F 3 "~" H 2700 7300 50  0001 C CNN
F 4 "C" H 2700 7300 50  0001 C CNN "Spice_Primitive"
F 5 "22u" H 2700 7300 50  0001 C CNN "Spice_Model"
F 6 "N" H 2700 7300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Aluminium Electrolytic Capacitors (50V, D=6.3 mm, LS=2.5 mm)" H 2700 7300 50  0001 C CNN "Description"
	1    2700 7300
	1    0    0    -1  
$EndComp
Connection ~ 2700 7150
$Comp
L Device:CP C1
U 1 1 60980ECB
P 2700 7000
AR Path="/60980ECB" Ref="C1"  Part="1" 
AR Path="/5DD3665B/60980ECB" Ref="C?"  Part="1" 
F 0 "C1" H 2818 7046 50  0000 L CNN
F 1 "22u" H 2818 6955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2738 6850 50  0001 C CNN
F 3 "~" H 2700 7000 50  0001 C CNN
F 4 "C" H 2700 7000 50  0001 C CNN "Spice_Primitive"
F 5 "22u" H 2700 7000 50  0001 C CNN "Spice_Model"
F 6 "N" H 2700 7000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Aluminium Electrolytic Capacitors (50V, D=6.3 mm, LS=2.5 mm)" H 2700 7000 50  0001 C CNN "Description"
	1    2700 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR028
U 1 1 5FD044D0
P 5900 6850
F 0 "#PWR028" H 5900 6700 50  0001 C CNN
F 1 "+15V" H 5915 7023 50  0000 C CNN
F 2 "" H 5900 6850 50  0001 C CNN
F 3 "" H 5900 6850 50  0001 C CNN
	1    5900 6850
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR029
U 1 1 5FD03C19
P 5900 7450
F 0 "#PWR029" H 5900 7550 50  0001 C CNN
F 1 "-15V" H 5915 7623 50  0000 C CNN
F 2 "" H 5900 7450 50  0001 C CNN
F 3 "" H 5900 7450 50  0001 C CNN
	1    5900 7450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 7150 5900 7150
Wire Wire Line
	5700 7200 5700 7150
$Comp
L power:GND #PWR027
U 1 1 5FD009DD
P 5700 7200
F 0 "#PWR027" H 5700 6950 50  0001 C CNN
F 1 "GND" H 5705 7027 50  0000 C CNN
F 2 "" H 5700 7200 50  0001 C CNN
F 3 "" H 5700 7200 50  0001 C CNN
	1    5700 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5F7E6B68
P 5900 7300
F 0 "C10" H 6150 7350 50  0000 R CNN
F 1 "0.1u" H 6200 7250 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 5938 7150 50  0001 C CNN
F 3 "~" H 5900 7300 50  0001 C CNN
F 4 "C" H 5900 7300 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 5900 7300 50  0001 C CNN "Spice_Model"
F 6 "N" H 5900 7300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 5900 7300 50  0001 C CNN "Description"
	1    5900 7300
	1    0    0    -1  
$EndComp
Connection ~ 5900 7150
$Comp
L Device:C C9
U 1 1 5F7DF1DD
P 5900 7000
F 0 "C9" H 6150 7050 50  0000 R CNN
F 1 "0.1u" H 6200 6950 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 5938 6850 50  0001 C CNN
F 3 "~" H 5900 7000 50  0001 C CNN
F 4 "C" H 5900 7000 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 5900 7000 50  0001 C CNN "Spice_Model"
F 6 "N" H 5900 7000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 5900 7000 50  0001 C CNN "Description"
	1    5900 7000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 60A25246
P 7300 6000
F 0 "#FLG04" H 7300 6075 50  0001 C CNN
F 1 "PWR_FLAG" H 7300 6173 50  0001 C CNN
F 2 "" H 7300 6000 50  0001 C CNN
F 3 "~" H 7300 6000 50  0001 C CNN
	1    7300 6000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 60E46C2B
P 7050 5900
F 0 "#FLG03" H 7050 5975 50  0001 C CNN
F 1 "PWR_FLAG" H 7050 6073 50  0001 C CNN
F 2 "" H 7050 5900 50  0001 C CNN
F 3 "~" H 7050 5900 50  0001 C CNN
	1    7050 5900
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 60E46C2A
P 6800 5900
F 0 "#FLG02" H 6800 5975 50  0001 C CNN
F 1 "PWR_FLAG" H 6800 6073 50  0001 C CNN
F 2 "" H 6800 5900 50  0001 C CNN
F 3 "~" H 6800 5900 50  0001 C CNN
	1    6800 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 7150 4200 7150
Wire Wire Line
	4000 7200 4000 7150
$Comp
L power:GND #PWR013
U 1 1 5F7116DA
P 4000 7200
F 0 "#PWR013" H 4000 6950 50  0001 C CNN
F 1 "GND" H 4005 7027 50  0000 C CNN
F 2 "" H 4000 7200 50  0001 C CNN
F 3 "" H 4000 7200 50  0001 C CNN
	1    4000 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 7450 4200 7450
Wire Wire Line
	4200 6850 4500 6850
$Comp
L Device:C C6
U 1 1 5F7116D2
P 4200 7300
F 0 "C6" H 4315 7346 50  0000 L CNN
F 1 "0.1u" H 4315 7255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4238 7150 50  0001 C CNN
F 3 "~" H 4200 7300 50  0001 C CNN
F 4 "C" H 4200 7300 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 4200 7300 50  0001 C CNN "Spice_Model"
F 6 "N" H 4200 7300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 4200 7300 50  0001 C CNN "Description"
	1    4200 7300
	1    0    0    -1  
$EndComp
Connection ~ 4200 7150
$Comp
L Device:C C5
U 1 1 5F7116CC
P 4200 7000
F 0 "C5" H 4315 7046 50  0000 L CNN
F 1 "0.1u" H 4315 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4238 6850 50  0001 C CNN
F 3 "~" H 4200 7000 50  0001 C CNN
F 4 "C" H 4200 7000 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 4200 7000 50  0001 C CNN "Spice_Model"
F 6 "N" H 4200 7000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 4200 7000 50  0001 C CNN "Description"
	1    4200 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 7150 3300 7150
Wire Wire Line
	3100 7200 3100 7150
$Comp
L power:GND #PWR010
U 1 1 5F70ACFD
P 3100 7200
F 0 "#PWR010" H 3100 6950 50  0001 C CNN
F 1 "GND" H 3105 7027 50  0000 C CNN
F 2 "" H 3100 7200 50  0001 C CNN
F 3 "" H 3100 7200 50  0001 C CNN
	1    3100 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 7450 3300 7450
Wire Wire Line
	3300 6850 3600 6850
$Comp
L Device:C C4
U 1 1 5F6F586F
P 3300 7300
F 0 "C4" H 3415 7346 50  0000 L CNN
F 1 "0.1u" H 3415 7255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3338 7150 50  0001 C CNN
F 3 "~" H 3300 7300 50  0001 C CNN
F 4 "C" H 3300 7300 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 3300 7300 50  0001 C CNN "Spice_Model"
F 6 "N" H 3300 7300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 3300 7300 50  0001 C CNN "Description"
	1    3300 7300
	1    0    0    -1  
$EndComp
Connection ~ 3300 7150
$Comp
L Device:C C3
U 1 1 5F6F526B
P 3300 7000
F 0 "C3" H 3415 7046 50  0000 L CNN
F 1 "0.1u" H 3415 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3338 6850 50  0001 C CNN
F 3 "~" H 3300 7000 50  0001 C CNN
F 4 "C" H 3300 7000 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 3300 7000 50  0001 C CNN "Spice_Model"
F 6 "N" H 3300 7000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 3300 7000 50  0001 C CNN "Description"
	1    3300 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR035
U 1 1 609809F5
P 7300 6000
F 0 "#PWR035" H 7300 5750 50  0001 C CNN
F 1 "GND" H 7305 5827 50  0000 C CNN
F 2 "" H 7300 6000 50  0001 C CNN
F 3 "" H 7300 6000 50  0001 C CNN
	1    7300 6000
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR034
U 1 1 60980ED2
P 7050 5900
F 0 "#PWR034" H 7050 6000 50  0001 C CNN
F 1 "-15V" H 7065 6073 50  0000 C CNN
F 2 "" H 7050 5900 50  0001 C CNN
F 3 "" H 7050 5900 50  0001 C CNN
	1    7050 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR033
U 1 1 609809F4
P 6800 5900
F 0 "#PWR033" H 6800 5750 50  0001 C CNN
F 1 "+15V" H 6815 6073 50  0000 C CNN
F 2 "" H 6800 5900 50  0001 C CNN
F 3 "" H 6800 5900 50  0001 C CNN
	1    6800 5900
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR017
U 1 1 5F63E16D
P 4500 7450
F 0 "#PWR017" H 4500 7550 50  0001 C CNN
F 1 "-15V" H 4515 7623 50  0000 C CNN
F 2 "" H 4500 7450 50  0001 C CNN
F 3 "" H 4500 7450 50  0001 C CNN
	1    4500 7450
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR016
U 1 1 5F63E167
P 4500 6850
F 0 "#PWR016" H 4500 6700 50  0001 C CNN
F 1 "+15V" H 4515 7023 50  0000 C CNN
F 2 "" H 4500 6850 50  0001 C CNN
F 3 "" H 4500 6850 50  0001 C CNN
	1    4500 6850
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR012
U 1 1 5F503CEA
P 3600 7450
F 0 "#PWR012" H 3600 7550 50  0001 C CNN
F 1 "-15V" H 3615 7623 50  0000 C CNN
F 2 "" H 3600 7450 50  0001 C CNN
F 3 "" H 3600 7450 50  0001 C CNN
	1    3600 7450
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR011
U 1 1 5F502CF7
P 3600 6850
F 0 "#PWR011" H 3600 6700 50  0001 C CNN
F 1 "+15V" H 3615 7023 50  0000 C CNN
F 2 "" H 3600 6850 50  0001 C CNN
F 3 "" H 3600 6850 50  0001 C CNN
	1    3600 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR031
U 1 1 609EEDB3
P 6550 6850
F 0 "#PWR031" H 6550 6700 50  0001 C CNN
F 1 "+15V" H 6565 7023 50  0000 C CNN
F 2 "" H 6550 6850 50  0001 C CNN
F 3 "" H 6550 6850 50  0001 C CNN
	1    6550 6850
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR032
U 1 1 609EEDB9
P 6550 7450
F 0 "#PWR032" H 6550 7550 50  0001 C CNN
F 1 "-15V" H 6565 7623 50  0000 C CNN
F 2 "" H 6550 7450 50  0001 C CNN
F 3 "" H 6550 7450 50  0001 C CNN
	1    6550 7450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 7150 6550 7150
Wire Wire Line
	6350 7200 6350 7150
$Comp
L power:GND #PWR030
U 1 1 609EEDC1
P 6350 7200
F 0 "#PWR030" H 6350 6950 50  0001 C CNN
F 1 "GND" H 6355 7027 50  0000 C CNN
F 2 "" H 6350 7200 50  0001 C CNN
F 3 "" H 6350 7200 50  0001 C CNN
	1    6350 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 609EEDCA
P 6550 7300
F 0 "C12" H 6800 7350 50  0000 R CNN
F 1 "0.1u" H 6850 7250 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 6588 7150 50  0001 C CNN
F 3 "~" H 6550 7300 50  0001 C CNN
F 4 "C" H 6550 7300 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 6550 7300 50  0001 C CNN "Spice_Model"
F 6 "N" H 6550 7300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 6550 7300 50  0001 C CNN "Description"
	1    6550 7300
	1    0    0    -1  
$EndComp
Connection ~ 6550 7150
$Comp
L Device:C C11
U 1 1 609EEDD4
P 6550 7000
F 0 "C11" H 6800 7050 50  0000 R CNN
F 1 "0.1u" H 6850 6950 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 6588 6850 50  0001 C CNN
F 3 "~" H 6550 7000 50  0001 C CNN
F 4 "C" H 6550 7000 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 6550 7000 50  0001 C CNN "Spice_Model"
F 6 "N" H 6550 7000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 6550 7000 50  0001 C CNN "Description"
	1    6550 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 7150 5000 7150
Wire Wire Line
	4800 7200 4800 7150
$Comp
L power:GND #PWR018
U 1 1 609FD0F4
P 4800 7200
F 0 "#PWR018" H 4800 6950 50  0001 C CNN
F 1 "GND" H 4805 7027 50  0000 C CNN
F 2 "" H 4800 7200 50  0001 C CNN
F 3 "" H 4800 7200 50  0001 C CNN
	1    4800 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 7450 5000 7450
Wire Wire Line
	5000 6850 5300 6850
$Comp
L Device:C C8
U 1 1 609FD0FF
P 5000 7300
F 0 "C8" H 5115 7346 50  0000 L CNN
F 1 "0.1u" H 5115 7255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 5038 7150 50  0001 C CNN
F 3 "~" H 5000 7300 50  0001 C CNN
F 4 "C" H 5000 7300 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 5000 7300 50  0001 C CNN "Spice_Model"
F 6 "N" H 5000 7300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 5000 7300 50  0001 C CNN "Description"
	1    5000 7300
	1    0    0    -1  
$EndComp
Connection ~ 5000 7150
$Comp
L Device:C C7
U 1 1 609FD109
P 5000 7000
F 0 "C7" H 5115 7046 50  0000 L CNN
F 1 "0.1u" H 5115 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 5038 6850 50  0001 C CNN
F 3 "~" H 5000 7000 50  0001 C CNN
F 4 "C" H 5000 7000 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 5000 7000 50  0001 C CNN "Spice_Model"
F 6 "N" H 5000 7000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 5000 7000 50  0001 C CNN "Description"
	1    5000 7000
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR024
U 1 1 609FD11A
P 5300 7450
F 0 "#PWR024" H 5300 7550 50  0001 C CNN
F 1 "-15V" H 5315 7623 50  0000 C CNN
F 2 "" H 5300 7450 50  0001 C CNN
F 3 "" H 5300 7450 50  0001 C CNN
	1    5300 7450
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR023
U 1 1 609FD121
P 5300 6850
F 0 "#PWR023" H 5300 6700 50  0001 C CNN
F 1 "+15V" H 5315 7023 50  0000 C CNN
F 2 "" H 5300 6850 50  0001 C CNN
F 3 "" H 5300 6850 50  0001 C CNN
	1    5300 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR036
U 1 1 60AF4BE1
P 7950 5550
F 0 "#PWR036" H 7950 5400 50  0001 C CNN
F 1 "+5V" V 7965 5678 50  0000 L CNN
F 2 "" H 7950 5550 50  0001 C CNN
F 3 "" H 7950 5550 50  0001 C CNN
	1    7950 5550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 60B26128
P 5500 2250
F 0 "#PWR0101" H 5500 2000 50  0001 C CNN
F 1 "GND" H 5505 2077 50  0000 C CNN
F 2 "" H 5500 2250 50  0001 C CNN
F 3 "" H 5500 2250 50  0001 C CNN
	1    5500 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60B290F4
P 5500 4700
F 0 "#PWR0102" H 5500 4450 50  0001 C CNN
F 1 "GND" H 5505 4527 50  0000 C CNN
F 2 "" H 5500 4700 50  0001 C CNN
F 3 "" H 5500 4700 50  0001 C CNN
	1    5500 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3850 2850 3450
Wire Wire Line
	2900 3850 2850 3850
Wire Wire Line
	3500 3950 3550 3950
Wire Wire Line
	3550 3450 3550 3950
Text GLabel 2700 4050 0    50   Input ~ 0
Xb
Wire Wire Line
	2850 4950 2850 4550
Wire Wire Line
	2900 4950 2850 4950
Wire Wire Line
	3500 5050 3550 5050
Wire Wire Line
	3550 4550 3550 5050
Text GLabel 2700 5150 0    50   Input ~ 0
Yb
Wire Wire Line
	6050 4700 6000 4700
$Comp
L elektrophon:AD633 U4
U 1 1 609D2173
P 5000 4500
F 0 "U4" H 5200 5100 50  0000 C CNN
F 1 "AD633" H 5200 5000 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5600 3900 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD633.pdf" H 5850 4100 50  0001 C CNN
F 4 "X" H 5000 4500 50  0001 C CNN "Spice_Primitive"
F 5 "AD633" H 5000 4500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5000 4500 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Analog Multiplier, DIP-8/SOIC-8" H 5000 4500 50  0001 C CNN "Description"
	1    5000 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 609D2179
P 4250 5000
F 0 "#PWR015" H 4250 4750 50  0001 C CNN
F 1 "GND" H 4255 4827 50  0000 C CNN
F 2 "" H 4250 5000 50  0001 C CNN
F 3 "" H 4250 5000 50  0001 C CNN
	1    4250 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3800 5000 4100
Wire Wire Line
	5000 5400 5000 5100
$Comp
L power:+15V #PWR021
U 1 1 609D2181
P 5000 3800
F 0 "#PWR021" H 5000 3650 50  0001 C CNN
F 1 "+15V" H 5015 3973 50  0000 C CNN
F 2 "" H 5000 3800 50  0001 C CNN
F 3 "" H 5000 3800 50  0001 C CNN
	1    5000 3800
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR022
U 1 1 609D2187
P 5000 5400
F 0 "#PWR022" H 5000 5500 50  0001 C CNN
F 1 "-15V" H 5015 5573 50  0000 C CNN
F 2 "" H 5000 5400 50  0001 C CNN
F 3 "" H 5000 5400 50  0001 C CNN
	1    5000 5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4250 4500 4500 4500
Wire Wire Line
	2850 3450 3550 3450
Wire Wire Line
	2850 4550 3550 4550
Wire Wire Line
	5500 4500 6050 4500
$Comp
L Device:R R6
U 1 1 609D219F
P 6350 5050
F 0 "R6" V 6143 5050 50  0000 C CNN
F 1 "10k" V 6234 5050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6280 5050 50  0001 C CNN
F 3 "~" H 6350 5050 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 6350 5050 50  0001 C CNN "Description"
	1    6350 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 5050 6650 5050
Wire Wire Line
	6650 5050 6650 4600
Wire Wire Line
	6200 5050 6000 5050
Wire Wire Line
	6000 5050 6000 4700
$Comp
L Device:R R4
U 1 1 609D21AA
P 5750 5050
F 0 "R4" V 5543 5050 50  0000 C CNN
F 1 "10k" V 5634 5050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5680 5050 50  0001 C CNN
F 3 "~" H 5750 5050 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 5750 5050 50  0001 C CNN "Description"
	1    5750 5050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR026
U 1 1 609D21B0
P 5550 5100
F 0 "#PWR026" H 5550 4850 50  0001 C CNN
F 1 "GND" H 5555 4927 50  0000 C CNN
F 2 "" H 5550 5100 50  0001 C CNN
F 3 "" H 5550 5100 50  0001 C CNN
	1    5550 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 5100 5550 5050
Wire Wire Line
	5550 5050 5600 5050
Connection ~ 6000 5050
Wire Wire Line
	5900 5050 6000 5050
Wire Wire Line
	2700 4050 2900 4050
Wire Wire Line
	2700 5150 2900 5150
Wire Wire Line
	3900 5050 3900 4700
Wire Wire Line
	3900 4700 4500 4700
Connection ~ 3550 5050
Wire Wire Line
	3550 5050 3900 5050
Wire Wire Line
	4500 4300 3850 4300
Wire Wire Line
	3850 4300 3850 3950
Connection ~ 3550 3950
Wire Wire Line
	3550 3950 3850 3950
Text GLabel 6800 4600 2    50   Input ~ 0
OUTb
Wire Wire Line
	6650 4600 6800 4600
Wire Wire Line
	4400 2450 4500 2450
Wire Wire Line
	4250 2050 4250 2550
Wire Wire Line
	4250 4500 4250 5000
$Comp
L power:GND #PWR043
U 1 1 60B440F0
P 4400 6000
F 0 "#PWR043" H 4400 5750 50  0001 C CNN
F 1 "GND" H 4405 5827 50  0000 C CNN
F 2 "" H 4400 6000 50  0001 C CNN
F 3 "" H 4400 6000 50  0001 C CNN
	1    4400 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 60B4355D
P 4400 5850
F 0 "R10" V 4193 5850 50  0000 C CNN
F 1 "100" V 4284 5850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4330 5850 50  0001 C CNN
F 3 "~" H 4400 5850 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 4400 5850 50  0001 C CNN "Description"
	1    4400 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 5600 4400 4900
Wire Wire Line
	4400 5700 4400 5600
Connection ~ 4400 5600
$Comp
L Device:R R8
U 1 1 60B3AE9A
P 4250 5600
F 0 "R8" V 4043 5600 50  0000 C CNN
F 1 "330k" V 4134 5600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4180 5600 50  0001 C CNN
F 3 "~" H 4250 5600 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 4250 5600 50  0001 C CNN "Description"
	1    4250 5600
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR041
U 1 1 60B3A78B
P 3950 5750
F 0 "#PWR041" H 3950 5850 50  0001 C CNN
F 1 "-15V" H 3965 5923 50  0000 C CNN
F 2 "" H 3950 5750 50  0001 C CNN
F 3 "" H 3950 5750 50  0001 C CNN
	1    3950 5750
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR040
U 1 1 60B39E0E
P 3950 5450
F 0 "#PWR040" H 3950 5300 50  0001 C CNN
F 1 "+15V" H 3965 5623 50  0000 C CNN
F 2 "" H 3950 5450 50  0001 C CNN
F 3 "" H 3950 5450 50  0001 C CNN
	1    3950 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM RV2
U 1 1 60B398F6
P 3950 5600
F 0 "RV2" H 3881 5646 50  0000 R CNN
F 1 "100k" H 3881 5555 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3386P_Vertical" H 3950 5600 50  0001 C CNN
F 3 "~" H 3950 5600 50  0001 C CNN
F 4 "X" H 3950 5600 50  0001 C CNN "Spice_Primitive"
F 5 "voltage_divider_2" H 3950 5600 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3950 5600 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Trimmer Resistor, Bourns 3386P" H 3950 5600 50  0001 C CNN "Description"
	1    3950 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 60B5C6CA
P 4400 3550
F 0 "#PWR042" H 4400 3300 50  0001 C CNN
F 1 "GND" H 4405 3377 50  0000 C CNN
F 2 "" H 4400 3550 50  0001 C CNN
F 3 "" H 4400 3550 50  0001 C CNN
	1    4400 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 60B5C6C4
P 4400 3400
F 0 "R9" V 4193 3400 50  0000 C CNN
F 1 "100" V 4284 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4330 3400 50  0001 C CNN
F 3 "~" H 4400 3400 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 4400 3400 50  0001 C CNN "Description"
	1    4400 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 3150 4400 2450
Wire Wire Line
	4400 3250 4400 3150
Connection ~ 4400 3150
$Comp
L Device:R R7
U 1 1 60B5C6BE
P 4250 3150
F 0 "R7" V 4043 3150 50  0000 C CNN
F 1 "330k" V 4134 3150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4180 3150 50  0001 C CNN
F 3 "~" H 4250 3150 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 4250 3150 50  0001 C CNN "Description"
	1    4250 3150
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR039
U 1 1 60B5C6B8
P 3950 3300
F 0 "#PWR039" H 3950 3400 50  0001 C CNN
F 1 "-15V" H 3965 3473 50  0000 C CNN
F 2 "" H 3950 3300 50  0001 C CNN
F 3 "" H 3950 3300 50  0001 C CNN
	1    3950 3300
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR038
U 1 1 60B5C6B2
P 3950 3000
F 0 "#PWR038" H 3950 2850 50  0001 C CNN
F 1 "+15V" H 3965 3173 50  0000 C CNN
F 2 "" H 3950 3000 50  0001 C CNN
F 3 "" H 3950 3000 50  0001 C CNN
	1    3950 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM RV1
U 1 1 60B5C6AC
P 3950 3150
F 0 "RV1" H 3881 3196 50  0000 R CNN
F 1 "100k" H 3881 3105 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3386P_Vertical" H 3950 3150 50  0001 C CNN
F 3 "~" H 3950 3150 50  0001 C CNN
F 4 "X" H 3950 3150 50  0001 C CNN "Spice_Primitive"
F 5 "voltage_divider_1" H 3950 3150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3950 3150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Trimmer Resistor, Bourns 3386P" H 3950 3150 50  0001 C CNN "Description"
	1    3950 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4900 4500 4900
$Comp
L Amplifier_Operational:TL072 U1
U 1 1 61005F8A
P 3200 1500
F 0 "U1" H 3200 1133 50  0000 C CNN
F 1 "TL072" H 3200 1224 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3200 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3200 1500 50  0001 C CNN
	1    3200 1500
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 2 1 61008C18
P 3200 2600
F 0 "U1" H 3200 2233 50  0000 C CNN
F 1 "TL072" H 3200 2324 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3200 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3200 2600 50  0001 C CNN
	2    3200 2600
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U2
U 1 1 6102316F
P 3200 3950
F 0 "U2" H 3200 3583 50  0000 C CNN
F 1 "TL072" H 3200 3674 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3200 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3200 3950 50  0001 C CNN
	1    3200 3950
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U2
U 2 1 61025A75
P 3200 5050
F 0 "U2" H 3200 4683 50  0000 C CNN
F 1 "TL072" H 3200 4774 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3200 5050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3200 5050 50  0001 C CNN
	2    3200 5050
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U5
U 2 1 61029861
P 6350 4600
F 0 "U5" H 6350 4967 50  0000 C CNN
F 1 "TL072" H 6350 4876 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 6350 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6350 4600 50  0001 C CNN
	2    6350 4600
	1    0    0    -1  
$EndComp
Connection ~ 6650 4600
$Comp
L Amplifier_Operational:TL072 U5
U 1 1 6102C33A
P 6350 2150
F 0 "U5" H 6350 2517 50  0000 C CNN
F 1 "TL072" H 6350 2426 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 6350 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6350 2150 50  0001 C CNN
	1    6350 2150
	1    0    0    -1  
$EndComp
Connection ~ 6650 2150
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 61039ED0
P 3700 7150
F 0 "U1" H 3658 7196 50  0000 L CNN
F 1 "TL072" H 3658 7105 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3700 7150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3700 7150 50  0001 C CNN
	3    3700 7150
	1    0    0    -1  
$EndComp
Connection ~ 3600 7450
Connection ~ 3600 6850
$Comp
L Amplifier_Operational:TL072 U2
U 3 1 6103B81B
P 4600 7150
F 0 "U2" H 4558 7196 50  0000 L CNN
F 1 "TL072" H 4558 7105 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 4600 7150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4600 7150 50  0001 C CNN
	3    4600 7150
	1    0    0    -1  
$EndComp
Connection ~ 4500 7450
Connection ~ 4500 6850
$Comp
L Amplifier_Operational:TL072 U5
U 3 1 6103D3BA
P 5400 7150
F 0 "U5" H 5358 7196 50  0000 L CNN
F 1 "TL072" H 5358 7105 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 5400 7150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5400 7150 50  0001 C CNN
	3    5400 7150
	1    0    0    -1  
$EndComp
Connection ~ 5300 7450
Connection ~ 5300 6850
$Comp
L Connector:Conn_01x03_Female J3
U 1 1 6105072E
P 8500 5650
F 0 "J3" H 8350 5950 50  0000 C CNN
F 1 "01x03 Female" H 8392 5844 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 8500 5650 50  0001 C CNN
F 3 "~" H 8500 5650 50  0001 C CNN
F 4 "Board to Board Connectors (2.54 mm)" H 8500 5650 50  0001 C CNN "Description"
	1    8500 5650
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Female J2
U 1 1 61044027
P 7750 5750
F 0 "J2" H 7600 6150 50  0000 C CNN
F 1 "01x05 Female" H 7642 6044 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 7750 5750 50  0001 C CNN
F 3 "~" H 7750 5750 50  0001 C CNN
F 4 "Board to Board Connectors (2.54 mm)" H 7750 5750 50  0001 C CNN "Description"
	1    7750 5750
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
