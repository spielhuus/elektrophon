EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
U 1 1 616C5ACD
P 9550 5950
F 0 "H1" H 9650 5996 50  0000 L CNN
F 1 "MountingHole" H 9650 5905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9550 5950 50  0001 C CNN
F 3 "~" H 9550 5950 50  0001 C CNN
	1    9550 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6097A580
P 9550 6250
F 0 "H2" H 9650 6296 50  0000 L CNN
F 1 "MountingHole" H 9650 6205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9550 6250 50  0001 C CNN
F 3 "~" H 9550 6250 50  0001 C CNN
	1    9550 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 6167263E
P 6450 7350
F 0 "#PWR015" H 6450 7100 50  0001 C CNN
F 1 "GND" H 6455 7177 50  0000 C CNN
F 2 "" H 6450 7350 50  0001 C CNN
F 3 "" H 6450 7350 50  0001 C CNN
	1    6450 7350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 6167263A
P 6200 7250
F 0 "#FLG02" H 6200 7325 50  0001 C CNN
F 1 "PWR_FLAG" H 6200 7423 50  0001 C CNN
F 2 "" H 6200 7250 50  0001 C CNN
F 3 "~" H 6200 7250 50  0001 C CNN
	1    6200 7250
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 616C5ACC
P 6450 7350
F 0 "#FLG03" H 6450 7425 50  0001 C CNN
F 1 "PWR_FLAG" H 6450 7523 50  0001 C CNN
F 2 "" H 6450 7350 50  0001 C CNN
F 3 "~" H 6450 7350 50  0001 C CNN
	1    6450 7350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 6167264B
P 10300 5950
F 0 "H3" H 10400 5996 50  0000 L CNN
F 1 "MountingHole" H 10400 5905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10300 5950 50  0001 C CNN
F 3 "~" H 10300 5950 50  0001 C CNN
	1    10300 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6167264C
P 10300 6250
F 0 "H4" H 10400 6296 50  0000 L CNN
F 1 "MountingHole" H 10400 6205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10300 6250 50  0001 C CNN
F 3 "~" H 10300 6250 50  0001 C CNN
	1    10300 6250
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J3
U 1 1 6174BCCC
P 2350 1950
AR Path="/6174BCCC" Ref="J3"  Part="1" 
AR Path="/61728A8F/6174BCCC" Ref="J?"  Part="1" 
AR Path="/61729059/6174BCCC" Ref="J?"  Part="1" 
F 0 "J3" H 2382 2275 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 2382 2184 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 2350 1950 50  0001 C CNN
F 3 "~" H 2350 1950 50  0001 C CNN
F 4 "X" H 2350 1950 50  0001 C CNN "Spice_Primitive"
F 5 "TRIGGER" H 2350 1950 50  0001 C CNN "Spice_Model"
F 6 "N" H 2350 1950 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2350 1950
	1    0    0    -1  
$EndComp
NoConn ~ 2550 2050
$Comp
L power:GND #PWR03
U 1 1 6174BCD3
P 2550 1850
AR Path="/6174BCD3" Ref="#PWR03"  Part="1" 
AR Path="/61728A8F/6174BCD3" Ref="#PWR?"  Part="1" 
AR Path="/61729059/6174BCD3" Ref="#PWR?"  Part="1" 
F 0 "#PWR03" H 2550 1600 50  0001 C CNN
F 1 "GND" V 2550 1650 50  0000 C CNN
F 2 "" H 2550 1850 50  0001 C CNN
F 3 "" H 2550 1850 50  0001 C CNN
	1    2550 1850
	0    -1   -1   0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J5
U 1 1 6175C77F
P 5150 1650
AR Path="/6175C77F" Ref="J5"  Part="1" 
AR Path="/61728A8F/6175C77F" Ref="J?"  Part="1" 
AR Path="/61729059/6175C77F" Ref="J?"  Part="1" 
F 0 "J5" H 5182 1975 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 5182 1884 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 5150 1650 50  0001 C CNN
F 3 "~" H 5150 1650 50  0001 C CNN
F 4 "X" H 5150 1650 50  0001 C CNN "Spice_Primitive"
F 5 "OUT" H 5150 1650 50  0001 C CNN "Spice_Model"
F 6 "N" H 5150 1650 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5150 1650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 6175C785
P 4950 1550
AR Path="/6175C785" Ref="#PWR09"  Part="1" 
AR Path="/61728A8F/6175C785" Ref="#PWR?"  Part="1" 
AR Path="/61729059/6175C785" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 4950 1300 50  0001 C CNN
F 1 "GND" V 4955 1422 50  0000 R CNN
F 2 "" H 4950 1550 50  0001 C CNN
F 3 "" H 4950 1550 50  0001 C CNN
	1    4950 1550
	0    1    -1   0   
$EndComp
NoConn ~ 4950 1750
$Comp
L Connector:AudioJack2_SwitchT J6
U 1 1 61763F69
P 5150 2550
AR Path="/61763F69" Ref="J6"  Part="1" 
AR Path="/61728A8F/61763F69" Ref="J?"  Part="1" 
AR Path="/61729059/61763F69" Ref="J?"  Part="1" 
F 0 "J6" H 5182 2875 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 5182 2784 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 5150 2550 50  0001 C CNN
F 3 "~" H 5150 2550 50  0001 C CNN
F 4 "X" H 5150 2550 50  0001 C CNN "Spice_Primitive"
F 5 "OUT" H 5150 2550 50  0001 C CNN "Spice_Model"
F 6 "N" H 5150 2550 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5150 2550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 61763F6F
P 4950 2450
AR Path="/61763F6F" Ref="#PWR010"  Part="1" 
AR Path="/61728A8F/61763F6F" Ref="#PWR?"  Part="1" 
AR Path="/61729059/61763F6F" Ref="#PWR?"  Part="1" 
F 0 "#PWR010" H 4950 2200 50  0001 C CNN
F 1 "GND" V 4955 2322 50  0000 R CNN
F 2 "" H 4950 2450 50  0001 C CNN
F 3 "" H 4950 2450 50  0001 C CNN
	1    4950 2450
	0    1    -1   0   
$EndComp
NoConn ~ 4950 2650
$Comp
L Device:R_POT RV?
U 1 1 6179E331
P 3450 2200
AR Path="/6166EC9B/6179E331" Ref="RV?"  Part="1" 
AR Path="/61728A8F/6179E331" Ref="RV?"  Part="1" 
AR Path="/61729059/6179E331" Ref="RV?"  Part="1" 
AR Path="/6179E331" Ref="RV2"  Part="1" 
F 0 "RV2" H 3381 2246 50  0000 R CNN
F 1 "500k" H 3381 2155 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 3450 2200 50  0001 C CNN
F 3 "~" H 3450 2200 50  0001 C CNN
F 4 "X" H 3450 2200 50  0001 C CNN "Spice_Primitive"
F 5 "POT2" H 3450 2200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3450 2200 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Alpha 9 mm Pots – Vertical" H 3450 2200 50  0001 C CNN "Description"
	1    3450 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 6179E33A
P 3450 1700
AR Path="/6166EC9B/6179E33A" Ref="RV?"  Part="1" 
AR Path="/61728A8F/6179E33A" Ref="RV?"  Part="1" 
AR Path="/61729059/6179E33A" Ref="RV?"  Part="1" 
AR Path="/6179E33A" Ref="RV1"  Part="1" 
F 0 "RV1" H 3381 1746 50  0000 R CNN
F 1 "100k" H 3381 1655 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 3450 1700 50  0001 C CNN
F 3 "~" H 3450 1700 50  0001 C CNN
F 4 "X" H 3450 1700 50  0001 C CNN "Spice_Primitive"
F 5 "POT1" H 3450 1700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3450 1700 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Alpha 9 mm Pots – Vertical" H 3450 1700 50  0001 C CNN "Description"
	1    3450 1700
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x09_Male J1
U 1 1 616C7C22
P 800 2050
F 0 "J1" H 908 2631 50  0000 C CNN
F 1 "01x09 Male" H 908 2540 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x09_P2.54mm_Vertical" H 800 2050 50  0001 C CNN
F 3 "~" H 800 2050 50  0001 C CNN
F 4 "Board to Board Connectors (2.54 mm)" H 800 2050 50  0001 C CNN "Description"
	1    800  2050
	1    0    0    -1  
$EndComp
Text Label 1000 1850 0    50   ~ 0
AA1
Text Label 1000 1950 0    50   ~ 0
AA2
Text Label 1000 2050 0    50   ~ 0
DA1
Text Label 1000 2150 0    50   ~ 0
DA2
Text Label 1000 2250 0    50   ~ 0
IN1
Text Label 1000 2350 0    50   ~ 0
OUT1
Text Label 1000 2450 0    50   ~ 0
EOE1
$Comp
L power:+5V #PWR02
U 1 1 617AD860
P 1000 1750
F 0 "#PWR02" H 1000 1600 50  0001 C CNN
F 1 "+5V" V 1015 1878 50  0000 L CNN
F 2 "" H 1000 1750 50  0001 C CNN
F 3 "" H 1000 1750 50  0001 C CNN
	1    1000 1750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 617A78FC
P 1000 1650
AR Path="/617A78FC" Ref="#PWR01"  Part="1" 
AR Path="/61728A8F/617A78FC" Ref="#PWR?"  Part="1" 
AR Path="/61729059/617A78FC" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 1000 1400 50  0001 C CNN
F 1 "GND" V 1000 1450 50  0000 C CNN
F 2 "" H 1000 1650 50  0001 C CNN
F 3 "" H 1000 1650 50  0001 C CNN
	1    1000 1650
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x07_Male J2
U 1 1 616D329C
P 800 3200
F 0 "J2" H 908 3681 50  0000 C CNN
F 1 "01x07 Male" H 908 3590 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x07_P2.54mm_Vertical" H 800 3200 50  0001 C CNN
F 3 "~" H 800 3200 50  0001 C CNN
F 4 "Board to Board Connectors (2.54 mm)" H 800 3200 50  0001 C CNN "Description"
	1    800  3200
	1    0    0    -1  
$EndComp
Text Label 1000 2900 0    50   ~ 0
AB1
Text Label 1000 3000 0    50   ~ 0
AB2
Text Label 1000 3100 0    50   ~ 0
DB1
Text Label 1000 3200 0    50   ~ 0
DB2
Text Label 1000 3300 0    50   ~ 0
IN2
Text Label 1000 3400 0    50   ~ 0
OUT2
Text Label 1000 3500 0    50   ~ 0
EOE2
Text Label 2550 1950 0    50   ~ 0
IN1
Text Label 3300 1700 2    50   ~ 0
AA1
Wire Wire Line
	3300 1700 3300 1850
Wire Wire Line
	3300 1850 3450 1850
Text Label 3600 1700 0    50   ~ 0
AA2
Text Label 3300 2200 2    50   ~ 0
DA1
Wire Wire Line
	3300 2200 3300 2350
Wire Wire Line
	3300 2350 3450 2350
Text Label 3600 2200 0    50   ~ 0
DA2
$Comp
L Device:R R1
U 1 1 616F2599
P 4350 1650
F 0 "R1" V 4143 1650 50  0000 C CNN
F 1 "2.2k" V 4234 1650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4280 1650 50  0001 C CNN
F 3 "~" H 4350 1650 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 4350 1650 50  0001 C CNN "Description"
	1    4350 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 616F2962
P 4550 1850
F 0 "R5" H 4480 1804 50  0000 R CNN
F 1 "2.2k" H 4480 1895 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4480 1850 50  0001 C CNN
F 3 "~" H 4550 1850 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 4550 1850 50  0001 C CNN "Description"
	1    4550 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 1650 4550 1650
Wire Wire Line
	4550 1700 4550 1650
Connection ~ 4550 1650
Wire Wire Line
	4550 1650 4950 1650
$Comp
L power:GND #PWR05
U 1 1 616F3A27
P 4550 2000
F 0 "#PWR05" H 4550 1750 50  0001 C CNN
F 1 "GND" H 4555 1827 50  0000 C CNN
F 2 "" H 4550 2000 50  0001 C CNN
F 3 "" H 4550 2000 50  0001 C CNN
	1    4550 2000
	1    0    0    -1  
$EndComp
Text Label 4200 1650 2    50   ~ 0
OUT1
$Comp
L Device:R R2
U 1 1 616FAB73
P 4350 2550
F 0 "R2" V 4143 2550 50  0000 C CNN
F 1 "2.2k" V 4234 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4280 2550 50  0001 C CNN
F 3 "~" H 4350 2550 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 4350 2550 50  0001 C CNN "Description"
	1    4350 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 616FAB79
P 4550 2750
F 0 "R6" H 4480 2704 50  0000 R CNN
F 1 "2.2k" H 4480 2795 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4480 2750 50  0001 C CNN
F 3 "~" H 4550 2750 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 4550 2750 50  0001 C CNN "Description"
	1    4550 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 2550 4550 2550
Wire Wire Line
	4550 2600 4550 2550
Connection ~ 4550 2550
Wire Wire Line
	4550 2550 4950 2550
$Comp
L power:GND #PWR06
U 1 1 616FAB83
P 4550 2900
F 0 "#PWR06" H 4550 2650 50  0001 C CNN
F 1 "GND" H 4555 2727 50  0000 C CNN
F 2 "" H 4550 2900 50  0001 C CNN
F 3 "" H 4550 2900 50  0001 C CNN
	1    4550 2900
	1    0    0    -1  
$EndComp
Text Label 4200 2550 2    50   ~ 0
EOE1
$Comp
L Connector:AudioJack2_SwitchT J4
U 1 1 61705071
P 2350 4050
AR Path="/61705071" Ref="J4"  Part="1" 
AR Path="/61728A8F/61705071" Ref="J?"  Part="1" 
AR Path="/61729059/61705071" Ref="J?"  Part="1" 
F 0 "J4" H 2382 4375 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 2382 4284 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 2350 4050 50  0001 C CNN
F 3 "~" H 2350 4050 50  0001 C CNN
F 4 "X" H 2350 4050 50  0001 C CNN "Spice_Primitive"
F 5 "TRIGGER" H 2350 4050 50  0001 C CNN "Spice_Model"
F 6 "N" H 2350 4050 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2350 4050
	1    0    0    -1  
$EndComp
NoConn ~ 2550 4150
$Comp
L power:GND #PWR04
U 1 1 61705078
P 2550 3950
AR Path="/61705078" Ref="#PWR04"  Part="1" 
AR Path="/61728A8F/61705078" Ref="#PWR?"  Part="1" 
AR Path="/61729059/61705078" Ref="#PWR?"  Part="1" 
F 0 "#PWR04" H 2550 3700 50  0001 C CNN
F 1 "GND" V 2550 3750 50  0000 C CNN
F 2 "" H 2550 3950 50  0001 C CNN
F 3 "" H 2550 3950 50  0001 C CNN
	1    2550 3950
	0    -1   -1   0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J7
U 1 1 61705081
P 5150 3750
AR Path="/61705081" Ref="J7"  Part="1" 
AR Path="/61728A8F/61705081" Ref="J?"  Part="1" 
AR Path="/61729059/61705081" Ref="J?"  Part="1" 
F 0 "J7" H 5182 4075 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 5182 3984 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 5150 3750 50  0001 C CNN
F 3 "~" H 5150 3750 50  0001 C CNN
F 4 "X" H 5150 3750 50  0001 C CNN "Spice_Primitive"
F 5 "OUT" H 5150 3750 50  0001 C CNN "Spice_Model"
F 6 "N" H 5150 3750 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5150 3750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 61705087
P 4950 3650
AR Path="/61705087" Ref="#PWR011"  Part="1" 
AR Path="/61728A8F/61705087" Ref="#PWR?"  Part="1" 
AR Path="/61729059/61705087" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 4950 3400 50  0001 C CNN
F 1 "GND" V 4955 3522 50  0000 R CNN
F 2 "" H 4950 3650 50  0001 C CNN
F 3 "" H 4950 3650 50  0001 C CNN
	1    4950 3650
	0    1    -1   0   
$EndComp
NoConn ~ 4950 3850
$Comp
L Connector:AudioJack2_SwitchT J8
U 1 1 61705091
P 5150 4650
AR Path="/61705091" Ref="J8"  Part="1" 
AR Path="/61728A8F/61705091" Ref="J?"  Part="1" 
AR Path="/61729059/61705091" Ref="J?"  Part="1" 
F 0 "J8" H 5182 4975 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 5182 4884 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 5150 4650 50  0001 C CNN
F 3 "~" H 5150 4650 50  0001 C CNN
F 4 "X" H 5150 4650 50  0001 C CNN "Spice_Primitive"
F 5 "OUT" H 5150 4650 50  0001 C CNN "Spice_Model"
F 6 "N" H 5150 4650 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5150 4650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 61705097
P 4950 4550
AR Path="/61705097" Ref="#PWR012"  Part="1" 
AR Path="/61728A8F/61705097" Ref="#PWR?"  Part="1" 
AR Path="/61729059/61705097" Ref="#PWR?"  Part="1" 
F 0 "#PWR012" H 4950 4300 50  0001 C CNN
F 1 "GND" V 4955 4422 50  0000 R CNN
F 2 "" H 4950 4550 50  0001 C CNN
F 3 "" H 4950 4550 50  0001 C CNN
	1    4950 4550
	0    1    -1   0   
$EndComp
NoConn ~ 4950 4750
$Comp
L Device:R_POT RV?
U 1 1 617050A1
P 3450 4300
AR Path="/6166EC9B/617050A1" Ref="RV?"  Part="1" 
AR Path="/61728A8F/617050A1" Ref="RV?"  Part="1" 
AR Path="/61729059/617050A1" Ref="RV?"  Part="1" 
AR Path="/617050A1" Ref="RV4"  Part="1" 
F 0 "RV4" H 3381 4346 50  0000 R CNN
F 1 "500k" H 3381 4255 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 3450 4300 50  0001 C CNN
F 3 "~" H 3450 4300 50  0001 C CNN
F 4 "X" H 3450 4300 50  0001 C CNN "Spice_Primitive"
F 5 "POT2" H 3450 4300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3450 4300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Alpha 9 mm Pots – Vertical" H 3450 4300 50  0001 C CNN "Description"
	1    3450 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 617050AA
P 3450 3800
AR Path="/6166EC9B/617050AA" Ref="RV?"  Part="1" 
AR Path="/61728A8F/617050AA" Ref="RV?"  Part="1" 
AR Path="/61729059/617050AA" Ref="RV?"  Part="1" 
AR Path="/617050AA" Ref="RV3"  Part="1" 
F 0 "RV3" H 3381 3846 50  0000 R CNN
F 1 "100k" H 3381 3755 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 3450 3800 50  0001 C CNN
F 3 "~" H 3450 3800 50  0001 C CNN
F 4 "X" H 3450 3800 50  0001 C CNN "Spice_Primitive"
F 5 "POT1" H 3450 3800 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3450 3800 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Alpha 9 mm Pots – Vertical" H 3450 3800 50  0001 C CNN "Description"
	1    3450 3800
	0    1    1    0   
$EndComp
Text Label 2550 4050 0    50   ~ 0
IN2
Text Label 3300 3800 2    50   ~ 0
AB1
Wire Wire Line
	3300 3800 3300 3950
Wire Wire Line
	3300 3950 3450 3950
Text Label 3600 3800 0    50   ~ 0
AB2
Text Label 3300 4300 2    50   ~ 0
DB1
Wire Wire Line
	3300 4300 3300 4450
Wire Wire Line
	3300 4450 3450 4450
Text Label 3600 4300 0    50   ~ 0
DB2
$Comp
L Device:R R3
U 1 1 617050B9
P 4350 3750
F 0 "R3" V 4143 3750 50  0000 C CNN
F 1 "2.2k" V 4234 3750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4280 3750 50  0001 C CNN
F 3 "~" H 4350 3750 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 4350 3750 50  0001 C CNN "Description"
	1    4350 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 617050BF
P 4550 3950
F 0 "R7" H 4480 3904 50  0000 R CNN
F 1 "2.2k" H 4480 3995 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4480 3950 50  0001 C CNN
F 3 "~" H 4550 3950 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 4550 3950 50  0001 C CNN "Description"
	1    4550 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 3750 4550 3750
Wire Wire Line
	4550 3800 4550 3750
Connection ~ 4550 3750
Wire Wire Line
	4550 3750 4950 3750
$Comp
L power:GND #PWR07
U 1 1 617050C9
P 4550 4100
F 0 "#PWR07" H 4550 3850 50  0001 C CNN
F 1 "GND" H 4555 3927 50  0000 C CNN
F 2 "" H 4550 4100 50  0001 C CNN
F 3 "" H 4550 4100 50  0001 C CNN
	1    4550 4100
	1    0    0    -1  
$EndComp
Text Label 4200 3750 2    50   ~ 0
OUT2
$Comp
L Device:R R4
U 1 1 617050D0
P 4350 4650
F 0 "R4" V 4143 4650 50  0000 C CNN
F 1 "2.2k" V 4234 4650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4280 4650 50  0001 C CNN
F 3 "~" H 4350 4650 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 4350 4650 50  0001 C CNN "Description"
	1    4350 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 617050D6
P 4550 4850
F 0 "R8" H 4480 4804 50  0000 R CNN
F 1 "2.2k" H 4480 4895 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4480 4850 50  0001 C CNN
F 3 "~" H 4550 4850 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" H 4550 4850 50  0001 C CNN "Description"
	1    4550 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 4650 4550 4650
Wire Wire Line
	4550 4700 4550 4650
Connection ~ 4550 4650
Wire Wire Line
	4550 4650 4950 4650
$Comp
L power:GND #PWR08
U 1 1 617050E0
P 4550 5000
F 0 "#PWR08" H 4550 4750 50  0001 C CNN
F 1 "GND" H 4555 4827 50  0000 C CNN
F 2 "" H 4550 5000 50  0001 C CNN
F 3 "" H 4550 5000 50  0001 C CNN
	1    4550 5000
	1    0    0    -1  
$EndComp
Text Label 4200 4650 2    50   ~ 0
EOE2
$Comp
L Device:LED D3
U 1 1 5FEF7875
P 7550 2050
F 0 "D3" V 7650 1800 50  0000 C CNN
F 1 "LED (Yellow)" V 7550 1800 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 7550 2050 50  0001 C CNN
F 3 "~" H 7550 2050 50  0001 C CNN
F 4 "D" H 7550 2050 50  0001 C CNN "Spice_Primitive"
F 5 "LED2" H 7550 2050 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7550 2050 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LED 3mm low current" V 7550 2050 50  0001 C CNN "Description"
	1    7550 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 60A735B0
P 7550 2350
F 0 "#PWR017" H 7550 2100 50  0001 C CNN
F 1 "GND" H 7555 2177 50  0000 C CNN
F 2 "" H 7550 2350 50  0001 C CNN
F 3 "" H 7550 2350 50  0001 C CNN
	1    7550 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 60A7522A
P 7550 1350
F 0 "R11" H 7620 1396 50  0000 L CNN
F 1 "5.1k" H 7620 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7480 1350 50  0001 C CNN
F 3 "~" H 7550 1350 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 7550 1350 50  0001 C CNN "Description"
	1    7550 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 60A866E8
P 7550 1200
F 0 "#PWR016" H 7550 1050 50  0001 C CNN
F 1 "+5V" H 7565 1373 50  0000 C CNN
F 2 "" H 7550 1200 50  0001 C CNN
F 3 "" H 7550 1200 50  0001 C CNN
	1    7550 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 60A86F88
P 7000 1700
F 0 "R9" V 6793 1700 50  0000 C CNN
F 1 "100k" V 6884 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6930 1700 50  0001 C CNN
F 3 "~" H 7000 1700 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" V 7000 1700 50  0001 C CNN "Description"
	1    7000 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 1700 7250 1700
Wire Wire Line
	7250 1900 7250 1700
Text Label 6850 1700 2    50   ~ 0
IN1
Wire Wire Line
	7550 2200 7550 2250
Wire Wire Line
	7250 2250 7550 2250
Connection ~ 7550 2250
Wire Wire Line
	7550 2250 7550 2350
Wire Wire Line
	7250 2250 7250 2200
$Comp
L Device:LED D7
U 1 1 60AE943D
P 9050 2050
F 0 "D7" V 9150 1800 50  0000 C CNN
F 1 "LED (Red)" V 9050 1800 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9050 2050 50  0001 C CNN
F 3 "~" H 9050 2050 50  0001 C CNN
F 4 "D" H 9050 2050 50  0001 C CNN "Spice_Primitive"
F 5 "LED2" H 9050 2050 50  0001 C CNN "Spice_Model"
F 6 "Y" H 9050 2050 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LED 3mm low current" V 9050 2050 50  0001 C CNN "Description"
	1    9050 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 60AE9449
P 9050 2350
F 0 "#PWR021" H 9050 2100 50  0001 C CNN
F 1 "GND" H 9055 2177 50  0000 C CNN
F 2 "" H 9050 2350 50  0001 C CNN
F 3 "" H 9050 2350 50  0001 C CNN
	1    9050 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 60AE944F
P 9050 1350
F 0 "R15" H 9120 1396 50  0000 L CNN
F 1 "5.1k" H 9120 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8980 1350 50  0001 C CNN
F 3 "~" H 9050 1350 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 9050 1350 50  0001 C CNN "Description"
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 60AE9455
P 9050 1200
F 0 "#PWR020" H 9050 1050 50  0001 C CNN
F 1 "+5V" H 9065 1373 50  0000 C CNN
F 2 "" H 9050 1200 50  0001 C CNN
F 3 "" H 9050 1200 50  0001 C CNN
	1    9050 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 60AE945B
P 8500 1700
F 0 "R13" V 8293 1700 50  0000 C CNN
F 1 "100k" V 8384 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8430 1700 50  0001 C CNN
F 3 "~" H 8500 1700 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" V 8500 1700 50  0001 C CNN "Description"
	1    8500 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 1700 8750 1700
Wire Wire Line
	8750 1900 8750 1700
Text Label 8350 1700 2    50   ~ 0
OUT1
Wire Wire Line
	9050 2200 9050 2250
Wire Wire Line
	8750 2250 9050 2250
Connection ~ 9050 2250
Wire Wire Line
	9050 2250 9050 2350
Wire Wire Line
	8750 2250 8750 2200
$Comp
L Device:LED D11
U 1 1 60AF092F
P 10500 2050
F 0 "D11" V 10600 1800 50  0000 C CNN
F 1 "LED (Red)" V 10500 1800 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 10500 2050 50  0001 C CNN
F 3 "~" H 10500 2050 50  0001 C CNN
F 4 "D" H 10500 2050 50  0001 C CNN "Spice_Primitive"
F 5 "LED2" H 10500 2050 50  0001 C CNN "Spice_Model"
F 6 "Y" H 10500 2050 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LED 3mm low current" V 10500 2050 50  0001 C CNN "Description"
	1    10500 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 60AF093B
P 10500 2350
F 0 "#PWR025" H 10500 2100 50  0001 C CNN
F 1 "GND" H 10505 2177 50  0000 C CNN
F 2 "" H 10500 2350 50  0001 C CNN
F 3 "" H 10500 2350 50  0001 C CNN
	1    10500 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 60AF0941
P 10500 1350
F 0 "R19" H 10570 1396 50  0000 L CNN
F 1 "5.1k" H 10570 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 10430 1350 50  0001 C CNN
F 3 "~" H 10500 1350 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 10500 1350 50  0001 C CNN "Description"
	1    10500 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR024
U 1 1 60AF0947
P 10500 1200
F 0 "#PWR024" H 10500 1050 50  0001 C CNN
F 1 "+5V" H 10515 1373 50  0000 C CNN
F 2 "" H 10500 1200 50  0001 C CNN
F 3 "" H 10500 1200 50  0001 C CNN
	1    10500 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 60AF094D
P 9950 1700
F 0 "R17" V 9743 1700 50  0000 C CNN
F 1 "100k" V 9834 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9880 1700 50  0001 C CNN
F 3 "~" H 9950 1700 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" V 9950 1700 50  0001 C CNN "Description"
	1    9950 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	10100 1700 10200 1700
Wire Wire Line
	10200 1900 10200 1700
Text Label 9800 1700 2    50   ~ 0
EOE1
Wire Wire Line
	10500 2200 10500 2250
Wire Wire Line
	10200 2250 10500 2250
Connection ~ 10500 2250
Wire Wire Line
	10500 2250 10500 2350
Wire Wire Line
	10200 2250 10200 2200
$Comp
L Diode:1N4148W D9
U 1 1 60AACD5E
P 10200 2050
F 0 "D9" V 10100 1700 50  0000 L CNN
F 1 "1N4148W" V 10200 1600 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 10200 1875 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 10200 2050 50  0001 C CNN
F 4 "D" H 10200 2050 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 10200 2050 50  0001 C CNN "Spice_Model"
F 6 "Y" H 10200 2050 50  0001 C CNN "Spice_Netlist_Enabled"
	1    10200 2050
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D5
U 1 1 60AB3CED
P 8750 2050
F 0 "D5" V 8650 1700 50  0000 L CNN
F 1 "1N4148W" V 8750 1600 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 8750 1875 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 8750 2050 50  0001 C CNN
F 4 "D" H 8750 2050 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 8750 2050 50  0001 C CNN "Spice_Model"
F 6 "Y" H 8750 2050 50  0001 C CNN "Spice_Netlist_Enabled"
	1    8750 2050
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D1
U 1 1 60AB44D3
P 7250 2050
F 0 "D1" V 7150 1700 50  0000 L CNN
F 1 "1N4148W" V 7250 1600 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 7250 1875 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 7250 2050 50  0001 C CNN
F 4 "D" H 7250 2050 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 7250 2050 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7250 2050 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7250 2050
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q1
U 1 1 60AC31E4
P 7450 1700
F 0 "Q1" H 7641 1746 50  0000 L CNN
F 1 "MMBT3904" H 7641 1655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7650 1625 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 7450 1700 50  0001 L CNN
F 4 "Q" H 7450 1700 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 7450 1700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7450 1700 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3 1 2" H 7450 1700 50  0001 C CNN "Spice_Node_Sequence"
	1    7450 1700
	1    0    0    -1  
$EndComp
Connection ~ 7250 1700
$Comp
L Transistor_BJT:MMBT3904 Q3
U 1 1 60AD3277
P 8950 1700
F 0 "Q3" H 9141 1746 50  0000 L CNN
F 1 "MMBT3904" H 9141 1655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9150 1625 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 8950 1700 50  0001 L CNN
F 4 "Q" H 8950 1700 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 8950 1700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 8950 1700 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3 1 2" H 8950 1700 50  0001 C CNN "Spice_Node_Sequence"
	1    8950 1700
	1    0    0    -1  
$EndComp
Connection ~ 8750 1700
$Comp
L Transistor_BJT:MMBT3904 Q5
U 1 1 60AD3DD5
P 10400 1700
F 0 "Q5" H 10591 1746 50  0000 L CNN
F 1 "MMBT3904" H 10591 1655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10600 1625 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 10400 1700 50  0001 L CNN
F 4 "Q" H 10400 1700 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 10400 1700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 10400 1700 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3 1 2" H 10400 1700 50  0001 C CNN "Spice_Node_Sequence"
	1    10400 1700
	1    0    0    -1  
$EndComp
Connection ~ 10200 1700
$Comp
L Device:LED D4
U 1 1 61754B97
P 7550 3850
F 0 "D4" V 7650 3600 50  0000 C CNN
F 1 "LED (Yellow)" V 7550 3600 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 7550 3850 50  0001 C CNN
F 3 "~" H 7550 3850 50  0001 C CNN
F 4 "D" H 7550 3850 50  0001 C CNN "Spice_Primitive"
F 5 "LED2" H 7550 3850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7550 3850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LED 3mm low current" V 7550 3850 50  0001 C CNN "Description"
	1    7550 3850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 61754B9D
P 7550 4150
F 0 "#PWR019" H 7550 3900 50  0001 C CNN
F 1 "GND" H 7555 3977 50  0000 C CNN
F 2 "" H 7550 4150 50  0001 C CNN
F 3 "" H 7550 4150 50  0001 C CNN
	1    7550 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 61754BA3
P 7550 3150
F 0 "R12" H 7620 3196 50  0000 L CNN
F 1 "5.1k" H 7620 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7480 3150 50  0001 C CNN
F 3 "~" H 7550 3150 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 7550 3150 50  0001 C CNN "Description"
	1    7550 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 61754BA9
P 7550 3000
F 0 "#PWR018" H 7550 2850 50  0001 C CNN
F 1 "+5V" H 7565 3173 50  0000 C CNN
F 2 "" H 7550 3000 50  0001 C CNN
F 3 "" H 7550 3000 50  0001 C CNN
	1    7550 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 61754BAF
P 7000 3500
F 0 "R10" V 6793 3500 50  0000 C CNN
F 1 "100k" V 6884 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6930 3500 50  0001 C CNN
F 3 "~" H 7000 3500 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" V 7000 3500 50  0001 C CNN "Description"
	1    7000 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 3500 7250 3500
Wire Wire Line
	7250 3700 7250 3500
Text Label 6850 3500 2    50   ~ 0
IN2
Wire Wire Line
	7550 4000 7550 4050
Wire Wire Line
	7250 4050 7550 4050
Connection ~ 7550 4050
Wire Wire Line
	7550 4050 7550 4150
Wire Wire Line
	7250 4050 7250 4000
$Comp
L Device:LED D8
U 1 1 61754BC1
P 9050 3850
F 0 "D8" V 9150 3600 50  0000 C CNN
F 1 "LED (Red)" V 9050 3600 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9050 3850 50  0001 C CNN
F 3 "~" H 9050 3850 50  0001 C CNN
F 4 "D" H 9050 3850 50  0001 C CNN "Spice_Primitive"
F 5 "LED2" H 9050 3850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 9050 3850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LED 3mm low current" V 9050 3850 50  0001 C CNN "Description"
	1    9050 3850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 61754BC7
P 9050 4150
F 0 "#PWR023" H 9050 3900 50  0001 C CNN
F 1 "GND" H 9055 3977 50  0000 C CNN
F 2 "" H 9050 4150 50  0001 C CNN
F 3 "" H 9050 4150 50  0001 C CNN
	1    9050 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 61754BCD
P 9050 3150
F 0 "R16" H 9120 3196 50  0000 L CNN
F 1 "5.1k" H 9120 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8980 3150 50  0001 C CNN
F 3 "~" H 9050 3150 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 9050 3150 50  0001 C CNN "Description"
	1    9050 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 61754BD3
P 9050 3000
F 0 "#PWR022" H 9050 2850 50  0001 C CNN
F 1 "+5V" H 9065 3173 50  0000 C CNN
F 2 "" H 9050 3000 50  0001 C CNN
F 3 "" H 9050 3000 50  0001 C CNN
	1    9050 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 61754BD9
P 8500 3500
F 0 "R14" V 8293 3500 50  0000 C CNN
F 1 "100k" V 8384 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8430 3500 50  0001 C CNN
F 3 "~" H 8500 3500 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" V 8500 3500 50  0001 C CNN "Description"
	1    8500 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 3500 8750 3500
Wire Wire Line
	8750 3700 8750 3500
Text Label 8350 3500 2    50   ~ 0
OUT2
Wire Wire Line
	9050 4000 9050 4050
Wire Wire Line
	8750 4050 9050 4050
Connection ~ 9050 4050
Wire Wire Line
	9050 4050 9050 4150
Wire Wire Line
	8750 4050 8750 4000
$Comp
L Device:LED D12
U 1 1 61754BEB
P 10500 3850
F 0 "D12" V 10600 3600 50  0000 C CNN
F 1 "LED (Red)" V 10500 3600 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 10500 3850 50  0001 C CNN
F 3 "~" H 10500 3850 50  0001 C CNN
F 4 "D" H 10500 3850 50  0001 C CNN "Spice_Primitive"
F 5 "LED2" H 10500 3850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 10500 3850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LED 3mm low current" V 10500 3850 50  0001 C CNN "Description"
	1    10500 3850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR027
U 1 1 61754BF1
P 10500 4150
F 0 "#PWR027" H 10500 3900 50  0001 C CNN
F 1 "GND" H 10505 3977 50  0000 C CNN
F 2 "" H 10500 4150 50  0001 C CNN
F 3 "" H 10500 4150 50  0001 C CNN
	1    10500 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 61754BF7
P 10500 3150
F 0 "R20" H 10570 3196 50  0000 L CNN
F 1 "5.1k" H 10570 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 10430 3150 50  0001 C CNN
F 3 "~" H 10500 3150 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" H 10500 3150 50  0001 C CNN "Description"
	1    10500 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR026
U 1 1 61754BFD
P 10500 3000
F 0 "#PWR026" H 10500 2850 50  0001 C CNN
F 1 "+5V" H 10515 3173 50  0000 C CNN
F 2 "" H 10500 3000 50  0001 C CNN
F 3 "" H 10500 3000 50  0001 C CNN
	1    10500 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 61754C03
P 9950 3500
F 0 "R18" V 9743 3500 50  0000 C CNN
F 1 "100k" V 9834 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9880 3500 50  0001 C CNN
F 3 "~" H 9950 3500 50  0001 C CNN
F 4 "Thick Film Resistors - SMD (0805)" V 9950 3500 50  0001 C CNN "Description"
	1    9950 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	10100 3500 10200 3500
Wire Wire Line
	10200 3700 10200 3500
Text Label 9800 3500 2    50   ~ 0
EOE2
Wire Wire Line
	10500 4000 10500 4050
Wire Wire Line
	10200 4050 10500 4050
Connection ~ 10500 4050
Wire Wire Line
	10500 4050 10500 4150
Wire Wire Line
	10200 4050 10200 4000
$Comp
L Diode:1N4148W D10
U 1 1 61754C14
P 10200 3850
F 0 "D10" V 10100 3500 50  0000 L CNN
F 1 "1N4148W" V 10200 3400 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 10200 3675 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 10200 3850 50  0001 C CNN
F 4 "D" H 10200 3850 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 10200 3850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 10200 3850 50  0001 C CNN "Spice_Netlist_Enabled"
	1    10200 3850
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D6
U 1 1 61754C1D
P 8750 3850
F 0 "D6" V 8650 3500 50  0000 L CNN
F 1 "1N4148W" V 8750 3400 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 8750 3675 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 8750 3850 50  0001 C CNN
F 4 "D" H 8750 3850 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 8750 3850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 8750 3850 50  0001 C CNN "Spice_Netlist_Enabled"
	1    8750 3850
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D2
U 1 1 61754C26
P 7250 3850
F 0 "D2" V 7150 3500 50  0000 L CNN
F 1 "1N4148W" V 7250 3400 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 7250 3675 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 7250 3850 50  0001 C CNN
F 4 "D" H 7250 3850 50  0001 C CNN "Spice_Primitive"
F 5 "D1N4148" H 7250 3850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7250 3850 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7250 3850
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q2
U 1 1 61754C30
P 7450 3500
F 0 "Q2" H 7641 3546 50  0000 L CNN
F 1 "MMBT3904" H 7641 3455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7650 3425 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 7450 3500 50  0001 L CNN
F 4 "Q" H 7450 3500 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 7450 3500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7450 3500 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3 1 2" H 7450 3500 50  0001 C CNN "Spice_Node_Sequence"
	1    7450 3500
	1    0    0    -1  
$EndComp
Connection ~ 7250 3500
$Comp
L Transistor_BJT:MMBT3904 Q4
U 1 1 61754C3B
P 8950 3500
F 0 "Q4" H 9141 3546 50  0000 L CNN
F 1 "MMBT3904" H 9141 3455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9150 3425 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 8950 3500 50  0001 L CNN
F 4 "Q" H 8950 3500 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 8950 3500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 8950 3500 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3 1 2" H 8950 3500 50  0001 C CNN "Spice_Node_Sequence"
	1    8950 3500
	1    0    0    -1  
$EndComp
Connection ~ 8750 3500
$Comp
L Transistor_BJT:MMBT3904 Q6
U 1 1 61754C46
P 10400 3500
F 0 "Q6" H 10591 3546 50  0000 L CNN
F 1 "MMBT3904" H 10591 3455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10600 3425 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 10400 3500 50  0001 L CNN
F 4 "Q" H 10400 3500 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 10400 3500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 10400 3500 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3 1 2" H 10400 3500 50  0001 C CNN "Spice_Node_Sequence"
	1    10400 3500
	1    0    0    -1  
$EndComp
Connection ~ 10200 3500
$Comp
L power:+5V #PWR0101
U 1 1 6178A32A
P 6200 7250
F 0 "#PWR0101" H 6200 7100 50  0001 C CNN
F 1 "+5V" H 6215 7423 50  0000 C CNN
F 2 "" H 6200 7250 50  0001 C CNN
F 3 "" H 6200 7250 50  0001 C CNN
	1    6200 7250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
