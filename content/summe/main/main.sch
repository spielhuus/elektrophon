EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "summe"
Date "2021-05-30"
Rev "R02"
Comp ""
Comment1 "schema for pcb"
Comment2 "DC coupled mixer"
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
$Comp
L power:+15V #PWR04
U 1 1 5F816C5C
P 1000 6400
F 0 "#PWR04" H 1000 6250 50  0001 C CNN
F 1 "+15V" H 1015 6573 50  0000 C CNN
F 2 "" H 1000 6400 50  0001 C CNN
F 3 "" H 1000 6400 50  0001 C CNN
	1    1000 6400
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR05
U 1 1 5F816FAE
P 1250 6400
F 0 "#PWR05" H 1250 6500 50  0001 C CNN
F 1 "-15V" H 1265 6573 50  0000 C CNN
F 2 "" H 1250 6400 50  0001 C CNN
F 3 "" H 1250 6400 50  0001 C CNN
	1    1250 6400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5F737716
P 1000 6400
F 0 "#FLG02" H 1000 6475 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 6573 50  0001 C CNN
F 2 "" H 1000 6400 50  0001 C CNN
F 3 "~" H 1000 6400 50  0001 C CNN
	1    1000 6400
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5F737C0D
P 1250 6400
F 0 "#FLG03" H 1250 6475 50  0001 C CNN
F 1 "PWR_FLAG" H 1250 6573 50  0001 C CNN
F 2 "" H 1250 6400 50  0001 C CNN
F 3 "~" H 1250 6400 50  0001 C CNN
	1    1250 6400
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C1
U 1 1 60A97241
P 2600 7100
AR Path="/60A97241" Ref="C1"  Part="1" 
AR Path="/5DD3665B/60A97241" Ref="C?"  Part="1" 
F 0 "C1" H 2718 7146 50  0000 L CNN
F 1 "22u" H 2718 7055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2638 6950 50  0001 C CNN
F 3 "~" H 2600 7100 50  0001 C CNN
F 4 "C" H 2600 7100 50  0001 C CNN "Spice_Primitive"
F 5 "22u" H 2600 7100 50  0001 C CNN "Spice_Model"
F 6 "N" H 2600 7100 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Aluminium Electrolytic Capacitor, 35V, D=5 mm, LS=2 mm" H 2600 7100 50  0001 C CNN "Description"
	1    2600 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 60A9723F
P 2600 7400
AR Path="/60A9723F" Ref="C2"  Part="1" 
AR Path="/5DD3665B/60A9723F" Ref="C?"  Part="1" 
F 0 "C2" H 2718 7446 50  0000 L CNN
F 1 "22u" H 2718 7355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2638 7250 50  0001 C CNN
F 3 "~" H 2600 7400 50  0001 C CNN
F 4 "C" H 2600 7400 50  0001 C CNN "Spice_Primitive"
F 5 "22u" H 2600 7400 50  0001 C CNN "Spice_Model"
F 6 "N" H 2600 7400 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Aluminium Electrolytic Capacitor, 35V, D=5 mm, LS=2 mm" H 2600 7400 50  0001 C CNN "Description"
	1    2600 7400
	1    0    0    -1  
$EndComp
Connection ~ 2600 7250
Wire Wire Line
	2600 7250 2400 7250
Wire Wire Line
	2350 7550 2400 7550
Connection ~ 850  7000
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5FCD1662
P 850 7000
AR Path="/5FCD1662" Ref="#FLG01"  Part="1" 
AR Path="/5DD3665B/5FCD1662" Ref="#FLG?"  Part="1" 
F 0 "#FLG01" H 850 7075 50  0001 C CNN
F 1 "PWR_FLAG" H 850 7128 50  0001 L CNN
F 2 "" H 850 7000 50  0001 C CNN
F 3 "~" H 850 7000 50  0001 C CNN
	1    850  7000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5FCD1661
P 850 7000
AR Path="/5FCD1661" Ref="#PWR01"  Part="1" 
AR Path="/5DD3665B/5FCD1661" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 850 6850 50  0001 C CNN
F 1 "+5V" V 865 7128 50  0000 L CNN
F 2 "" H 850 7000 50  0001 C CNN
F 3 "" H 850 7000 50  0001 C CNN
	1    850  7000
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5FCD1660
P 1350 7000
AR Path="/5FCD1660" Ref="#PWR06"  Part="1" 
AR Path="/5DD3665B/5FCD1660" Ref="#PWR?"  Part="1" 
F 0 "#PWR06" H 1350 6850 50  0001 C CNN
F 1 "+5V" V 1365 7128 50  0000 L CNN
F 2 "" H 1350 7000 50  0001 C CNN
F 3 "" H 1350 7000 50  0001 C CNN
	1    1350 7000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5FC69BA7
P 1350 7200
AR Path="/5FC69BA7" Ref="#PWR08"  Part="1" 
AR Path="/5DD3665B/5FC69BA7" Ref="#PWR?"  Part="1" 
F 0 "#PWR08" H 1350 6950 50  0001 C CNN
F 1 "GND" V 1355 7072 50  0000 R CNN
F 2 "" H 1350 7200 50  0001 C CNN
F 3 "" H 1350 7200 50  0001 C CNN
	1    1350 7200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5FCD165F
P 1350 7100
AR Path="/5FCD165F" Ref="#PWR07"  Part="1" 
AR Path="/5DD3665B/5FCD165F" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 1350 6850 50  0001 C CNN
F 1 "GND" V 1355 6972 50  0000 R CNN
F 2 "" H 1350 7100 50  0001 C CNN
F 3 "" H 1350 7100 50  0001 C CNN
	1    1350 7100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60A97243
P 850 7100
AR Path="/60A97243" Ref="#PWR02"  Part="1" 
AR Path="/5DD3665B/60A97243" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 850 6850 50  0001 C CNN
F 1 "GND" V 855 6972 50  0000 R CNN
F 2 "" H 850 7100 50  0001 C CNN
F 3 "" H 850 7100 50  0001 C CNN
	1    850  7100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E180765
P 850 7200
AR Path="/5E180765" Ref="#PWR03"  Part="1" 
AR Path="/5DD3665B/5E180765" Ref="#PWR?"  Part="1" 
F 0 "#PWR03" H 850 6950 50  0001 C CNN
F 1 "GND" V 855 7072 50  0000 R CNN
F 2 "" H 850 7200 50  0001 C CNN
F 3 "" H 850 7200 50  0001 C CNN
	1    850  7200
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 5FCD165C
P 1150 7200
AR Path="/5FCD165C" Ref="J1"  Part="1" 
AR Path="/5DD3665B/5FCD165C" Ref="J?"  Part="1" 
F 0 "J1" H 1200 7617 50  0000 C CNN
F 1 "IDC Header" H 1200 7526 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 1150 7200 50  0001 C CNN
F 3 "~" H 1150 7200 50  0001 C CNN
F 4 "J" H 1150 7200 50  0001 C CNN "Spice_Primitive"
F 5 "IDC Header" H 1150 7200 50  0001 C CNN "Spice_Model"
F 6 "N" H 1150 7200 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Pin Header IDC, 10 Pos, 2.54mm" H 1150 7200 50  0001 C CNN "Description"
	1    1150 7200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5E180712
P 2400 7250
AR Path="/5E180712" Ref="#PWR015"  Part="1" 
AR Path="/5DD3665B/5E180712" Ref="#PWR?"  Part="1" 
F 0 "#PWR015" H 2400 7000 50  0001 C CNN
F 1 "GND" V 2400 7050 50  0000 C CNN
F 2 "" H 2400 7250 50  0001 C CNN
F 3 "" H 2400 7250 50  0001 C CNN
	1    2400 7250
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5FB443E6
P 2200 6950
F 0 "R1" V 1993 6950 50  0000 C CNN
F 1 "10" V 2084 6950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 2130 6950 50  0001 C CNN
F 3 "~" H 2200 6950 50  0001 C CNN
F 4 "R" H 2200 6950 50  0001 C CNN "Spice_Primitive"
F 5 "10" H 2200 6950 50  0001 C CNN "Spice_Model"
F 6 "N" H 2200 6950 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    2200 6950
	0    1    1    0   
$EndComp
$Comp
L power:+15V #PWR014
U 1 1 5FC69BA0
P 2400 6950
AR Path="/5FC69BA0" Ref="#PWR014"  Part="1" 
AR Path="/5DD3665B/5FC69BA0" Ref="#PWR?"  Part="1" 
F 0 "#PWR014" H 2400 6800 50  0001 C CNN
F 1 "+15V" H 2300 7100 50  0000 L CNN
F 2 "" H 2400 6950 50  0001 C CNN
F 3 "" H 2400 6950 50  0001 C CNN
	1    2400 6950
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR016
U 1 1 5FC69BA2
P 2400 7550
AR Path="/5FC69BA2" Ref="#PWR016"  Part="1" 
AR Path="/5DD3665B/5FC69BA2" Ref="#PWR?"  Part="1" 
F 0 "#PWR016" H 2400 7650 50  0001 C CNN
F 1 "-15V" H 2300 7700 50  0000 L CNN
F 2 "" H 2400 7550 50  0001 C CNN
F 3 "" H 2400 7550 50  0001 C CNN
	1    2400 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FC69BB1
P 2200 7550
F 0 "R2" V 1993 7550 50  0000 C CNN
F 1 "10" V 2084 7550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 2130 7550 50  0001 C CNN
F 3 "~" H 2200 7550 50  0001 C CNN
F 4 "R" H 2200 7550 50  0001 C CNN "Spice_Primitive"
F 5 "10" H 2200 7550 50  0001 C CNN "Spice_Model"
F 6 "N" H 2200 7550 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 7550 50  0001 C CNN "Description"
	1    2200 7550
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 6950 2400 6950
Connection ~ 2400 6950
Wire Wire Line
	2400 6950 2600 6950
Connection ~ 2400 7550
Wire Wire Line
	2400 7550 2600 7550
Text GLabel 2050 6950 0    50   Input ~ 0
VP
Text GLabel 2050 7550 0    50   Input ~ 0
VN
Text GLabel 1350 7300 2    50   Input ~ 0
VP
Text GLabel 850  7300 0    50   Input ~ 0
VP
Text GLabel 1350 7400 2    50   Input ~ 0
VN
Text GLabel 850  7400 0    50   Input ~ 0
VN
NoConn ~ 2200 5000
NoConn ~ 2150 3950
NoConn ~ 2100 2900
$Comp
L Device:C C8
U 1 1 5EC3E5CE
P 6050 7400
AR Path="/5EC3E5CE" Ref="C8"  Part="1" 
AR Path="/5DD3665B/5EC3E5CE" Ref="C?"  Part="1" 
F 0 "C8" H 6165 7446 50  0000 L CNN
F 1 "0.1u" H 6165 7355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6088 7250 50  0001 C CNN
F 3 "~" H 6050 7400 50  0001 C CNN
F 4 "C" H 6050 7400 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 6050 7400 50  0001 C CNN "Spice_Model"
F 6 "N" H 6050 7400 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC" H 6050 7400 50  0001 C CNN "Description"
	1    6050 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5EC3E5C8
P 6050 7100
AR Path="/5EC3E5C8" Ref="C7"  Part="1" 
AR Path="/5DD3665B/5EC3E5C8" Ref="C?"  Part="1" 
F 0 "C7" H 6165 7146 50  0000 L CNN
F 1 "0.1u" H 6165 7055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6088 6950 50  0001 C CNN
F 3 "~" H 6050 7100 50  0001 C CNN
F 4 "C" H 6050 7100 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 6050 7100 50  0001 C CNN "Spice_Model"
F 6 "N" H 6050 7100 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC" H 6050 7100 50  0001 C CNN "Description"
	1    6050 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 2250 8200 2300
Wire Wire Line
	8250 2250 8200 2250
$Comp
L power:GND #PWR045
U 1 1 5EC0592E
P 8200 2300
F 0 "#PWR045" H 8200 2050 50  0001 C CNN
F 1 "GND" H 8205 2127 50  0000 C CNN
F 2 "" H 8200 2300 50  0001 C CNN
F 3 "" H 8200 2300 50  0001 C CNN
	1    8200 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 2050 8150 2050
Connection ~ 8200 2050
Connection ~ 7750 2050
Wire Wire Line
	7850 2050 7750 2050
Wire Wire Line
	8250 2050 8200 2050
Wire Wire Line
	8900 2150 9000 2150
Connection ~ 8900 2150
Wire Wire Line
	8850 2150 8900 2150
Wire Wire Line
	8900 1450 8900 2150
Wire Wire Line
	8750 1450 8900 1450
Wire Wire Line
	8200 1450 8200 2050
Wire Wire Line
	8450 1450 8200 1450
$Comp
L Device:R R36
U 1 1 5EBEEF1C
P 8600 1450
F 0 "R36" V 8850 1450 50  0000 C CNN
F 1 "100k" V 8750 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8530 1450 50  0001 C CNN
F 3 "~" H 8600 1450 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" V 8600 1450 50  0001 C CNN "Description"
	1    8600 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R33
U 1 1 5EBE3954
P 8000 2050
F 0 "R33" H 7930 2004 50  0000 R CNN
F 1 "100k" H 7930 2095 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7930 2050 50  0001 C CNN
F 3 "~" H 8000 2050 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 8000 2050 50  0001 C CNN "Description"
	1    8000 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C6
U 1 1 5E180806
P 4850 7400
AR Path="/5E180806" Ref="C6"  Part="1" 
AR Path="/5DD3665B/5E180806" Ref="C?"  Part="1" 
F 0 "C6" H 4965 7446 50  0000 L CNN
F 1 "0.1u" H 4965 7355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4888 7250 50  0001 C CNN
F 3 "~" H 4850 7400 50  0001 C CNN
F 4 "C" H 4850 7400 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 4850 7400 50  0001 C CNN "Spice_Model"
F 6 "N" H 4850 7400 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC" H 4850 7400 50  0001 C CNN "Description"
	1    4850 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5E180800
P 4850 7100
AR Path="/5E180800" Ref="C5"  Part="1" 
AR Path="/5DD3665B/5E180800" Ref="C?"  Part="1" 
F 0 "C5" H 4965 7146 50  0000 L CNN
F 1 "0.1u" H 4965 7055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4888 6950 50  0001 C CNN
F 3 "~" H 4850 7100 50  0001 C CNN
F 4 "C" H 4850 7100 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 4850 7100 50  0001 C CNN "Spice_Model"
F 6 "N" H 4850 7100 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC" H 4850 7100 50  0001 C CNN "Description"
	1    4850 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5E1807EC
P 3700 7400
AR Path="/5E1807EC" Ref="C4"  Part="1" 
AR Path="/5DD3665B/5E1807EC" Ref="C?"  Part="1" 
F 0 "C4" H 3815 7446 50  0000 L CNN
F 1 "0.1u" H 3815 7355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3738 7250 50  0001 C CNN
F 3 "~" H 3700 7400 50  0001 C CNN
F 4 "C" H 3700 7400 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 3700 7400 50  0001 C CNN "Spice_Model"
F 6 "N" H 3700 7400 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC" H 3700 7400 50  0001 C CNN "Description"
	1    3700 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5E1807E6
P 3700 7100
AR Path="/5E1807E6" Ref="C3"  Part="1" 
AR Path="/5DD3665B/5E1807E6" Ref="C?"  Part="1" 
F 0 "C3" H 3815 7146 50  0000 L CNN
F 1 "0.1u" H 3815 7055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3738 6950 50  0001 C CNN
F 3 "~" H 3700 7100 50  0001 C CNN
F 4 "C" H 3700 7100 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 3700 7100 50  0001 C CNN "Spice_Model"
F 6 "N" H 3700 7100 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC" H 3700 7100 50  0001 C CNN "Description"
	1    3700 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5000 4050 5000
Connection ~ 3900 5000
Wire Wire Line
	3850 3950 4000 3950
Connection ~ 3850 3950
Connection ~ 3800 2900
Wire Wire Line
	7050 2150 7050 2200
Wire Wire Line
	7100 2150 7050 2150
$Comp
L power:GND #PWR040
U 1 1 5EA9646E
P 7050 2200
F 0 "#PWR040" H 7050 1950 50  0001 C CNN
F 1 "GND" H 7055 2027 50  0000 C CNN
F 2 "" H 7050 2200 50  0001 C CNN
F 3 "" H 7050 2200 50  0001 C CNN
	1    7050 2200
	1    0    0    -1  
$EndComp
NoConn ~ 9550 2250
Wire Wire Line
	9300 2150 9550 2150
$Comp
L Device:R R39
U 1 1 5EA91EE2
P 9150 2150
F 0 "R39" H 9080 2104 50  0000 R CNN
F 1 "1k" H 9080 2195 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9080 2150 50  0001 C CNN
F 3 "~" H 9150 2150 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 9150 2150 50  0001 C CNN "Description"
	1    9150 2150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR050
U 1 1 5EA91EDC
P 9550 2050
F 0 "#PWR050" H 9550 1800 50  0001 C CNN
F 1 "GND" H 9555 1877 50  0000 C CNN
F 2 "" H 9550 2050 50  0001 C CNN
F 3 "" H 9550 2050 50  0001 C CNN
	1    9550 2050
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J10
U 1 1 5EA91ED6
P 9750 2150
F 0 "J10" H 9782 2475 50  0000 C CNN
F 1 "OUT" H 9782 2384 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 9750 2150 50  0001 C CNN
F 3 "~" H 9750 2150 50  0001 C CNN
F 4 "X" H 9750 2150 50  0001 C CNN "Spice_Primitive"
F 5 "OUT" H 9750 2150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 9750 2150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3.5mm Eurorack Jacks" H 9750 2150 50  0001 C CNN "Description"
	1    9750 2150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7750 2050 7700 2050
Wire Wire Line
	7050 1950 7100 1950
$Comp
L Device:R R31
U 1 1 5EA8BEB9
P 7450 1350
F 0 "R31" V 7700 1350 50  0000 C CNN
F 1 "100k" V 7600 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7380 1350 50  0001 C CNN
F 3 "~" H 7450 1350 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" V 7450 1350 50  0001 C CNN "Description"
	1    7450 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 1650 6600 1950
Connection ~ 6600 1650
Wire Wire Line
	6550 1650 6600 1650
Wire Wire Line
	6600 1350 6600 1650
Connection ~ 6600 1350
Wire Wire Line
	6550 1350 6600 1350
Wire Wire Line
	6600 1050 6600 1350
Wire Wire Line
	6550 1050 6600 1050
Wire Wire Line
	6550 1950 6600 1950
Text Label 6250 1950 2    50   ~ 0
MIX_4
Text Label 6250 1650 2    50   ~ 0
MIX_3
Text Label 6250 1350 2    50   ~ 0
MIX_2
Text Label 6250 1050 2    50   ~ 0
MIX_1
$Comp
L Device:R R24
U 1 1 5EA80356
P 6400 1050
F 0 "R24" H 6330 1004 50  0000 R CNN
F 1 "100k" H 6330 1095 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6330 1050 50  0001 C CNN
F 3 "~" H 6400 1050 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 6400 1050 50  0001 C CNN "Description"
	1    6400 1050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R25
U 1 1 5EA801E7
P 6400 1350
F 0 "R25" H 6330 1304 50  0000 R CNN
F 1 "100k" H 6330 1395 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6330 1350 50  0001 C CNN
F 3 "~" H 6400 1350 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 6400 1350 50  0001 C CNN "Description"
	1    6400 1350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R26
U 1 1 5EA7FF72
P 6400 1650
F 0 "R26" H 6330 1604 50  0000 R CNN
F 1 "100k" H 6330 1695 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6330 1650 50  0001 C CNN
F 3 "~" H 6400 1650 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 6400 1650 50  0001 C CNN "Description"
	1    6400 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R27
U 1 1 5EA7FB33
P 6400 1950
F 0 "R27" H 6330 1904 50  0000 R CNN
F 1 "100k" H 6330 1995 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6330 1950 50  0001 C CNN
F 3 "~" H 6400 1950 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 6400 1950 50  0001 C CNN "Description"
	1    6400 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 5000 3900 5000
Text Label 4600 5100 2    50   ~ 0
MIX_4
Wire Wire Line
	4350 5000 4600 5000
$Comp
L Device:R R22
U 1 1 5EA71FC0
P 4200 5000
F 0 "R22" H 4130 4954 50  0000 R CNN
F 1 "1k" H 4130 5045 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4130 5000 50  0001 C CNN
F 3 "~" H 4200 5000 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 4200 5000 50  0001 C CNN "Description"
	1    4200 5000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR034
U 1 1 5EA71FBA
P 4600 4900
F 0 "#PWR034" H 4600 4650 50  0001 C CNN
F 1 "GND" H 4605 4727 50  0000 C CNN
F 2 "" H 4600 4900 50  0001 C CNN
F 3 "" H 4600 4900 50  0001 C CNN
	1    4600 4900
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J9
U 1 1 5EA71FB4
P 4800 5000
F 0 "J9" H 4832 5325 50  0000 C CNN
F 1 "OUT" H 4832 5234 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 4800 5000 50  0001 C CNN
F 3 "~" H 4800 5000 50  0001 C CNN
F 4 "X" H 4800 5000 50  0001 C CNN "Spice_Primitive"
F 5 "OUT_4" H 4800 5000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4800 5000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3.5mm Eurorack Jacks" H 4800 5000 50  0001 C CNN "Description"
	1    4800 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3800 3950 3850 3950
Text Label 4550 4050 2    50   ~ 0
MIX_3
Wire Wire Line
	4300 3950 4550 3950
$Comp
L Device:R R21
U 1 1 5EA70009
P 4150 3950
F 0 "R21" H 4080 3904 50  0000 R CNN
F 1 "1k" H 4080 3995 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4080 3950 50  0001 C CNN
F 3 "~" H 4150 3950 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 4150 3950 50  0001 C CNN "Description"
	1    4150 3950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR033
U 1 1 5EA70003
P 4550 3850
F 0 "#PWR033" H 4550 3600 50  0001 C CNN
F 1 "GND" H 4555 3677 50  0000 C CNN
F 2 "" H 4550 3850 50  0001 C CNN
F 3 "" H 4550 3850 50  0001 C CNN
	1    4550 3850
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J8
U 1 1 5EA6FFFD
P 4750 3950
F 0 "J8" H 4782 4275 50  0000 C CNN
F 1 "OUT" H 4782 4184 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 4750 3950 50  0001 C CNN
F 3 "~" H 4750 3950 50  0001 C CNN
F 4 "X" H 4750 3950 50  0001 C CNN "Spice_Primitive"
F 5 "OUT_3" H 4750 3950 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4750 3950 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3.5mm Eurorack Jacks" H 4750 3950 50  0001 C CNN "Description"
	1    4750 3950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4000 2900 3800 2900
Text Label 4550 3000 2    50   ~ 0
MIX_2
Wire Wire Line
	4300 2900 4550 2900
$Comp
L Device:R R20
U 1 1 5EA6DFA9
P 4150 2900
F 0 "R20" H 4080 2854 50  0000 R CNN
F 1 "1k" H 4080 2945 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4080 2900 50  0001 C CNN
F 3 "~" H 4150 2900 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 4150 2900 50  0001 C CNN "Description"
	1    4150 2900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5EA6DFA3
P 4550 2800
F 0 "#PWR032" H 4550 2550 50  0001 C CNN
F 1 "GND" H 4555 2627 50  0000 C CNN
F 2 "" H 4550 2800 50  0001 C CNN
F 3 "" H 4550 2800 50  0001 C CNN
	1    4550 2800
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J7
U 1 1 5EA6DF9D
P 4750 2900
F 0 "J7" H 4782 3225 50  0000 C CNN
F 1 "OUT" H 4782 3134 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 4750 2900 50  0001 C CNN
F 3 "~" H 4750 2900 50  0001 C CNN
F 4 "X" H 4750 2900 50  0001 C CNN "Spice_Primitive"
F 5 "OUT_2" H 4750 2900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4750 2900 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3.5mm Eurorack Jacks" H 4750 2900 50  0001 C CNN "Description"
	1    4750 2900
	-1   0    0    -1  
$EndComp
Connection ~ 3800 1800
Wire Wire Line
	4000 1800 3800 1800
Text Label 4550 1900 2    50   ~ 0
MIX_1
Wire Wire Line
	3900 4500 3900 5000
Wire Wire Line
	3750 4500 3900 4500
Wire Wire Line
	3250 4500 3250 4900
Wire Wire Line
	3450 4500 3250 4500
$Comp
L Device:R R18
U 1 1 5EA5732B
P 3600 4500
F 0 "R18" V 3393 4500 50  0000 C CNN
F 1 "100k" V 3484 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3530 4500 50  0001 C CNN
F 3 "~" H 3600 4500 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" V 3600 4500 50  0001 C CNN "Description"
	1    3600 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 5200 3250 5100
Wire Wire Line
	2800 5200 3250 5200
Wire Wire Line
	2800 4900 2850 4900
Connection ~ 2800 4900
Wire Wire Line
	2550 4900 2800 4900
Connection ~ 2800 5200
Wire Wire Line
	2700 5200 2800 5200
$Comp
L power:GND #PWR024
U 1 1 5EA5731E
P 2800 5500
F 0 "#PWR024" H 2800 5250 50  0001 C CNN
F 1 "GND" H 2805 5327 50  0000 C CNN
F 2 "" H 2800 5500 50  0001 C CNN
F 3 "" H 2800 5500 50  0001 C CNN
	1    2800 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5EA57318
P 2800 5350
F 0 "R10" H 2870 5396 50  0000 L CNN
F 1 "47k" H 2870 5305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2730 5350 50  0001 C CNN
F 3 "~" H 2800 5350 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 2800 5350 50  0001 C CNN "Description"
	1    2800 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5EA57312
P 2800 5050
F 0 "R9" H 2870 5096 50  0000 L CNN
F 1 "47k" H 2870 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2730 5050 50  0001 C CNN
F 3 "~" H 2800 5050 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 2800 5050 50  0001 C CNN "Description"
	1    2800 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4900 3250 4900
Connection ~ 2550 4900
Wire Wire Line
	2200 4900 2550 4900
Wire Wire Line
	2550 5050 2550 4900
$Comp
L Device:R R14
U 1 1 5EA57308
P 3000 4900
F 0 "R14" V 2793 4900 50  0000 C CNN
F 1 "100k" V 2884 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2930 4900 50  0001 C CNN
F 3 "~" H 3000 4900 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" V 3000 4900 50  0001 C CNN "Description"
	1    3000 4900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5EA57302
P 2550 5350
F 0 "#PWR020" H 2550 5100 50  0001 C CNN
F 1 "GND" H 2555 5177 50  0000 C CNN
F 2 "" H 2550 5350 50  0001 C CNN
F 3 "" H 2550 5350 50  0001 C CNN
	1    2550 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV4
U 1 1 5EA572FC
P 2550 5200
F 0 "RV4" H 2481 5246 50  0000 R CNN
F 1 "100k" H 2481 5155 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 2550 5200 50  0001 C CNN
F 3 "~" H 2550 5200 50  0001 C CNN
F 4 "X" H 2550 5200 50  0001 C CNN "Spice_Primitive"
F 5 "voltage_divider_4" H 2550 5200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2550 5200 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Alpha 9 mm Pots – Vertical" H 2550 5200 50  0001 C CNN "Description"
	1    2550 5200
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5EA572EF
P 2200 4800
F 0 "#PWR013" H 2200 4550 50  0001 C CNN
F 1 "GND" H 2205 4627 50  0000 C CNN
F 2 "" H 2200 4800 50  0001 C CNN
F 3 "" H 2200 4800 50  0001 C CNN
	1    2200 4800
	0    -1   -1   0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J5
U 1 1 5EA572E9
P 2000 4900
F 0 "J5" H 2032 5225 50  0000 C CNN
F 1 "IN" H 2032 5134 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 2000 4900 50  0001 C CNN
F 3 "~" H 2000 4900 50  0001 C CNN
F 4 "X" H 2000 4900 50  0001 C CNN "Spice_Primitive"
F 5 "IN_4" H 2000 4900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2000 4900 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3.5mm Eurorack Jacks" H 2000 4900 50  0001 C CNN "Description"
	1    2000 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3450 3850 3950
Wire Wire Line
	3700 3450 3850 3450
Wire Wire Line
	3200 3450 3200 3850
Wire Wire Line
	3400 3450 3200 3450
$Comp
L Device:R R17
U 1 1 5EA53418
P 3550 3450
F 0 "R17" V 3343 3450 50  0000 C CNN
F 1 "100k" V 3434 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3480 3450 50  0001 C CNN
F 3 "~" H 3550 3450 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" V 3550 3450 50  0001 C CNN "Description"
	1    3550 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 4150 3200 4050
Wire Wire Line
	2750 4150 3200 4150
Wire Wire Line
	2750 3850 2800 3850
Connection ~ 2750 3850
Wire Wire Line
	2500 3850 2750 3850
Connection ~ 2750 4150
Wire Wire Line
	2650 4150 2750 4150
$Comp
L power:GND #PWR023
U 1 1 5EA5340B
P 2750 4450
F 0 "#PWR023" H 2750 4200 50  0001 C CNN
F 1 "GND" H 2755 4277 50  0000 C CNN
F 2 "" H 2750 4450 50  0001 C CNN
F 3 "" H 2750 4450 50  0001 C CNN
	1    2750 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5EA53405
P 2750 4300
F 0 "R8" H 2820 4346 50  0000 L CNN
F 1 "47k" H 2820 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2680 4300 50  0001 C CNN
F 3 "~" H 2750 4300 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 2750 4300 50  0001 C CNN "Description"
	1    2750 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5EA533FF
P 2750 4000
F 0 "R7" H 2820 4046 50  0000 L CNN
F 1 "47k" H 2820 3955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2680 4000 50  0001 C CNN
F 3 "~" H 2750 4000 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 2750 4000 50  0001 C CNN "Description"
	1    2750 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3850 3200 3850
Connection ~ 2500 3850
Wire Wire Line
	2150 3850 2500 3850
Wire Wire Line
	2500 4000 2500 3850
$Comp
L Device:R R13
U 1 1 5EA533F5
P 2950 3850
F 0 "R13" V 2743 3850 50  0000 C CNN
F 1 "100k" V 2834 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2880 3850 50  0001 C CNN
F 3 "~" H 2950 3850 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" V 2950 3850 50  0001 C CNN "Description"
	1    2950 3850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5EA533EF
P 2500 4300
F 0 "#PWR019" H 2500 4050 50  0001 C CNN
F 1 "GND" H 2505 4127 50  0000 C CNN
F 2 "" H 2500 4300 50  0001 C CNN
F 3 "" H 2500 4300 50  0001 C CNN
	1    2500 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV3
U 1 1 5EA533E9
P 2500 4150
F 0 "RV3" H 2431 4196 50  0000 R CNN
F 1 "100k" H 2431 4105 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 2500 4150 50  0001 C CNN
F 3 "~" H 2500 4150 50  0001 C CNN
F 4 "X" H 2500 4150 50  0001 C CNN "Spice_Primitive"
F 5 "voltage_divider_3" H 2500 4150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2500 4150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Alpha 9 mm Pots – Vertical" H 2500 4150 50  0001 C CNN "Description"
	1    2500 4150
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5EA533DC
P 2150 3750
F 0 "#PWR012" H 2150 3500 50  0001 C CNN
F 1 "GND" H 2155 3577 50  0000 C CNN
F 2 "" H 2150 3750 50  0001 C CNN
F 3 "" H 2150 3750 50  0001 C CNN
	1    2150 3750
	0    -1   -1   0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J4
U 1 1 5EA533D6
P 1950 3850
F 0 "J4" H 1982 4175 50  0000 C CNN
F 1 "IN" H 1982 4084 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1950 3850 50  0001 C CNN
F 3 "~" H 1950 3850 50  0001 C CNN
F 4 "X" H 1950 3850 50  0001 C CNN "Spice_Primitive"
F 5 "IN_3" H 1950 3850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1950 3850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3.5mm Eurorack Jacks" H 1950 3850 50  0001 C CNN "Description"
	1    1950 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2900 3750 2900
Wire Wire Line
	3800 2400 3800 2900
Wire Wire Line
	3650 2400 3800 2400
Wire Wire Line
	3150 2400 3150 2800
Wire Wire Line
	3350 2400 3150 2400
$Comp
L Device:R R16
U 1 1 5EA4ED5E
P 3500 2400
F 0 "R16" V 3293 2400 50  0000 C CNN
F 1 "100k" V 3384 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3430 2400 50  0001 C CNN
F 3 "~" H 3500 2400 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" V 3500 2400 50  0001 C CNN "Description"
	1    3500 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 3100 3150 3000
Wire Wire Line
	2700 3100 3150 3100
Wire Wire Line
	2700 2800 2750 2800
Connection ~ 2700 2800
Wire Wire Line
	2450 2800 2700 2800
Connection ~ 2700 3100
Wire Wire Line
	2600 3100 2700 3100
$Comp
L power:GND #PWR022
U 1 1 5EA4ED51
P 2700 3400
F 0 "#PWR022" H 2700 3150 50  0001 C CNN
F 1 "GND" H 2705 3227 50  0000 C CNN
F 2 "" H 2700 3400 50  0001 C CNN
F 3 "" H 2700 3400 50  0001 C CNN
	1    2700 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5EA4ED4B
P 2700 3250
F 0 "R6" H 2770 3296 50  0000 L CNN
F 1 "47k" H 2770 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2630 3250 50  0001 C CNN
F 3 "~" H 2700 3250 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 2700 3250 50  0001 C CNN "Description"
	1    2700 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5EA4ED45
P 2700 2950
F 0 "R5" H 2770 2996 50  0000 L CNN
F 1 "47k" H 2770 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2630 2950 50  0001 C CNN
F 3 "~" H 2700 2950 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 2700 2950 50  0001 C CNN "Description"
	1    2700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2800 3150 2800
Connection ~ 2450 2800
Wire Wire Line
	2100 2800 2450 2800
Wire Wire Line
	2450 2950 2450 2800
$Comp
L Device:R R12
U 1 1 5EA4ED3B
P 2900 2800
F 0 "R12" V 2693 2800 50  0000 C CNN
F 1 "100k" V 2784 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2830 2800 50  0001 C CNN
F 3 "~" H 2900 2800 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" V 2900 2800 50  0001 C CNN "Description"
	1    2900 2800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5EA4ED35
P 2450 3250
F 0 "#PWR018" H 2450 3000 50  0001 C CNN
F 1 "GND" H 2455 3077 50  0000 C CNN
F 2 "" H 2450 3250 50  0001 C CNN
F 3 "" H 2450 3250 50  0001 C CNN
	1    2450 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 5EA4ED2F
P 2450 3100
F 0 "RV2" H 2381 3146 50  0000 R CNN
F 1 "100k" H 2381 3055 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 2450 3100 50  0001 C CNN
F 3 "~" H 2450 3100 50  0001 C CNN
F 4 "X" H 2450 3100 50  0001 C CNN "Spice_Primitive"
F 5 "voltage_divider_2" H 2450 3100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2450 3100 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Alpha 9 mm Pots – Vertical" H 2450 3100 50  0001 C CNN "Description"
	1    2450 3100
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5EA4ED22
P 2100 2700
F 0 "#PWR011" H 2100 2450 50  0001 C CNN
F 1 "GND" H 2105 2527 50  0000 C CNN
F 2 "" H 2100 2700 50  0001 C CNN
F 3 "" H 2100 2700 50  0001 C CNN
	1    2100 2700
	0    -1   -1   0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J3
U 1 1 5EA4ED1C
P 1900 2800
F 0 "J3" H 1932 3125 50  0000 C CNN
F 1 "IN" H 1932 3034 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1900 2800 50  0001 C CNN
F 3 "~" H 1900 2800 50  0001 C CNN
F 4 "X" H 1900 2800 50  0001 C CNN "Spice_Primitive"
F 5 "IN_2" H 1900 2800 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1900 2800 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3.5mm Eurorack Jacks" H 1900 2800 50  0001 C CNN "Description"
	1    1900 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1800 3750 1800
Wire Wire Line
	3800 1300 3800 1800
Wire Wire Line
	3650 1300 3800 1300
Wire Wire Line
	3150 1300 3150 1700
Wire Wire Line
	3350 1300 3150 1300
$Comp
L Device:R R15
U 1 1 5EA43020
P 3500 1300
F 0 "R15" V 3293 1300 50  0000 C CNN
F 1 "100k" V 3384 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3430 1300 50  0001 C CNN
F 3 "~" H 3500 1300 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" V 3500 1300 50  0001 C CNN "Description"
	1    3500 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 2000 3150 1900
Wire Wire Line
	2700 2000 3150 2000
Wire Wire Line
	2700 1700 2750 1700
Connection ~ 2700 1700
Wire Wire Line
	2450 1700 2700 1700
Connection ~ 2700 2000
Wire Wire Line
	2600 2000 2700 2000
$Comp
L power:GND #PWR021
U 1 1 5EA41C2D
P 2700 2300
F 0 "#PWR021" H 2700 2050 50  0001 C CNN
F 1 "GND" H 2705 2127 50  0000 C CNN
F 2 "" H 2700 2300 50  0001 C CNN
F 3 "" H 2700 2300 50  0001 C CNN
	1    2700 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5EA41944
P 2700 2150
F 0 "R4" H 2770 2196 50  0000 L CNN
F 1 "47k" H 2770 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2630 2150 50  0001 C CNN
F 3 "~" H 2700 2150 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 2700 2150 50  0001 C CNN "Description"
	1    2700 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5EA413FF
P 2700 1850
F 0 "R3" H 2770 1896 50  0000 L CNN
F 1 "47k" H 2770 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2630 1850 50  0001 C CNN
F 3 "~" H 2700 1850 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 2700 1850 50  0001 C CNN "Description"
	1    2700 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1700 3150 1700
Connection ~ 2450 1700
Wire Wire Line
	2100 1700 2450 1700
Wire Wire Line
	2450 1850 2450 1700
$Comp
L Device:R R11
U 1 1 5EA3C7CD
P 2900 1700
F 0 "R11" V 2693 1700 50  0000 C CNN
F 1 "100k" V 2784 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2830 1700 50  0001 C CNN
F 3 "~" H 2900 1700 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" V 2900 1700 50  0001 C CNN "Description"
	1    2900 1700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5F6BBF95
P 2450 2150
F 0 "#PWR017" H 2450 1900 50  0001 C CNN
F 1 "GND" H 2455 1977 50  0000 C CNN
F 2 "" H 2450 2150 50  0001 C CNN
F 3 "" H 2450 2150 50  0001 C CNN
	1    2450 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5EA3B53A
P 2450 2000
F 0 "RV1" H 2381 2046 50  0000 R CNN
F 1 "100k" H 2381 1955 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 2450 2000 50  0001 C CNN
F 3 "~" H 2450 2000 50  0001 C CNN
F 4 "X" H 2450 2000 50  0001 C CNN "Spice_Primitive"
F 5 "voltage_divider_1" H 2450 2000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2450 2000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Alpha 9 mm Pots – Vertical" H 2450 2000 50  0001 C CNN "Description"
	1    2450 2000
	1    0    0    1   
$EndComp
Wire Wire Line
	4300 1800 4550 1800
$Comp
L Device:R R19
U 1 1 5D7BF067
P 4150 1800
F 0 "R19" H 4080 1754 50  0000 R CNN
F 1 "1k" H 4080 1845 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4080 1800 50  0001 C CNN
F 3 "~" H 4150 1800 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 4150 1800 50  0001 C CNN "Description"
	1    4150 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5D7582F3
P 4550 1700
F 0 "#PWR031" H 4550 1450 50  0001 C CNN
F 1 "GND" H 4555 1527 50  0000 C CNN
F 2 "" H 4550 1700 50  0001 C CNN
F 3 "" H 4550 1700 50  0001 C CNN
	1    4550 1700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5D667130
P 2100 1600
F 0 "#PWR010" H 2100 1350 50  0001 C CNN
F 1 "GND" H 2105 1427 50  0000 C CNN
F 2 "" H 2100 1600 50  0001 C CNN
F 3 "" H 2100 1600 50  0001 C CNN
	1    2100 1600
	0    -1   -1   0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J6
U 1 1 5D64B3F0
P 4750 1800
F 0 "J6" H 4782 2125 50  0000 C CNN
F 1 "OUT" H 4782 2034 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 4750 1800 50  0001 C CNN
F 3 "~" H 4750 1800 50  0001 C CNN
F 4 "X" H 4750 1800 50  0001 C CNN "Spice_Primitive"
F 5 "OUT_1" H 4750 1800 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4750 1800 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3.5mm Eurorack Jacks" H 4750 1800 50  0001 C CNN "Description"
	1    4750 1800
	-1   0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J2
U 1 1 5D64A5B4
P 1900 1700
F 0 "J2" H 1932 2025 50  0000 C CNN
F 1 "IN" H 1932 1934 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1900 1700 50  0001 C CNN
F 3 "~" H 1900 1700 50  0001 C CNN
F 4 "X" H 1900 1700 50  0001 C CNN "Spice_Primitive"
F 5 "IN_1" H 1900 1700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1900 1700 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3.5mm Eurorack Jacks" H 1900 1700 50  0001 C CNN "Description"
	1    1900 1700
	1    0    0    -1  
$EndComp
Text Label 2350 1700 3    50   ~ 0
IN_1
Text Label 2350 2800 3    50   ~ 0
IN_2
Text Label 2400 3850 3    50   ~ 0
IN_3
Text Label 2450 4900 3    50   ~ 0
IN_4
Text Label 8900 2150 3    50   ~ 0
OUT
$Comp
L power:+15V #PWR026
U 1 1 60B273A0
P 3700 6950
AR Path="/60B273A0" Ref="#PWR026"  Part="1" 
AR Path="/5DD3665B/60B273A0" Ref="#PWR?"  Part="1" 
F 0 "#PWR026" H 3700 6800 50  0001 C CNN
F 1 "+15V" H 3600 7100 50  0000 L CNN
F 2 "" H 3700 6950 50  0001 C CNN
F 3 "" H 3700 6950 50  0001 C CNN
	1    3700 6950
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR027
U 1 1 60B27DE4
P 3700 7550
AR Path="/60B27DE4" Ref="#PWR027"  Part="1" 
AR Path="/5DD3665B/60B27DE4" Ref="#PWR?"  Part="1" 
F 0 "#PWR027" H 3700 7650 50  0001 C CNN
F 1 "-15V" H 3600 7700 50  0000 L CNN
F 2 "" H 3700 7550 50  0001 C CNN
F 3 "" H 3700 7550 50  0001 C CNN
	1    3700 7550
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 6950 6450 6950
Wire Wire Line
	6450 7550 6050 7550
$Comp
L power:+15V #PWR036
U 1 1 60B746FE
P 6050 6950
AR Path="/60B746FE" Ref="#PWR036"  Part="1" 
AR Path="/5DD3665B/60B746FE" Ref="#PWR?"  Part="1" 
F 0 "#PWR036" H 6050 6800 50  0001 C CNN
F 1 "+15V" H 5950 7100 50  0000 L CNN
F 2 "" H 6050 6950 50  0001 C CNN
F 3 "" H 6050 6950 50  0001 C CNN
	1    6050 6950
	1    0    0    -1  
$EndComp
Connection ~ 6050 6950
$Comp
L power:-15V #PWR037
U 1 1 60B7514B
P 6050 7550
AR Path="/60B7514B" Ref="#PWR037"  Part="1" 
AR Path="/5DD3665B/60B7514B" Ref="#PWR?"  Part="1" 
F 0 "#PWR037" H 6050 7650 50  0001 C CNN
F 1 "-15V" H 5950 7700 50  0000 L CNN
F 2 "" H 6050 7550 50  0001 C CNN
F 3 "" H 6050 7550 50  0001 C CNN
	1    6050 7550
	-1   0    0    1   
$EndComp
Connection ~ 6050 7550
$Comp
L power:GND #PWR035
U 1 1 60B75ADF
P 5800 7350
AR Path="/60B75ADF" Ref="#PWR035"  Part="1" 
AR Path="/5DD3665B/60B75ADF" Ref="#PWR?"  Part="1" 
F 0 "#PWR035" H 5800 7100 50  0001 C CNN
F 1 "GND" V 5800 7150 50  0000 C CNN
F 2 "" H 5800 7350 50  0001 C CNN
F 3 "" H 5800 7350 50  0001 C CNN
	1    5800 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 7250 5800 7250
Wire Wire Line
	5800 7250 5800 7350
Connection ~ 6050 7250
$Comp
L power:+15V #PWR029
U 1 1 60B8CDD7
P 4850 6950
AR Path="/60B8CDD7" Ref="#PWR029"  Part="1" 
AR Path="/5DD3665B/60B8CDD7" Ref="#PWR?"  Part="1" 
F 0 "#PWR029" H 4850 6800 50  0001 C CNN
F 1 "+15V" H 4750 7100 50  0000 L CNN
F 2 "" H 4850 6950 50  0001 C CNN
F 3 "" H 4850 6950 50  0001 C CNN
	1    4850 6950
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR030
U 1 1 60B8D515
P 4850 7550
AR Path="/60B8D515" Ref="#PWR030"  Part="1" 
AR Path="/5DD3665B/60B8D515" Ref="#PWR?"  Part="1" 
F 0 "#PWR030" H 4850 7650 50  0001 C CNN
F 1 "-15V" H 4750 7700 50  0000 L CNN
F 2 "" H 4850 7550 50  0001 C CNN
F 3 "" H 4850 7550 50  0001 C CNN
	1    4850 7550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 60B8DACC
P 4600 7350
AR Path="/60B8DACC" Ref="#PWR028"  Part="1" 
AR Path="/5DD3665B/60B8DACC" Ref="#PWR?"  Part="1" 
F 0 "#PWR028" H 4600 7100 50  0001 C CNN
F 1 "GND" V 4600 7150 50  0000 C CNN
F 2 "" H 4600 7350 50  0001 C CNN
F 3 "" H 4600 7350 50  0001 C CNN
	1    4600 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 7250 4600 7250
Wire Wire Line
	4600 7250 4600 7350
Connection ~ 4850 7250
Wire Wire Line
	5300 6950 4850 6950
Connection ~ 4850 6950
Wire Wire Line
	5300 7550 4850 7550
Connection ~ 4850 7550
$Comp
L power:GND #PWR025
U 1 1 60BC50AF
P 3450 7350
AR Path="/60BC50AF" Ref="#PWR025"  Part="1" 
AR Path="/5DD3665B/60BC50AF" Ref="#PWR?"  Part="1" 
F 0 "#PWR025" H 3450 7100 50  0001 C CNN
F 1 "GND" V 3450 7150 50  0000 C CNN
F 2 "" H 3450 7350 50  0001 C CNN
F 3 "" H 3450 7350 50  0001 C CNN
	1    3450 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 7250 3450 7250
Wire Wire Line
	3450 7250 3450 7350
Connection ~ 3700 7250
Wire Wire Line
	4100 6950 3700 6950
Connection ~ 3700 6950
Wire Wire Line
	4100 7550 3700 7550
Connection ~ 3700 7550
$Comp
L Device:C C10
U 1 1 6102D371
P 7450 900
F 0 "C10" V 7198 900 50  0000 C CNN
F 1 "100p" V 7289 900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7488 750 50  0001 C CNN
F 3 "~" H 7450 900 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC" V 7450 900 50  0001 C CNN "Description"
	1    7450 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 900  7300 900 
Wire Wire Line
	7600 900  7750 900 
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61023B83
P 700 6400
F 0 "#FLG0101" H 700 6475 50  0001 C CNN
F 1 "PWR_FLAG" H 700 6573 50  0001 C CNN
F 2 "" H 700 6400 50  0001 C CNN
F 3 "~" H 700 6400 50  0001 C CNN
	1    700  6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 61024360
P 700 6400
F 0 "#PWR0101" H 700 6150 50  0001 C CNN
F 1 "GND" H 705 6227 50  0000 C CNN
F 2 "" H 700 6400 50  0001 C CNN
F 3 "" H 700 6400 50  0001 C CNN
	1    700  6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1950 7050 1950
Connection ~ 6600 1950
Connection ~ 7050 1950
Wire Wire Line
	7050 900  7050 1350
Wire Wire Line
	7750 900  7750 1350
Wire Wire Line
	7050 1350 7300 1350
Wire Wire Line
	7600 1350 7750 1350
Connection ~ 7050 1350
Wire Wire Line
	7050 1350 7050 1950
Connection ~ 7750 1350
Wire Wire Line
	7750 1350 7750 2050
$Comp
L Amplifier_Operational:TL072 U5
U 1 1 61B1B378
P 3550 5000
F 0 "U5" H 3550 4650 50  0000 C CNN
F 1 "TL072" H 3550 4750 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3550 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3550 5000 50  0001 C CNN
F 4 "Low-Noise FET-Input Operational Amplifiers (SOIC-8 )" H 3550 5000 50  0001 C CNN "Description"
F 5 "X" H 3550 5000 50  0001 C CNN "Spice_Primitive"
F 6 "TL072c" H 3550 5000 50  0001 C CNN "Spice_Model"
F 7 "Y" H 3550 5000 50  0001 C CNN "Spice_Netlist_Enabled"
	1    3550 5000
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U5
U 2 1 61B1E802
P 8300 4300
F 0 "U5" H 8300 4667 50  0000 C CNN
F 1 "TL072" H 8300 4576 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8300 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8300 4300 50  0001 C CNN
F 4 "Low-Noise FET-Input Operational Amplifiers (SOIC-8 )" H 8300 4300 50  0001 C CNN "Description"
F 5 "X" H 8300 4300 50  0001 C CNN "Spice_Primitive"
F 6 "TL072c" H 8300 4300 50  0001 C CNN "Spice_Model"
F 7 "Y" H 8300 4300 50  0001 C CNN "Spice_Netlist_Enabled"
	2    8300 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 61B38FAA
P 7200 3300
F 0 "D1" V 7300 3050 50  0000 C CNN
F 1 "LED (Green/Yellow)" V 7200 3050 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 7200 3300 50  0001 C CNN
F 3 "~" H 7200 3300 50  0001 C CNN
F 4 "D" H 7200 3300 50  0001 C CNN "Spice_Primitive"
F 5 "LED2" H 7200 3300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7200 3300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LED 3mm bipolar" V 7200 3300 50  0001 C CNN "Description"
	1    7200 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6650 3300 6650 2800
Wire Wire Line
	6650 2800 5950 2800
Wire Wire Line
	5950 2800 5950 3200
Wire Wire Line
	5950 3200 6050 3200
Text Label 6050 3400 2    50   ~ 0
IN_1
$Comp
L power:GND #PWR038
U 1 1 61B47B90
P 7350 3300
F 0 "#PWR038" H 7350 3050 50  0001 C CNN
F 1 "GND" H 7355 3127 50  0000 C CNN
F 2 "" H 7350 3300 50  0001 C CNN
F 3 "" H 7350 3300 50  0001 C CNN
	1    7350 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3350 8600 2850
Wire Wire Line
	7900 2850 7900 3250
Wire Wire Line
	7900 3250 8000 3250
$Comp
L Device:LED D2
U 1 1 61B5EE1F
P 9150 3350
F 0 "D2" V 9250 3100 50  0000 C CNN
F 1 "LED (Green/Yellow)" V 9150 3100 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9150 3350 50  0001 C CNN
F 3 "~" H 9150 3350 50  0001 C CNN
F 4 "D" H 9150 3350 50  0001 C CNN "Spice_Primitive"
F 5 "LED2" H 9150 3350 50  0001 C CNN "Spice_Model"
F 6 "Y" H 9150 3350 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LED 3mm bipolar" V 9150 3350 50  0001 C CNN "Description"
	1    9150 3350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR042
U 1 1 61B5EE25
P 9300 3350
F 0 "#PWR042" H 9300 3100 50  0001 C CNN
F 1 "GND" H 9305 3177 50  0000 C CNN
F 2 "" H 9300 3350 50  0001 C CNN
F 3 "" H 9300 3350 50  0001 C CNN
	1    9300 3350
	1    0    0    -1  
$EndComp
Text Label 8000 3450 2    50   ~ 0
IN_2
$Comp
L Amplifier_Operational:TL072 U6
U 1 1 61B6E55B
P 8250 5300
F 0 "U6" H 8250 5667 50  0000 C CNN
F 1 "TL072" H 8250 5576 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8250 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8250 5300 50  0001 C CNN
F 4 "Low-Noise FET-Input Operational Amplifiers (SOIC-8 )" H 8250 5300 50  0001 C CNN "Description"
F 5 "X" H 8250 5300 50  0001 C CNN "Spice_Primitive"
F 6 "TL072c" H 8250 5300 50  0001 C CNN "Spice_Model"
F 7 "Y" H 8250 5300 50  0001 C CNN "Spice_Netlist_Enabled"
	1    8250 5300
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U6
U 2 1 61B6E561
P 6300 5250
F 0 "U6" H 6300 5617 50  0000 C CNN
F 1 "TL072" H 6300 5526 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6300 5250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6300 5250 50  0001 C CNN
F 4 "Low-Noise FET-Input Operational Amplifiers (SOIC-8 )" H 6300 5250 50  0001 C CNN "Description"
F 5 "X" H 6300 5250 50  0001 C CNN "Spice_Primitive"
F 6 "TL072c" H 6300 5250 50  0001 C CNN "Spice_Model"
F 7 "Y" H 6300 5250 50  0001 C CNN "Spice_Netlist_Enabled"
	2    6300 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 61B6E571
P 7200 4250
F 0 "D3" V 7300 4000 50  0000 C CNN
F 1 "LED (Green/Yellow)" V 7200 4000 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 7200 4250 50  0001 C CNN
F 3 "~" H 7200 4250 50  0001 C CNN
F 4 "D" H 7200 4250 50  0001 C CNN "Spice_Primitive"
F 5 "LED2" H 7200 4250 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7200 4250 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LED 3mm bipolar" V 7200 4250 50  0001 C CNN "Description"
	1    7200 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	6650 4250 6650 3750
Wire Wire Line
	6650 3750 5950 3750
Wire Wire Line
	5950 3750 5950 4150
Wire Wire Line
	5950 4150 6050 4150
Text Label 6050 4350 2    50   ~ 0
IN_3
$Comp
L power:GND #PWR039
U 1 1 61B6E57D
P 7350 4250
F 0 "#PWR039" H 7350 4000 50  0001 C CNN
F 1 "GND" H 7355 4077 50  0000 C CNN
F 2 "" H 7350 4250 50  0001 C CNN
F 3 "" H 7350 4250 50  0001 C CNN
	1    7350 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4300 8600 3800
Wire Wire Line
	8600 3800 7900 3800
Wire Wire Line
	7900 3800 7900 4200
Wire Wire Line
	7900 4200 8000 4200
$Comp
L Device:LED D4
U 1 1 61B6E591
P 9150 4300
F 0 "D4" V 9250 4050 50  0000 C CNN
F 1 "LED (Green/Yellow)" V 9150 4050 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9150 4300 50  0001 C CNN
F 3 "~" H 9150 4300 50  0001 C CNN
F 4 "D" H 9150 4300 50  0001 C CNN "Spice_Primitive"
F 5 "LED2" H 9150 4300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 9150 4300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LED 3mm bipola" V 9150 4300 50  0001 C CNN "Description"
	1    9150 4300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR043
U 1 1 61B6E597
P 9300 4300
F 0 "#PWR043" H 9300 4050 50  0001 C CNN
F 1 "GND" H 9305 4127 50  0000 C CNN
F 2 "" H 9300 4300 50  0001 C CNN
F 3 "" H 9300 4300 50  0001 C CNN
	1    9300 4300
	1    0    0    -1  
$EndComp
Text Label 8000 4400 2    50   ~ 0
IN_4
$Comp
L Amplifier_Operational:TL072 U4
U 1 1 61B8765D
P 3500 3950
F 0 "U4" H 3550 3600 50  0000 C CNN
F 1 "TL072" H 3550 3700 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3500 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3500 3950 50  0001 C CNN
F 4 "Low-Noise FET-Input Operational Amplifiers (SOIC-8 )" H 3500 3950 50  0001 C CNN "Description"
F 5 "X" H 3500 3950 50  0001 C CNN "Spice_Primitive"
F 6 "TL072c" H 3500 3950 50  0001 C CNN "Spice_Model"
F 7 "Y" H 3500 3950 50  0001 C CNN "Spice_Netlist_Enabled"
	1    3500 3950
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U4
U 2 1 61B87663
P 6350 4250
F 0 "U4" H 6350 4617 50  0000 C CNN
F 1 "TL072" H 6350 4526 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6350 4250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6350 4250 50  0001 C CNN
F 4 "Low-Noise FET-Input Operational Amplifiers (SOIC-8 )" H 6350 4250 50  0001 C CNN "Description"
F 5 "X" H 6350 4250 50  0001 C CNN "Spice_Primitive"
F 6 "TL072c" H 6350 4250 50  0001 C CNN "Spice_Model"
F 7 "Y" H 6350 4250 50  0001 C CNN "Spice_Netlist_Enabled"
	2    6350 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 61B87673
P 7150 5250
F 0 "D5" V 7250 5000 50  0000 C CNN
F 1 "LED (Red/Yellow)" V 7150 5000 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 7150 5250 50  0001 C CNN
F 3 "~" H 7150 5250 50  0001 C CNN
F 4 "D" H 7150 5250 50  0001 C CNN "Spice_Primitive"
F 5 "LED2" H 7150 5250 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7150 5250 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LED 3mm bipolar" V 7150 5250 50  0001 C CNN "Description"
	1    7150 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	6600 5250 6600 4750
Wire Wire Line
	6600 4750 5900 4750
Wire Wire Line
	5900 4750 5900 5150
Wire Wire Line
	5900 5150 6000 5150
Text Label 6000 5350 2    50   ~ 0
OUT
$Comp
L power:GND #PWR09
U 1 1 61B8767F
P 7300 5250
F 0 "#PWR09" H 7300 5000 50  0001 C CNN
F 1 "GND" H 7305 5077 50  0000 C CNN
F 2 "" H 7300 5250 50  0001 C CNN
F 3 "" H 7300 5250 50  0001 C CNN
	1    7300 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5300 8550 4800
Wire Wire Line
	8550 4800 7850 4800
Wire Wire Line
	7850 4800 7850 5200
Wire Wire Line
	7850 5200 7950 5200
$Comp
L power:GND #PWR041
U 1 1 61B9ABD8
P 7900 5450
F 0 "#PWR041" H 7900 5200 50  0001 C CNN
F 1 "GND" H 7905 5277 50  0000 C CNN
F 2 "" H 7900 5450 50  0001 C CNN
F 3 "" H 7900 5450 50  0001 C CNN
	1    7900 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 5400 7900 5400
Wire Wire Line
	7900 5400 7900 5450
Wire Wire Line
	6750 3300 6650 3300
Connection ~ 6650 3300
Wire Wire Line
	6750 4250 6650 4250
Connection ~ 6650 4250
Wire Wire Line
	6700 5250 6600 5250
Wire Wire Line
	7900 2850 8600 2850
Wire Wire Line
	8600 3350 8700 3350
Connection ~ 8600 3350
Wire Wire Line
	8700 4300 8600 4300
Connection ~ 8600 4300
$Comp
L Device:R R29
U 1 1 61C7911F
P 6900 3300
F 0 "R29" V 6693 3300 50  0000 C CNN
F 1 "500" V 6784 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6830 3300 50  0001 C CNN
F 3 "~" H 6900 3300 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" V 6900 3300 50  0001 C CNN "Description"
	1    6900 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R R30
U 1 1 61B507E3
P 6900 4250
F 0 "R30" V 6693 4250 50  0000 C CNN
F 1 "500" V 6784 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6830 4250 50  0001 C CNN
F 3 "~" H 6900 4250 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" V 6900 4250 50  0001 C CNN "Description"
	1    6900 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R R28
U 1 1 61B51098
P 6850 5250
F 0 "R28" V 6643 5250 50  0000 C CNN
F 1 "500" V 6734 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6780 5250 50  0001 C CNN
F 3 "~" H 6850 5250 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" V 6850 5250 50  0001 C CNN "Description"
	1    6850 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R R32
U 1 1 61B519E5
P 8850 3350
F 0 "R32" V 8643 3350 50  0000 C CNN
F 1 "500" V 8734 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8780 3350 50  0001 C CNN
F 3 "~" H 8850 3350 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" V 8850 3350 50  0001 C CNN "Description"
	1    8850 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R R34
U 1 1 61B52316
P 8850 4300
F 0 "R34" V 8643 4300 50  0000 C CNN
F 1 "500" V 8734 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8780 4300 50  0001 C CNN
F 3 "~" H 8850 4300 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" V 8850 4300 50  0001 C CNN "Description"
	1    8850 4300
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:TL072 U7
U 1 1 61B6AAEC
P 7400 2050
F 0 "U7" H 7400 1650 50  0000 C CNN
F 1 "TL072" H 7400 1750 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7400 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7400 2050 50  0001 C CNN
F 4 "Low-Noise FET-Input Operational Amplifiers (SOIC-8 )" H 7400 2050 50  0001 C CNN "Description"
F 5 "X" H 7400 2050 50  0001 C CNN "Spice_Primitive"
F 6 "TL072c" H 7400 2050 50  0001 C CNN "Spice_Model"
F 7 "Y" H 7400 2050 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7400 2050
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U7
U 2 1 61B7777F
P 8550 2150
F 0 "U7" H 8550 1750 50  0000 C CNN
F 1 "TL072" H 8550 1850 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8550 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8550 2150 50  0001 C CNN
F 4 "Low-Noise FET-Input Operational Amplifiers (SOIC-8 )" H 8550 2150 50  0001 C CNN "Description"
F 5 "X" H 8550 2150 50  0001 C CNN "Spice_Primitive"
F 6 "TL072c" H 8550 2150 50  0001 C CNN "Spice_Model"
F 7 "Y" H 8550 2150 50  0001 C CNN "Spice_Netlist_Enabled"
	2    8550 2150
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U2
U 1 1 61B85BD5
P 3450 1800
F 0 "U2" H 3450 1450 50  0000 C CNN
F 1 "TL072" H 3450 1550 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3450 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3450 1800 50  0001 C CNN
F 4 "Low-Noise FET-Input Operational Amplifiers (SOIC-8 )" H 3450 1800 50  0001 C CNN "Description"
F 5 "X" H 3450 1800 50  0001 C CNN "Spice_Primitive"
F 6 "TL072c" H 3450 1800 50  0001 C CNN "Spice_Model"
F 7 "Y" H 3450 1800 50  0001 C CNN "Spice_Netlist_Enabled"
	1    3450 1800
	1    0    0    1   
$EndComp
Connection ~ 3150 1700
$Comp
L Amplifier_Operational:TL072 U3
U 1 1 61B87396
P 3450 2900
F 0 "U3" H 3500 2550 50  0000 C CNN
F 1 "TL072" H 3500 2650 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3450 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3450 2900 50  0001 C CNN
F 4 "Low-Noise FET-Input Operational Amplifiers (SOIC-8 )" H 3450 2900 50  0001 C CNN "Description"
F 5 "X" H 3450 2900 50  0001 C CNN "Spice_Primitive"
F 6 "TL072c" H 3450 2900 50  0001 C CNN "Spice_Model"
F 7 "Y" H 3450 2900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    3450 2900
	1    0    0    1   
$EndComp
Connection ~ 3200 3850
$Comp
L Amplifier_Operational:TL072 U2
U 2 1 61B8A0B7
P 6350 3300
F 0 "U2" H 6350 3700 50  0000 C CNN
F 1 "TL072" H 6350 3600 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6350 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6350 3300 50  0001 C CNN
F 4 "Low-Noise FET-Input Operational Amplifiers (SOIC-8 )" H 6350 3300 50  0001 C CNN "Description"
F 5 "X" H 6350 3300 50  0001 C CNN "Spice_Primitive"
F 6 "TL072c" H 6350 3300 50  0001 C CNN "Spice_Model"
F 7 "Y" H 6350 3300 50  0001 C CNN "Spice_Netlist_Enabled"
	2    6350 3300
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U3
U 2 1 61B8C44A
P 8300 3350
F 0 "U3" H 8300 3750 50  0000 C CNN
F 1 "TL072" H 8300 3650 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8300 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8300 3350 50  0001 C CNN
F 4 "Low-Noise FET-Input Operational Amplifiers (SOIC-8 )" H 8300 3350 50  0001 C CNN "Description"
F 5 "X" H 8300 3350 50  0001 C CNN "Spice_Primitive"
F 6 "TL072c" H 8300 3350 50  0001 C CNN "Spice_Model"
F 7 "Y" H 8300 3350 50  0001 C CNN "Spice_Netlist_Enabled"
	2    8300 3350
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U3
U 3 1 61B94236
P 4200 7250
F 0 "U3" H 4158 7296 50  0000 L CNN
F 1 "TL072" H 4158 7205 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4200 7250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4200 7250 50  0001 C CNN
F 4 "Low-Noise FET-Input Operational Amplifiers (SOIC-8 )" H 4200 7250 50  0001 C CNN "Description"
F 5 "X" H 4200 7250 50  0001 C CNN "Spice_Primitive"
F 6 "TL072c" H 4200 7250 50  0001 C CNN "Spice_Model"
F 7 "Y" H 4200 7250 50  0001 C CNN "Spice_Netlist_Enabled"
	3    4200 7250
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U7
U 3 1 61B99C12
P 5400 7250
F 0 "U7" H 5358 7296 50  0000 L CNN
F 1 "TL072" H 5358 7205 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5400 7250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5400 7250 50  0001 C CNN
F 4 "Low-Noise FET-Input Operational Amplifiers (SOIC-8 )" H 5400 7250 50  0001 C CNN "Description"
F 5 "X" H 5400 7250 50  0001 C CNN "Spice_Primitive"
F 6 "TL072c" H 5400 7250 50  0001 C CNN "Spice_Model"
F 7 "Y" H 5400 7250 50  0001 C CNN "Spice_Netlist_Enabled"
	3    5400 7250
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U5
U 3 1 61B9B30F
P 6550 7250
F 0 "U5" H 6508 7296 50  0000 L CNN
F 1 "TL072" H 6508 7205 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6550 7250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6550 7250 50  0001 C CNN
F 4 "Low-Noise FET-Input Operational Amplifiers (SOIC-8 )" H 6550 7250 50  0001 C CNN "Description"
F 5 "X" H 6550 7250 50  0001 C CNN "Spice_Primitive"
F 6 "TL072c" H 6550 7250 50  0001 C CNN "Spice_Model"
F 7 "Y" H 6550 7250 50  0001 C CNN "Spice_Netlist_Enabled"
	3    6550 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 61BC0EC3
P 6050 6300
AR Path="/61BC0EC3" Ref="C16"  Part="1" 
AR Path="/5DD3665B/61BC0EC3" Ref="C?"  Part="1" 
F 0 "C16" H 6165 6346 50  0000 L CNN
F 1 "0.1u" H 6165 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6088 6150 50  0001 C CNN
F 3 "~" H 6050 6300 50  0001 C CNN
F 4 "C" H 6050 6300 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 6050 6300 50  0001 C CNN "Spice_Model"
F 6 "N" H 6050 6300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC" H 6050 6300 50  0001 C CNN "Description"
	1    6050 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 61BC0ECD
P 6050 6000
AR Path="/61BC0ECD" Ref="C15"  Part="1" 
AR Path="/5DD3665B/61BC0ECD" Ref="C?"  Part="1" 
F 0 "C15" H 6165 6046 50  0000 L CNN
F 1 "0.1u" H 6165 5955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6088 5850 50  0001 C CNN
F 3 "~" H 6050 6000 50  0001 C CNN
F 4 "C" H 6050 6000 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 6050 6000 50  0001 C CNN "Spice_Model"
F 6 "N" H 6050 6000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC" H 6050 6000 50  0001 C CNN "Description"
	1    6050 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 61BC0ED7
P 4850 6300
AR Path="/61BC0ED7" Ref="C14"  Part="1" 
AR Path="/5DD3665B/61BC0ED7" Ref="C?"  Part="1" 
F 0 "C14" H 4965 6346 50  0000 L CNN
F 1 "0.1u" H 4965 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4888 6150 50  0001 C CNN
F 3 "~" H 4850 6300 50  0001 C CNN
F 4 "C" H 4850 6300 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 4850 6300 50  0001 C CNN "Spice_Model"
F 6 "N" H 4850 6300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC" H 4850 6300 50  0001 C CNN "Description"
	1    4850 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 61BC0EE1
P 4850 6000
AR Path="/61BC0EE1" Ref="C13"  Part="1" 
AR Path="/5DD3665B/61BC0EE1" Ref="C?"  Part="1" 
F 0 "C13" H 4965 6046 50  0000 L CNN
F 1 "0.1u" H 4965 5955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4888 5850 50  0001 C CNN
F 3 "~" H 4850 6000 50  0001 C CNN
F 4 "C" H 4850 6000 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 4850 6000 50  0001 C CNN "Spice_Model"
F 6 "N" H 4850 6000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC" H 4850 6000 50  0001 C CNN "Description"
	1    4850 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 61BC0EEB
P 3700 6300
AR Path="/61BC0EEB" Ref="C12"  Part="1" 
AR Path="/5DD3665B/61BC0EEB" Ref="C?"  Part="1" 
F 0 "C12" H 3815 6346 50  0000 L CNN
F 1 "0.1u" H 3815 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3738 6150 50  0001 C CNN
F 3 "~" H 3700 6300 50  0001 C CNN
F 4 "C" H 3700 6300 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 3700 6300 50  0001 C CNN "Spice_Model"
F 6 "N" H 3700 6300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC" H 3700 6300 50  0001 C CNN "Description"
	1    3700 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 61BC0EF5
P 3700 6000
AR Path="/61BC0EF5" Ref="C11"  Part="1" 
AR Path="/5DD3665B/61BC0EF5" Ref="C?"  Part="1" 
F 0 "C11" H 3815 6046 50  0000 L CNN
F 1 "0.1u" H 3815 5955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3738 5850 50  0001 C CNN
F 3 "~" H 3700 6000 50  0001 C CNN
F 4 "C" H 3700 6000 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 3700 6000 50  0001 C CNN "Spice_Model"
F 6 "N" H 3700 6000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC" H 3700 6000 50  0001 C CNN "Description"
	1    3700 6000
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR048
U 1 1 61BC0EFB
P 3700 5850
AR Path="/61BC0EFB" Ref="#PWR048"  Part="1" 
AR Path="/5DD3665B/61BC0EFB" Ref="#PWR?"  Part="1" 
F 0 "#PWR048" H 3700 5700 50  0001 C CNN
F 1 "+15V" H 3600 6000 50  0000 L CNN
F 2 "" H 3700 5850 50  0001 C CNN
F 3 "" H 3700 5850 50  0001 C CNN
	1    3700 5850
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR049
U 1 1 61BC0F01
P 3700 6450
AR Path="/61BC0F01" Ref="#PWR049"  Part="1" 
AR Path="/5DD3665B/61BC0F01" Ref="#PWR?"  Part="1" 
F 0 "#PWR049" H 3700 6550 50  0001 C CNN
F 1 "-15V" H 3600 6600 50  0000 L CNN
F 2 "" H 3700 6450 50  0001 C CNN
F 3 "" H 3700 6450 50  0001 C CNN
	1    3700 6450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 5850 6450 5850
Wire Wire Line
	6450 6450 6050 6450
$Comp
L power:+15V #PWR057
U 1 1 61BC0F09
P 6050 5850
AR Path="/61BC0F09" Ref="#PWR057"  Part="1" 
AR Path="/5DD3665B/61BC0F09" Ref="#PWR?"  Part="1" 
F 0 "#PWR057" H 6050 5700 50  0001 C CNN
F 1 "+15V" H 5950 6000 50  0000 L CNN
F 2 "" H 6050 5850 50  0001 C CNN
F 3 "" H 6050 5850 50  0001 C CNN
	1    6050 5850
	1    0    0    -1  
$EndComp
Connection ~ 6050 5850
$Comp
L power:-15V #PWR058
U 1 1 61BC0F10
P 6050 6450
AR Path="/61BC0F10" Ref="#PWR058"  Part="1" 
AR Path="/5DD3665B/61BC0F10" Ref="#PWR?"  Part="1" 
F 0 "#PWR058" H 6050 6550 50  0001 C CNN
F 1 "-15V" H 5950 6600 50  0000 L CNN
F 2 "" H 6050 6450 50  0001 C CNN
F 3 "" H 6050 6450 50  0001 C CNN
	1    6050 6450
	-1   0    0    1   
$EndComp
Connection ~ 6050 6450
$Comp
L power:GND #PWR056
U 1 1 61BC0F17
P 5800 6250
AR Path="/61BC0F17" Ref="#PWR056"  Part="1" 
AR Path="/5DD3665B/61BC0F17" Ref="#PWR?"  Part="1" 
F 0 "#PWR056" H 5800 6000 50  0001 C CNN
F 1 "GND" V 5800 6050 50  0000 C CNN
F 2 "" H 5800 6250 50  0001 C CNN
F 3 "" H 5800 6250 50  0001 C CNN
	1    5800 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 6150 5800 6150
Wire Wire Line
	5800 6150 5800 6250
Connection ~ 6050 6150
$Comp
L power:+15V #PWR054
U 1 1 61BC0F20
P 4850 5850
AR Path="/61BC0F20" Ref="#PWR054"  Part="1" 
AR Path="/5DD3665B/61BC0F20" Ref="#PWR?"  Part="1" 
F 0 "#PWR054" H 4850 5700 50  0001 C CNN
F 1 "+15V" H 4750 6000 50  0000 L CNN
F 2 "" H 4850 5850 50  0001 C CNN
F 3 "" H 4850 5850 50  0001 C CNN
	1    4850 5850
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR055
U 1 1 61BC0F26
P 4850 6450
AR Path="/61BC0F26" Ref="#PWR055"  Part="1" 
AR Path="/5DD3665B/61BC0F26" Ref="#PWR?"  Part="1" 
F 0 "#PWR055" H 4850 6550 50  0001 C CNN
F 1 "-15V" H 4750 6600 50  0000 L CNN
F 2 "" H 4850 6450 50  0001 C CNN
F 3 "" H 4850 6450 50  0001 C CNN
	1    4850 6450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR053
U 1 1 61BC0F2C
P 4600 6250
AR Path="/61BC0F2C" Ref="#PWR053"  Part="1" 
AR Path="/5DD3665B/61BC0F2C" Ref="#PWR?"  Part="1" 
F 0 "#PWR053" H 4600 6000 50  0001 C CNN
F 1 "GND" V 4600 6050 50  0000 C CNN
F 2 "" H 4600 6250 50  0001 C CNN
F 3 "" H 4600 6250 50  0001 C CNN
	1    4600 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6150 4600 6150
Wire Wire Line
	4600 6150 4600 6250
Connection ~ 4850 6150
Wire Wire Line
	5300 5850 4850 5850
Connection ~ 4850 5850
Wire Wire Line
	5300 6450 4850 6450
Connection ~ 4850 6450
$Comp
L power:GND #PWR047
U 1 1 61BC0F39
P 3450 6250
AR Path="/61BC0F39" Ref="#PWR047"  Part="1" 
AR Path="/5DD3665B/61BC0F39" Ref="#PWR?"  Part="1" 
F 0 "#PWR047" H 3450 6000 50  0001 C CNN
F 1 "GND" V 3450 6050 50  0000 C CNN
F 2 "" H 3450 6250 50  0001 C CNN
F 3 "" H 3450 6250 50  0001 C CNN
	1    3450 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 6150 3450 6150
Wire Wire Line
	3450 6150 3450 6250
Connection ~ 3700 6150
Wire Wire Line
	4100 5850 3700 5850
Connection ~ 3700 5850
Wire Wire Line
	4100 6450 3700 6450
Connection ~ 3700 6450
$Comp
L Amplifier_Operational:TL072 U2
U 3 1 61BC0F47
P 4200 6150
F 0 "U2" H 4158 6196 50  0000 L CNN
F 1 "TL072" H 4158 6105 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4200 6150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4200 6150 50  0001 C CNN
F 4 "Low-Noise FET-Input Operational Amplifiers (SOIC-8 )" H 4200 6150 50  0001 C CNN "Description"
F 5 "X" H 4200 6150 50  0001 C CNN "Spice_Primitive"
F 6 "TL072c" H 4200 6150 50  0001 C CNN "Spice_Model"
F 7 "Y" H 4200 6150 50  0001 C CNN "Spice_Netlist_Enabled"
	3    4200 6150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U6
U 3 1 61BC0F4E
P 5400 6150
F 0 "U6" H 5358 6196 50  0000 L CNN
F 1 "TL072" H 5358 6105 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5400 6150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5400 6150 50  0001 C CNN
F 4 "Low-Noise FET-Input Operational Amplifiers (SOIC-8 )" H 5400 6150 50  0001 C CNN "Description"
F 5 "X" H 5400 6150 50  0001 C CNN "Spice_Primitive"
F 6 "TL072c" H 5400 6150 50  0001 C CNN "Spice_Model"
F 7 "Y" H 5400 6150 50  0001 C CNN "Spice_Netlist_Enabled"
	3    5400 6150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U4
U 3 1 61BC0F55
P 6550 6150
F 0 "U4" H 6508 6196 50  0000 L CNN
F 1 "TL072" H 6508 6105 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6550 6150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6550 6150 50  0001 C CNN
F 4 "Low-Noise FET-Input Operational Amplifiers (SOIC-8 )" H 6550 6150 50  0001 C CNN "Description"
F 5 "X" H 6550 6150 50  0001 C CNN "Spice_Primitive"
F 6 "TL072c" H 6550 6150 50  0001 C CNN "Spice_Model"
F 7 "Y" H 6550 6150 50  0001 C CNN "Spice_Netlist_Enabled"
	3    6550 6150
	1    0    0    -1  
$EndComp
$Comp
L Reference_Voltage:LM4040DBZ-5 U1
U 1 1 61C0222C
P 2000 6150
F 0 "U1" V 2046 6062 50  0000 R CNN
F 1 "LM4040BIM3-5.0" V 1955 6062 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2000 5950 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm4040-n.pdf" H 2000 6150 50  0001 C CIN
F 4 "X" H 2000 6150 50  0001 C CNN "Spice_Primitive"
F 5 "LM4040_NA10P0" H 2000 6150 50  0001 C CNN "Spice_Model"
F 6 "N" H 2000 6150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Precision Micropower Shunt Voltage Reference" V 2000 6150 50  0001 C CNN "Description"
	1    2000 6150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR046
U 1 1 61C03D95
P 2000 6300
AR Path="/61C03D95" Ref="#PWR046"  Part="1" 
AR Path="/5DD3665B/61C03D95" Ref="#PWR?"  Part="1" 
F 0 "#PWR046" H 2000 6050 50  0001 C CNN
F 1 "GND" V 2000 6100 50  0000 C CNN
F 2 "" H 2000 6300 50  0001 C CNN
F 3 "" H 2000 6300 50  0001 C CNN
	1    2000 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 61C1648A
P 1750 6000
F 0 "R23" V 1543 6000 50  0000 C CNN
F 1 "8.2k" V 1634 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1680 6000 50  0001 C CNN
F 3 "~" H 1750 6000 50  0001 C CNN
F 4 "R" H 1750 6000 50  0001 C CNN "Spice_Primitive"
F 5 "8.2k" H 1750 6000 50  0001 C CNN "Spice_Model"
F 6 "N" H 1750 6000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Thick Film Resistors - SMD (0805)" V 1750 6000 50  0001 C CNN "Description"
	1    1750 6000
	0    1    1    0   
$EndComp
$Comp
L power:+15V #PWR044
U 1 1 61C17F5A
P 1450 5950
F 0 "#PWR044" H 1450 5800 50  0001 C CNN
F 1 "+15V" H 1465 6123 50  0000 C CNN
F 2 "" H 1450 5950 50  0001 C CNN
F 3 "" H 1450 5950 50  0001 C CNN
	1    1450 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5950 1450 6000
Wire Wire Line
	1450 6000 1600 6000
Wire Wire Line
	1900 6000 2000 6000
Text Label 2000 6000 0    50   ~ 0
REF
Text Label 2100 1800 0    50   ~ 0
REF
Connection ~ 3150 2800
Connection ~ 3250 4900
Connection ~ 6600 5250
$Comp
L Device:C C9
U 1 1 61B5DCB6
P 8600 1000
F 0 "C9" V 8348 1000 50  0000 C CNN
F 1 "100p" V 8439 1000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8638 850 50  0001 C CNN
F 3 "~" H 8600 1000 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC" V 8600 1000 50  0001 C CNN "Description"
	1    8600 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 1000 8450 1000
Wire Wire Line
	8750 1000 8900 1000
Wire Wire Line
	8200 1000 8200 1450
Wire Wire Line
	8900 1000 8900 1450
Connection ~ 8900 1450
Connection ~ 8200 1450
Text Notes 5950 3650 0    50   ~ 0
try rotating opamp\nhttps://electro-music.com/forum/topic-49449.html&postorder=asc
$EndSCHEMATC
