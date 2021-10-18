EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "(title)"
Date ""
Rev "R01"
Comp ""
Comment1 "schema for pcb"
Comment2 "(description)"
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
$Comp
L Mechanical:MountingHole H1
U 1 1 6097A217
P 9600 6000
F 0 "H1" H 9700 6046 50  0000 L CNN
F 1 "MountingHole" H 9700 5955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9600 6000 50  0001 C CNN
F 3 "~" H 9600 6000 50  0001 C CNN
F 4 "R" H 9600 6000 50  0001 C CNN "Spice_Primitive"
F 5 "1" H 9600 6000 50  0001 C CNN "Spice_Model"
F 6 "N" H 9600 6000 50  0001 C CNN "Spice_Netlist_Enabled"
	1    9600 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6097A580
P 9600 6300
F 0 "H2" H 9700 6346 50  0000 L CNN
F 1 "MountingHole" H 9700 6255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9600 6300 50  0001 C CNN
F 3 "~" H 9600 6300 50  0001 C CNN
F 4 "R" H 9600 6300 50  0001 C CNN "Spice_Primitive"
F 5 "1" H 9600 6300 50  0001 C CNN "Spice_Model"
F 6 "N" H 9600 6300 50  0001 C CNN "Spice_Netlist_Enabled"
	1    9600 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR031
U 1 1 5F816C5C
P 6050 7300
F 0 "#PWR031" H 6050 7150 50  0001 C CNN
F 1 "+15V" H 6065 7473 50  0000 C CNN
F 2 "" H 6050 7300 50  0001 C CNN
F 3 "" H 6050 7300 50  0001 C CNN
	1    6050 7300
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR032
U 1 1 5F816FAE
P 6300 7300
F 0 "#PWR032" H 6300 7400 50  0001 C CNN
F 1 "-15V" H 6315 7473 50  0000 C CNN
F 2 "" H 6300 7300 50  0001 C CNN
F 3 "" H 6300 7300 50  0001 C CNN
	1    6300 7300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 5F817A91
P 6550 7400
F 0 "#PWR034" H 6550 7150 50  0001 C CNN
F 1 "GND" H 6555 7227 50  0000 C CNN
F 2 "" H 6550 7400 50  0001 C CNN
F 3 "" H 6550 7400 50  0001 C CNN
	1    6550 7400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5F737716
P 6050 7300
F 0 "#FLG02" H 6050 7375 50  0001 C CNN
F 1 "PWR_FLAG" H 6050 7473 50  0001 C CNN
F 2 "" H 6050 7300 50  0001 C CNN
F 3 "~" H 6050 7300 50  0001 C CNN
	1    6050 7300
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5F737C0D
P 6300 7300
F 0 "#FLG03" H 6300 7375 50  0001 C CNN
F 1 "PWR_FLAG" H 6300 7473 50  0001 C CNN
F 2 "" H 6300 7300 50  0001 C CNN
F 3 "~" H 6300 7300 50  0001 C CNN
	1    6300 7300
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5F737FC5
P 6550 7400
F 0 "#FLG04" H 6550 7475 50  0001 C CNN
F 1 "PWR_FLAG" H 6550 7573 50  0001 C CNN
F 2 "" H 6550 7400 50  0001 C CNN
F 3 "~" H 6550 7400 50  0001 C CNN
	1    6550 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5E180738
P 2550 7050
AR Path="/5E180738" Ref="C1"  Part="1" 
AR Path="/5DD3665B/5E180738" Ref="C?"  Part="1" 
F 0 "C1" H 2668 7096 50  0000 L CNN
F 1 "22u" H 2668 7005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2588 6900 50  0001 C CNN
F 3 "~" H 2550 7050 50  0001 C CNN
F 4 "C" H 2550 7050 50  0001 C CNN "Spice_Primitive"
F 5 "22u" H 2550 7050 50  0001 C CNN "Spice_Model"
F 6 "N" H 2550 7050 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Aluminium Electrolytic Capacitors (50V, D=6.3 mm, LS=2.5 mm)" H 2550 7050 50  0001 C CNN "Description"
	1    2550 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5E18070C
P 2550 7350
AR Path="/5E18070C" Ref="C2"  Part="1" 
AR Path="/5DD3665B/5E18070C" Ref="C?"  Part="1" 
F 0 "C2" H 2668 7396 50  0000 L CNN
F 1 "22u" H 2668 7305 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2588 7200 50  0001 C CNN
F 3 "~" H 2550 7350 50  0001 C CNN
F 4 "C" H 2550 7350 50  0001 C CNN "Spice_Primitive"
F 5 "22u" H 2550 7350 50  0001 C CNN "Spice_Model"
F 6 "N" H 2550 7350 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Aluminium Electrolytic Capacitors (50V, D=6.3 mm, LS=2.5 mm)" H 2550 7350 50  0001 C CNN "Description"
	1    2550 7350
	1    0    0    -1  
$EndComp
Connection ~ 2550 7200
Wire Wire Line
	2550 7200 2350 7200
Wire Wire Line
	2300 7500 2350 7500
Connection ~ 900  6950
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5FCD1662
P 900 6950
AR Path="/5FCD1662" Ref="#FLG01"  Part="1" 
AR Path="/5DD3665B/5FCD1662" Ref="#FLG?"  Part="1" 
F 0 "#FLG01" H 900 7025 50  0001 C CNN
F 1 "PWR_FLAG" H 900 7078 50  0001 L CNN
F 2 "" H 900 6950 50  0001 C CNN
F 3 "~" H 900 6950 50  0001 C CNN
	1    900  6950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5FCD1661
P 900 6950
AR Path="/5FCD1661" Ref="#PWR01"  Part="1" 
AR Path="/5DD3665B/5FCD1661" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 900 6800 50  0001 C CNN
F 1 "+5V" V 915 7078 50  0000 L CNN
F 2 "" H 900 6950 50  0001 C CNN
F 3 "" H 900 6950 50  0001 C CNN
	1    900  6950
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5FCD1660
P 1400 6950
AR Path="/5FCD1660" Ref="#PWR06"  Part="1" 
AR Path="/5DD3665B/5FCD1660" Ref="#PWR?"  Part="1" 
F 0 "#PWR06" H 1400 6800 50  0001 C CNN
F 1 "+5V" V 1415 7078 50  0000 L CNN
F 2 "" H 1400 6950 50  0001 C CNN
F 3 "" H 1400 6950 50  0001 C CNN
	1    1400 6950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5FC69BA7
P 1400 7150
AR Path="/5FC69BA7" Ref="#PWR08"  Part="1" 
AR Path="/5DD3665B/5FC69BA7" Ref="#PWR?"  Part="1" 
F 0 "#PWR08" H 1400 6900 50  0001 C CNN
F 1 "GND" V 1405 7022 50  0000 R CNN
F 2 "" H 1400 7150 50  0001 C CNN
F 3 "" H 1400 7150 50  0001 C CNN
	1    1400 7150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5FCD165F
P 1400 7050
AR Path="/5FCD165F" Ref="#PWR07"  Part="1" 
AR Path="/5DD3665B/5FCD165F" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 1400 6800 50  0001 C CNN
F 1 "GND" V 1405 6922 50  0000 R CNN
F 2 "" H 1400 7050 50  0001 C CNN
F 3 "" H 1400 7050 50  0001 C CNN
	1    1400 7050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5E18076B
P 900 7050
AR Path="/5E18076B" Ref="#PWR02"  Part="1" 
AR Path="/5DD3665B/5E18076B" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 900 6800 50  0001 C CNN
F 1 "GND" V 905 6922 50  0000 R CNN
F 2 "" H 900 7050 50  0001 C CNN
F 3 "" H 900 7050 50  0001 C CNN
	1    900  7050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E180765
P 900 7150
AR Path="/5E180765" Ref="#PWR03"  Part="1" 
AR Path="/5DD3665B/5E180765" Ref="#PWR?"  Part="1" 
F 0 "#PWR03" H 900 6900 50  0001 C CNN
F 1 "GND" V 905 7022 50  0000 R CNN
F 2 "" H 900 7150 50  0001 C CNN
F 3 "" H 900 7150 50  0001 C CNN
	1    900  7150
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 5FCD165C
P 1200 7150
AR Path="/5FCD165C" Ref="J2"  Part="1" 
AR Path="/5DD3665B/5FCD165C" Ref="J?"  Part="1" 
F 0 "J2" H 1250 7567 50  0000 C CNN
F 1 "10 Pos" H 1250 7476 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 1200 7150 50  0001 C CNN
F 3 "~" H 1200 7150 50  0001 C CNN
F 4 "J" H 1200 7150 50  0001 C CNN "Spice_Primitive"
F 5 "IDC Header" H 1200 7150 50  0001 C CNN "Spice_Model"
F 6 "N" H 1200 7150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Pin Header IDC (2.54mm)" H 1200 7150 50  0001 C CNN "Description"
	1    1200 7150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5E180712
P 2350 7200
AR Path="/5E180712" Ref="#PWR012"  Part="1" 
AR Path="/5DD3665B/5E180712" Ref="#PWR?"  Part="1" 
F 0 "#PWR012" H 2350 6950 50  0001 C CNN
F 1 "GND" V 2350 7000 50  0000 C CNN
F 2 "" H 2350 7200 50  0001 C CNN
F 3 "" H 2350 7200 50  0001 C CNN
	1    2350 7200
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5FB443E6
P 2150 6900
F 0 "R5" V 1943 6900 50  0000 C CNN
F 1 "10" V 2034 6900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2080 6900 50  0001 C CNN
F 3 "~" H 2150 6900 50  0001 C CNN
F 4 "R" H 2150 6900 50  0001 C CNN "Spice_Primitive"
F 5 "10" H 2150 6900 50  0001 C CNN "Spice_Model"
F 6 "N" H 2150 6900 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6900 50  0001 C CNN "Description"
	1    2150 6900
	0    1    1    0   
$EndComp
$Comp
L power:+15V #PWR011
U 1 1 5FC69BA0
P 2350 6900
AR Path="/5FC69BA0" Ref="#PWR011"  Part="1" 
AR Path="/5DD3665B/5FC69BA0" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 2350 6750 50  0001 C CNN
F 1 "+15V" H 2250 7050 50  0000 L CNN
F 2 "" H 2350 6900 50  0001 C CNN
F 3 "" H 2350 6900 50  0001 C CNN
	1    2350 6900
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR013
U 1 1 5FC69BA2
P 2350 7500
AR Path="/5FC69BA2" Ref="#PWR013"  Part="1" 
AR Path="/5DD3665B/5FC69BA2" Ref="#PWR?"  Part="1" 
F 0 "#PWR013" H 2350 7600 50  0001 C CNN
F 1 "-15V" H 2250 7650 50  0000 L CNN
F 2 "" H 2350 7500 50  0001 C CNN
F 3 "" H 2350 7500 50  0001 C CNN
	1    2350 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5FC69BB1
P 2150 7500
F 0 "R6" V 1943 7500 50  0000 C CNN
F 1 "10" V 2034 7500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2080 7500 50  0001 C CNN
F 3 "~" H 2150 7500 50  0001 C CNN
F 4 "R" H 2150 7500 50  0001 C CNN "Spice_Primitive"
F 5 "10" H 2150 7500 50  0001 C CNN "Spice_Model"
F 6 "N" H 2150 7500 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 7500 50  0001 C CNN "Description"
	1    2150 7500
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 6900 2350 6900
Connection ~ 2350 6900
Wire Wire Line
	2350 6900 2550 6900
Connection ~ 2350 7500
Wire Wire Line
	2350 7500 2550 7500
Text GLabel 2000 6900 0    50   Input ~ 0
VP
Text GLabel 2000 7500 0    50   Input ~ 0
VN
Text GLabel 1400 7250 2    50   Input ~ 0
VP
Text GLabel 900  7250 0    50   Input ~ 0
VP
Text GLabel 1400 7350 2    50   Input ~ 0
VN
Text GLabel 900  7350 0    50   Input ~ 0
VN
$Comp
L Mechanical:MountingHole H3
U 1 1 6098DECA
P 10350 6000
F 0 "H3" H 10450 6046 50  0000 L CNN
F 1 "MountingHole" H 10450 5955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10350 6000 50  0001 C CNN
F 3 "~" H 10350 6000 50  0001 C CNN
F 4 "R" H 10350 6000 50  0001 C CNN "Spice_Primitive"
F 5 "1" H 10350 6000 50  0001 C CNN "Spice_Model"
F 6 "N" H 10350 6000 50  0001 C CNN "Spice_Netlist_Enabled"
	1    10350 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6098DED0
P 10350 6300
F 0 "H4" H 10450 6346 50  0000 L CNN
F 1 "MountingHole" H 10450 6255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10350 6300 50  0001 C CNN
F 3 "~" H 10350 6300 50  0001 C CNN
F 4 "R" H 10350 6300 50  0001 C CNN "Spice_Primitive"
F 5 "1" H 10350 6300 50  0001 C CNN "Spice_Model"
F 6 "N" H 10350 6300 50  0001 C CNN "Spice_Netlist_Enabled"
	1    10350 6300
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 5 1 61587241
P 3600 7200
F 0 "U1" H 3558 7246 50  0000 L CNN
F 1 "LM324" H 3558 7155 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3550 7300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 3650 7400 50  0001 C CNN
F 4 "X" H 3600 7200 50  0001 C CNN "Spice_Primitive"
F 5 "LM324c" H 3600 7200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3600 7200 50  0001 C CNN "Spice_Netlist_Enabled"
	5    3600 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR017
U 1 1 61658A58
P 3500 6900
AR Path="/61658A58" Ref="#PWR017"  Part="1" 
AR Path="/5DD3665B/61658A58" Ref="#PWR?"  Part="1" 
F 0 "#PWR017" H 3500 6750 50  0001 C CNN
F 1 "+15V" H 3400 7050 50  0000 L CNN
F 2 "" H 3500 6900 50  0001 C CNN
F 3 "" H 3500 6900 50  0001 C CNN
	1    3500 6900
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR018
U 1 1 61658E26
P 3500 7500
AR Path="/61658E26" Ref="#PWR018"  Part="1" 
AR Path="/5DD3665B/61658E26" Ref="#PWR?"  Part="1" 
F 0 "#PWR018" H 3500 7600 50  0001 C CNN
F 1 "-15V" H 3400 7650 50  0000 L CNN
F 2 "" H 3500 7500 50  0001 C CNN
F 3 "" H 3500 7500 50  0001 C CNN
	1    3500 7500
	-1   0    0    1   
$EndComp
$Comp
L Device:C C3
U 1 1 6165BC30
P 3200 7050
F 0 "C3" H 3315 7096 50  0000 L CNN
F 1 "0.1u" H 3315 7005 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 3238 6900 50  0001 C CNN
F 3 "~" H 3200 7050 50  0001 C CNN
F 4 "C" H 3200 7050 50  0001 C CNN "Spice_Primitive"
F 5 "0.1" H 3200 7050 50  0001 C CNN "Spice_Model"
F 6 "N" H 3200 7050 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 3200 7050 50  0001 C CNN "Description"
	1    3200 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 6165C256
P 3200 7350
F 0 "C4" H 3315 7396 50  0000 L CNN
F 1 "0.1u" H 3315 7305 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 3238 7200 50  0001 C CNN
F 3 "~" H 3200 7350 50  0001 C CNN
F 4 "C" H 3200 7350 50  0001 C CNN "Spice_Primitive"
F 5 "0.1" H 3200 7350 50  0001 C CNN "Spice_Model"
F 6 "N" H 3200 7350 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 3200 7350 50  0001 C CNN "Description"
	1    3200 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6900 3500 6900
Connection ~ 3500 6900
Wire Wire Line
	3200 7500 3500 7500
Connection ~ 3500 7500
$Comp
L power:GND #PWR016
U 1 1 61662408
P 3000 7300
F 0 "#PWR016" H 3000 7050 50  0001 C CNN
F 1 "GND" H 3005 7127 50  0000 C CNN
F 2 "" H 3000 7300 50  0001 C CNN
F 3 "" H 3000 7300 50  0001 C CNN
	1    3000 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 7300 3000 7200
Wire Wire Line
	3000 7200 3200 7200
Connection ~ 3200 7200
$Comp
L Amplifier_Operational:LM324 U2
U 5 1 617CA0DB
P 4500 7200
F 0 "U2" H 4458 7246 50  0000 L CNN
F 1 "LM324" H 4458 7155 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 4450 7300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 4550 7400 50  0001 C CNN
F 4 "X" H 4500 7200 50  0001 C CNN "Spice_Primitive"
F 5 "LM324c" H 4500 7200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4500 7200 50  0001 C CNN "Spice_Netlist_Enabled"
	5    4500 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR020
U 1 1 617CA0E1
P 4400 6900
AR Path="/617CA0E1" Ref="#PWR020"  Part="1" 
AR Path="/5DD3665B/617CA0E1" Ref="#PWR?"  Part="1" 
F 0 "#PWR020" H 4400 6750 50  0001 C CNN
F 1 "+15V" H 4300 7050 50  0000 L CNN
F 2 "" H 4400 6900 50  0001 C CNN
F 3 "" H 4400 6900 50  0001 C CNN
	1    4400 6900
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR021
U 1 1 617CA0E7
P 4400 7500
AR Path="/617CA0E7" Ref="#PWR021"  Part="1" 
AR Path="/5DD3665B/617CA0E7" Ref="#PWR?"  Part="1" 
F 0 "#PWR021" H 4400 7600 50  0001 C CNN
F 1 "-15V" H 4300 7650 50  0000 L CNN
F 2 "" H 4400 7500 50  0001 C CNN
F 3 "" H 4400 7500 50  0001 C CNN
	1    4400 7500
	-1   0    0    1   
$EndComp
$Comp
L Device:C C5
U 1 1 617CA0F0
P 4100 7050
F 0 "C5" H 4215 7096 50  0000 L CNN
F 1 "0.1u" H 4215 7005 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 4138 6900 50  0001 C CNN
F 3 "~" H 4100 7050 50  0001 C CNN
F 4 "C" H 4100 7050 50  0001 C CNN "Spice_Primitive"
F 5 "0.1" H 4100 7050 50  0001 C CNN "Spice_Model"
F 6 "N" H 4100 7050 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 4100 7050 50  0001 C CNN "Description"
	1    4100 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 617CA0F9
P 4100 7350
F 0 "C6" H 4215 7396 50  0000 L CNN
F 1 "0.1u" H 4215 7305 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 4138 7200 50  0001 C CNN
F 3 "~" H 4100 7350 50  0001 C CNN
F 4 "C" H 4100 7350 50  0001 C CNN "Spice_Primitive"
F 5 "0.1" H 4100 7350 50  0001 C CNN "Spice_Model"
F 6 "N" H 4100 7350 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 4100 7350 50  0001 C CNN "Description"
	1    4100 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 6900 4400 6900
Connection ~ 4400 6900
Wire Wire Line
	4100 7500 4400 7500
Connection ~ 4400 7500
$Comp
L power:GND #PWR019
U 1 1 617CA103
P 3900 7300
F 0 "#PWR019" H 3900 7050 50  0001 C CNN
F 1 "GND" H 3905 7127 50  0000 C CNN
F 2 "" H 3900 7300 50  0001 C CNN
F 3 "" H 3900 7300 50  0001 C CNN
	1    3900 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 7300 3900 7200
Wire Wire Line
	3900 7200 4100 7200
Connection ~ 4100 7200
$Comp
L 4xxx:4001 U3
U 5 1 617CE15E
P 3800 5800
F 0 "U3" H 4030 5846 50  0000 L CNN
F 1 "4001" H 4030 5755 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3800 5800 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4000bms-01bms-02bms-25bms.pdf" H 3800 5800 50  0001 C CNN
	5    3800 5800
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR027
U 1 1 617DB314
P 3800 5300
AR Path="/617DB314" Ref="#PWR027"  Part="1" 
AR Path="/5DD3665B/617DB314" Ref="#PWR?"  Part="1" 
F 0 "#PWR027" H 3800 5150 50  0001 C CNN
F 1 "+15V" H 3700 5450 50  0000 L CNN
F 2 "" H 3800 5300 50  0001 C CNN
F 3 "" H 3800 5300 50  0001 C CNN
	1    3800 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 617E2285
P 3300 5450
F 0 "C8" H 3415 5496 50  0000 L CNN
F 1 "0.1u" H 3415 5405 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 3338 5300 50  0001 C CNN
F 3 "~" H 3300 5450 50  0001 C CNN
F 4 "C" H 3300 5450 50  0001 C CNN "Spice_Primitive"
F 5 "0.1" H 3300 5450 50  0001 C CNN "Spice_Model"
F 6 "N" H 3300 5450 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 3300 5450 50  0001 C CNN "Description"
	1    3300 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 617E2296
P 3300 5800
F 0 "#PWR026" H 3300 5550 50  0001 C CNN
F 1 "GND" H 3305 5627 50  0000 C CNN
F 2 "" H 3300 5800 50  0001 C CNN
F 3 "" H 3300 5800 50  0001 C CNN
	1    3300 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 5300 3800 5300
Connection ~ 3800 5300
Wire Wire Line
	3300 5800 3300 5600
$Comp
L power:GND #PWR028
U 1 1 61828183
P 3800 6300
F 0 "#PWR028" H 3800 6050 50  0001 C CNN
F 1 "GND" H 3805 6127 50  0000 C CNN
F 2 "" H 3800 6300 50  0001 C CNN
F 3 "" H 3800 6300 50  0001 C CNN
	1    3800 6300
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4001 U3
U 3 1 61829A35
P 5050 5900
F 0 "U3" H 5050 6225 50  0000 C CNN
F 1 "4001" H 5050 6134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5050 5900 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4000bms-01bms-02bms-25bms.pdf" H 5050 5900 50  0001 C CNN
	3    5050 5900
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4001 U3
U 4 1 6182BD2C
P 5900 5900
F 0 "U3" H 5900 6225 50  0000 C CNN
F 1 "4001" H 5900 6134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5900 5900 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4000bms-01bms-02bms-25bms.pdf" H 5900 5900 50  0001 C CNN
	4    5900 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 6182DFC9
P 4700 6100
F 0 "#PWR024" H 4700 5850 50  0001 C CNN
F 1 "GND" H 4705 5927 50  0000 C CNN
F 2 "" H 4700 6100 50  0001 C CNN
F 3 "" H 4700 6100 50  0001 C CNN
	1    4700 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 6182EF25
P 5550 6100
F 0 "#PWR029" H 5550 5850 50  0001 C CNN
F 1 "GND" H 5555 5927 50  0000 C CNN
F 2 "" H 5550 6100 50  0001 C CNN
F 3 "" H 5550 6100 50  0001 C CNN
	1    5550 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 6100 4700 6000
Wire Wire Line
	4700 5800 4750 5800
Wire Wire Line
	4750 6000 4700 6000
Connection ~ 4700 6000
Wire Wire Line
	4700 6000 4700 5800
Wire Wire Line
	5600 5800 5550 5800
Wire Wire Line
	5550 5800 5550 6000
Wire Wire Line
	5600 6000 5550 6000
Connection ~ 5550 6000
Wire Wire Line
	5550 6000 5550 6100
NoConn ~ 5350 5900
NoConn ~ 6200 5900
$Sheet
S 2550 3250 3550 1200
U 61729059
F0 "sheet61729057" 50
F1 "envelope 2.sch" 50
F2 "IN2" I L 2550 3900 50 
F3 "OUT2" I L 2550 4000 50 
F4 "EOE2" I L 2550 4100 50 
F5 "AB1" I L 2550 3500 50 
F6 "AB2" I L 2550 3600 50 
F7 "DB1" I L 2550 3700 50 
F8 "DB2" I L 2550 3800 50 
$EndSheet
$Sheet
S 2550 1650 3550 1200
U 61728A8F
F0 "sheet61728A8D" 50
F1 "envelope 1.sch" 50
F2 "OUT1" I L 2550 2300 50 
F3 "EOE1" I L 2550 2400 50 
F4 "IN1" I L 2550 2200 50 
F5 "AA1" I L 2550 1800 50 
F6 "AA2" I L 2550 1900 50 
F7 "DA1" I L 2550 2000 50 
F8 "DA2" I L 2550 2100 50 
$EndSheet
$Comp
L Connector:Conn_01x09_Female J1
U 1 1 617A2C15
P 1750 2000
F 0 "J1" H 1642 2585 50  0000 C CNN
F 1 "01x09 Female" H 1642 2494 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x09_P2.54mm_Vertical" H 1750 2000 50  0001 C CNN
F 3 "~" H 1750 2000 50  0001 C CNN
F 4 "Board to Board Connectors (2.54 mm)" H 1750 2000 50  0001 C CNN "Description"
	1    1750 2000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2550 1800 1950 1800
Wire Wire Line
	1950 1900 2550 1900
Wire Wire Line
	2550 2000 1950 2000
Wire Wire Line
	2550 2200 1950 2200
Wire Wire Line
	1950 2300 2550 2300
$Comp
L power:GND #PWR0101
U 1 1 617A78FC
P 1950 1600
AR Path="/617A78FC" Ref="#PWR0101"  Part="1" 
AR Path="/61728A8F/617A78FC" Ref="#PWR?"  Part="1" 
AR Path="/61729059/617A78FC" Ref="#PWR?"  Part="1" 
F 0 "#PWR0101" H 1950 1350 50  0001 C CNN
F 1 "GND" V 1950 1400 50  0000 C CNN
F 2 "" H 1950 1600 50  0001 C CNN
F 3 "" H 1950 1600 50  0001 C CNN
	1    1950 1600
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 617AD860
P 1950 1700
F 0 "#PWR0102" H 1950 1550 50  0001 C CNN
F 1 "+5V" V 1965 1828 50  0000 L CNN
F 2 "" H 1950 1700 50  0001 C CNN
F 3 "" H 1950 1700 50  0001 C CNN
	1    1950 1700
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x07_Female J3
U 1 1 617DDB64
P 1750 3800
F 0 "J3" H 1642 4285 50  0000 C CNN
F 1 "01x07 Female" H 1642 4194 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x07_P2.54mm_Vertical" H 1750 3800 50  0001 C CNN
F 3 "~" H 1750 3800 50  0001 C CNN
F 4 "Board to Board Connectors (2.54 mm)" H 1750 3800 50  0001 C CNN "Description"
	1    1750 3800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1950 3500 2550 3500
Wire Wire Line
	2550 3600 1950 3600
Wire Wire Line
	1950 3700 2550 3700
Wire Wire Line
	1950 3900 2550 3900
Wire Wire Line
	2550 4000 1950 4000
Wire Wire Line
	1950 4100 2550 4100
$Comp
L Amplifier_Operational:LM324 U4
U 5 1 616C14BD
P 5450 7200
F 0 "U4" H 5408 7246 50  0000 L CNN
F 1 "LM324" H 5408 7155 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5400 7300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 5500 7400 50  0001 C CNN
F 4 "X" H 5450 7200 50  0001 C CNN "Spice_Primitive"
F 5 "LM324c" H 5450 7200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5450 7200 50  0001 C CNN "Spice_Netlist_Enabled"
	5    5450 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0103
U 1 1 616C14C3
P 5350 6900
AR Path="/616C14C3" Ref="#PWR0103"  Part="1" 
AR Path="/5DD3665B/616C14C3" Ref="#PWR?"  Part="1" 
F 0 "#PWR0103" H 5350 6750 50  0001 C CNN
F 1 "+15V" H 5250 7050 50  0000 L CNN
F 2 "" H 5350 6900 50  0001 C CNN
F 3 "" H 5350 6900 50  0001 C CNN
	1    5350 6900
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR0104
U 1 1 616C14C9
P 5350 7500
AR Path="/616C14C9" Ref="#PWR0104"  Part="1" 
AR Path="/5DD3665B/616C14C9" Ref="#PWR?"  Part="1" 
F 0 "#PWR0104" H 5350 7600 50  0001 C CNN
F 1 "-15V" H 5250 7650 50  0000 L CNN
F 2 "" H 5350 7500 50  0001 C CNN
F 3 "" H 5350 7500 50  0001 C CNN
	1    5350 7500
	-1   0    0    1   
$EndComp
$Comp
L Device:C C10
U 1 1 616C14D2
P 5050 7050
F 0 "C10" H 5165 7096 50  0000 L CNN
F 1 "0.1u" H 5165 7005 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 5088 6900 50  0001 C CNN
F 3 "~" H 5050 7050 50  0001 C CNN
F 4 "C" H 5050 7050 50  0001 C CNN "Spice_Primitive"
F 5 "0.1" H 5050 7050 50  0001 C CNN "Spice_Model"
F 6 "N" H 5050 7050 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 5050 7050 50  0001 C CNN "Description"
	1    5050 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 616C14DB
P 5050 7350
F 0 "C11" H 5165 7396 50  0000 L CNN
F 1 "0.1u" H 5165 7305 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 5088 7200 50  0001 C CNN
F 3 "~" H 5050 7350 50  0001 C CNN
F 4 "C" H 5050 7350 50  0001 C CNN "Spice_Primitive"
F 5 "0.1" H 5050 7350 50  0001 C CNN "Spice_Model"
F 6 "N" H 5050 7350 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 5050 7350 50  0001 C CNN "Description"
	1    5050 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 6900 5350 6900
Connection ~ 5350 6900
Wire Wire Line
	5050 7500 5350 7500
Connection ~ 5350 7500
$Comp
L power:GND #PWR0105
U 1 1 616C14E5
P 4850 7300
F 0 "#PWR0105" H 4850 7050 50  0001 C CNN
F 1 "GND" H 4855 7127 50  0000 C CNN
F 2 "" H 4850 7300 50  0001 C CNN
F 3 "" H 4850 7300 50  0001 C CNN
	1    4850 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 7300 4850 7200
Wire Wire Line
	4850 7200 5050 7200
Connection ~ 5050 7200
Wire Wire Line
	2550 2400 1950 2400
Wire Wire Line
	1950 3800 2550 3800
Wire Wire Line
	2550 2100 1950 2100
$EndSCHEMATC
