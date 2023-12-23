EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "tiefpass"
Date "2021-08-15"
Rev "R01"
Comp ""
Comment1 "schema for main circuit"
Comment2 "LPG design by Don Buchla"
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
$Comp
L Mechanical:MountingHole H1
U 1 1 6097A217
P 9650 5850
F 0 "H1" H 9750 5896 50  0000 L CNN
F 1 "MountingHole" H 9750 5805 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9650 5850 50  0001 C CNN
F 3 "~" H 9650 5850 50  0001 C CNN
	1    9650 5850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6097A580
P 9650 6150
F 0 "H2" H 9750 6196 50  0000 L CNN
F 1 "MountingHole" H 9750 6105 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9650 6150 50  0001 C CNN
F 3 "~" H 9650 6150 50  0001 C CNN
	1    9650 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR010
U 1 1 5F816C5C
P 6200 7100
F 0 "#PWR010" H 6200 6950 50  0001 C CNN
F 1 "+15V" H 6215 7273 50  0000 C CNN
F 2 "" H 6200 7100 50  0001 C CNN
F 3 "" H 6200 7100 50  0001 C CNN
	1    6200 7100
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR011
U 1 1 5F816FAE
P 6450 7100
F 0 "#PWR011" H 6450 7200 50  0001 C CNN
F 1 "-15V" H 6465 7273 50  0000 C CNN
F 2 "" H 6450 7100 50  0001 C CNN
F 3 "" H 6450 7100 50  0001 C CNN
	1    6450 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5F817A91
P 6700 7200
F 0 "#PWR012" H 6700 6950 50  0001 C CNN
F 1 "GND" H 6705 7027 50  0000 C CNN
F 2 "" H 6700 7200 50  0001 C CNN
F 3 "" H 6700 7200 50  0001 C CNN
	1    6700 7200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5F737716
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
U 1 1 5F737C0D
P 6450 7100
F 0 "#FLG03" H 6450 7175 50  0001 C CNN
F 1 "PWR_FLAG" H 6450 7273 50  0001 C CNN
F 2 "" H 6450 7100 50  0001 C CNN
F 3 "~" H 6450 7100 50  0001 C CNN
	1    6450 7100
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 611D08DA
P 6700 7200
F 0 "#FLG04" H 6700 7275 50  0001 C CNN
F 1 "PWR_FLAG" H 6700 7373 50  0001 C CNN
F 2 "" H 6700 7200 50  0001 C CNN
F 3 "~" H 6700 7200 50  0001 C CNN
	1    6700 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5E180738
P 2550 6900
AR Path="/5E180738" Ref="C1"  Part="1" 
AR Path="/5DD3665B/5E180738" Ref="C?"  Part="1" 
F 0 "C1" H 2668 6946 50  0000 L CNN
F 1 "22u" H 2668 6855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2588 6750 50  0001 C CNN
F 3 "~" H 2550 6900 50  0001 C CNN
F 4 "Aluminium Electrolytic Capacitors (50V, D=6.3 mm, LS=2.5 mm)" H 2550 6900 50  0001 C CNN "Description"
	1    2550 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5E18070C
P 2550 7200
AR Path="/5E18070C" Ref="C2"  Part="1" 
AR Path="/5DD3665B/5E18070C" Ref="C?"  Part="1" 
F 0 "C2" H 2668 7246 50  0000 L CNN
F 1 "22u" H 2668 7155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2588 7050 50  0001 C CNN
F 3 "~" H 2550 7200 50  0001 C CNN
F 4 "Aluminium Electrolytic Capacitors (50V, D=6.3 mm, LS=2.5 mm)" H 2550 7200 50  0001 C CNN "Description"
	1    2550 7200
	1    0    0    -1  
$EndComp
Connection ~ 2550 7050
Wire Wire Line
	2550 7050 2350 7050
Wire Wire Line
	2300 7350 2350 7350
Connection ~ 900  6800
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5FCD1662
P 900 6800
AR Path="/5FCD1662" Ref="#FLG01"  Part="1" 
AR Path="/5DD3665B/5FCD1662" Ref="#FLG?"  Part="1" 
F 0 "#FLG01" H 900 6875 50  0001 C CNN
F 1 "PWR_FLAG" H 900 6928 50  0001 L CNN
F 2 "" H 900 6800 50  0001 C CNN
F 3 "~" H 900 6800 50  0001 C CNN
	1    900  6800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5FCD1661
P 900 6800
AR Path="/5FCD1661" Ref="#PWR01"  Part="1" 
AR Path="/5DD3665B/5FCD1661" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 900 6650 50  0001 C CNN
F 1 "+5V" V 915 6928 50  0000 L CNN
F 2 "" H 900 6800 50  0001 C CNN
F 3 "" H 900 6800 50  0001 C CNN
	1    900  6800
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 5FCD1660
P 1400 6800
AR Path="/5FCD1660" Ref="#PWR04"  Part="1" 
AR Path="/5DD3665B/5FCD1660" Ref="#PWR?"  Part="1" 
F 0 "#PWR04" H 1400 6650 50  0001 C CNN
F 1 "+5V" V 1415 6928 50  0000 L CNN
F 2 "" H 1400 6800 50  0001 C CNN
F 3 "" H 1400 6800 50  0001 C CNN
	1    1400 6800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5FC69BA7
P 1400 7000
AR Path="/5FC69BA7" Ref="#PWR06"  Part="1" 
AR Path="/5DD3665B/5FC69BA7" Ref="#PWR?"  Part="1" 
F 0 "#PWR06" H 1400 6750 50  0001 C CNN
F 1 "GND" V 1405 6872 50  0000 R CNN
F 2 "" H 1400 7000 50  0001 C CNN
F 3 "" H 1400 7000 50  0001 C CNN
	1    1400 7000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5FCD165F
P 1400 6900
AR Path="/5FCD165F" Ref="#PWR05"  Part="1" 
AR Path="/5DD3665B/5FCD165F" Ref="#PWR?"  Part="1" 
F 0 "#PWR05" H 1400 6650 50  0001 C CNN
F 1 "GND" V 1405 6772 50  0000 R CNN
F 2 "" H 1400 6900 50  0001 C CNN
F 3 "" H 1400 6900 50  0001 C CNN
	1    1400 6900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5E18076B
P 900 6900
AR Path="/5E18076B" Ref="#PWR02"  Part="1" 
AR Path="/5DD3665B/5E18076B" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 900 6650 50  0001 C CNN
F 1 "GND" V 905 6772 50  0000 R CNN
F 2 "" H 900 6900 50  0001 C CNN
F 3 "" H 900 6900 50  0001 C CNN
	1    900  6900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E180765
P 900 7000
AR Path="/5E180765" Ref="#PWR03"  Part="1" 
AR Path="/5DD3665B/5E180765" Ref="#PWR?"  Part="1" 
F 0 "#PWR03" H 900 6750 50  0001 C CNN
F 1 "GND" V 905 6872 50  0000 R CNN
F 2 "" H 900 7000 50  0001 C CNN
F 3 "" H 900 7000 50  0001 C CNN
	1    900  7000
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 5FCD165C
P 1200 7000
AR Path="/5FCD165C" Ref="J1"  Part="1" 
AR Path="/5DD3665B/5FCD165C" Ref="J?"  Part="1" 
F 0 "J1" H 1250 7417 50  0000 C CNN
F 1 "10 Pos" H 1250 7326 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 1200 7000 50  0001 C CNN
F 3 "~" H 1200 7000 50  0001 C CNN
F 4 "Pin Header IDC (2.54mm)" H 1200 7000 50  0001 C CNN "Description"
	1    1200 7000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5E180712
P 2350 7050
AR Path="/5E180712" Ref="#PWR08"  Part="1" 
AR Path="/5DD3665B/5E180712" Ref="#PWR?"  Part="1" 
F 0 "#PWR08" H 2350 6800 50  0001 C CNN
F 1 "GND" V 2350 6850 50  0000 C CNN
F 2 "" H 2350 7050 50  0001 C CNN
F 3 "" H 2350 7050 50  0001 C CNN
	1    2350 7050
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5FB443E6
P 2150 6750
F 0 "R1" V 1943 6750 50  0000 C CNN
F 1 "10" V 2034 6750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2080 6750 50  0001 C CNN
F 3 "~" H 2150 6750 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    2150 6750
	0    1    1    0   
$EndComp
$Comp
L power:+15V #PWR07
U 1 1 5FC69BA0
P 2350 6750
AR Path="/5FC69BA0" Ref="#PWR07"  Part="1" 
AR Path="/5DD3665B/5FC69BA0" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 2350 6600 50  0001 C CNN
F 1 "+15V" H 2250 6900 50  0000 L CNN
F 2 "" H 2350 6750 50  0001 C CNN
F 3 "" H 2350 6750 50  0001 C CNN
	1    2350 6750
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR09
U 1 1 5FC69BA2
P 2350 7350
AR Path="/5FC69BA2" Ref="#PWR09"  Part="1" 
AR Path="/5DD3665B/5FC69BA2" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 2350 7450 50  0001 C CNN
F 1 "-15V" H 2250 7500 50  0000 L CNN
F 2 "" H 2350 7350 50  0001 C CNN
F 3 "" H 2350 7350 50  0001 C CNN
	1    2350 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FC69BB1
P 2150 7350
F 0 "R2" V 1943 7350 50  0000 C CNN
F 1 "10" V 2034 7350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2080 7350 50  0001 C CNN
F 3 "~" H 2150 7350 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    2150 7350
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 6750 2350 6750
Connection ~ 2350 6750
Wire Wire Line
	2350 6750 2550 6750
Connection ~ 2350 7350
Wire Wire Line
	2350 7350 2550 7350
Text GLabel 2000 6750 0    50   Input ~ 0
VP
Text GLabel 2000 7350 0    50   Input ~ 0
VN
Text GLabel 1400 7100 2    50   Input ~ 0
VP
Text GLabel 900  7100 0    50   Input ~ 0
VP
Text GLabel 1400 7200 2    50   Input ~ 0
VN
Text GLabel 900  7200 0    50   Input ~ 0
VN
$Comp
L Mechanical:MountingHole H3
U 1 1 611D08DB
P 10400 5850
F 0 "H3" H 10500 5896 50  0000 L CNN
F 1 "MountingHole" H 10500 5805 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10400 5850 50  0001 C CNN
F 3 "~" H 10400 5850 50  0001 C CNN
	1    10400 5850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6098DED0
P 10400 6150
F 0 "H4" H 10500 6196 50  0000 L CNN
F 1 "MountingHole" H 10500 6105 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10400 6150 50  0001 C CNN
F 3 "~" H 10400 6150 50  0001 C CNN
	1    10400 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 6114E11F
P 4800 4250
F 0 "R3" H 4870 4296 50  0000 L CNN
F 1 "100k" H 4870 4205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4730 4250 50  0001 C CNN
F 3 "~" H 4800 4250 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    4800 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 6114E391
P 5650 4250
F 0 "R4" H 5720 4296 50  0000 L CNN
F 1 "100k" H 5720 4205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5580 4250 50  0001 C CNN
F 3 "~" H 5650 4250 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    5650 4250
	1    0    0    -1  
$EndComp
Text GLabel 4450 4000 0    50   Input ~ 0
IN
Wire Wire Line
	4450 4000 4800 4000
Wire Wire Line
	5650 4000 5650 4100
Wire Wire Line
	5400 4000 5650 4000
Wire Wire Line
	4800 4100 4800 4000
Connection ~ 4800 4000
Wire Wire Line
	4800 4000 5100 4000
$Comp
L power:GND #PWR013
U 1 1 61150B55
P 4800 4400
F 0 "#PWR013" H 4800 4150 50  0001 C CNN
F 1 "GND" H 4805 4227 50  0000 C CNN
F 2 "" H 4800 4400 50  0001 C CNN
F 3 "" H 4800 4400 50  0001 C CNN
	1    4800 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 61150EA5
P 5650 4400
F 0 "#PWR014" H 5650 4150 50  0001 C CNN
F 1 "GND" H 5655 4227 50  0000 C CNN
F 2 "" H 5650 4400 50  0001 C CNN
F 3 "" H 5650 4400 50  0001 C CNN
	1    5650 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 61151DF8
P 6300 3350
F 0 "R5" V 6093 3350 50  0000 C CNN
F 1 "15k" V 6184 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6230 3350 50  0001 C CNN
F 3 "~" H 6300 3350 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    6300 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 3350 5900 3350
Wire Wire Line
	5900 3350 5900 3800
Wire Wire Line
	5900 3800 6000 3800
Wire Wire Line
	6450 3350 6700 3350
Wire Wire Line
	6700 3350 6700 3900
Wire Wire Line
	6700 3900 6600 3900
Wire Wire Line
	6000 4000 5650 4000
Connection ~ 5650 4000
$Comp
L Device:C C4
U 1 1 6115467A
P 7050 4350
F 0 "C4" H 7165 4396 50  0000 L CNN
F 1 "220p" H 7165 4305 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W4.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 7088 4200 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/440/e_WIMA_FKP_2-1139852.pdf" H 7050 4350 50  0001 C CNN
F 4 "Film Capacitors Polypropylene (L=7.2 mm W=4.5 mm, P=5 mm )" H 7050 4350 50  0001 C CNN "Description"
	1    7050 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 611549E6
P 7500 4350
F 0 "C5" H 7615 4396 50  0000 L CNN
F 1 "4.7n" H 7615 4305 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W5.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 7538 4200 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/440/e_WIMA_FKP_2-1139852.pdf" H 7500 4350 50  0001 C CNN
F 4 "Film Capacitors Polypropylene (L=7.2 mm W=5.5 mm, P=5 mm )" H 7500 4350 50  0001 C CNN "Description"
	1    7500 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 61156385
P 7050 4500
F 0 "#PWR015" H 7050 4250 50  0001 C CNN
F 1 "GND" H 7055 4327 50  0000 C CNN
F 2 "" H 7050 4500 50  0001 C CNN
F 3 "" H 7050 4500 50  0001 C CNN
	1    7050 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 6115DC9A
P 8300 4350
F 0 "C6" H 8415 4396 50  0000 L CNN
F 1 "1n" H 8415 4305 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W4.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 8338 4200 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/440/e_WIMA_FKP_2-1139852.pdf" H 8300 4350 50  0001 C CNN
F 4 "Film Capacitors Polypropylene (L=7.2 mm W=4.5 mm, P=5 mm )" H 8300 4350 50  0001 C CNN "Description"
	1    8300 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 6115EFA5
P 8700 4350
F 0 "R8" H 8770 4396 50  0000 L CNN
F 1 "4.7M" H 8770 4305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 8630 4350 50  0001 C CNN
F 3 "~" H 8700 4350 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    8700 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 6115EFAB
P 8700 4500
F 0 "#PWR017" H 8700 4250 50  0001 C CNN
F 1 "GND" H 8705 4327 50  0000 C CNN
F 2 "" H 8700 4500 50  0001 C CNN
F 3 "" H 8700 4500 50  0001 C CNN
	1    8700 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 6115F6BB
P 8300 4500
F 0 "#PWR016" H 8300 4250 50  0001 C CNN
F 1 "GND" H 8305 4327 50  0000 C CNN
F 2 "" H 8300 4500 50  0001 C CNN
F 3 "" H 8300 4500 50  0001 C CNN
	1    8300 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 61162969
P 9350 3250
F 0 "R9" V 9143 3250 50  0000 C CNN
F 1 "10k" V 9234 3250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 9280 3250 50  0001 C CNN
F 3 "~" H 9350 3250 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    9350 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 3250 8950 3250
Wire Wire Line
	8950 3250 8950 3700
Wire Wire Line
	9500 3250 9750 3250
Wire Wire Line
	9750 3250 9750 3800
Connection ~ 6700 3900
Wire Wire Line
	9050 3700 8950 3700
Wire Wire Line
	9650 3800 9750 3800
Connection ~ 9750 3800
Wire Wire Line
	9750 3800 9950 3800
Wire Wire Line
	7050 4200 7050 4050
Wire Wire Line
	7050 4050 7300 4050
Wire Wire Line
	7500 4050 7500 4200
Connection ~ 7300 4050
Wire Wire Line
	7300 4050 7500 4050
Wire Wire Line
	8300 4200 8300 4050
Wire Wire Line
	8300 4050 8500 4050
Wire Wire Line
	8700 4050 8700 4200
Wire Wire Line
	8500 4050 8500 3900
Connection ~ 8500 4050
Wire Wire Line
	8500 4050 8700 4050
Connection ~ 8500 3900
Wire Wire Line
	8500 3900 9050 3900
$Comp
L Amplifier_Operational:TL072 U1
U 1 1 61167D85
P 2700 2850
F 0 "U1" H 2700 2483 50  0000 C CNN
F 1 "TL072" H 2700 2574 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2700 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2700 2850 50  0001 C CNN
	1    2700 2850
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 2 1 611694E0
P 3900 2950
F 0 "U1" H 3900 2583 50  0000 C CNN
F 1 "TL072" H 3900 2674 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3900 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3900 2950 50  0001 C CNN
	2    3900 2950
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 6116C4AD
P 3750 7050
F 0 "U1" H 3708 7096 50  0000 L CNN
F 1 "TL072" H 3708 7005 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3750 7050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3750 7050 50  0001 C CNN
	3    3750 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 61174F3C
P 1950 2750
F 0 "R7" V 1743 2750 50  0000 C CNN
F 1 "100k" V 1834 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 1880 2750 50  0001 C CNN
F 3 "~" H 1950 2750 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    1950 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 611762A9
P 1950 3600
F 0 "R11" V 1743 3600 50  0000 C CNN
F 1 "100k" V 1834 3600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 1880 3600 50  0001 C CNN
F 3 "~" H 1950 3600 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    1950 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 2750 1800 2750
Wire Wire Line
	2100 2750 2200 2750
Wire Wire Line
	2200 2750 2200 3600
Wire Wire Line
	2200 3600 2100 3600
Connection ~ 2200 2750
Wire Wire Line
	1700 3600 1800 3600
$Comp
L power:GND #PWR0105
U 1 1 61182AF1
P 2350 3000
F 0 "#PWR0105" H 2350 2750 50  0001 C CNN
F 1 "GND" H 2355 2827 50  0000 C CNN
F 2 "" H 2350 3000 50  0001 C CNN
F 3 "" H 2350 3000 50  0001 C CNN
	1    2350 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2950 2350 2950
Wire Wire Line
	2350 2950 2350 3000
$Comp
L power:GND #PWR0106
U 1 1 611848F3
P 3550 3100
F 0 "#PWR0106" H 3550 2850 50  0001 C CNN
F 1 "GND" H 3555 2927 50  0000 C CNN
F 2 "" H 3550 3100 50  0001 C CNN
F 3 "" H 3550 3100 50  0001 C CNN
	1    3550 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3050 3550 3050
$Comp
L Device:R R12
U 1 1 61186A67
P 2700 2300
F 0 "R12" V 2493 2300 50  0000 C CNN
F 1 "100k" V 2584 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2630 2300 50  0001 C CNN
F 3 "~" H 2700 2300 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    2700 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 2750 2350 2750
Wire Wire Line
	2350 2750 2350 2300
Wire Wire Line
	2350 2300 2550 2300
Connection ~ 2350 2750
Wire Wire Line
	2350 2750 2400 2750
Wire Wire Line
	2850 2300 3050 2300
Wire Wire Line
	3050 2300 3050 2850
Wire Wire Line
	3050 2850 3000 2850
$Comp
L Device:R R14
U 1 1 61198371
P 3900 2400
F 0 "R14" V 3693 2400 50  0000 C CNN
F 1 "100k" V 3784 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3830 2400 50  0001 C CNN
F 3 "~" H 3900 2400 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    3900 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 2400 3750 2400
Wire Wire Line
	4050 2400 4250 2400
Wire Wire Line
	4250 2400 4250 2950
Wire Wire Line
	3600 2850 3550 2850
$Comp
L Device:R R13
U 1 1 6119CB52
P 3300 2850
F 0 "R13" V 3093 2850 50  0000 C CNN
F 1 "100k" V 3184 2850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3230 2850 50  0001 C CNN
F 3 "~" H 3300 2850 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    3300 2850
	0    1    1    0   
$EndComp
Connection ~ 4250 2950
Wire Wire Line
	4250 2950 4200 2950
$Comp
L Device:R R16
U 1 1 611AAED3
P 4650 2550
F 0 "R16" H 4720 2596 50  0000 L CNN
F 1 "470k" H 4720 2505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4580 2550 50  0001 C CNN
F 3 "~" H 4650 2550 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    4650 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2950 4650 2950
Wire Wire Line
	4650 2250 4650 2400
$Comp
L Device:C C12
U 1 1 611AEFEC
P 4650 2100
F 0 "C12" H 4765 2146 50  0000 L CNN
F 1 "2.2n" H 4765 2055 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W4.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 4688 1950 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/440/e_WIMA_FKP_2-1139852.pdf" H 4650 2100 50  0001 C CNN
F 4 "Film Capacitors Polypropylene (L=7.2 mm W=4.5 mm, P=5 mm )" H 4650 2100 50  0001 C CNN "Description"
	1    4650 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 611B07D7
P 1950 1700
F 0 "R6" V 1743 1700 50  0000 C CNN
F 1 "150k" V 1834 1700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 1880 1700 50  0001 C CNN
F 3 "~" H 1950 1700 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    1950 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 2400 3550 2850
Wire Wire Line
	3550 3050 3550 3100
Wire Wire Line
	3550 2850 3450 2850
Wire Wire Line
	3150 2850 3050 2850
Connection ~ 3550 2850
Connection ~ 3050 2850
Wire Wire Line
	4650 2700 4650 2950
Wire Wire Line
	4650 1700 4650 1950
$Comp
L Device:R R17
U 1 1 611E2D40
P 5050 2550
F 0 "R17" H 5120 2596 50  0000 L CNN
F 1 "100k" H 5120 2505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4980 2550 50  0001 C CNN
F 3 "~" H 5050 2550 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    5050 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1700 5050 1700
Wire Wire Line
	5050 1700 5050 2250
Wire Wire Line
	5050 2950 4650 2950
Wire Wire Line
	5050 2700 5050 2950
Connection ~ 4650 1700
Connection ~ 4650 2950
$Comp
L Amplifier_Operational:TL072 U2
U 1 1 611E5ADB
P 5950 2350
F 0 "U2" H 5950 1983 50  0000 C CNN
F 1 "TL072" H 5950 2074 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 5950 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5950 2350 50  0001 C CNN
	1    5950 2350
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 611E9941
P 5600 2800
F 0 "#PWR0107" H 5600 2550 50  0001 C CNN
F 1 "GND" H 5605 2627 50  0000 C CNN
F 2 "" H 5600 2800 50  0001 C CNN
F 3 "" H 5600 2800 50  0001 C CNN
	1    5600 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2450 5600 2450
Wire Wire Line
	5600 2450 5600 2500
Connection ~ 5050 2250
Wire Wire Line
	5050 2250 5050 2400
$Comp
L Device:R_POT_TRIM RV5
U 1 1 611EFDB9
P 5600 1200
F 0 "RV5" H 5530 1246 50  0000 R CNN
F 1 "20k" H 5530 1155 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3339P_Vertical" H 5600 1200 50  0001 C CNN
F 3 "~" H 5600 1200 50  0001 C CNN
F 4 "Trimmer Resistor, Bourns 3339P" H 5600 1200 50  0001 C CNN "Description"
	1    5600 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1350 5600 1400
$Comp
L Device:R R19
U 1 1 611F36C0
P 5850 850
F 0 "R19" V 5643 850 50  0000 C CNN
F 1 "33k" V 5734 850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5780 850 50  0001 C CNN
F 3 "~" H 5850 850 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    5850 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 1200 5750 1400
Wire Wire Line
	5750 1400 5600 1400
Connection ~ 5600 1400
Wire Wire Line
	5600 1050 5600 850 
Wire Wire Line
	5600 850  5700 850 
$Comp
L Device:R R20
U 1 1 611FA2AF
P 6100 1100
F 0 "R20" H 6030 1054 50  0000 R CNN
F 1 "100k" H 6030 1145 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6030 1100 50  0001 C CNN
F 3 "~" H 6100 1100 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    6100 1100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 611FACDE
P 6100 1250
F 0 "#PWR0108" H 6100 1000 50  0001 C CNN
F 1 "GND" H 6105 1077 50  0000 C CNN
F 2 "" H 6100 1250 50  0001 C CNN
F 3 "" H 6100 1250 50  0001 C CNN
	1    6100 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D1
U 1 1 611FBCFE
P 6450 1100
F 0 "D1" V 6496 1020 50  0000 R CNN
F 1 "3.9V" V 6405 1020 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6450 1100 50  0001 C CNN
F 3 "~" H 6450 1100 50  0001 C CNN
	1    6450 1100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 611FC880
P 6450 1250
F 0 "#PWR0109" H 6450 1000 50  0001 C CNN
F 1 "GND" H 6455 1077 50  0000 C CNN
F 2 "" H 6450 1250 50  0001 C CNN
F 3 "" H 6450 1250 50  0001 C CNN
	1    6450 1250
	1    0    0    -1  
$EndComp
$Comp
L Isolator:VTL5C U4
U 1 1 611FD557
P 7050 1150
F 0 "U4" V 7004 1330 50  0000 L CNN
F 1 "VTL5C" V 7095 1330 50  0000 L CNN
F 2 "OptoDevice:PerkinElmer_VTL5C" H 7050 1150 50  0001 C CNN
F 3 "http://www.qsl.net/wa1ion/vactrol/vactrol.pdf" H 7100 900 50  0001 C CNN
	1    7050 1150
	0    1    1    0   
$EndComp
$Comp
L Isolator:VTL5C U5
U 1 1 611FE797
P 7700 1150
F 0 "U5" V 7654 1330 50  0000 L CNN
F 1 "VTL5C" V 7745 1330 50  0000 L CNN
F 2 "OptoDevice:PerkinElmer_VTL5C" H 7700 1150 50  0001 C CNN
F 3 "http://www.qsl.net/wa1ion/vactrol/vactrol.pdf" H 7750 900 50  0001 C CNN
	1    7700 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 850  6100 850 
Wire Wire Line
	7150 850  7600 850 
$Comp
L Device:R R21
U 1 1 61205AA0
P 6600 2350
F 0 "R21" V 6393 2350 50  0000 C CNN
F 1 "470" V 6484 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6530 2350 50  0001 C CNN
F 3 "~" H 6600 2350 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    6600 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 2350 8250 2350
Wire Wire Line
	8250 850  7800 850 
Wire Wire Line
	6250 2350 6350 2350
Wire Wire Line
	7600 1950 7300 1950
Wire Wire Line
	2100 1700 4650 1700
Wire Wire Line
	6700 3900 6950 3900
Wire Wire Line
	7300 1950 7300 4050
Connection ~ 7300 1950
Wire Wire Line
	7300 1950 7150 1950
Text GLabel 9750 4150 3    50   Input ~ 0
RES_1
Wire Wire Line
	6100 950  6100 850 
Connection ~ 6100 850 
Wire Wire Line
	6100 850  6450 850 
Wire Wire Line
	6450 950  6450 850 
Connection ~ 6450 850 
Wire Wire Line
	6450 850  6950 850 
$Comp
L Amplifier_Operational:TL072 U3
U 2 1 612CAAAB
P 9350 3800
F 0 "U3" H 9350 3433 50  0000 C CNN
F 1 "TL072" H 9350 3524 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 9350 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 9350 3800 50  0001 C CNN
	2    9350 3800
	1    0    0    1   
$EndComp
$Comp
L Device:R R18
U 1 1 612D0C60
P 5600 2650
F 0 "R18" H 5670 2696 50  0000 L CNN
F 1 "10k" H 5670 2605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5530 2650 50  0001 C CNN
F 3 "~" H 5600 2650 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    5600 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 612EF650
P 3300 6900
F 0 "C7" H 3415 6946 50  0000 L CNN
F 1 "0.1u" H 3415 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3338 6750 50  0001 C CNN
F 3 "~" H 3300 6900 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 3300 6900 50  0001 C CNN "Description"
	1    3300 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 612F00AB
P 3300 7200
F 0 "C8" H 3415 7246 50  0000 L CNN
F 1 "0.1u" H 3415 7155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3338 7050 50  0001 C CNN
F 3 "~" H 3300 7200 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 3300 7200 50  0001 C CNN "Description"
	1    3300 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0111
U 1 1 612F0751
P 3650 6750
AR Path="/612F0751" Ref="#PWR0111"  Part="1" 
AR Path="/5DD3665B/612F0751" Ref="#PWR?"  Part="1" 
F 0 "#PWR0111" H 3650 6600 50  0001 C CNN
F 1 "+15V" H 3550 6900 50  0000 L CNN
F 2 "" H 3650 6750 50  0001 C CNN
F 3 "" H 3650 6750 50  0001 C CNN
	1    3650 6750
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR0112
U 1 1 612F0EB6
P 3650 7350
AR Path="/612F0EB6" Ref="#PWR0112"  Part="1" 
AR Path="/5DD3665B/612F0EB6" Ref="#PWR?"  Part="1" 
F 0 "#PWR0112" H 3650 7450 50  0001 C CNN
F 1 "-15V" H 3550 7500 50  0000 L CNN
F 2 "" H 3650 7350 50  0001 C CNN
F 3 "" H 3650 7350 50  0001 C CNN
	1    3650 7350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 6130232F
P 3100 7100
F 0 "#PWR0113" H 3100 6850 50  0001 C CNN
F 1 "GND" H 3105 6927 50  0000 C CNN
F 2 "" H 3100 7100 50  0001 C CNN
F 3 "" H 3100 7100 50  0001 C CNN
	1    3100 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 7050 3100 7050
Wire Wire Line
	3100 7050 3100 7100
Connection ~ 3300 7050
$Comp
L Amplifier_Operational:TL072 U2
U 3 1 6130BAB4
P 4700 7050
F 0 "U2" H 4658 7096 50  0000 L CNN
F 1 "TL072" H 4658 7005 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 4700 7050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4700 7050 50  0001 C CNN
	3    4700 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 6130BABA
P 4250 6900
F 0 "C10" H 4365 6946 50  0000 L CNN
F 1 "0.1u" H 4365 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4288 6750 50  0001 C CNN
F 3 "~" H 4250 6900 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 4250 6900 50  0001 C CNN "Description"
	1    4250 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 6130BAC0
P 4250 7200
F 0 "C11" H 4365 7246 50  0000 L CNN
F 1 "0.1u" H 4365 7155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4288 7050 50  0001 C CNN
F 3 "~" H 4250 7200 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 4250 7200 50  0001 C CNN "Description"
	1    4250 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0114
U 1 1 6130BAC6
P 4600 6750
AR Path="/6130BAC6" Ref="#PWR0114"  Part="1" 
AR Path="/5DD3665B/6130BAC6" Ref="#PWR?"  Part="1" 
F 0 "#PWR0114" H 4600 6600 50  0001 C CNN
F 1 "+15V" H 4500 6900 50  0000 L CNN
F 2 "" H 4600 6750 50  0001 C CNN
F 3 "" H 4600 6750 50  0001 C CNN
	1    4600 6750
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR0115
U 1 1 6130BACC
P 4600 7350
AR Path="/6130BACC" Ref="#PWR0115"  Part="1" 
AR Path="/5DD3665B/6130BACC" Ref="#PWR?"  Part="1" 
F 0 "#PWR0115" H 4600 7450 50  0001 C CNN
F 1 "-15V" H 4500 7500 50  0000 L CNN
F 2 "" H 4600 7350 50  0001 C CNN
F 3 "" H 4600 7350 50  0001 C CNN
	1    4600 7350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 6130BAD6
P 4050 7100
F 0 "#PWR0116" H 4050 6850 50  0001 C CNN
F 1 "GND" H 4055 6927 50  0000 C CNN
F 2 "" H 4050 7100 50  0001 C CNN
F 3 "" H 4050 7100 50  0001 C CNN
	1    4050 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 7050 4050 7050
Wire Wire Line
	4050 7050 4050 7100
Connection ~ 4250 7050
$Comp
L Amplifier_Operational:TL072 U3
U 3 1 61314D63
P 5650 7050
F 0 "U3" H 5608 7096 50  0000 L CNN
F 1 "TL072" H 5608 7005 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 5650 7050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5650 7050 50  0001 C CNN
	3    5650 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 61314D69
P 5200 6900
F 0 "C13" H 5315 6946 50  0000 L CNN
F 1 "0.1u" H 5315 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 5238 6750 50  0001 C CNN
F 3 "~" H 5200 6900 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 5200 6900 50  0001 C CNN "Description"
	1    5200 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 61314D6F
P 5200 7200
F 0 "C14" H 5315 7246 50  0000 L CNN
F 1 "0.1u" H 5315 7155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 5238 7050 50  0001 C CNN
F 3 "~" H 5200 7200 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 5200 7200 50  0001 C CNN "Description"
	1    5200 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0117
U 1 1 61314D75
P 5550 6750
AR Path="/61314D75" Ref="#PWR0117"  Part="1" 
AR Path="/5DD3665B/61314D75" Ref="#PWR?"  Part="1" 
F 0 "#PWR0117" H 5550 6600 50  0001 C CNN
F 1 "+15V" H 5450 6900 50  0000 L CNN
F 2 "" H 5550 6750 50  0001 C CNN
F 3 "" H 5550 6750 50  0001 C CNN
	1    5550 6750
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR0118
U 1 1 61314D7B
P 5550 7350
AR Path="/61314D7B" Ref="#PWR0118"  Part="1" 
AR Path="/5DD3665B/61314D7B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0118" H 5550 7450 50  0001 C CNN
F 1 "-15V" H 5450 7500 50  0000 L CNN
F 2 "" H 5550 7350 50  0001 C CNN
F 3 "" H 5550 7350 50  0001 C CNN
	1    5550 7350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 61314D85
P 5000 7100
F 0 "#PWR0119" H 5000 6850 50  0001 C CNN
F 1 "GND" H 5005 6927 50  0000 C CNN
F 2 "" H 5000 7100 50  0001 C CNN
F 3 "" H 5000 7100 50  0001 C CNN
	1    5000 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 7050 5000 7050
Wire Wire Line
	5000 7050 5000 7100
Connection ~ 5200 7050
Wire Wire Line
	3300 6750 3650 6750
Connection ~ 3650 6750
Wire Wire Line
	3300 7350 3650 7350
Connection ~ 3650 7350
Wire Wire Line
	4250 6750 4600 6750
Connection ~ 4600 6750
Wire Wire Line
	4250 7350 4600 7350
Connection ~ 4600 7350
Wire Wire Line
	5200 6750 5550 6750
Connection ~ 5550 6750
Wire Wire Line
	5200 7350 5550 7350
Connection ~ 5550 7350
$Comp
L Device:R R22
U 1 1 61229656
P 5600 3350
F 0 "R22" V 5393 3350 50  0000 C CNN
F 1 "15k" V 5484 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5530 3350 50  0001 C CNN
F 3 "~" H 5600 3350 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    5600 3350
	0    1    1    0   
$EndComp
Connection ~ 5900 3350
Wire Wire Line
	5750 3350 5900 3350
Text Label 5450 3350 2    50   ~ 0
S1
Wire Wire Line
	7800 3900 8000 3900
$Comp
L Device:R R23
U 1 1 612473C1
P 8000 4150
F 0 "R23" H 8070 4196 50  0000 L CNN
F 1 "10k" H 8070 4105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7930 4150 50  0001 C CNN
F 3 "~" H 8000 4150 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    8000 4150
	1    0    0    -1  
$EndComp
Text Label 8000 4300 3    50   ~ 0
S2
Wire Wire Line
	8000 4000 8000 3900
Connection ~ 8000 3900
Wire Wire Line
	8000 3900 8500 3900
Text Label 7500 4600 3    50   ~ 0
S4
Text GLabel 1700 2750 0    50   Input ~ 0
CV1
Text GLabel 1700 3600 0    50   Input ~ 0
CV2
Text GLabel 1700 1700 0    50   Input ~ 0
CV
Wire Wire Line
	1700 1700 1800 1700
$Comp
L Amplifier_Operational:TL072 U2
U 2 1 611AE3C7
P 2050 5950
F 0 "U2" H 2050 5583 50  0000 C CNN
F 1 "TL072" H 2050 5674 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2050 5950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2050 5950 50  0001 C CNN
	2    2050 5950
	1    0    0    1   
$EndComp
Wire Wire Line
	1700 5850 1750 5850
Wire Wire Line
	2350 5950 2450 5950
Connection ~ 2450 5950
Wire Wire Line
	2450 5950 2850 5950
Wire Wire Line
	1700 5350 1950 5350
$Comp
L Device:R R25
U 1 1 6120B08C
P 2100 5350
F 0 "R25" V 1893 5350 50  0000 C CNN
F 1 "10k" V 1984 5350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2030 5350 50  0001 C CNN
F 3 "~" H 2100 5350 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    2100 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 5350 2450 5350
$Comp
L Device:R R26
U 1 1 6120B5F5
P 2750 5350
F 0 "R26" V 2543 5350 50  0000 C CNN
F 1 "10k" V 2634 5350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2680 5350 50  0001 C CNN
F 3 "~" H 2750 5350 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    2750 5350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6120C36B
P 3000 5450
F 0 "#PWR0102" H 3000 5200 50  0001 C CNN
F 1 "GND" H 3005 5277 50  0000 C CNN
F 2 "" H 3000 5450 50  0001 C CNN
F 3 "" H 3000 5450 50  0001 C CNN
	1    3000 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5450 3000 5350
Wire Wire Line
	3000 5350 2900 5350
Connection ~ 2450 5350
Text GLabel 9950 3800 2    50   Input ~ 0
OUT
Text Label 2850 5950 0    50   ~ 0
S3
Wire Wire Line
	2450 5350 2600 5350
Wire Wire Line
	1700 5350 1700 5850
Wire Wire Line
	2450 5350 2450 5950
Wire Wire Line
	9750 3800 9750 4150
Wire Wire Line
	7500 4600 7500 4500
Text GLabel 1750 6050 0    50   Input ~ 0
RES_1_out
Wire Wire Line
	5050 2250 5600 2250
Wire Wire Line
	6950 1450 6950 3900
Wire Wire Line
	7150 1950 7150 1450
Wire Wire Line
	7600 1950 7600 1450
Wire Wire Line
	7800 1450 7800 3900
Wire Wire Line
	8250 850  8250 2350
Connection ~ 5600 2250
Wire Wire Line
	5600 2250 5650 2250
Wire Wire Line
	5600 1400 5600 1850
$Comp
L Device:R R15
U 1 1 61238A3F
P 6150 1850
F 0 "R15" V 5943 1850 50  0000 C CNN
F 1 "470" V 6034 1850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6080 1850 50  0001 C CNN
F 3 "~" H 6150 1850 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2150 6750 50  0001 C CNN "Description"
	1    6150 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 1850 6350 1850
Wire Wire Line
	6350 1850 6350 2350
Connection ~ 6350 2350
Wire Wire Line
	6350 2350 6450 2350
Text Label 5750 1850 1    50   ~ 0
S2a
Text Label 5850 1850 1    50   ~ 0
S2b
Wire Wire Line
	5750 1850 5600 1850
Connection ~ 5600 1850
Wire Wire Line
	5600 1850 5600 2250
Wire Wire Line
	5850 1850 6000 1850
$Comp
L Amplifier_Operational:TL072 U3
U 1 1 612C8A9A
P 6300 3900
F 0 "U3" H 6300 3533 50  0000 C CNN
F 1 "TL072" H 6300 3624 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 6300 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6300 3900 50  0001 C CNN
	1    6300 3900
	1    0    0    1   
$EndComp
Text GLabel 6100 5450 2    50   Input ~ 0
CV
Text GLabel 6100 5550 2    50   Input ~ 0
CV1
Text GLabel 6100 5650 2    50   Input ~ 0
CV2
Text Label 7100 5350 0    50   ~ 0
S1
Text Label 7100 5450 0    50   ~ 0
S2
Text Label 7100 5550 0    50   ~ 0
S3
Text Label 7100 5650 0    50   ~ 0
S4
Text GLabel 6100 6050 2    50   Input ~ 0
OUT
$Comp
L power:GND #PWR0101
U 1 1 6118B030
P 6100 5150
F 0 "#PWR0101" H 6100 4900 50  0001 C CNN
F 1 "GND" V 6105 5022 50  0000 R CNN
F 2 "" H 6100 5150 50  0001 C CNN
F 3 "" H 6100 5150 50  0001 C CNN
	1    6100 5150
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR0103
U 1 1 611D08DE
P 6100 5250
F 0 "#PWR0103" H 6100 5100 50  0001 C CNN
F 1 "+15V" V 6115 5378 50  0000 L CNN
F 2 "" H 6100 5250 50  0001 C CNN
F 3 "" H 6100 5250 50  0001 C CNN
	1    6100 5250
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 611D08DF
P 6100 5350
F 0 "#PWR0104" H 6100 5200 50  0001 C CNN
F 1 "+5V" V 6115 5478 50  0000 L CNN
F 2 "" H 6100 5350 50  0001 C CNN
F 3 "" H 6100 5350 50  0001 C CNN
	1    6100 5350
	0    1    1    0   
$EndComp
Text GLabel 6100 5950 2    50   Input ~ 0
IN
Text Label 6100 5750 0    50   ~ 0
S2a
Text Label 6100 5850 0    50   ~ 0
S2b
$Comp
L Connector:Conn_01x06_Female J2
U 1 1 612C434B
P 6900 5350
F 0 "J2" H 6792 5735 50  0000 C CNN
F 1 "01x06 Female" H 6792 5644 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 6900 5350 50  0001 C CNN
F 3 "~" H 6900 5350 50  0001 C CNN
F 4 "Board to Board Connectors (2.54 mm)" H 6900 5350 50  0001 C CNN "Description"
	1    6900 5350
	-1   0    0    -1  
$EndComp
Text GLabel 7100 5150 2    50   Input ~ 0
RES_1
Text GLabel 7100 5250 2    50   Input ~ 0
RES_1_out
$Comp
L Connector:Conn_01x10_Female J3
U 1 1 6133F976
P 5900 5550
F 0 "J3" H 5792 6135 50  0000 C CNN
F 1 "01x10 Female" H 5792 6044 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x10_P2.54mm_Vertical" H 5900 5550 50  0001 C CNN
F 3 "~" H 5900 5550 50  0001 C CNN
F 4 "Board to Board Connectors (2.54 mm)" H 5900 5550 50  0001 C CNN "Description"
	1    5900 5550
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 611BFCDE
P 5250 4000
F 0 "C3" V 5505 4000 50  0000 C CNN
F 1 "1u" V 5414 4000 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 5288 3850 50  0001 C CNN
F 3 "~" H 5250 4000 50  0001 C CNN
F 4 "Aluminium Electrolytic Capacitors (50V, D=6.3 mm, LS=2.5 mm)" V 5250 4000 50  0001 C CNN "Description"
	1    5250 4000
	0    -1   -1   0   
$EndComp
Text Notes 6250 1750 0    50   ~ 0
47k
Text Notes 6200 1250 0    50   ~ 0
4k7
Text Notes 1500 5000 0    50   ~ 0
resistor R25 must be connected to inverting input
$EndSCHEMATC
