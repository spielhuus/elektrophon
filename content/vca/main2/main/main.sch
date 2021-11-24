EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
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
U 1 1 6165B0AA
P 9650 6000
F 0 "H1" H 9750 6046 50  0000 L CNN
F 1 "MountingHole" H 9750 5955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9650 6000 50  0001 C CNN
F 3 "~" H 9650 6000 50  0001 C CNN
	1    9650 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6097A580
P 9650 6300
F 0 "H2" H 9750 6346 50  0000 L CNN
F 1 "MountingHole" H 9750 6255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9650 6300 50  0001 C CNN
F 3 "~" H 9650 6300 50  0001 C CNN
	1    9650 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR010
U 1 1 5F816C5C
P 6050 7300
F 0 "#PWR010" H 6050 7150 50  0001 C CNN
F 1 "+15V" H 6065 7473 50  0000 C CNN
F 2 "" H 6050 7300 50  0001 C CNN
F 3 "" H 6050 7300 50  0001 C CNN
	1    6050 7300
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR011
U 1 1 5F816FAE
P 6300 7300
F 0 "#PWR011" H 6300 7400 50  0001 C CNN
F 1 "-15V" H 6315 7473 50  0000 C CNN
F 2 "" H 6300 7300 50  0001 C CNN
F 3 "" H 6300 7300 50  0001 C CNN
	1    6300 7300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5F817A91
P 6550 7400
F 0 "#PWR012" H 6550 7150 50  0001 C CNN
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
U 1 1 6165B09B
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
L power:+5V #PWR04
U 1 1 6165B0A7
P 1400 6950
AR Path="/6165B0A7" Ref="#PWR04"  Part="1" 
AR Path="/5DD3665B/6165B0A7" Ref="#PWR?"  Part="1" 
F 0 "#PWR04" H 1400 6800 50  0001 C CNN
F 1 "+5V" V 1415 7078 50  0000 L CNN
F 2 "" H 1400 6950 50  0001 C CNN
F 3 "" H 1400 6950 50  0001 C CNN
	1    1400 6950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6165B0A3
P 1400 7150
AR Path="/6165B0A3" Ref="#PWR06"  Part="1" 
AR Path="/5DD3665B/6165B0A3" Ref="#PWR?"  Part="1" 
F 0 "#PWR06" H 1400 6900 50  0001 C CNN
F 1 "GND" V 1405 7022 50  0000 R CNN
F 2 "" H 1400 7150 50  0001 C CNN
F 3 "" H 1400 7150 50  0001 C CNN
	1    1400 7150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6165B0A6
P 1400 7050
AR Path="/6165B0A6" Ref="#PWR05"  Part="1" 
AR Path="/5DD3665B/6165B0A6" Ref="#PWR?"  Part="1" 
F 0 "#PWR05" H 1400 6800 50  0001 C CNN
F 1 "GND" V 1405 6922 50  0000 R CNN
F 2 "" H 1400 7050 50  0001 C CNN
F 3 "" H 1400 7050 50  0001 C CNN
	1    1400 7050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6165B099
P 900 7050
AR Path="/6165B099" Ref="#PWR02"  Part="1" 
AR Path="/5DD3665B/6165B099" Ref="#PWR?"  Part="1" 
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
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 6165B0A5
P 1200 7150
AR Path="/6165B0A5" Ref="J1"  Part="1" 
AR Path="/5DD3665B/6165B0A5" Ref="J?"  Part="1" 
F 0 "J1" H 1250 7567 50  0000 C CNN
F 1 "IDC Header" H 1250 7476 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 1200 7150 50  0001 C CNN
F 3 "~" H 1200 7150 50  0001 C CNN
	1    1200 7150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5E180712
P 2350 7200
AR Path="/5E180712" Ref="#PWR08"  Part="1" 
AR Path="/5DD3665B/5E180712" Ref="#PWR?"  Part="1" 
F 0 "#PWR08" H 2350 6950 50  0001 C CNN
F 1 "GND" V 2350 7000 50  0000 C CNN
F 2 "" H 2350 7200 50  0001 C CNN
F 3 "" H 2350 7200 50  0001 C CNN
	1    2350 7200
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 6165B0A0
P 2150 6900
F 0 "R1" V 1943 6900 50  0000 C CNN
F 1 "10" V 2034 6900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2080 6900 50  0001 C CNN
F 3 "~" H 2150 6900 50  0001 C CNN
	1    2150 6900
	0    1    1    0   
$EndComp
$Comp
L power:+15V #PWR07
U 1 1 6165B0A1
P 2350 6900
AR Path="/6165B0A1" Ref="#PWR07"  Part="1" 
AR Path="/5DD3665B/6165B0A1" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 2350 6750 50  0001 C CNN
F 1 "+15V" H 2250 7050 50  0000 L CNN
F 2 "" H 2350 6900 50  0001 C CNN
F 3 "" H 2350 6900 50  0001 C CNN
	1    2350 6900
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR09
U 1 1 5FC69BA2
P 2350 7500
AR Path="/5FC69BA2" Ref="#PWR09"  Part="1" 
AR Path="/5DD3665B/5FC69BA2" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 2350 7600 50  0001 C CNN
F 1 "-15V" H 2250 7650 50  0000 L CNN
F 2 "" H 2350 7500 50  0001 C CNN
F 3 "" H 2350 7500 50  0001 C CNN
	1    2350 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FC69BB1
P 2150 7500
F 0 "R2" V 1943 7500 50  0000 C CNN
F 1 "10" V 2034 7500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2080 7500 50  0001 C CNN
F 3 "~" H 2150 7500 50  0001 C CNN
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
P 10400 6000
F 0 "H3" H 10500 6046 50  0000 L CNN
F 1 "MountingHole" H 10500 5955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10400 6000 50  0001 C CNN
F 3 "~" H 10400 6000 50  0001 C CNN
	1    10400 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6165B0AD
P 10400 6300
F 0 "H4" H 10500 6346 50  0000 L CNN
F 1 "MountingHole" H 10500 6255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10400 6300 50  0001 C CNN
F 3 "~" H 10400 6300 50  0001 C CNN
	1    10400 6300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 6097A217
P 9650 6000
F 0 "H1" H 9750 6046 50  0000 L CNN
F 1 "MountingHole" H 9750 5955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9650 6000 50  0001 C CNN
F 3 "~" H 9650 6000 50  0001 C CNN
F 4 "R" H 9650 6000 50  0001 C CNN "Spice_Primitive"
F 5 "1" H 9650 6000 50  0001 C CNN "Spice_Model"
F 6 "N" H 9650 6000 50  0001 C CNN "Spice_Netlist_Enabled"
	1    9650 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6165B0AB
P 9650 6300
F 0 "H2" H 9750 6346 50  0000 L CNN
F 1 "MountingHole" H 9750 6255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9650 6300 50  0001 C CNN
F 3 "~" H 9650 6300 50  0001 C CNN
F 4 "R" H 9650 6300 50  0001 C CNN "Spice_Primitive"
F 5 "1" H 9650 6300 50  0001 C CNN "Spice_Model"
F 6 "N" H 9650 6300 50  0001 C CNN "Spice_Netlist_Enabled"
	1    9650 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR025
U 1 1 6165B09D
P 6050 7300
F 0 "#PWR025" H 6050 7150 50  0001 C CNN
F 1 "+15V" H 6065 7473 50  0000 C CNN
F 2 "" H 6050 7300 50  0001 C CNN
F 3 "" H 6050 7300 50  0001 C CNN
	1    6050 7300
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR026
U 1 1 6165B09E
P 6300 7300
F 0 "#PWR026" H 6300 7400 50  0001 C CNN
F 1 "-15V" H 6315 7473 50  0000 C CNN
F 2 "" H 6300 7300 50  0001 C CNN
F 3 "" H 6300 7300 50  0001 C CNN
	1    6300 7300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 6165B09F
P 6550 7400
F 0 "#PWR027" H 6550 7150 50  0001 C CNN
F 1 "GND" H 6555 7227 50  0000 C CNN
F 2 "" H 6550 7400 50  0001 C CNN
F 3 "" H 6550 7400 50  0001 C CNN
	1    6550 7400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 6165B09A
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
U 1 1 6165B09C
P 6550 7400
F 0 "#FLG04" H 6550 7475 50  0001 C CNN
F 1 "PWR_FLAG" H 6550 7573 50  0001 C CNN
F 2 "" H 6550 7400 50  0001 C CNN
F 3 "~" H 6550 7400 50  0001 C CNN
	1    6550 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 6165B097
P 2550 7050
AR Path="/6165B097" Ref="C2"  Part="1" 
AR Path="/5DD3665B/6165B097" Ref="C?"  Part="1" 
F 0 "C2" H 2668 7096 50  0000 L CNN
F 1 "22u" H 2668 7005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2588 6900 50  0001 C CNN
F 3 "~" H 2550 7050 50  0001 C CNN
F 4 "C" H 2550 7050 50  0001 C CNN "Spice_Primitive"
F 5 "22u" H 2550 7050 50  0001 C CNN "Spice_Model"
F 6 "N" H 2550 7050 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2550 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 6165B095
P 2550 7350
AR Path="/6165B095" Ref="C3"  Part="1" 
AR Path="/5DD3665B/6165B095" Ref="C?"  Part="1" 
F 0 "C3" H 2668 7396 50  0000 L CNN
F 1 "22u" H 2668 7305 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2588 7200 50  0001 C CNN
F 3 "~" H 2550 7350 50  0001 C CNN
F 4 "C" H 2550 7350 50  0001 C CNN "Spice_Primitive"
F 5 "22u" H 2550 7350 50  0001 C CNN "Spice_Model"
F 6 "N" H 2550 7350 50  0001 C CNN "Spice_Netlist_Enabled"
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
U 1 1 6165B0A9
P 900 6950
AR Path="/6165B0A9" Ref="#FLG01"  Part="1" 
AR Path="/5DD3665B/6165B0A9" Ref="#FLG?"  Part="1" 
F 0 "#FLG01" H 900 7025 50  0001 C CNN
F 1 "PWR_FLAG" H 900 7078 50  0001 L CNN
F 2 "" H 900 6950 50  0001 C CNN
F 3 "~" H 900 6950 50  0001 C CNN
	1    900  6950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 6165B0A8
P 900 6950
AR Path="/6165B0A8" Ref="#PWR01"  Part="1" 
AR Path="/5DD3665B/6165B0A8" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 900 6800 50  0001 C CNN
F 1 "+5V" V 915 7078 50  0000 L CNN
F 2 "" H 900 6950 50  0001 C CNN
F 3 "" H 900 6950 50  0001 C CNN
	1    900  6950
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 5FCD1660
P 1400 6950
AR Path="/5FCD1660" Ref="#PWR05"  Part="1" 
AR Path="/5DD3665B/5FCD1660" Ref="#PWR?"  Part="1" 
F 0 "#PWR05" H 1400 6800 50  0001 C CNN
F 1 "+5V" V 1415 7078 50  0000 L CNN
F 2 "" H 1400 6950 50  0001 C CNN
F 3 "" H 1400 6950 50  0001 C CNN
	1    1400 6950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5FC69BA7
P 1400 7150
AR Path="/5FC69BA7" Ref="#PWR07"  Part="1" 
AR Path="/5DD3665B/5FC69BA7" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 1400 6900 50  0001 C CNN
F 1 "GND" V 1405 7022 50  0000 R CNN
F 2 "" H 1400 7150 50  0001 C CNN
F 3 "" H 1400 7150 50  0001 C CNN
	1    1400 7150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5FCD165F
P 1400 7050
AR Path="/5FCD165F" Ref="#PWR06"  Part="1" 
AR Path="/5DD3665B/5FCD165F" Ref="#PWR?"  Part="1" 
F 0 "#PWR06" H 1400 6800 50  0001 C CNN
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
U 1 1 6165B098
P 900 7150
AR Path="/6165B098" Ref="#PWR03"  Part="1" 
AR Path="/5DD3665B/6165B098" Ref="#PWR?"  Part="1" 
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
F 1 "IDC Header" H 1250 7476 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 1200 7150 50  0001 C CNN
F 3 "~" H 1200 7150 50  0001 C CNN
F 4 "J" H 1200 7150 50  0001 C CNN "Spice_Primitive"
F 5 "IDC Header" H 1200 7150 50  0001 C CNN "Spice_Model"
F 6 "N" H 1200 7150 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1200 7150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 6165B096
P 2350 7200
AR Path="/6165B096" Ref="#PWR010"  Part="1" 
AR Path="/5DD3665B/6165B096" Ref="#PWR?"  Part="1" 
F 0 "#PWR010" H 2350 6950 50  0001 C CNN
F 1 "GND" V 2350 7000 50  0000 C CNN
F 2 "" H 2350 7200 50  0001 C CNN
F 3 "" H 2350 7200 50  0001 C CNN
	1    2350 7200
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5FB443E6
P 2150 6900
F 0 "R2" V 1943 6900 50  0000 C CNN
F 1 "10" V 2034 6900 50  0000 C CNN
F 2 "Resistor_SMD:R_01005_0402Metric" V 2080 6900 50  0001 C CNN
F 3 "~" H 2150 6900 50  0001 C CNN
F 4 "R" H 2150 6900 50  0001 C CNN "Spice_Primitive"
F 5 "10" H 2150 6900 50  0001 C CNN "Spice_Model"
F 6 "N" H 2150 6900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2150 6900
	0    1    1    0   
$EndComp
$Comp
L power:+15V #PWR09
U 1 1 5FC69BA0
P 2350 6900
AR Path="/5FC69BA0" Ref="#PWR09"  Part="1" 
AR Path="/5DD3665B/5FC69BA0" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 2350 6750 50  0001 C CNN
F 1 "+15V" H 2250 7050 50  0000 L CNN
F 2 "" H 2350 6900 50  0001 C CNN
F 3 "" H 2350 6900 50  0001 C CNN
	1    2350 6900
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR011
U 1 1 6165B0A2
P 2350 7500
AR Path="/6165B0A2" Ref="#PWR011"  Part="1" 
AR Path="/5DD3665B/6165B0A2" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 2350 7600 50  0001 C CNN
F 1 "-15V" H 2250 7650 50  0000 L CNN
F 2 "" H 2350 7500 50  0001 C CNN
F 3 "" H 2350 7500 50  0001 C CNN
	1    2350 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 6165B0A4
P 2150 7500
F 0 "R3" V 1943 7500 50  0000 C CNN
F 1 "10" V 2034 7500 50  0000 C CNN
F 2 "Resistor_SMD:R_01005_0402Metric" V 2080 7500 50  0001 C CNN
F 3 "~" H 2150 7500 50  0001 C CNN
F 4 "R" H 2150 7500 50  0001 C CNN "Spice_Primitive"
F 5 "10" H 2150 7500 50  0001 C CNN "Spice_Model"
F 6 "N" H 2150 7500 50  0001 C CNN "Spice_Netlist_Enabled"
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
U 1 1 6165B0AC
P 10400 6000
F 0 "H3" H 10500 6046 50  0000 L CNN
F 1 "MountingHole" H 10500 5955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10400 6000 50  0001 C CNN
F 3 "~" H 10400 6000 50  0001 C CNN
F 4 "R" H 10400 6000 50  0001 C CNN "Spice_Primitive"
F 5 "1" H 10400 6000 50  0001 C CNN "Spice_Model"
F 6 "N" H 10400 6000 50  0001 C CNN "Spice_Netlist_Enabled"
	1    10400 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6098DED0
P 10400 6300
F 0 "H4" H 10500 6346 50  0000 L CNN
F 1 "MountingHole" H 10500 6255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10400 6300 50  0001 C CNN
F 3 "~" H 10400 6300 50  0001 C CNN
F 4 "R" H 10400 6300 50  0001 C CNN "Spice_Primitive"
F 5 "1" H 10400 6300 50  0001 C CNN "Spice_Model"
F 6 "N" H 10400 6300 50  0001 C CNN "Spice_Netlist_Enabled"
	1    10400 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR016
U 1 1 61658A58
P 3450 6900
AR Path="/61658A58" Ref="#PWR016"  Part="1" 
AR Path="/5DD3665B/61658A58" Ref="#PWR?"  Part="1" 
F 0 "#PWR016" H 3450 6750 50  0001 C CNN
F 1 "+15V" H 3350 7050 50  0000 L CNN
F 2 "" H 3450 6900 50  0001 C CNN
F 3 "" H 3450 6900 50  0001 C CNN
	1    3450 6900
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR017
U 1 1 61658E26
P 3450 7500
AR Path="/61658E26" Ref="#PWR017"  Part="1" 
AR Path="/5DD3665B/61658E26" Ref="#PWR?"  Part="1" 
F 0 "#PWR017" H 3450 7600 50  0001 C CNN
F 1 "-15V" H 3350 7650 50  0000 L CNN
F 2 "" H 3450 7500 50  0001 C CNN
F 3 "" H 3450 7500 50  0001 C CNN
	1    3450 7500
	-1   0    0    1   
$EndComp
$Comp
L Device:C C5
U 1 1 6165BC30
P 3150 7050
F 0 "C5" H 3265 7096 50  0000 L CNN
F 1 "0.1u" H 3265 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3188 6900 50  0001 C CNN
F 3 "~" H 3150 7050 50  0001 C CNN
F 4 "C" H 3150 7050 50  0001 C CNN "Spice_Primitive"
F 5 "0.1" H 3150 7050 50  0001 C CNN "Spice_Model"
F 6 "N" H 3150 7050 50  0001 C CNN "Spice_Netlist_Enabled"
	1    3150 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 6165C256
P 3150 7350
F 0 "C6" H 3265 7396 50  0000 L CNN
F 1 "0.1u" H 3265 7305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3188 7200 50  0001 C CNN
F 3 "~" H 3150 7350 50  0001 C CNN
F 4 "C" H 3150 7350 50  0001 C CNN "Spice_Primitive"
F 5 "0.1" H 3150 7350 50  0001 C CNN "Spice_Model"
F 6 "N" H 3150 7350 50  0001 C CNN "Spice_Netlist_Enabled"
	1    3150 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 6900 3450 6900
Wire Wire Line
	3150 7500 3450 7500
$Comp
L power:GND #PWR015
U 1 1 61662408
P 2950 7300
F 0 "#PWR015" H 2950 7050 50  0001 C CNN
F 1 "GND" H 2955 7127 50  0000 C CNN
F 2 "" H 2950 7300 50  0001 C CNN
F 3 "" H 2950 7300 50  0001 C CNN
	1    2950 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 7300 2950 7200
Wire Wire Line
	2950 7200 3150 7200
Connection ~ 3150 7200
$Comp
L Amplifier_Operational:LM13700 U2
U 2 1 615A2AAA
P 6150 2400
F 0 "U2" H 6050 2748 50  0000 C CNN
F 1 "LM13700" H 6050 2657 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5850 2425 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 5850 2425 50  0001 C CNN
F 4 "X" H 6150 2400 50  0001 C CNN "Spice_Primitive"
F 5 "LM13700/NS" H 6150 2400 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6150 2400 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "16 15 14 13 12 6 10 9 11" H 6150 2400 50  0001 C CNN "Spice_Node_Sequence"
	2    6150 2400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM13700 U2
U 5 1 615A3AF2
P 4450 7150
F 0 "U2" H 4408 7196 50  0000 L CNN
F 1 "LM13700" H 4408 7105 50  0000 L CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4150 7175 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 4150 7175 50  0001 C CNN
F 4 "X" H 4450 7150 50  0001 C CNN "Spice_Primitive"
F 5 "LM13700/NS" H 4450 7150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4450 7150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "16 15 14 13 12 6 10 9 11" H 4450 7150 50  0001 C CNN "Spice_Node_Sequence"
	5    4450 7150
	1    0    0    -1  
$EndComp
NoConn ~ 6250 2500
NoConn ~ 5850 2400
$Comp
L Device:C C7
U 1 1 615F89F2
P 4050 7000
F 0 "C7" H 4165 7046 50  0000 L CNN
F 1 "0.1u" H 4165 6955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4088 6850 50  0001 C CNN
F 3 "~" H 4050 7000 50  0001 C CNN
F 4 "C" H 4050 7000 50  0001 C CNN "Spice_Primitive"
F 5 "0.1" H 4050 7000 50  0001 C CNN "Spice_Model"
F 6 "N" H 4050 7000 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4050 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 615F89FB
P 4050 7300
F 0 "C8" H 4165 7346 50  0000 L CNN
F 1 "0.1u" H 4165 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4088 7150 50  0001 C CNN
F 3 "~" H 4050 7300 50  0001 C CNN
F 4 "C" H 4050 7300 50  0001 C CNN "Spice_Primitive"
F 5 "0.1" H 4050 7300 50  0001 C CNN "Spice_Model"
F 6 "N" H 4050 7300 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4050 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 6850 4350 6850
Wire Wire Line
	4050 7450 4350 7450
$Comp
L power:GND #PWR018
U 1 1 615F8A03
P 3850 7250
F 0 "#PWR018" H 3850 7000 50  0001 C CNN
F 1 "GND" H 3855 7077 50  0000 C CNN
F 2 "" H 3850 7250 50  0001 C CNN
F 3 "" H 3850 7250 50  0001 C CNN
	1    3850 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 7250 3850 7150
Wire Wire Line
	3850 7150 4050 7150
Connection ~ 4050 7150
$Comp
L power:+15V #PWR021
U 1 1 615F9E36
P 4350 6850
AR Path="/615F9E36" Ref="#PWR021"  Part="1" 
AR Path="/5DD3665B/615F9E36" Ref="#PWR?"  Part="1" 
F 0 "#PWR021" H 4350 6700 50  0001 C CNN
F 1 "+15V" H 4250 7000 50  0000 L CNN
F 2 "" H 4350 6850 50  0001 C CNN
F 3 "" H 4350 6850 50  0001 C CNN
	1    4350 6850
	1    0    0    -1  
$EndComp
Connection ~ 4350 6850
$Comp
L power:-15V #PWR022
U 1 1 615FAFBE
P 4350 7450
AR Path="/615FAFBE" Ref="#PWR022"  Part="1" 
AR Path="/5DD3665B/615FAFBE" Ref="#PWR?"  Part="1" 
F 0 "#PWR022" H 4350 7550 50  0001 C CNN
F 1 "-15V" H 4250 7600 50  0000 L CNN
F 2 "" H 4350 7450 50  0001 C CNN
F 3 "" H 4350 7450 50  0001 C CNN
	1    4350 7450
	-1   0    0    1   
$EndComp
Connection ~ 4350 7450
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 615FC689
P 3550 7200
F 0 "U1" H 3508 7246 50  0000 L CNN
F 1 "TL072" H 3508 7155 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3550 7200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3550 7200 50  0001 C CNN
F 4 "X" H 3550 7200 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 3550 7200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3550 7200 50  0001 C CNN "Spice_Netlist_Enabled"
	3    3550 7200
	1    0    0    -1  
$EndComp
Connection ~ 3450 7500
Connection ~ 3450 6900
$Sheet
S 6850 1650 3050 450 
U 61667D67
F0 "VCA1" 50
F1 "../../main/VCA1.sch" 50
$EndSheet
$Sheet
S 6850 2500 3050 450 
U 61679144
F0 "VCA2" 50
F1 "../../main/VCA2.sch" 50
$EndSheet
$Sheet
S 6850 3400 3050 450 
U 6167A2A9
F0 "VCA3" 50
F1 "../../main/VCA3.sch" 50
$EndSheet
$Sheet
S 6850 4350 3100 450 
U 6167CA8B
F0 "VCA4" 50
F1 "../../main/VCA4.sch" 50
$EndSheet
$EndSCHEMATC