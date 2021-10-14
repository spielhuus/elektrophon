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
U 1 1 6097A217
P 9550 5800
F 0 "H1" H 9650 5846 50  0000 L CNN
F 1 "MountingHole" H 9650 5755 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9550 5800 50  0001 C CNN
F 3 "~" H 9550 5800 50  0001 C CNN
	1    9550 5800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6097A580
P 9550 6100
F 0 "H2" H 9650 6146 50  0000 L CNN
F 1 "MountingHole" H 9650 6055 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9550 6100 50  0001 C CNN
F 3 "~" H 9550 6100 50  0001 C CNN
	1    9550 6100
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR04
U 1 1 6167263C
P 5950 7100
F 0 "#PWR04" H 5950 6950 50  0001 C CNN
F 1 "+15V" H 5965 7273 50  0000 C CNN
F 2 "" H 5950 7100 50  0001 C CNN
F 3 "" H 5950 7100 50  0001 C CNN
	1    5950 7100
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR05
U 1 1 6167263D
P 6200 7100
F 0 "#PWR05" H 6200 7200 50  0001 C CNN
F 1 "-15V" H 6215 7273 50  0000 C CNN
F 2 "" H 6200 7100 50  0001 C CNN
F 3 "" H 6200 7100 50  0001 C CNN
	1    6200 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6167263E
P 6450 7200
F 0 "#PWR06" H 6450 6950 50  0001 C CNN
F 1 "GND" H 6455 7027 50  0000 C CNN
F 2 "" H 6450 7200 50  0001 C CNN
F 3 "" H 6450 7200 50  0001 C CNN
	1    6450 7200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5F737716
P 5950 7100
F 0 "#FLG01" H 5950 7175 50  0001 C CNN
F 1 "PWR_FLAG" H 5950 7273 50  0001 C CNN
F 2 "" H 5950 7100 50  0001 C CNN
F 3 "~" H 5950 7100 50  0001 C CNN
	1    5950 7100
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 6167263A
P 6200 7100
F 0 "#FLG02" H 6200 7175 50  0001 C CNN
F 1 "PWR_FLAG" H 6200 7273 50  0001 C CNN
F 2 "" H 6200 7100 50  0001 C CNN
F 3 "~" H 6200 7100 50  0001 C CNN
	1    6200 7100
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5F737FC5
P 6450 7200
F 0 "#FLG03" H 6450 7275 50  0001 C CNN
F 1 "PWR_FLAG" H 6450 7373 50  0001 C CNN
F 2 "" H 6450 7200 50  0001 C CNN
F 3 "~" H 6450 7200 50  0001 C CNN
	1    6450 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 6167264B
P 10300 5800
F 0 "H3" H 10400 5846 50  0000 L CNN
F 1 "MountingHole" H 10400 5755 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10300 5800 50  0001 C CNN
F 3 "~" H 10300 5800 50  0001 C CNN
	1    10300 5800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6167264C
P 10300 6100
F 0 "H4" H 10400 6146 50  0000 L CNN
F 1 "MountingHole" H 10400 6055 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10300 6100 50  0001 C CNN
F 3 "~" H 10300 6100 50  0001 C CNN
	1    10300 6100
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J1
U 1 1 6174BCCC
P 1750 3400
AR Path="/6174BCCC" Ref="J1"  Part="1" 
AR Path="/61728A8F/6174BCCC" Ref="J?"  Part="1" 
AR Path="/61729059/6174BCCC" Ref="J?"  Part="1" 
F 0 "J1" H 1782 3725 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 1782 3634 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 1750 3400 50  0001 C CNN
F 3 "~" H 1750 3400 50  0001 C CNN
F 4 "X" H 1750 3400 50  0001 C CNN "Spice_Primitive"
F 5 "TRIGGER" H 1750 3400 50  0001 C CNN "Spice_Model"
F 6 "N" H 1750 3400 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1750 3400
	1    0    0    -1  
$EndComp
NoConn ~ 1950 3500
$Comp
L power:GND #PWR01
U 1 1 6174BCD3
P 1950 3300
AR Path="/6174BCD3" Ref="#PWR01"  Part="1" 
AR Path="/61728A8F/6174BCD3" Ref="#PWR?"  Part="1" 
AR Path="/61729059/6174BCD3" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 1950 3050 50  0001 C CNN
F 1 "GND" V 1950 3100 50  0000 C CNN
F 2 "" H 1950 3300 50  0001 C CNN
F 3 "" H 1950 3300 50  0001 C CNN
	1    1950 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1950 3400 2400 3400
$Comp
L Connector:AudioJack2_SwitchT J2
U 1 1 6175C77F
P 4250 3100
AR Path="/6175C77F" Ref="J2"  Part="1" 
AR Path="/61728A8F/6175C77F" Ref="J?"  Part="1" 
AR Path="/61729059/6175C77F" Ref="J?"  Part="1" 
F 0 "J2" H 4282 3425 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 4282 3334 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 4250 3100 50  0001 C CNN
F 3 "~" H 4250 3100 50  0001 C CNN
F 4 "X" H 4250 3100 50  0001 C CNN "Spice_Primitive"
F 5 "OUT" H 4250 3100 50  0001 C CNN "Spice_Model"
F 6 "N" H 4250 3100 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4250 3100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6175C785
P 4050 3000
AR Path="/6175C785" Ref="#PWR02"  Part="1" 
AR Path="/61728A8F/6175C785" Ref="#PWR?"  Part="1" 
AR Path="/61729059/6175C785" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 4050 2750 50  0001 C CNN
F 1 "GND" V 4055 2872 50  0000 R CNN
F 2 "" H 4050 3000 50  0001 C CNN
F 3 "" H 4050 3000 50  0001 C CNN
	1    4050 3000
	0    1    -1   0   
$EndComp
NoConn ~ 4050 3200
Wire Wire Line
	3400 3100 4050 3100
$Comp
L Connector:AudioJack2_SwitchT J3
U 1 1 61763F69
P 4250 3700
AR Path="/61763F69" Ref="J3"  Part="1" 
AR Path="/61728A8F/61763F69" Ref="J?"  Part="1" 
AR Path="/61729059/61763F69" Ref="J?"  Part="1" 
F 0 "J3" H 4282 4025 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 4282 3934 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 4250 3700 50  0001 C CNN
F 3 "~" H 4250 3700 50  0001 C CNN
F 4 "X" H 4250 3700 50  0001 C CNN "Spice_Primitive"
F 5 "OUT" H 4250 3700 50  0001 C CNN "Spice_Model"
F 6 "N" H 4250 3700 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4250 3700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 61763F6F
P 4050 3600
AR Path="/61763F6F" Ref="#PWR03"  Part="1" 
AR Path="/61728A8F/61763F6F" Ref="#PWR?"  Part="1" 
AR Path="/61729059/61763F6F" Ref="#PWR?"  Part="1" 
F 0 "#PWR03" H 4050 3350 50  0001 C CNN
F 1 "GND" V 4055 3472 50  0000 R CNN
F 2 "" H 4050 3600 50  0001 C CNN
F 3 "" H 4050 3600 50  0001 C CNN
	1    4050 3600
	0    1    -1   0   
$EndComp
NoConn ~ 4050 3800
Wire Wire Line
	3400 3700 4050 3700
$Comp
L Device:R_POT RV?
U 1 1 6179E331
P 2850 3650
AR Path="/6166EC9B/6179E331" Ref="RV?"  Part="1" 
AR Path="/61728A8F/6179E331" Ref="RV?"  Part="1" 
AR Path="/61729059/6179E331" Ref="RV?"  Part="1" 
AR Path="/6179E331" Ref="RV2"  Part="1" 
F 0 "RV2" H 2781 3696 50  0000 R CNN
F 1 "500k" H 2781 3605 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 2850 3650 50  0001 C CNN
F 3 "~" H 2850 3650 50  0001 C CNN
F 4 "X" H 2850 3650 50  0001 C CNN "Spice_Primitive"
F 5 "POT2" H 2850 3650 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2850 3650 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2850 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 6179E33A
P 2850 3150
AR Path="/6166EC9B/6179E33A" Ref="RV?"  Part="1" 
AR Path="/61728A8F/6179E33A" Ref="RV?"  Part="1" 
AR Path="/61729059/6179E33A" Ref="RV?"  Part="1" 
AR Path="/6179E33A" Ref="RV1"  Part="1" 
F 0 "RV1" H 2781 3196 50  0000 R CNN
F 1 "100k" H 2781 3105 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 2850 3150 50  0001 C CNN
F 3 "~" H 2850 3150 50  0001 C CNN
F 4 "X" H 2850 3150 50  0001 C CNN "Spice_Primitive"
F 5 "POT1" H 2850 3150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2850 3150 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2850 3150
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J4
U 1 1 617BBE16
P 9100 3200
AR Path="/617BBE16" Ref="J4"  Part="1" 
AR Path="/61728A8F/617BBE16" Ref="J?"  Part="1" 
AR Path="/61729059/617BBE16" Ref="J?"  Part="1" 
F 0 "J4" H 9132 3525 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 9132 3434 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 9100 3200 50  0001 C CNN
F 3 "~" H 9100 3200 50  0001 C CNN
F 4 "X" H 9100 3200 50  0001 C CNN "Spice_Primitive"
F 5 "OUT" H 9100 3200 50  0001 C CNN "Spice_Model"
F 6 "N" H 9100 3200 50  0001 C CNN "Spice_Netlist_Enabled"
	1    9100 3200
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 617BBE1C
P 8900 3100
AR Path="/617BBE1C" Ref="#PWR07"  Part="1" 
AR Path="/61728A8F/617BBE1C" Ref="#PWR?"  Part="1" 
AR Path="/61729059/617BBE1C" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 8900 2850 50  0001 C CNN
F 1 "GND" V 8905 2972 50  0000 R CNN
F 2 "" H 8900 3100 50  0001 C CNN
F 3 "" H 8900 3100 50  0001 C CNN
	1    8900 3100
	0    1    -1   0   
$EndComp
NoConn ~ 8900 3300
Wire Wire Line
	8250 3200 8900 3200
$Comp
L power:GND #PWR08
U 1 1 617C4DA3
P 8900 3750
AR Path="/617C4DA3" Ref="#PWR08"  Part="1" 
AR Path="/61728A8F/617C4DA3" Ref="#PWR?"  Part="1" 
AR Path="/61729059/617C4DA3" Ref="#PWR?"  Part="1" 
F 0 "#PWR08" H 8900 3500 50  0001 C CNN
F 1 "GND" V 8905 3622 50  0000 R CNN
F 2 "" H 8900 3750 50  0001 C CNN
F 3 "" H 8900 3750 50  0001 C CNN
	1    8900 3750
	0    1    -1   0   
$EndComp
Wire Wire Line
	8300 3850 8900 3850
Wire Wire Line
	7800 3400 7600 3400
Wire Wire Line
	7800 3850 7600 3850
$Comp
L Device:R_POT RV?
U 1 1 617D5930
P 7800 3700
AR Path="/6166EC9B/617D5930" Ref="RV?"  Part="1" 
AR Path="/61728A8F/617D5930" Ref="RV?"  Part="1" 
AR Path="/61729059/617D5930" Ref="RV?"  Part="1" 
AR Path="/617D5930" Ref="RV4"  Part="1" 
F 0 "RV4" H 7731 3746 50  0000 R CNN
F 1 "500k" H 7731 3655 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 7800 3700 50  0001 C CNN
F 3 "~" H 7800 3700 50  0001 C CNN
F 4 "X" H 7800 3700 50  0001 C CNN "Spice_Primitive"
F 5 "POT2" H 7800 3700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7800 3700 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7800 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 617D5939
P 7800 3250
AR Path="/6166EC9B/617D5939" Ref="RV?"  Part="1" 
AR Path="/61728A8F/617D5939" Ref="RV?"  Part="1" 
AR Path="/61729059/617D5939" Ref="RV?"  Part="1" 
AR Path="/617D5939" Ref="RV3"  Part="1" 
F 0 "RV3" H 7731 3296 50  0000 R CNN
F 1 "100k" H 7731 3205 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 7800 3250 50  0001 C CNN
F 3 "~" H 7800 3250 50  0001 C CNN
F 4 "X" H 7800 3250 50  0001 C CNN "Spice_Primitive"
F 5 "POT1" H 7800 3250 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7800 3250 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7800 3250
	0    1    1    0   
$EndComp
$EndSCHEMATC
