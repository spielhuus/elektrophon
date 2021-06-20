EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "steckfeld"
Date "2021-06-13"
Rev "R01"
Comp ""
Comment1 "schema for pcb"
Comment2 "utility for connecting modules to breadboard"
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
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
L power:GND #PWR019
U 1 1 5E180712
P 2400 7250
AR Path="/5E180712" Ref="#PWR019"  Part="1" 
AR Path="/5DD3665B/5E180712" Ref="#PWR?"  Part="1" 
F 0 "#PWR019" H 2400 7000 50  0001 C CNN
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
	1    2200 6950
	0    1    1    0   
$EndComp
$Comp
L power:+15V #PWR018
U 1 1 5FC69BA0
P 2400 6950
AR Path="/5FC69BA0" Ref="#PWR018"  Part="1" 
AR Path="/5DD3665B/5FC69BA0" Ref="#PWR?"  Part="1" 
F 0 "#PWR018" H 2400 6800 50  0001 C CNN
F 1 "+15V" H 2300 7100 50  0000 L CNN
F 2 "" H 2400 6950 50  0001 C CNN
F 3 "" H 2400 6950 50  0001 C CNN
	1    2400 6950
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR020
U 1 1 5FC69BA2
P 2400 7550
AR Path="/5FC69BA2" Ref="#PWR020"  Part="1" 
AR Path="/5DD3665B/5FC69BA2" Ref="#PWR?"  Part="1" 
F 0 "#PWR020" H 2400 7650 50  0001 C CNN
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
$Comp
L Device:C C7
U 1 1 5EC3E5CE
P 4800 7400
AR Path="/5EC3E5CE" Ref="C7"  Part="1" 
AR Path="/5DD3665B/5EC3E5CE" Ref="C?"  Part="1" 
F 0 "C7" H 4915 7446 50  0000 L CNN
F 1 "0.1u" H 4915 7355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4838 7250 50  0001 C CNN
F 3 "~" H 4800 7400 50  0001 C CNN
F 4 "C" H 4800 7400 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 4800 7400 50  0001 C CNN "Spice_Model"
F 6 "N" H 4800 7400 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC" H 4800 7400 50  0001 C CNN "Description"
	1    4800 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5EC3E5C8
P 4800 7100
AR Path="/5EC3E5C8" Ref="C6"  Part="1" 
AR Path="/5DD3665B/5EC3E5C8" Ref="C?"  Part="1" 
F 0 "C6" H 4915 7146 50  0000 L CNN
F 1 "0.1u" H 4915 7055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4838 6950 50  0001 C CNN
F 3 "~" H 4800 7100 50  0001 C CNN
F 4 "C" H 4800 7100 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 4800 7100 50  0001 C CNN "Spice_Model"
F 6 "N" H 4800 7100 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC" H 4800 7100 50  0001 C CNN "Description"
	1    4800 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5E1807EC
P 3700 7400
AR Path="/5E1807EC" Ref="C5"  Part="1" 
AR Path="/5DD3665B/5E1807EC" Ref="C?"  Part="1" 
F 0 "C5" H 3815 7446 50  0000 L CNN
F 1 "0.1u" H 3815 7355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3738 7250 50  0001 C CNN
F 3 "~" H 3700 7400 50  0001 C CNN
F 4 "C" H 3700 7400 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 3700 7400 50  0001 C CNN "Spice_Model"
F 6 "N" H 3700 7400 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC" H 3700 7400 50  0001 C CNN "Description"
	1    3700 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5E1807E6
P 3700 7100
AR Path="/5E1807E6" Ref="C4"  Part="1" 
AR Path="/5DD3665B/5E1807E6" Ref="C?"  Part="1" 
F 0 "C4" H 3815 7146 50  0000 L CNN
F 1 "0.1u" H 3815 7055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3738 6950 50  0001 C CNN
F 3 "~" H 3700 7100 50  0001 C CNN
F 4 "C" H 3700 7100 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 3700 7100 50  0001 C CNN "Spice_Model"
F 6 "N" H 3700 7100 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Multilayer Ceramic Capacitors MLCC" H 3700 7100 50  0001 C CNN "Description"
	1    3700 7100
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J2
U 1 1 5D64A5B4
P 1050 1200
F 0 "J2" H 1082 1525 50  0000 C CNN
F 1 "IN" H 1082 1434 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1050 1200 50  0001 C CNN
F 3 "~" H 1050 1200 50  0001 C CNN
F 4 "X" H 1050 1200 50  0001 C CNN "Spice_Primitive"
F 5 "IN_1" H 1050 1200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1050 1200 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1050 1200
	1    0    0    -1  
$EndComp
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
	4800 6950 5200 6950
Wire Wire Line
	5200 7550 4800 7550
$Comp
L power:+15V #PWR031
U 1 1 60B746FE
P 4800 6950
AR Path="/60B746FE" Ref="#PWR031"  Part="1" 
AR Path="/5DD3665B/60B746FE" Ref="#PWR?"  Part="1" 
F 0 "#PWR031" H 4800 6800 50  0001 C CNN
F 1 "+15V" H 4700 7100 50  0000 L CNN
F 2 "" H 4800 6950 50  0001 C CNN
F 3 "" H 4800 6950 50  0001 C CNN
	1    4800 6950
	1    0    0    -1  
$EndComp
Connection ~ 4800 6950
$Comp
L power:-15V #PWR032
U 1 1 60B7514B
P 4800 7550
AR Path="/60B7514B" Ref="#PWR032"  Part="1" 
AR Path="/5DD3665B/60B7514B" Ref="#PWR?"  Part="1" 
F 0 "#PWR032" H 4800 7650 50  0001 C CNN
F 1 "-15V" H 4700 7700 50  0000 L CNN
F 2 "" H 4800 7550 50  0001 C CNN
F 3 "" H 4800 7550 50  0001 C CNN
	1    4800 7550
	-1   0    0    1   
$EndComp
Connection ~ 4800 7550
$Comp
L power:GND #PWR030
U 1 1 60B75ADF
P 4550 7350
AR Path="/60B75ADF" Ref="#PWR030"  Part="1" 
AR Path="/5DD3665B/60B75ADF" Ref="#PWR?"  Part="1" 
F 0 "#PWR030" H 4550 7100 50  0001 C CNN
F 1 "GND" V 4550 7150 50  0000 C CNN
F 2 "" H 4550 7350 50  0001 C CNN
F 3 "" H 4550 7350 50  0001 C CNN
	1    4550 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 7250 4550 7250
Wire Wire Line
	4550 7250 4550 7350
Connection ~ 4800 7250
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
L power:GND #PWR09
U 1 1 60C812C4
P 1250 1100
F 0 "#PWR09" H 1250 850 50  0001 C CNN
F 1 "GND" V 1255 972 50  0000 R CNN
F 2 "" H 1250 1100 50  0001 C CNN
F 3 "" H 1250 1100 50  0001 C CNN
	1    1250 1100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J3
U 1 1 60D5C002
P 1050 1800
F 0 "J3" H 1082 2125 50  0000 C CNN
F 1 "IN" H 1082 2034 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1050 1800 50  0001 C CNN
F 3 "~" H 1050 1800 50  0001 C CNN
F 4 "X" H 1050 1800 50  0001 C CNN "Spice_Primitive"
F 5 "IN_2" H 1050 1800 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1050 1800 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1050 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 60D5C009
P 1250 1700
F 0 "#PWR010" H 1250 1450 50  0001 C CNN
F 1 "GND" V 1255 1572 50  0000 R CNN
F 2 "" H 1250 1700 50  0001 C CNN
F 3 "" H 1250 1700 50  0001 C CNN
	1    1250 1700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 60C0C83B
P 2000 1400
F 0 "RV1" H 1931 1446 50  0000 R CNN
F 1 "R_POT" H 1931 1355 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_PTV09A-1_Single_Vertical" H 2000 1400 50  0001 C CNN
F 3 "~" H 2000 1400 50  0001 C CNN
F 4 "X" H 2000 1400 50  0001 C CNN "Spice_Primitive"
F 5 "voltage_divider_1" H 2000 1400 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2000 1400 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2000 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 60C0CF12
P 2000 2100
F 0 "RV2" H 1931 2146 50  0000 R CNN
F 1 "R_POT" H 1931 2055 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_PTV09A-1_Single_Vertical" H 2000 2100 50  0001 C CNN
F 3 "~" H 2000 2100 50  0001 C CNN
F 4 "X" H 2000 2100 50  0001 C CNN "Spice_Primitive"
F 5 "voltage_divider_2" H 2000 2100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2000 2100 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2000 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 60C0DE7C
P 2000 1550
F 0 "#PWR014" H 2000 1300 50  0001 C CNN
F 1 "GND" H 2005 1377 50  0000 C CNN
F 2 "" H 2000 1550 50  0001 C CNN
F 3 "" H 2000 1550 50  0001 C CNN
	1    2000 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 60C0E20A
P 2000 2250
F 0 "#PWR015" H 2000 2000 50  0001 C CNN
F 1 "GND" H 2005 2077 50  0000 C CNN
F 2 "" H 2000 2250 50  0001 C CNN
F 3 "" H 2000 2250 50  0001 C CNN
	1    2000 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1800 2000 1950
$Comp
L Amplifier_Operational:TL072 U1
U 1 1 60C11AB2
P 3350 1950
F 0 "U1" H 3350 1583 50  0000 C CNN
F 1 "TL072" H 3350 1674 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3350 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3350 1950 50  0001 C CNN
F 4 "X" H 3350 1950 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 3350 1950 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3350 1950 50  0001 C CNN "Spice_Netlist_Enabled"
	1    3350 1950
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 60C12E58
P 3050 2050
F 0 "#PWR021" H 3050 1800 50  0001 C CNN
F 1 "GND" H 3055 1877 50  0000 C CNN
F 2 "" H 3050 2050 50  0001 C CNN
F 3 "" H 3050 2050 50  0001 C CNN
	1    3050 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1850 2950 1850
Wire Wire Line
	2800 1850 2800 2100
Wire Wire Line
	2950 1850 2950 1400
Wire Wire Line
	2950 1400 3200 1400
Wire Wire Line
	3750 1400 3750 1950
Wire Wire Line
	3750 1950 3650 1950
Connection ~ 2950 1850
Wire Wire Line
	2950 1850 2800 1850
Wire Wire Line
	2150 1400 2300 1400
Wire Wire Line
	2150 2100 2300 2100
$Comp
L Device:R R3
U 1 1 60C1FCDE
P 2450 1400
F 0 "R3" V 2243 1400 50  0000 C CNN
F 1 "100k" V 2334 1400 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" V 2380 1400 50  0001 C CNN
F 3 "~" H 2450 1400 50  0001 C CNN
	1    2450 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 1400 2800 1400
$Comp
L Device:R R4
U 1 1 60C2022F
P 2450 2100
F 0 "R4" V 2243 2100 50  0000 C CNN
F 1 "100k" V 2334 2100 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" V 2380 2100 50  0001 C CNN
F 3 "~" H 2450 2100 50  0001 C CNN
	1    2450 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 2100 2800 2100
$Comp
L Device:R R7
U 1 1 60C20DD9
P 3350 1400
F 0 "R7" V 3143 1400 50  0000 C CNN
F 1 "100k" V 3234 1400 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" V 3280 1400 50  0001 C CNN
F 3 "~" H 3350 1400 50  0001 C CNN
	1    3350 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 1400 3750 1400
Text GLabel 3850 1950 2    50   Input ~ 0
IN_1
Wire Wire Line
	3850 1950 3750 1950
Connection ~ 3750 1950
$Comp
L Amplifier_Operational:TL072 U2
U 1 1 60C49F0D
P 6200 1900
F 0 "U2" H 6200 1533 50  0000 C CNN
F 1 "TL072" H 6200 1624 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 6200 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6200 1900 50  0001 C CNN
F 4 "X" H 6200 1900 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 6200 1900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6200 1900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    6200 1900
	1    0    0    1   
$EndComp
Wire Wire Line
	5900 1800 5800 1800
Connection ~ 5650 1800
Wire Wire Line
	5800 1800 5800 1350
Wire Wire Line
	6600 1350 6600 1900
Wire Wire Line
	6600 1900 6500 1900
Connection ~ 5800 1800
Wire Wire Line
	5800 1800 5650 1800
Wire Wire Line
	5450 1200 5650 1200
Wire Wire Line
	5450 1800 5650 1800
$Comp
L Connector:AudioJack2_SwitchT J9
U 1 1 60C56582
P 7550 1900
F 0 "J9" H 7582 2225 50  0000 C CNN
F 1 "IN" H 7582 2134 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 7550 1900 50  0001 C CNN
F 3 "~" H 7550 1900 50  0001 C CNN
F 4 "X" H 7550 1900 50  0001 C CNN "Spice_Primitive"
F 5 "OUT_1" H 7550 1900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7550 1900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7550 1900
	-1   0    0    -1  
$EndComp
Text GLabel 2450 4700 0    50   Input ~ 0
IN_1
Text GLabel 2450 4800 0    50   Input ~ 0
IN_2
NoConn ~ 1250 1300
NoConn ~ 1250 1900
Wire Wire Line
	2000 1200 2000 1250
Wire Wire Line
	2800 1400 2800 1850
Connection ~ 2800 1850
Wire Wire Line
	5650 1200 5650 1800
$Comp
L power:GND #PWR033
U 1 1 60C8FDB9
P 7350 1800
F 0 "#PWR033" H 7350 1550 50  0001 C CNN
F 1 "GND" V 7355 1672 50  0000 R CNN
F 2 "" H 7350 1800 50  0001 C CNN
F 3 "" H 7350 1800 50  0001 C CNN
	1    7350 1800
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5F737FC5
P 1500 6500
F 0 "#FLG04" H 1500 6575 50  0001 C CNN
F 1 "PWR_FLAG" H 1500 6673 50  0001 C CNN
F 2 "" H 1500 6500 50  0001 C CNN
F 3 "~" H 1500 6500 50  0001 C CNN
	1    1500 6500
	1    0    0    -1  
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
L power:GND #PWR013
U 1 1 5F817A91
P 1500 6500
F 0 "#PWR013" H 1500 6250 50  0001 C CNN
F 1 "GND" H 1505 6327 50  0000 C CNN
F 2 "" H 1500 6500 50  0001 C CNN
F 3 "" H 1500 6500 50  0001 C CNN
	1    1500 6500
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
Text GLabel 5150 1200 0    50   Input ~ 0
OUT_1a
Text GLabel 5150 1800 0    50   Input ~ 0
OUT_1b
$Comp
L Connector:AudioJack2_SwitchT J4
U 1 1 60CDEE1F
P 1050 3000
F 0 "J4" H 1082 3325 50  0000 C CNN
F 1 "IN" H 1082 3234 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1050 3000 50  0001 C CNN
F 3 "~" H 1050 3000 50  0001 C CNN
F 4 "X" H 1050 3000 50  0001 C CNN "Spice_Primitive"
F 5 "IN_3" H 1050 3000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1050 3000 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1050 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 60CDEE25
P 1250 2900
F 0 "#PWR011" H 1250 2650 50  0001 C CNN
F 1 "GND" V 1255 2772 50  0000 R CNN
F 2 "" H 1250 2900 50  0001 C CNN
F 3 "" H 1250 2900 50  0001 C CNN
	1    1250 2900
	0    -1   -1   0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J5
U 1 1 60CDEE2E
P 1050 3600
F 0 "J5" H 1082 3925 50  0000 C CNN
F 1 "IN" H 1082 3834 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1050 3600 50  0001 C CNN
F 3 "~" H 1050 3600 50  0001 C CNN
F 4 "X" H 1050 3600 50  0001 C CNN "Spice_Primitive"
F 5 "IN_4" H 1050 3600 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1050 3600 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1050 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 60CDEE34
P 1250 3500
F 0 "#PWR012" H 1250 3250 50  0001 C CNN
F 1 "GND" V 1255 3372 50  0000 R CNN
F 2 "" H 1250 3500 50  0001 C CNN
F 3 "" H 1250 3500 50  0001 C CNN
	1    1250 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_POT RV3
U 1 1 60CDEE3A
P 2000 3200
F 0 "RV3" H 1931 3246 50  0000 R CNN
F 1 "R_POT" H 1931 3155 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_PTV09A-1_Single_Vertical" H 2000 3200 50  0001 C CNN
F 3 "~" H 2000 3200 50  0001 C CNN
F 4 "X" H 2000 3200 50  0001 C CNN "Spice_Primitive"
F 5 "voltage_divider_3" H 2000 3200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2000 3200 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2000 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV4
U 1 1 60CDEE40
P 2000 3900
F 0 "RV4" H 1931 3946 50  0000 R CNN
F 1 "R_POT" H 1931 3855 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_PTV09A-1_Single_Vertical" H 2000 3900 50  0001 C CNN
F 3 "~" H 2000 3900 50  0001 C CNN
F 4 "X" H 2000 3900 50  0001 C CNN "Spice_Primitive"
F 5 "voltage_divider_4" H 2000 3900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2000 3900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2000 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 60CDEE46
P 2000 3350
F 0 "#PWR016" H 2000 3100 50  0001 C CNN
F 1 "GND" H 2005 3177 50  0000 C CNN
F 2 "" H 2000 3350 50  0001 C CNN
F 3 "" H 2000 3350 50  0001 C CNN
	1    2000 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 60CDEE4C
P 2000 4050
F 0 "#PWR017" H 2000 3800 50  0001 C CNN
F 1 "GND" H 2005 3877 50  0000 C CNN
F 2 "" H 2000 4050 50  0001 C CNN
F 3 "" H 2000 4050 50  0001 C CNN
	1    2000 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3600 2000 3750
$Comp
L power:GND #PWR022
U 1 1 60CDEE59
P 3050 3850
F 0 "#PWR022" H 3050 3600 50  0001 C CNN
F 1 "GND" H 3055 3677 50  0000 C CNN
F 2 "" H 3050 3850 50  0001 C CNN
F 3 "" H 3050 3850 50  0001 C CNN
	1    3050 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3650 2950 3650
Wire Wire Line
	2800 3650 2800 3900
Wire Wire Line
	2950 3650 2950 3200
Wire Wire Line
	2950 3200 3200 3200
Wire Wire Line
	3750 3200 3750 3750
Wire Wire Line
	3750 3750 3650 3750
Connection ~ 2950 3650
Wire Wire Line
	2950 3650 2800 3650
Wire Wire Line
	2150 3200 2300 3200
Wire Wire Line
	2150 3900 2300 3900
$Comp
L Device:R R5
U 1 1 60CDEE69
P 2450 3200
F 0 "R5" V 2243 3200 50  0000 C CNN
F 1 "100k" V 2334 3200 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" V 2380 3200 50  0001 C CNN
F 3 "~" H 2450 3200 50  0001 C CNN
	1    2450 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 3200 2800 3200
$Comp
L Device:R R6
U 1 1 60CDEE70
P 2450 3900
F 0 "R6" V 2243 3900 50  0000 C CNN
F 1 "100k" V 2334 3900 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" V 2380 3900 50  0001 C CNN
F 3 "~" H 2450 3900 50  0001 C CNN
	1    2450 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 3900 2800 3900
$Comp
L Device:R R8
U 1 1 60CDEE77
P 3350 3200
F 0 "R8" V 3143 3200 50  0000 C CNN
F 1 "100k" V 3234 3200 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" V 3280 3200 50  0001 C CNN
F 3 "~" H 3350 3200 50  0001 C CNN
	1    3350 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 3200 3750 3200
Text GLabel 3850 3750 2    50   Input ~ 0
IN_2
Wire Wire Line
	3850 3750 3750 3750
Connection ~ 3750 3750
Wire Wire Line
	5900 3600 5800 3600
Wire Wire Line
	5800 3600 5800 3150
Wire Wire Line
	6600 3150 6600 3700
Wire Wire Line
	6600 3700 6500 3700
Connection ~ 5800 3600
Wire Wire Line
	5800 3600 5650 3600
$Comp
L Connector:AudioJack2_SwitchT J10
U 1 1 60CDEEAE
P 7550 3700
F 0 "J10" H 7582 4025 50  0000 C CNN
F 1 "IN" H 7582 3934 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 7550 3700 50  0001 C CNN
F 3 "~" H 7550 3700 50  0001 C CNN
F 4 "X" H 7550 3700 50  0001 C CNN "Spice_Primitive"
F 5 "OUT_2" H 7550 3700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7550 3700 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7550 3700
	-1   0    0    -1  
$EndComp
NoConn ~ 1250 3100
NoConn ~ 1250 3700
Wire Wire Line
	2000 3000 2000 3050
Wire Wire Line
	2800 3200 2800 3650
Connection ~ 2800 3650
Wire Wire Line
	5650 3000 5650 3600
$Comp
L power:GND #PWR034
U 1 1 60CDEEBC
P 7350 3600
F 0 "#PWR034" H 7350 3350 50  0001 C CNN
F 1 "GND" V 7355 3472 50  0000 R CNN
F 2 "" H 7350 3600 50  0001 C CNN
F 3 "" H 7350 3600 50  0001 C CNN
	1    7350 3600
	0    1    1    0   
$EndComp
Text GLabel 5150 3000 0    50   Input ~ 0
OUT_2a
Text GLabel 5150 3600 0    50   Input ~ 0
OUT_2b
$Comp
L Device:R_POT RV5
U 1 1 60C60CFB
P 8250 1600
F 0 "RV5" H 8181 1646 50  0000 R CNN
F 1 "100k" H 8181 1555 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 8250 1600 50  0001 C CNN
F 3 "~" H 8250 1600 50  0001 C CNN
F 4 "X" H 8250 1600 50  0001 C CNN "Spice_Primitive"
F 5 "Vref1" H 8250 1600 50  0001 C CNN "Spice_Model"
F 6 "Y" H 8250 1600 50  0001 C CNN "Spice_Netlist_Enabled"
	1    8250 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR035
U 1 1 60C6250C
P 8250 1450
F 0 "#PWR035" H 8250 1300 50  0001 C CNN
F 1 "+15V" H 8265 1623 50  0000 C CNN
F 2 "" H 8250 1450 50  0001 C CNN
F 3 "" H 8250 1450 50  0001 C CNN
	1    8250 1450
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR036
U 1 1 60C62E24
P 8250 1750
F 0 "#PWR036" H 8250 1850 50  0001 C CNN
F 1 "-15V" H 8265 1923 50  0000 C CNN
F 2 "" H 8250 1750 50  0001 C CNN
F 3 "" H 8250 1750 50  0001 C CNN
	1    8250 1750
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RV6
U 1 1 60C66DEA
P 8250 2450
F 0 "RV6" H 8181 2496 50  0000 R CNN
F 1 "100k" H 8181 2405 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 8250 2450 50  0001 C CNN
F 3 "~" H 8250 2450 50  0001 C CNN
F 4 "X" H 8250 2450 50  0001 C CNN "Spice_Primitive"
F 5 "Vref2" H 8250 2450 50  0001 C CNN "Spice_Model"
F 6 "Y" H 8250 2450 50  0001 C CNN "Spice_Netlist_Enabled"
	1    8250 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR037
U 1 1 60C66DF0
P 8250 2300
F 0 "#PWR037" H 8250 2150 50  0001 C CNN
F 1 "+15V" H 8265 2473 50  0000 C CNN
F 2 "" H 8250 2300 50  0001 C CNN
F 3 "" H 8250 2300 50  0001 C CNN
	1    8250 2300
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR038
U 1 1 60C66DF6
P 8250 2600
F 0 "#PWR038" H 8250 2700 50  0001 C CNN
F 1 "-15V" H 8265 2773 50  0000 C CNN
F 2 "" H 8250 2600 50  0001 C CNN
F 3 "" H 8250 2600 50  0001 C CNN
	1    8250 2600
	-1   0    0    1   
$EndComp
NoConn ~ 7350 2000
NoConn ~ 7350 3800
$Comp
L Connector:Conn_01x02_Female J6
U 1 1 60CD547D
P 2650 4700
F 0 "J6" H 2678 4630 50  0000 L CNN
F 1 "Conn_01x02_Female" H 2678 4585 50  0001 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 2650 4700 50  0001 C CNN
F 3 "~" H 2650 4700 50  0001 C CNN
F 4 "J" H 2650 4700 50  0001 C CNN "Spice_Primitive"
F 5 "Conn_01x02_Female" H 2650 4700 50  0001 C CNN "Spice_Model"
F 6 "N" H 2650 4700 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2650 4700
	1    0    0    -1  
$EndComp
Text Label 5900 2000 2    50   ~ 0
U2a
Wire Wire Line
	5650 3000 5450 3000
Wire Wire Line
	5450 3600 5650 3600
Connection ~ 5650 3600
Text Label 5900 3800 2    50   ~ 0
U2b
$Comp
L Amplifier_Operational:TL072 U1
U 2 1 60DB890A
P 3350 3750
F 0 "U1" H 3350 3383 50  0000 C CNN
F 1 "TL072" H 3350 3474 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3350 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3350 3750 50  0001 C CNN
F 4 "X" H 3350 3750 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 3350 3750 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3350 3750 50  0001 C CNN "Spice_Netlist_Enabled"
	2    3350 3750
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U2
U 2 1 60DBAA43
P 6200 3700
F 0 "U2" H 6200 3333 50  0000 C CNN
F 1 "TL072" H 6200 3424 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 6200 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6200 3700 50  0001 C CNN
F 4 "X" H 6200 3700 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 6200 3700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6200 3700 50  0001 C CNN "Spice_Netlist_Enabled"
	2    6200 3700
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 60DDF28A
P 4200 7250
F 0 "U1" H 4158 7296 50  0000 L CNN
F 1 "TL072" H 4158 7205 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 4200 7250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4200 7250 50  0001 C CNN
F 4 "X" H 4200 7250 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 4200 7250 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4200 7250 50  0001 C CNN "Spice_Netlist_Enabled"
	3    4200 7250
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U2
U 3 1 60DE5C5E
P 5300 7250
F 0 "U2" H 5258 7296 50  0000 L CNN
F 1 "TL072" H 5258 7205 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 5300 7250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5300 7250 50  0001 C CNN
F 4 "X" H 5300 7250 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 5300 7250 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5300 7250 50  0001 C CNN "Spice_Netlist_Enabled"
	3    5300 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 60EE28B7
P 5300 1200
F 0 "R9" V 5093 1200 50  0000 C CNN
F 1 "100k" V 5184 1200 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" V 5230 1200 50  0001 C CNN
F 3 "~" H 5300 1200 50  0001 C CNN
	1    5300 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 60EE5856
P 5300 1800
F 0 "R10" V 5093 1800 50  0000 C CNN
F 1 "100k" V 5184 1800 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" V 5230 1800 50  0001 C CNN
F 3 "~" H 5300 1800 50  0001 C CNN
	1    5300 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 60EECA3E
P 6200 1350
F 0 "R13" V 5993 1350 50  0000 C CNN
F 1 "100k" V 6084 1350 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" V 6130 1350 50  0001 C CNN
F 3 "~" H 6200 1350 50  0001 C CNN
	1    6200 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 1350 6050 1350
Wire Wire Line
	6350 1350 6600 1350
$Comp
L Device:R R11
U 1 1 60EF6EB1
P 5300 3000
F 0 "R11" V 5093 3000 50  0000 C CNN
F 1 "100k" V 5184 3000 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" V 5230 3000 50  0001 C CNN
F 3 "~" H 5300 3000 50  0001 C CNN
	1    5300 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 60EF6EB7
P 5300 3600
F 0 "R12" V 5093 3600 50  0000 C CNN
F 1 "100k" V 5184 3600 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" V 5230 3600 50  0001 C CNN
F 3 "~" H 5300 3600 50  0001 C CNN
	1    5300 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 60F0F70F
P 6200 3150
F 0 "R14" V 5993 3150 50  0000 C CNN
F 1 "100k" V 6084 3150 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" V 6130 3150 50  0001 C CNN
F 3 "~" H 6200 3150 50  0001 C CNN
	1    6200 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 3150 6050 3150
Wire Wire Line
	6350 3150 6600 3150
Text Label 6400 4700 2    50   ~ 0
V1
Text Label 6400 4600 2    50   ~ 0
U2a
$Comp
L power:GND #PWR0101
U 1 1 60D0009E
P 6400 4800
F 0 "#PWR0101" H 6400 4550 50  0001 C CNN
F 1 "GND" V 6400 4600 50  0000 C CNN
F 2 "" H 6400 4800 50  0001 C CNN
F 3 "" H 6400 4800 50  0001 C CNN
	1    6400 4800
	0    1    1    0   
$EndComp
Text GLabel 5350 4600 0    50   Input ~ 0
OUT_1a
Text GLabel 5350 4700 0    50   Input ~ 0
OUT_1b
Text GLabel 5350 4800 0    50   Input ~ 0
OUT_2a
Text GLabel 5350 4900 0    50   Input ~ 0
OUT_2b
Text Label 8400 1600 0    50   ~ 0
V1
Text Label 8400 2450 0    50   ~ 0
V2
Text Label 7200 4600 2    50   ~ 0
U2b
Text Label 7200 4700 2    50   ~ 0
V2
$Comp
L power:GND #PWR023
U 1 1 60F43F0C
P 7200 4800
F 0 "#PWR023" H 7200 4550 50  0001 C CNN
F 1 "GND" V 7200 4600 50  0000 C CNN
F 2 "" H 7200 4800 50  0001 C CNN
F 3 "" H 7200 4800 50  0001 C CNN
	1    7200 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 3600 1500 3600
Wire Wire Line
	1250 3000 1500 3000
Wire Wire Line
	1250 1800 1500 1800
Wire Wire Line
	1250 1200 1500 1200
Wire Wire Line
	1800 1200 2000 1200
$Comp
L Device:CP C8
U 1 1 60FB8A3B
P 1650 1800
F 0 "C8" V 1905 1800 50  0000 C CNN
F 1 "47u (NP)" V 1814 1800 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 1688 1650 50  0001 C CNN
F 3 "~" H 1650 1800 50  0001 C CNN
F 4 "C" H 1650 1800 50  0001 C CNN "Spice_Primitive"
F 5 "47u" H 1650 1800 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1650 1800 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1650 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 1800 2000 1800
$Comp
L Device:CP C9
U 1 1 60FB90BB
P 1650 3000
F 0 "C9" V 1905 3000 50  0000 C CNN
F 1 "47u (NP)" V 1814 3000 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 1688 2850 50  0001 C CNN
F 3 "~" H 1650 3000 50  0001 C CNN
F 4 "C" H 1650 3000 50  0001 C CNN "Spice_Primitive"
F 5 "47u" H 1650 3000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1650 3000 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1650 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 3000 2000 3000
$Comp
L Device:CP C10
U 1 1 60FBA4C1
P 1650 3600
F 0 "C10" V 1905 3600 50  0000 C CNN
F 1 "47u (NP)" V 1814 3600 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 1688 3450 50  0001 C CNN
F 3 "~" H 1650 3600 50  0001 C CNN
F 4 "C" H 1650 3600 50  0001 C CNN "Spice_Primitive"
F 5 "47u" H 1650 3600 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1650 3600 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1650 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 3600 2000 3600
Wire Wire Line
	6600 1900 6750 1900
Connection ~ 6600 1900
Wire Wire Line
	6600 3700 6750 3700
Connection ~ 6600 3700
$Comp
L Device:CP C3
U 1 1 60FAC5FB
P 1650 1200
F 0 "C3" V 1905 1200 50  0000 C CNN
F 1 "47u (NP)" V 1814 1200 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 1688 1050 50  0001 C CNN
F 3 "~" H 1650 1200 50  0001 C CNN
F 4 "C" H 1650 1200 50  0001 C CNN "Spice_Primitive"
F 5 "47u" H 1650 1200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1650 1200 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1650 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C11
U 1 1 60C7E826
P 6900 1900
F 0 "C11" V 7155 1900 50  0000 C CNN
F 1 "47u (NP)" V 7064 1900 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 6938 1750 50  0001 C CNN
F 3 "~" H 6900 1900 50  0001 C CNN
F 4 "C" H 6900 1900 50  0001 C CNN "Spice_Primitive"
F 5 "47u" H 6900 1900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6900 1900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    6900 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7050 1900 7350 1900
$Comp
L Device:CP C12
U 1 1 60C7F9C5
P 6900 3700
F 0 "C12" V 7155 3700 50  0000 C CNN
F 1 "47u (NP)" V 7064 3700 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 6938 3550 50  0001 C CNN
F 3 "~" H 6900 3700 50  0001 C CNN
F 4 "C" H 6900 3700 50  0001 C CNN "Spice_Primitive"
F 5 "47u" H 6900 3700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6900 3700 50  0001 C CNN "Spice_Netlist_Enabled"
	1    6900 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7050 3700 7350 3700
$Comp
L Connector:Conn_01x04_Female J7
U 1 1 60CDDE01
P 5550 4700
F 0 "J7" H 5578 4630 50  0000 L CNN
F 1 "Conn_01x04_Female" H 5578 4585 50  0001 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 5550 4700 50  0001 C CNN
F 3 "~" H 5550 4700 50  0001 C CNN
F 4 "J" H 5550 4700 50  0001 C CNN "Spice_Primitive"
F 5 "Conn_01x04_Female" H 5550 4700 50  0001 C CNN "Spice_Model"
F 6 "N" H 5550 4700 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5550 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J8
U 1 1 60C7CAD1
P 6600 4600
F 0 "J8" H 6628 4530 50  0000 L CNN
F 1 "Conn_01x04_Female" H 6628 4485 50  0001 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 6600 4600 50  0001 C CNN
F 3 "~" H 6600 4600 50  0001 C CNN
F 4 "J" H 6600 4600 50  0001 C CNN "Spice_Primitive"
F 5 "Conn_01x04_Female" H 6600 4600 50  0001 C CNN "Spice_Model"
F 6 "N" H 6600 4600 50  0001 C CNN "Spice_Netlist_Enabled"
	1    6600 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J11
U 1 1 60C7D60A
P 7400 4600
F 0 "J11" H 7428 4530 50  0000 L CNN
F 1 "Conn_01x04_Female" H 7428 4485 50  0001 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 7400 4600 50  0001 C CNN
F 3 "~" H 7400 4600 50  0001 C CNN
F 4 "J" H 7400 4600 50  0001 C CNN "Spice_Primitive"
F 5 "Conn_01x04_Female" H 7400 4600 50  0001 C CNN "Spice_Model"
F 6 "N" H 7400 4600 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7400 4600
	1    0    0    -1  
$EndComp
Text Label 6400 4500 2    50   ~ 0
U2a
Text Label 7200 4500 2    50   ~ 0
U2b
$EndSCHEMATC
