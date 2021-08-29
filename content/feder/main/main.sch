EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "welle"
Date "2021-08-18"
Rev "R01"
Comp ""
Comment1 "schema for man circuit"
Comment2 "Wavefolder designed by Jürgen Haible and Yves Usson"
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
$Comp
L Mechanical:MountingHole H1
U 1 1 6097A217
P 9700 6000
F 0 "H1" H 9800 6046 50  0000 L CNN
F 1 "MountingHole" H 9800 5955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9700 6000 50  0001 C CNN
F 3 "~" H 9700 6000 50  0001 C CNN
	1    9700 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6097A580
P 9700 6300
F 0 "H2" H 9800 6346 50  0000 L CNN
F 1 "MountingHole" H 9800 6255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9700 6300 50  0001 C CNN
F 3 "~" H 9700 6300 50  0001 C CNN
	1    9700 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR029
U 1 1 5F816C5C
P 6100 7300
F 0 "#PWR029" H 6100 7150 50  0001 C CNN
F 1 "+15V" H 6115 7473 50  0000 C CNN
F 2 "" H 6100 7300 50  0001 C CNN
F 3 "" H 6100 7300 50  0001 C CNN
	1    6100 7300
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR031
U 1 1 5F816FAE
P 6350 7300
F 0 "#PWR031" H 6350 7400 50  0001 C CNN
F 1 "-15V" H 6365 7473 50  0000 C CNN
F 2 "" H 6350 7300 50  0001 C CNN
F 3 "" H 6350 7300 50  0001 C CNN
	1    6350 7300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5F817A91
P 6600 7400
F 0 "#PWR032" H 6600 7150 50  0001 C CNN
F 1 "GND" H 6605 7227 50  0000 C CNN
F 2 "" H 6600 7400 50  0001 C CNN
F 3 "" H 6600 7400 50  0001 C CNN
	1    6600 7400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5F737716
P 6100 7300
F 0 "#FLG02" H 6100 7375 50  0001 C CNN
F 1 "PWR_FLAG" H 6100 7473 50  0001 C CNN
F 2 "" H 6100 7300 50  0001 C CNN
F 3 "~" H 6100 7300 50  0001 C CNN
	1    6100 7300
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5F737C0D
P 6350 7300
F 0 "#FLG03" H 6350 7375 50  0001 C CNN
F 1 "PWR_FLAG" H 6350 7473 50  0001 C CNN
F 2 "" H 6350 7300 50  0001 C CNN
F 3 "~" H 6350 7300 50  0001 C CNN
	1    6350 7300
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5F737FC5
P 6600 7400
F 0 "#FLG04" H 6600 7475 50  0001 C CNN
F 1 "PWR_FLAG" H 6600 7573 50  0001 C CNN
F 2 "" H 6600 7400 50  0001 C CNN
F 3 "~" H 6600 7400 50  0001 C CNN
	1    6600 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5E180738
P 2600 7100
AR Path="/5E180738" Ref="C1"  Part="1" 
AR Path="/5DD3665B/5E180738" Ref="C?"  Part="1" 
F 0 "C1" H 2718 7146 50  0000 L CNN
F 1 "22u" H 2718 7055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2638 6950 50  0001 C CNN
F 3 "~" H 2600 7100 50  0001 C CNN
F 4 "Aluminium Electrolytic Capacitors (50V, D=6.3 mm, LS=2.5 mm)" H 2600 7100 50  0001 C CNN "Description"
	1    2600 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5E18070C
P 2600 7400
AR Path="/5E18070C" Ref="C2"  Part="1" 
AR Path="/5DD3665B/5E18070C" Ref="C?"  Part="1" 
F 0 "C2" H 2718 7446 50  0000 L CNN
F 1 "22u" H 2718 7355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2638 7250 50  0001 C CNN
F 3 "~" H 2600 7400 50  0001 C CNN
F 4 "Aluminium Electrolytic Capacitors (50V, D=6.3 mm, LS=2.5 mm)" H 2600 7400 50  0001 C CNN "Description"
	1    2600 7400
	1    0    0    -1  
$EndComp
Connection ~ 2600 7250
Wire Wire Line
	2600 7250 2400 7250
Wire Wire Line
	2350 7550 2400 7550
Connection ~ 950  7000
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5FCD1662
P 950 7000
AR Path="/5FCD1662" Ref="#FLG01"  Part="1" 
AR Path="/5DD3665B/5FCD1662" Ref="#FLG?"  Part="1" 
F 0 "#FLG01" H 950 7075 50  0001 C CNN
F 1 "PWR_FLAG" H 950 7128 50  0001 L CNN
F 2 "" H 950 7000 50  0001 C CNN
F 3 "~" H 950 7000 50  0001 C CNN
	1    950  7000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5FCD1661
P 950 7000
AR Path="/5FCD1661" Ref="#PWR01"  Part="1" 
AR Path="/5DD3665B/5FCD1661" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 950 6850 50  0001 C CNN
F 1 "+5V" V 965 7128 50  0000 L CNN
F 2 "" H 950 7000 50  0001 C CNN
F 3 "" H 950 7000 50  0001 C CNN
	1    950  7000
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 5FCD1660
P 1450 7000
AR Path="/5FCD1660" Ref="#PWR011"  Part="1" 
AR Path="/5DD3665B/5FCD1660" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 1450 6850 50  0001 C CNN
F 1 "+5V" V 1465 7128 50  0000 L CNN
F 2 "" H 1450 7000 50  0001 C CNN
F 3 "" H 1450 7000 50  0001 C CNN
	1    1450 7000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5FC69BA7
P 1450 7200
AR Path="/5FC69BA7" Ref="#PWR013"  Part="1" 
AR Path="/5DD3665B/5FC69BA7" Ref="#PWR?"  Part="1" 
F 0 "#PWR013" H 1450 6950 50  0001 C CNN
F 1 "GND" V 1455 7072 50  0000 R CNN
F 2 "" H 1450 7200 50  0001 C CNN
F 3 "" H 1450 7200 50  0001 C CNN
	1    1450 7200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5FCD165F
P 1450 7100
AR Path="/5FCD165F" Ref="#PWR012"  Part="1" 
AR Path="/5DD3665B/5FCD165F" Ref="#PWR?"  Part="1" 
F 0 "#PWR012" H 1450 6850 50  0001 C CNN
F 1 "GND" V 1455 6972 50  0000 R CNN
F 2 "" H 1450 7100 50  0001 C CNN
F 3 "" H 1450 7100 50  0001 C CNN
	1    1450 7100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5E18076B
P 950 7100
AR Path="/5E18076B" Ref="#PWR02"  Part="1" 
AR Path="/5DD3665B/5E18076B" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 950 6850 50  0001 C CNN
F 1 "GND" V 955 6972 50  0000 R CNN
F 2 "" H 950 7100 50  0001 C CNN
F 3 "" H 950 7100 50  0001 C CNN
	1    950  7100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E180765
P 950 7200
AR Path="/5E180765" Ref="#PWR03"  Part="1" 
AR Path="/5DD3665B/5E180765" Ref="#PWR?"  Part="1" 
F 0 "#PWR03" H 950 6950 50  0001 C CNN
F 1 "GND" V 955 7072 50  0000 R CNN
F 2 "" H 950 7200 50  0001 C CNN
F 3 "" H 950 7200 50  0001 C CNN
	1    950  7200
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J4
U 1 1 5FCD165C
P 1250 7200
AR Path="/5FCD165C" Ref="J4"  Part="1" 
AR Path="/5DD3665B/5FCD165C" Ref="J?"  Part="1" 
F 0 "J4" H 1300 7617 50  0000 C CNN
F 1 "10 Pos" H 1300 7526 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 1250 7200 50  0001 C CNN
F 3 "~" H 1250 7200 50  0001 C CNN
F 4 "Pin Header IDC (2.54mm)" H 1250 7200 50  0001 C CNN "Description"
	1    1250 7200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5E180712
P 2400 7250
AR Path="/5E180712" Ref="#PWR017"  Part="1" 
AR Path="/5DD3665B/5E180712" Ref="#PWR?"  Part="1" 
F 0 "#PWR017" H 2400 7000 50  0001 C CNN
F 1 "GND" V 2400 7050 50  0000 C CNN
F 2 "" H 2400 7250 50  0001 C CNN
F 3 "" H 2400 7250 50  0001 C CNN
	1    2400 7250
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5FB443E6
P 2200 6950
F 0 "R6" V 1993 6950 50  0000 C CNN
F 1 "10" V 2084 6950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2130 6950 50  0001 C CNN
F 3 "~" H 2200 6950 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    2200 6950
	0    1    1    0   
$EndComp
$Comp
L power:+15V #PWR016
U 1 1 5FC69BA0
P 2400 6950
AR Path="/5FC69BA0" Ref="#PWR016"  Part="1" 
AR Path="/5DD3665B/5FC69BA0" Ref="#PWR?"  Part="1" 
F 0 "#PWR016" H 2400 6800 50  0001 C CNN
F 1 "+15V" H 2300 7100 50  0000 L CNN
F 2 "" H 2400 6950 50  0001 C CNN
F 3 "" H 2400 6950 50  0001 C CNN
	1    2400 6950
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR018
U 1 1 5FC69BA2
P 2400 7550
AR Path="/5FC69BA2" Ref="#PWR018"  Part="1" 
AR Path="/5DD3665B/5FC69BA2" Ref="#PWR?"  Part="1" 
F 0 "#PWR018" H 2400 7650 50  0001 C CNN
F 1 "-15V" H 2300 7700 50  0000 L CNN
F 2 "" H 2400 7550 50  0001 C CNN
F 3 "" H 2400 7550 50  0001 C CNN
	1    2400 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5FC69BB1
P 2200 7550
F 0 "R7" V 1993 7550 50  0000 C CNN
F 1 "10" V 2084 7550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2130 7550 50  0001 C CNN
F 3 "~" H 2200 7550 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
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
Text GLabel 1450 7300 2    50   Input ~ 0
VP
Text GLabel 950  7300 0    50   Input ~ 0
VP
Text GLabel 1450 7400 2    50   Input ~ 0
VN
Text GLabel 950  7400 0    50   Input ~ 0
VN
$Comp
L Mechanical:MountingHole H3
U 1 1 6098DECA
P 10450 6000
F 0 "H3" H 10550 6046 50  0000 L CNN
F 1 "MountingHole" H 10550 5955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10450 6000 50  0001 C CNN
F 3 "~" H 10450 6000 50  0001 C CNN
	1    10450 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6098DED0
P 10450 6300
F 0 "H4" H 10550 6346 50  0000 L CNN
F 1 "MountingHole" H 10550 6255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10450 6300 50  0001 C CNN
F 3 "~" H 10450 6300 50  0001 C CNN
	1    10450 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5CBF0BB7
P 4450 7100
F 0 "C5" H 4565 7146 50  0000 L CNN
F 1 "0.1u" H 4565 7055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4488 6950 50  0001 C CNN
F 3 "~" H 4450 7100 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 4450 7100 50  0001 C CNN "Description"
	1    4450 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5CC0F5AA
P 4450 7400
F 0 "C6" H 4565 7446 50  0000 L CNN
F 1 "0.1u" H 4565 7355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4488 7250 50  0001 C CNN
F 3 "~" H 4450 7400 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 4450 7400 50  0001 C CNN "Description"
	1    4450 7400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 5E7BC4E4
P 3400 7250
F 0 "U1" H 3358 7296 50  0000 L CNN
F 1 "TL072" H 3358 7205 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3400 7250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3400 7250 50  0001 C CNN
	3    3400 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5E7CD87D
P 3650 7100
F 0 "C3" H 3765 7146 50  0000 L CNN
F 1 "0.1u" H 3765 7055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3688 6950 50  0001 C CNN
F 3 "~" H 3650 7100 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 3650 7100 50  0001 C CNN "Description"
	1    3650 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5E7CD883
P 3650 7400
F 0 "C4" H 3765 7446 50  0000 L CNN
F 1 "0.1u" H 3765 7355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3688 7250 50  0001 C CNN
F 3 "~" H 3650 7400 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" H 3650 7400 50  0001 C CNN "Description"
	1    3650 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 6950 3650 6950
Wire Wire Line
	3300 7550 3650 7550
Connection ~ 3650 7250
Wire Wire Line
	3650 7250 4450 7250
Connection ~ 3650 7550
Wire Wire Line
	3650 7550 4050 7550
$Comp
L Amplifier_Operational:TL074 U2
U 5 1 5D86D0B4
P 4150 7250
F 0 "U2" H 4108 7296 50  0000 L CNN
F 1 "TL074" H 4108 7205 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 4100 7350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4200 7450 50  0001 C CNN
	5    4150 7250
	1    0    0    -1  
$EndComp
Connection ~ 4050 7550
Connection ~ 4050 6950
Wire Wire Line
	4050 6950 4450 6950
Wire Wire Line
	4050 7550 4450 7550
Connection ~ 4450 7250
Wire Wire Line
	3650 6950 4050 6950
Connection ~ 3650 6950
$Comp
L power:+15V #PWR021
U 1 1 6122991C
P 3300 6950
AR Path="/6122991C" Ref="#PWR021"  Part="1" 
AR Path="/5DD3665B/6122991C" Ref="#PWR?"  Part="1" 
F 0 "#PWR021" H 3300 6800 50  0001 C CNN
F 1 "+15V" H 3200 7100 50  0000 L CNN
F 2 "" H 3300 6950 50  0001 C CNN
F 3 "" H 3300 6950 50  0001 C CNN
	1    3300 6950
	1    0    0    -1  
$EndComp
Connection ~ 3300 6950
$Comp
L power:-15V #PWR022
U 1 1 6122A98A
P 3300 7550
AR Path="/6122A98A" Ref="#PWR022"  Part="1" 
AR Path="/5DD3665B/6122A98A" Ref="#PWR?"  Part="1" 
F 0 "#PWR022" H 3300 7650 50  0001 C CNN
F 1 "-15V" H 3200 7700 50  0000 L CNN
F 2 "" H 3300 7550 50  0001 C CNN
F 3 "" H 3300 7550 50  0001 C CNN
	1    3300 7550
	-1   0    0    1   
$EndComp
Connection ~ 3300 7550
$Comp
L power:GND #PWR019
U 1 1 6122B5FD
P 3100 7300
F 0 "#PWR019" H 3100 7050 50  0001 C CNN
F 1 "GND" H 3105 7127 50  0000 C CNN
F 2 "" H 3100 7300 50  0001 C CNN
F 3 "" H 3100 7300 50  0001 C CNN
	1    3100 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 7300 3100 7250
Wire Wire Line
	3100 7250 3650 7250
Text Label 9950 5300 2    50   ~ 0
input
Text Label 9950 5100 2    50   ~ 0
control
Text Label 9950 5200 2    50   ~ 0
range
Text Label 9950 5500 2    50   ~ 0
out
Text Label 10750 5200 2    50   ~ 0
shape_a
Text Label 10750 5300 2    50   ~ 0
shape_b
$Comp
L power:GND #PWR05
U 1 1 6126FB45
P 10750 5100
F 0 "#PWR05" H 10750 4850 50  0001 C CNN
F 1 "GND" V 10755 4972 50  0000 R CNN
F 2 "" H 10750 5100 50  0001 C CNN
F 3 "" H 10750 5100 50  0001 C CNN
	1    10750 5100
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 612927B3
P 9950 5000
F 0 "#PWR07" H 9950 4850 50  0001 C CNN
F 1 "+5V" V 9965 5128 50  0000 L CNN
F 2 "" H 9950 5000 50  0001 C CNN
F 3 "" H 9950 5000 50  0001 C CNN
	1    9950 5000
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR06
U 1 1 6127169F
P 9950 5400
F 0 "#PWR06" H 9950 5250 50  0001 C CNN
F 1 "+15V" V 9965 5528 50  0000 L CNN
F 2 "" H 9950 5400 50  0001 C CNN
F 3 "" H 9950 5400 50  0001 C CNN
	1    9950 5400
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x06_Female J1
U 1 1 611F6237
P 10150 5200
F 0 "J1" H 10178 5130 50  0000 L CNN
F 1 "01x06 Female" H 10178 5085 50  0001 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 10150 5200 50  0001 C CNN
F 3 "~" H 10150 5200 50  0001 C CNN
F 4 "Board to Board Connectors (2.54 mm)" H 10150 5200 50  0001 C CNN "Description"
	1    10150 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J2
U 1 1 611F7236
P 10950 5200
F 0 "J2" H 10978 5180 50  0000 L CNN
F 1 "01x03 Female" H 10978 5135 50  0001 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 10950 5200 50  0001 C CNN
F 3 "~" H 10950 5200 50  0001 C CNN
F 4 "Board to Board Connectors (2.54 mm)" H 10950 5200 50  0001 C CNN "Description"
	1    10950 5200
	1    0    0    -1  
$EndComp
Wire Notes Line
	8800 6100 8800 6450
Wire Notes Line
	8800 6450 7000 6450
Wire Notes Line
	7000 6450 7000 6100
Wire Notes Line
	7000 6100 8800 6100
Text Notes 7050 6400 0    50   ~ 0
* Add capacitor from 10-47p when there \nis  self oscillation otherwise let connection \nopen
Text Label 1050 3050 2    50   ~ 0
IN_1
$Comp
L Device:CP C7
U 1 1 612BC9D8
P 1300 3050
F 0 "C7" V 1045 3050 50  0000 C CNN
F 1 "10u" V 1136 3050 50  0000 C CNN
F 2 "" H 1338 2900 50  0001 C CNN
F 3 "~" H 1300 3050 50  0001 C CNN
	1    1300 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 612BD1A4
P 1650 3250
F 0 "R1" H 1720 3296 50  0000 L CNN
F 1 "100k" H 1720 3205 50  0000 L CNN
F 2 "" V 1580 3250 50  0001 C CNN
F 3 "~" H 1650 3250 50  0001 C CNN
	1    1650 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 612BD72C
P 1650 3450
F 0 "#PWR04" H 1650 3200 50  0001 C CNN
F 1 "GND" H 1655 3277 50  0000 C CNN
F 2 "" H 1650 3450 50  0001 C CNN
F 3 "" H 1650 3450 50  0001 C CNN
	1    1650 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3450 1650 3400
Wire Wire Line
	1650 3050 1450 3050
Wire Wire Line
	1150 3050 1050 3050
Wire Wire Line
	1650 3100 1650 3050
Text Label 1050 4000 2    50   ~ 0
IN_2
$Comp
L Device:CP C8
U 1 1 612BE70F
P 1300 4000
F 0 "C8" V 1045 4000 50  0000 C CNN
F 1 "10u" V 1136 4000 50  0000 C CNN
F 2 "" H 1338 3850 50  0001 C CNN
F 3 "~" H 1300 4000 50  0001 C CNN
	1    1300 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 612BE715
P 1650 4200
F 0 "R2" H 1720 4246 50  0000 L CNN
F 1 "100k" H 1720 4155 50  0000 L CNN
F 2 "" V 1580 4200 50  0001 C CNN
F 3 "~" H 1650 4200 50  0001 C CNN
	1    1650 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 612BE71B
P 1650 4400
F 0 "#PWR08" H 1650 4150 50  0001 C CNN
F 1 "GND" H 1655 4227 50  0000 C CNN
F 2 "" H 1650 4400 50  0001 C CNN
F 3 "" H 1650 4400 50  0001 C CNN
	1    1650 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4400 1650 4350
Wire Wire Line
	1650 4000 1450 4000
Wire Wire Line
	1150 4000 1050 4000
Wire Wire Line
	1650 4050 1650 4000
$Comp
L Amplifier_Operational:TL072 U3
U 1 1 612BFE0E
P 3000 3150
F 0 "U3" H 3000 3517 50  0000 C CNN
F 1 "TL072" H 3000 3426 50  0000 C CNN
F 2 "" H 3000 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3000 3150 50  0001 C CNN
	1    3000 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 612C1994
P 3000 3600
F 0 "R5" V 2793 3600 50  0000 C CNN
F 1 "100k" V 2884 3600 50  0000 C CNN
F 2 "" V 2930 3600 50  0001 C CNN
F 3 "~" H 3000 3600 50  0001 C CNN
	1    3000 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 612C22C7
P 2600 3850
F 0 "R4" H 2530 3804 50  0000 R CNN
F 1 "100k" H 2530 3895 50  0000 R CNN
F 2 "" V 2530 3850 50  0001 C CNN
F 3 "~" H 2600 3850 50  0001 C CNN
	1    2600 3850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 612C285E
P 2600 4000
F 0 "#PWR09" H 2600 3750 50  0001 C CNN
F 1 "GND" H 2605 3827 50  0000 C CNN
F 2 "" H 2600 4000 50  0001 C CNN
F 3 "" H 2600 4000 50  0001 C CNN
	1    2600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3700 2600 3600
Wire Wire Line
	2600 3250 2700 3250
Wire Wire Line
	2600 3600 2850 3600
Wire Wire Line
	3400 3600 3400 3150
Wire Wire Line
	3400 3150 3300 3150
Wire Wire Line
	3150 3600 3400 3600
Connection ~ 2600 3600
Wire Wire Line
	2600 3600 2600 3250
$Comp
L Device:R R3
U 1 1 612C3DC3
P 2200 3050
F 0 "R3" V 1993 3050 50  0000 C CNN
F 1 "100k" V 2084 3050 50  0000 C CNN
F 2 "" V 2130 3050 50  0001 C CNN
F 3 "~" H 2200 3050 50  0001 C CNN
	1    2200 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 3050 2050 3050
Wire Wire Line
	2350 3050 2700 3050
Connection ~ 1650 3050
$Comp
L Device:R_POT RV2
U 1 1 612B4DD0
P 5350 2500
F 0 "RV2" H 5281 2546 50  0000 R CNN
F 1 "R_POT" H 5281 2455 50  0000 R CNN
F 2 "" H 5350 2500 50  0001 C CNN
F 3 "~" H 5350 2500 50  0001 C CNN
	1    5350 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 612B5685
P 5000 2150
F 0 "R11" V 4793 2150 50  0000 C CNN
F 1 "10k" V 4884 2150 50  0000 C CNN
F 2 "" V 4930 2150 50  0001 C CNN
F 3 "~" H 5000 2150 50  0001 C CNN
	1    5000 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 612B5D3A
P 5650 2150
F 0 "R13" V 5443 2150 50  0000 C CNN
F 1 "2.2k" V 5534 2150 50  0000 C CNN
F 2 "" V 5580 2150 50  0001 C CNN
F 3 "~" H 5650 2150 50  0001 C CNN
	1    5650 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 612B643C
P 5650 2850
F 0 "R14" V 5443 2850 50  0000 C CNN
F 1 "10k" V 5534 2850 50  0000 C CNN
F 2 "" V 5580 2850 50  0001 C CNN
F 3 "~" H 5650 2850 50  0001 C CNN
	1    5650 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 612B6A4A
P 5000 2850
F 0 "R12" V 4793 2850 50  0000 C CNN
F 1 "2.2k" V 4884 2850 50  0000 C CNN
F 2 "" V 4930 2850 50  0001 C CNN
F 3 "~" H 5000 2850 50  0001 C CNN
	1    5000 2850
	0    1    1    0   
$EndComp
$Comp
L Device:C C11
U 1 1 612B752B
P 4650 2850
F 0 "C11" V 4398 2850 50  0000 C CNN
F 1 "0.22u" V 4489 2850 50  0000 C CNN
F 2 "" H 4688 2700 50  0001 C CNN
F 3 "~" H 4650 2850 50  0001 C CNN
	1    4650 2850
	0    1    1    0   
$EndComp
$Comp
L Device:C C13
U 1 1 612B8621
P 6000 2150
F 0 "C13" V 5748 2150 50  0000 C CNN
F 1 "0.22u" V 5839 2150 50  0000 C CNN
F 2 "" H 6038 2000 50  0001 C CNN
F 3 "~" H 6000 2150 50  0001 C CNN
	1    6000 2150
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:TL072 U4
U 1 1 612B921F
P 6250 3300
F 0 "U4" H 6250 3667 50  0000 C CNN
F 1 "TL072" H 6250 3576 50  0000 C CNN
F 2 "" H 6250 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6250 3300 50  0001 C CNN
	1    6250 3300
	1    0    0    1   
$EndComp
Wire Wire Line
	4500 2850 4400 2850
Wire Wire Line
	4400 2850 4400 2150
Wire Wire Line
	4400 2150 4850 2150
Wire Wire Line
	5150 2150 5350 2150
Wire Wire Line
	6800 2150 6800 3300
Wire Wire Line
	6800 3300 6550 3300
Wire Wire Line
	5800 2150 5850 2150
Wire Wire Line
	6150 2150 6800 2150
Wire Wire Line
	5500 2500 5900 2500
Wire Wire Line
	5900 2500 5900 3200
Wire Wire Line
	5900 3200 5950 3200
$Comp
L Amplifier_Operational:TL072 U3
U 2 1 612BFE52
P 7850 2750
F 0 "U3" H 7850 2383 50  0000 C CNN
F 1 "TL072" H 7850 2474 50  0000 C CNN
F 2 "" H 7850 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7850 2750 50  0001 C CNN
	2    7850 2750
	1    0    0    1   
$EndComp
Wire Wire Line
	4800 2850 4850 2850
Wire Wire Line
	5800 2850 7550 2850
Wire Wire Line
	5150 2850 5350 2850
$Comp
L Device:R R20
U 1 1 612C76F7
P 7750 1400
F 0 "R20" V 7543 1400 50  0000 C CNN
F 1 "2k" V 7634 1400 50  0000 C CNN
F 2 "" V 7680 1400 50  0001 C CNN
F 3 "~" H 7750 1400 50  0001 C CNN
	1    7750 1400
	0    1    1    0   
$EndComp
$Comp
L Device:C C15
U 1 1 612C76FD
P 8100 1400
F 0 "C15" V 7848 1400 50  0000 C CNN
F 1 "0.01u" V 7939 1400 50  0000 C CNN
F 2 "" H 8138 1250 50  0001 C CNN
F 3 "~" H 8100 1400 50  0001 C CNN
	1    8100 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 1400 7950 1400
Wire Wire Line
	8250 1400 8400 1400
$Comp
L Device:C C14
U 1 1 612C8EBA
P 7350 3100
F 0 "C14" H 7235 3054 50  0000 R CNN
F 1 "10u" H 7235 3145 50  0000 R CNN
F 2 "" H 7388 2950 50  0001 C CNN
F 3 "~" H 7350 3100 50  0001 C CNN
	1    7350 3100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R19
U 1 1 612C984E
P 7350 3400
F 0 "R19" H 7280 3354 50  0000 R CNN
F 1 "660" H 7280 3445 50  0000 R CNN
F 2 "" V 7280 3400 50  0001 C CNN
F 3 "~" H 7350 3400 50  0001 C CNN
	1    7350 3400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 612CA899
P 7350 3550
F 0 "#PWR020" H 7350 3300 50  0001 C CNN
F 1 "GND" H 7355 3377 50  0000 C CNN
F 2 "" H 7350 3550 50  0001 C CNN
F 3 "" H 7350 3550 50  0001 C CNN
	1    7350 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2650 7550 2650
Wire Wire Line
	7350 2650 7350 1400
Wire Wire Line
	7350 1400 7600 1400
Wire Wire Line
	8150 2750 8400 2750
Wire Wire Line
	8400 2750 8400 1400
Text GLabel 7350 1850 2    50   Input ~ 0
OUT_TIP
Text GLabel 8400 1850 0    50   Input ~ 0
OUT_SLEEVE
Wire Wire Line
	5350 2350 5350 2150
Connection ~ 5350 2150
Wire Wire Line
	5350 2150 5500 2150
Wire Wire Line
	5350 2650 5350 2850
Connection ~ 5350 2850
Wire Wire Line
	5350 2850 5500 2850
$Comp
L power:GND #PWR014
U 1 1 612D5DCC
P 5900 3450
F 0 "#PWR014" H 5900 3200 50  0001 C CNN
F 1 "GND" H 5905 3277 50  0000 C CNN
F 2 "" H 5900 3450 50  0001 C CNN
F 3 "" H 5900 3450 50  0001 C CNN
	1    5900 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3400 5900 3400
Wire Wire Line
	5900 3400 5900 3450
Text Label 3400 2850 2    50   ~ 0
IN_1
$Comp
L Device:CP C9
U 1 1 612F9774
P 3650 2850
F 0 "C9" V 3395 2850 50  0000 C CNN
F 1 "10u" V 3486 2850 50  0000 C CNN
F 2 "" H 3688 2700 50  0001 C CNN
F 3 "~" H 3650 2850 50  0001 C CNN
	1    3650 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 612F977A
P 4000 3050
F 0 "R10" H 4070 3096 50  0000 L CNN
F 1 "100k" H 4070 3005 50  0000 L CNN
F 2 "" V 3930 3050 50  0001 C CNN
F 3 "~" H 4000 3050 50  0001 C CNN
	1    4000 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 612F9780
P 4000 3250
F 0 "#PWR010" H 4000 3000 50  0001 C CNN
F 1 "GND" H 4005 3077 50  0000 C CNN
F 2 "" H 4000 3250 50  0001 C CNN
F 3 "" H 4000 3250 50  0001 C CNN
	1    4000 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3250 4000 3200
Wire Wire Line
	4000 2850 3800 2850
Wire Wire Line
	3500 2850 3400 2850
Wire Wire Line
	4000 2900 4000 2850
Wire Wire Line
	4000 2850 4400 2850
Connection ~ 4000 2850
Connection ~ 4400 2850
$Comp
L Amplifier_Operational:TL072 U1
U 1 1 612FD689
P 4650 4550
F 0 "U1" H 4650 4917 50  0000 C CNN
F 1 "TL072" H 4650 4826 50  0000 C CNN
F 2 "" H 4650 4550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4650 4550 50  0001 C CNN
	1    4650 4550
	1    0    0    1   
$EndComp
$Comp
L Device:C C10
U 1 1 612FFF39
P 3950 4450
F 0 "C10" V 3698 4450 50  0000 C CNN
F 1 "22u" V 3789 4450 50  0000 C CNN
F 2 "" H 3988 4300 50  0001 C CNN
F 3 "~" H 3950 4450 50  0001 C CNN
	1    3950 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 61302892
P 3550 4450
F 0 "R9" V 3343 4450 50  0000 C CNN
F 1 "68" V 3434 4450 50  0000 C CNN
F 2 "" V 3480 4450 50  0001 C CNN
F 3 "~" H 3550 4450 50  0001 C CNN
	1    3550 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 61303A17
P 2850 5200
F 0 "R8" V 2643 5200 50  0000 C CNN
F 1 "2k" V 2734 5200 50  0000 C CNN
F 2 "" V 2780 5200 50  0001 C CNN
F 3 "~" H 2850 5200 50  0001 C CNN
	1    2850 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 4450 4250 4450
Wire Wire Line
	3800 4450 3700 4450
Wire Wire Line
	3400 5200 3400 4650
Wire Wire Line
	3400 4650 4350 4650
Text GLabel 2350 4900 2    50   Input ~ 0
IN_SLEEVE
Text GLabel 3400 4900 0    50   Input ~ 0
IN_TIP
Wire Wire Line
	2700 5200 2350 5200
Wire Wire Line
	2350 5200 2350 4450
Wire Wire Line
	2350 4450 3400 4450
Wire Wire Line
	3000 5200 3400 5200
$Comp
L Device:C C12
U 1 1 6131DDD4
P 4700 3650
F 0 "C12" V 4448 3650 50  0000 C CNN
F 1 "1n" V 4539 3650 50  0000 C CNN
F 2 "" H 4738 3500 50  0001 C CNN
F 3 "~" H 4700 3650 50  0001 C CNN
	1    4700 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 6131F1AD
P 4700 4050
F 0 "RV1" V 4493 4050 50  0000 C CNN
F 1 "50k" V 4584 4050 50  0000 C CNN
F 2 "" H 4700 4050 50  0001 C CNN
F 3 "~" H 4700 4050 50  0001 C CNN
	1    4700 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 3650 4250 3650
Wire Wire Line
	4250 3650 4250 4050
Connection ~ 4250 4450
Wire Wire Line
	4250 4450 4100 4450
Wire Wire Line
	4850 3650 5200 3650
Wire Wire Line
	5200 3650 5200 4050
Wire Wire Line
	5200 4550 4950 4550
Wire Wire Line
	4550 4050 4250 4050
Connection ~ 4250 4050
Wire Wire Line
	4250 4050 4250 4450
Wire Wire Line
	4850 4050 4900 4050
Connection ~ 5200 4050
Wire Wire Line
	5200 4050 5200 4550
Wire Wire Line
	4700 4200 4900 4200
Wire Wire Line
	4900 4200 4900 4050
Connection ~ 4900 4050
Wire Wire Line
	4900 4050 5200 4050
$Comp
L Device:R R16
U 1 1 6132F7C6
P 5650 4550
F 0 "R16" V 5443 4550 50  0000 C CNN
F 1 "6.8k" V 5534 4550 50  0000 C CNN
F 2 "" V 5580 4550 50  0001 C CNN
F 3 "~" H 5650 4550 50  0001 C CNN
	1    5650 4550
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 613301DA
P 5650 4100
F 0 "R15" V 5443 4100 50  0000 C CNN
F 1 "6.8k" V 5534 4100 50  0000 C CNN
F 2 "" V 5580 4100 50  0001 C CNN
F 3 "~" H 5650 4100 50  0001 C CNN
	1    5650 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV3
U 1 1 61330B34
P 6150 4300
F 0 "RV3" H 6081 4346 50  0000 R CNN
F 1 "100k" H 6081 4255 50  0000 R CNN
F 2 "" H 6150 4300 50  0001 C CNN
F 3 "~" H 6150 4300 50  0001 C CNN
	1    6150 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2850 4400 3200
Wire Wire Line
	4400 3200 5400 3200
Wire Wire Line
	5400 3200 5400 4100
Wire Wire Line
	5400 4100 5500 4100
Wire Wire Line
	5200 4550 5500 4550
Connection ~ 5200 4550
Wire Wire Line
	5800 4100 6150 4100
Wire Wire Line
	6150 4100 6150 4150
Wire Wire Line
	6150 4450 6150 4550
Wire Wire Line
	6150 4550 5800 4550
$Comp
L Amplifier_Operational:TL072 U5
U 1 1 6133E5D1
P 7150 4400
F 0 "U5" H 7150 4767 50  0000 C CNN
F 1 "TL072" H 7150 4676 50  0000 C CNN
F 2 "" H 7150 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7150 4400 50  0001 C CNN
	1    7150 4400
	1    0    0    1   
$EndComp
$Comp
L Device:R R18
U 1 1 61340EDF
P 7150 4050
F 0 "R18" V 6943 4050 50  0000 C CNN
F 1 "100k" V 7034 4050 50  0000 C CNN
F 2 "" V 7080 4050 50  0001 C CNN
F 3 "~" H 7150 4050 50  0001 C CNN
	1    7150 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 2950 7350 2650
Connection ~ 7350 2650
$Comp
L Device:R R17
U 1 1 61358CDD
P 6550 4300
F 0 "R17" V 6343 4300 50  0000 C CNN
F 1 "100k" V 6434 4300 50  0000 C CNN
F 2 "" V 6480 4300 50  0001 C CNN
F 3 "~" H 6550 4300 50  0001 C CNN
	1    6550 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 4050 6800 4050
Wire Wire Line
	6800 4050 6800 4300
Wire Wire Line
	6800 4300 6850 4300
Wire Wire Line
	6800 4300 6700 4300
Wire Wire Line
	6400 4300 6300 4300
Connection ~ 6800 4300
Wire Wire Line
	7300 4050 7550 4050
Wire Wire Line
	7550 4050 7550 4400
Wire Wire Line
	7550 4400 7450 4400
$Comp
L power:GND #PWR015
U 1 1 61365120
P 6800 4550
F 0 "#PWR015" H 6800 4300 50  0001 C CNN
F 1 "GND" H 6805 4377 50  0000 C CNN
F 2 "" H 6800 4550 50  0001 C CNN
F 3 "" H 6800 4550 50  0001 C CNN
	1    6800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4500 6800 4500
Wire Wire Line
	6800 4500 6800 4550
Text GLabel 7550 4400 2    50   Input ~ 0
OUT
$EndSCHEMATC
