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
L Amplifier_Operational:TL074 U2
U 1 1 5E3E31A1
P 6700 2350
F 0 "U2" H 6700 1983 50  0000 C CNN
F 1 "TL074" H 6700 2074 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 6650 2450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6750 2550 50  0001 C CNN
	1    6700 2350
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U2
U 2 1 5E3E496E
P 7500 3300
F 0 "U2" H 7500 2933 50  0000 C CNN
F 1 "TL074" H 7500 3024 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 7450 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7550 3500 50  0001 C CNN
	2    7500 3300
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U2
U 3 1 5E3E5806
P 8500 3400
F 0 "U2" H 8500 3033 50  0000 C CNN
F 1 "TL074" H 8500 3124 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 8450 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8550 3600 50  0001 C CNN
	3    8500 3400
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U2
U 4 1 5E3E66F6
P 9500 3500
F 0 "U2" H 9500 3133 50  0000 C CNN
F 1 "TL074" H 9500 3224 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 9450 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 9550 3700 50  0001 C CNN
	4    9500 3500
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 2 1 5E403C4A
P 2650 4000
F 0 "U1" H 2650 3633 50  0000 C CNN
F 1 "TL072" H 2650 3724 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2650 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2650 4000 50  0001 C CNN
	2    2650 4000
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5E4052BB
P 2300 4150
F 0 "#PWR015" H 2300 3900 50  0001 C CNN
F 1 "GND" H 2305 3977 50  0000 C CNN
F 2 "" H 2300 4150 50  0001 C CNN
F 3 "" H 2300 4150 50  0001 C CNN
	1    2300 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4150 2300 4100
Wire Wire Line
	2300 4100 2350 4100
$Comp
L Device:R R2
U 1 1 5E408ED3
P 1800 3650
F 0 "R2" V 1593 3650 50  0000 C CNN
F 1 "68k" V 1684 3650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 1730 3650 50  0001 C CNN
F 3 "~" H 1800 3650 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    1800 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5E40945F
P 1800 4600
F 0 "R3" V 1593 4600 50  0000 C CNN
F 1 "100k" V 1684 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 1730 4600 50  0001 C CNN
F 3 "~" H 1800 4600 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    1800 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 3650 2050 3650
Wire Wire Line
	2050 3650 2050 3900
Wire Wire Line
	2050 4600 1950 4600
Wire Wire Line
	2350 3900 2300 3900
Connection ~ 2050 3900
Wire Wire Line
	2050 3900 2050 4600
$Comp
L Device:R R8
U 1 1 5E410F45
P 2650 3450
F 0 "R8" V 2443 3450 50  0000 C CNN
F 1 "100k" V 2534 3450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2580 3450 50  0001 C CNN
F 3 "~" H 2650 3450 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    2650 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 3450 2300 3450
Wire Wire Line
	2300 3450 2300 3900
Connection ~ 2300 3900
Wire Wire Line
	2300 3900 2050 3900
Wire Wire Line
	2950 4000 3050 4000
Wire Wire Line
	3050 4000 3050 3450
Wire Wire Line
	3050 3450 2800 3450
$Comp
L Transistor_BJT:BC547 Q2
U 1 1 5E42012D
P 3700 4000
F 0 "Q2" H 3891 4046 50  0000 L CNN
F 1 "BC547" H 3891 3955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 3900 3925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 3700 4000 50  0001 L CNN
	1    3700 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5E421546
P 3250 4000
F 0 "R9" V 3043 4000 50  0000 C CNN
F 1 "22k" V 3134 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3180 4000 50  0001 C CNN
F 3 "~" H 3250 4000 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    3250 4000
	0    1    1    0   
$EndComp
Connection ~ 3050 4000
Wire Wire Line
	3100 4000 3050 4000
$Comp
L Device:R R10
U 1 1 5E426971
P 3450 4400
F 0 "R10" H 3380 4354 50  0000 R CNN
F 1 "22k" H 3380 4445 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3380 4400 50  0001 C CNN
F 3 "~" H 3450 4400 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    3450 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 4000 3450 4000
Connection ~ 3450 4000
Wire Wire Line
	3450 4000 3500 4000
$Comp
L Device:R R13
U 1 1 5E429CDC
P 4050 4400
F 0 "R13" H 3980 4354 50  0000 R CNN
F 1 "15k" H 3980 4445 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3980 4400 50  0001 C CNN
F 3 "~" H 4050 4400 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    4050 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3450 4000 3450 4250
$Comp
L Device:R_POT_TRIM RV4
U 1 1 5E42E8C9
P 3450 5000
F 0 "RV4" V 3335 5000 50  0000 C CNN
F 1 "50k" V 3244 5000 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Z_Horizontal" H 3450 5000 50  0001 C CNN
F 3 "~" H 3450 5000 50  0001 C CNN
F 4 "Trimmer Resistor, Bourns 3296Z" V 3450 5000 50  0001 C CNN "Description"
	1    3450 5000
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR020
U 1 1 5E42F716
P 3800 4950
F 0 "#PWR020" H 3800 4800 50  0001 C CNN
F 1 "+15V" H 3815 5123 50  0000 C CNN
F 2 "" H 3800 4950 50  0001 C CNN
F 3 "" H 3800 4950 50  0001 C CNN
	1    3800 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 5000 3150 5000
$Comp
L power:-15V #PWR024
U 1 1 5E431EFF
P 3150 5050
F 0 "#PWR024" H 3150 5150 50  0001 C CNN
F 1 "-15V" H 3165 5223 50  0000 C CNN
F 2 "" H 3150 5050 50  0001 C CNN
F 3 "" H 3150 5050 50  0001 C CNN
	1    3150 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3800 5000 3600 5000
Wire Wire Line
	3450 4550 3450 4850
$Comp
L power:-15V #PWR026
U 1 1 5E440671
P 4050 5050
F 0 "#PWR026" H 4050 5150 50  0001 C CNN
F 1 "-15V" H 4065 5223 50  0000 C CNN
F 2 "" H 4050 5050 50  0001 C CNN
F 3 "" H 4050 5050 50  0001 C CNN
	1    4050 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 5050 4050 4550
Wire Wire Line
	3800 4200 4050 4200
Wire Wire Line
	4050 4200 4050 4250
$Comp
L Device:R R12
U 1 1 5E444207
P 4050 3600
F 0 "R12" H 3980 3554 50  0000 R CNN
F 1 "33k" H 3980 3645 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3980 3600 50  0001 C CNN
F 3 "~" H 4050 3600 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    4050 3600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5E444B3E
P 3550 3700
F 0 "#PWR023" H 3550 3450 50  0001 C CNN
F 1 "GND" H 3555 3527 50  0000 C CNN
F 2 "" H 3550 3700 50  0001 C CNN
F 3 "" H 3550 3700 50  0001 C CNN
	1    3550 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3700 3550 3650
Wire Wire Line
	3550 3650 3800 3650
Wire Wire Line
	3800 3650 3800 3800
Wire Wire Line
	4050 3750 4050 4200
Connection ~ 4050 4200
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 5E448ECB
P 3600 2900
F 0 "Q1" H 3791 2946 50  0000 L CNN
F 1 "BC547" H 3791 2855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 3800 2825 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 3600 2900 50  0001 L CNN
	1    3600 2900
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q3
U 1 1 5E44943E
P 4500 2900
F 0 "Q3" H 4691 2946 50  0000 L CNN
F 1 "BC547" H 4691 2855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 4700 2825 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4500 2900 50  0001 L CNN
	1    4500 2900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5E45650A
P 4800 2950
F 0 "#PWR027" H 4800 2700 50  0001 C CNN
F 1 "GND" H 4805 2777 50  0000 C CNN
F 2 "" H 4800 2950 50  0001 C CNN
F 3 "" H 4800 2950 50  0001 C CNN
	1    4800 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2950 4800 2900
Wire Wire Line
	4800 2900 4700 2900
Wire Wire Line
	4400 3100 4400 3250
Wire Wire Line
	4400 3250 4050 3250
Wire Wire Line
	3700 3250 3700 3100
Connection ~ 4050 3250
Wire Wire Line
	4050 3250 3700 3250
$Comp
L Device:R R1
U 1 1 5E45D9BD
P 1800 2300
F 0 "R1" V 1593 2300 50  0000 C CNN
F 1 "100k" V 1684 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 1730 2300 50  0001 C CNN
F 3 "~" H 1800 2300 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    1800 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5E4611DE
P 2150 2600
F 0 "R5" H 2080 2554 50  0000 R CNN
F 1 "680" H 2080 2645 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2080 2600 50  0001 C CNN
F 3 "~" H 2150 2600 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    2150 2600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5E46206E
P 2150 2750
F 0 "#PWR014" H 2150 2500 50  0001 C CNN
F 1 "GND" H 2155 2577 50  0000 C CNN
F 2 "" H 2150 2750 50  0001 C CNN
F 3 "" H 2150 2750 50  0001 C CNN
	1    2150 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2300 2150 2300
Wire Wire Line
	2150 2300 2150 2450
Wire Wire Line
	3400 2900 2550 2900
Wire Wire Line
	2550 2900 2550 2300
Wire Wire Line
	2550 2300 2150 2300
Connection ~ 2150 2300
$Comp
L Device:R R16
U 1 1 5E468F11
P 4850 2350
F 0 "R16" V 4950 2350 50  0000 C CNN
F 1 "10k" V 5050 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4780 2350 50  0001 C CNN
F 3 "~" H 4850 2350 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    4850 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 5E4696F6
P 4850 2150
F 0 "R15" V 4643 2150 50  0000 C CNN
F 1 "10k" V 4734 2150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4780 2150 50  0001 C CNN
F 3 "~" H 4850 2150 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    4850 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 3250 4050 3450
$Comp
L power:+15V #PWR025
U 1 1 5E47B31E
P 4050 1200
F 0 "#PWR025" H 4050 1050 50  0001 C CNN
F 1 "+15V" H 4065 1373 50  0000 C CNN
F 2 "" H 4050 1200 50  0001 C CNN
F 3 "" H 4050 1200 50  0001 C CNN
	1    4050 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1200 4050 1250
$Comp
L Device:R R11
U 1 1 5E4849DC
P 3700 1850
F 0 "R11" H 3630 1804 50  0000 R CNN
F 1 "15k" H 3630 1895 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3630 1850 50  0001 C CNN
F 3 "~" H 3700 1850 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    3700 1850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R14
U 1 1 5E484E5C
P 4400 1850
F 0 "R14" H 4330 1804 50  0000 R CNN
F 1 "15k" H 4330 1895 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4330 1850 50  0001 C CNN
F 3 "~" H 4400 1850 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    4400 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 2000 3700 2150
Wire Wire Line
	4400 2000 4400 2350
Wire Wire Line
	3900 1400 3700 1400
Wire Wire Line
	3700 1400 3700 1700
Wire Wire Line
	4200 1400 4400 1400
Wire Wire Line
	4400 1400 4400 1700
Wire Wire Line
	4700 2150 3700 2150
Connection ~ 3700 2150
Wire Wire Line
	3700 2150 3700 2700
Wire Wire Line
	4700 2350 4400 2350
Connection ~ 4400 2350
Wire Wire Line
	4400 2350 4400 2700
$Comp
L Device:R R17
U 1 1 5E4A4241
P 5200 2700
F 0 "R17" H 5130 2654 50  0000 R CNN
F 1 "100k" H 5130 2745 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5130 2700 50  0001 C CNN
F 3 "~" H 5200 2700 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    5200 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 2350 5200 2350
Wire Wire Line
	5200 2550 5200 2350
Connection ~ 5200 2350
$Comp
L power:GND #PWR028
U 1 1 5E4AA38B
P 5200 2850
F 0 "#PWR028" H 5200 2600 50  0001 C CNN
F 1 "GND" H 5205 2677 50  0000 C CNN
F 2 "" H 5200 2850 50  0001 C CNN
F 3 "" H 5200 2850 50  0001 C CNN
	1    5200 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 5E4AA6AD
P 6650 1750
F 0 "R24" V 6857 1750 50  0000 C CNN
F 1 "100k" V 6766 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6580 1750 50  0001 C CNN
F 3 "~" H 6650 1750 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    6650 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 1750 6300 2250
Wire Wire Line
	7000 2350 7000 1750
Wire Wire Line
	6500 1750 6300 1750
$Comp
L Device:R R23
U 1 1 5E4BA9C1
P 6100 2250
F 0 "R23" V 6307 2250 50  0000 C CNN
F 1 "100k" V 6216 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6030 2250 50  0001 C CNN
F 3 "~" H 6100 2250 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    6100 2250
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D18
U 1 1 5E4BE6CD
P 6450 1300
F 0 "D18" H 6450 1516 50  0000 C CNN
F 1 "D" H 6450 1425 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6450 1300 50  0001 C CNN
F 3 "~" H 6450 1300 50  0001 C CNN
F 4 "Small Signal Diode (DO-35)" V 5900 3850 50  0001 C CNN "Description"
	1    6450 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:D D17
U 1 1 5E4C011D
P 6450 950
F 0 "D17" H 6450 734 50  0000 C CNN
F 1 "D" H 6450 825 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6450 950 50  0001 C CNN
F 3 "~" H 6450 950 50  0001 C CNN
F 4 "Small Signal Diode (DO-35)" V 5900 3850 50  0001 C CNN "Description"
	1    6450 950 
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 950  6300 1300
Connection ~ 6300 1750
Connection ~ 6300 1300
Wire Wire Line
	6300 1300 6300 1750
$Comp
L Device:R R30
U 1 1 5E4C49A7
P 7000 1300
F 0 "R30" H 6930 1254 50  0000 R CNN
F 1 "33k" H 6930 1345 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6930 1300 50  0001 C CNN
F 3 "~" H 7000 1300 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    7000 1300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R31
U 1 1 5E4C529E
P 7400 1300
F 0 "R31" H 7330 1254 50  0000 R CNN
F 1 "2k7" H 7330 1345 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7330 1300 50  0001 C CNN
F 3 "~" H 7400 1300 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    7400 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6600 950  6850 950 
Wire Wire Line
	7400 950  7400 1150
Wire Wire Line
	7000 1150 7000 950 
Connection ~ 7000 950 
Wire Wire Line
	7000 950  7400 950 
Wire Wire Line
	7000 1450 7000 1750
Connection ~ 7000 1750
Wire Wire Line
	6600 1300 6850 1300
Wire Wire Line
	6850 1300 6850 950 
Connection ~ 6850 950 
Wire Wire Line
	6850 950  7000 950 
$Comp
L power:GND #PWR034
U 1 1 5E4DBF3B
P 7400 1450
F 0 "#PWR034" H 7400 1200 50  0001 C CNN
F 1 "GND" H 7405 1277 50  0000 C CNN
F 2 "" H 7400 1450 50  0001 C CNN
F 3 "" H 7400 1450 50  0001 C CNN
	1    7400 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2150 5200 2150
$Comp
L Device:R R18
U 1 1 5E51BA13
P 5550 1650
F 0 "R18" V 5757 1650 50  0000 C CNN
F 1 "100k" V 5666 1650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5480 1650 50  0001 C CNN
F 3 "~" H 5550 1650 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    5550 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 1650 5200 1650
Wire Wire Line
	5200 1650 5200 2150
Connection ~ 5200 2150
Wire Wire Line
	5700 1650 5900 1650
Wire Wire Line
	5900 1650 5900 2250
$Comp
L power:GND #PWR030
U 1 1 5E53564D
P 6300 2500
F 0 "#PWR030" H 6300 2250 50  0001 C CNN
F 1 "GND" H 6305 2327 50  0000 C CNN
F 2 "" H 6300 2500 50  0001 C CNN
F 3 "" H 6300 2500 50  0001 C CNN
	1    6300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2450 6300 2500
Wire Wire Line
	6300 2450 6400 2450
Wire Wire Line
	5950 2250 5900 2250
Wire Wire Line
	6250 2250 6300 2250
Connection ~ 6300 2250
Wire Wire Line
	6300 2250 6400 2250
Wire Wire Line
	5200 2150 5300 2150
Wire Wire Line
	5200 2350 5300 2350
$Comp
L Amplifier_Operational:TL072 U1
U 1 1 5E3DF0E1
P 5600 2250
F 0 "U1" H 5600 1883 50  0000 C CNN
F 1 "TL072" H 5600 1974 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 5600 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5600 2250 50  0001 C CNN
	1    5600 2250
	1    0    0    1   
$EndComp
Connection ~ 5900 2250
Connection ~ 7000 2350
$Comp
L Device:R R33
U 1 1 5E597543
P 7950 3300
F 0 "R33" V 8157 3300 50  0000 C CNN
F 1 "5k6" V 8066 3300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7880 3300 50  0001 C CNN
F 3 "~" H 7950 3300 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    7950 3300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R35
U 1 1 5E59C47E
P 9000 3400
F 0 "R35" V 9207 3400 50  0000 C CNN
F 1 "6k8" V 9116 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 8930 3400 50  0001 C CNN
F 3 "~" H 9000 3400 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    9000 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9200 3400 9150 3400
Wire Wire Line
	8850 3400 8800 3400
$Comp
L power:GND #PWR033
U 1 1 5E5A6319
P 7150 3450
F 0 "#PWR033" H 7150 3200 50  0001 C CNN
F 1 "GND" H 7155 3277 50  0000 C CNN
F 2 "" H 7150 3450 50  0001 C CNN
F 3 "" H 7150 3450 50  0001 C CNN
	1    7150 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3400 7150 3400
Wire Wire Line
	7150 3400 7150 3450
$Comp
L power:GND #PWR035
U 1 1 5E5AC903
P 8200 3550
F 0 "#PWR035" H 8200 3300 50  0001 C CNN
F 1 "GND" H 8205 3377 50  0000 C CNN
F 2 "" H 8200 3550 50  0001 C CNN
F 3 "" H 8200 3550 50  0001 C CNN
	1    8200 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 5E5B1788
P 9150 3650
F 0 "#PWR036" H 9150 3400 50  0001 C CNN
F 1 "GND" H 9155 3477 50  0000 C CNN
F 2 "" H 9150 3650 50  0001 C CNN
F 3 "" H 9150 3650 50  0001 C CNN
	1    9150 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3600 9150 3600
Wire Wire Line
	9150 3600 9150 3650
$Comp
L Device:R R32
U 1 1 5E5B6572
P 7500 2700
F 0 "R32" V 7707 2700 50  0000 C CNN
F 1 "5k6" V 7616 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7430 2700 50  0001 C CNN
F 3 "~" H 7500 2700 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    7500 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7150 2700 7150 3200
Wire Wire Line
	7150 3200 7200 3200
Wire Wire Line
	7800 2700 7800 3300
Connection ~ 7800 3300
$Comp
L Device:R R34
U 1 1 5E5C1D36
P 8500 2500
F 0 "R34" V 8707 2500 50  0000 C CNN
F 1 "56k" V 8616 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 8430 2500 50  0001 C CNN
F 3 "~" H 8500 2500 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    8500 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7800 2700 7650 2700
Wire Wire Line
	7350 2700 7150 2700
Wire Wire Line
	8200 2500 8350 2500
Wire Wire Line
	8650 2500 8800 2500
$Comp
L Device:D D20
U 1 1 5E5DD711
P 8500 2150
F 0 "D20" H 8500 2366 50  0000 C CNN
F 1 "D" H 8500 2275 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P5.08mm_Vertical_KathodeUp" H 8500 2150 50  0001 C CNN
F 3 "~" H 8500 2150 50  0001 C CNN
F 4 "Small Signal Diode (DO-35)" V 5900 3650 50  0001 C CNN "Description"
	1    8500 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:D D19
U 1 1 5E5DDE53
P 8500 1750
F 0 "D19" H 8500 1534 50  0000 C CNN
F 1 "D" H 8500 1625 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P5.08mm_Vertical_KathodeUp" H 8500 1750 50  0001 C CNN
F 3 "~" H 8500 1750 50  0001 C CNN
F 4 "Small Signal Diode (DO-35)" V 5900 3650 50  0001 C CNN "Description"
	1    8500 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8350 1750 8200 1750
Wire Wire Line
	8200 1750 8200 2150
Connection ~ 8200 2500
Wire Wire Line
	8650 1750 8800 1750
Wire Wire Line
	8800 1750 8800 2150
Connection ~ 8800 2500
Wire Wire Line
	8800 2150 8650 2150
Wire Wire Line
	8350 2150 8200 2150
Connection ~ 8800 2150
Wire Wire Line
	8800 2150 8800 2500
Connection ~ 8200 2150
Wire Wire Line
	8200 2150 8200 2500
$Comp
L Device:R R37
U 1 1 5E5FC8C9
P 9950 3500
F 0 "R37" V 10157 3500 50  0000 C CNN
F 1 "470" V 10066 3500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 9880 3500 50  0001 C CNN
F 3 "~" H 9950 3500 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    9950 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R36
U 1 1 5E5FCC94
P 9500 2600
F 0 "R36" V 9707 2600 50  0000 C CNN
F 1 "56k" V 9616 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 9430 2600 50  0001 C CNN
F 3 "~" H 9500 2600 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    9500 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9350 2600 9150 2600
Wire Wire Line
	9150 2600 9150 2950
Wire Wire Line
	9650 2600 9800 2600
Wire Wire Line
	9800 2600 9800 2950
Wire Wire Line
	6800 1750 7000 1750
$Comp
L Device:D D1
U 1 1 5E6BA1BA
P 5900 3850
F 0 "D1" V 5854 3929 50  0000 L CNN
F 1 "D" V 5945 3929 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5900 3850 50  0001 C CNN
F 3 "~" H 5900 3850 50  0001 C CNN
F 4 "Small Signal Diode (DO-35)" V 5900 3850 50  0001 C CNN "Description"
	1    5900 3850
	0    1    1    0   
$EndComp
$Comp
L Device:D D2
U 1 1 5E6BABCB
P 5900 4150
F 0 "D2" V 5854 4229 50  0000 L CNN
F 1 "D" V 5945 4229 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5900 4150 50  0001 C CNN
F 3 "~" H 5900 4150 50  0001 C CNN
F 4 "Small Signal Diode (DO-35)" V 5900 3850 50  0001 C CNN "Description"
	1    5900 4150
	0    1    1    0   
$EndComp
$Comp
L Device:D D3
U 1 1 5E6BB510
P 5900 4450
F 0 "D3" V 5854 4529 50  0000 L CNN
F 1 "D" V 5945 4529 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5900 4450 50  0001 C CNN
F 3 "~" H 5900 4450 50  0001 C CNN
F 4 "Small Signal Diode (DO-35)" V 5900 3850 50  0001 C CNN "Description"
	1    5900 4450
	0    1    1    0   
$EndComp
$Comp
L Device:D D4
U 1 1 5E6BBE01
P 5900 4750
F 0 "D4" V 5854 4829 50  0000 L CNN
F 1 "D" V 5945 4829 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5900 4750 50  0001 C CNN
F 3 "~" H 5900 4750 50  0001 C CNN
F 4 "Small Signal Diode (DO-35)" V 5900 3850 50  0001 C CNN "Description"
	1    5900 4750
	0    1    1    0   
$EndComp
$Comp
L Device:D D5
U 1 1 5E6BC7B1
P 5900 5050
F 0 "D5" V 5854 5129 50  0000 L CNN
F 1 "D" V 5945 5129 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5900 5050 50  0001 C CNN
F 3 "~" H 5900 5050 50  0001 C CNN
F 4 "Small Signal Diode (DO-35)" V 5900 3850 50  0001 C CNN "Description"
	1    5900 5050
	0    1    1    0   
$EndComp
$Comp
L Device:D D6
U 1 1 5E6BD234
P 5900 5350
F 0 "D6" V 5854 5429 50  0000 L CNN
F 1 "D" V 5945 5429 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5900 5350 50  0001 C CNN
F 3 "~" H 5900 5350 50  0001 C CNN
F 4 "Small Signal Diode (DO-35)" V 5900 3850 50  0001 C CNN "Description"
	1    5900 5350
	0    1    1    0   
$EndComp
$Comp
L Device:D D7
U 1 1 5E6BDC1D
P 5900 5650
F 0 "D7" V 5854 5729 50  0000 L CNN
F 1 "D" V 5945 5729 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5900 5650 50  0001 C CNN
F 3 "~" H 5900 5650 50  0001 C CNN
F 4 "Small Signal Diode (DO-35)" V 5900 3850 50  0001 C CNN "Description"
	1    5900 5650
	0    1    1    0   
$EndComp
$Comp
L Device:D D8
U 1 1 5E6BE5BC
P 5900 5950
F 0 "D8" V 5854 6029 50  0000 L CNN
F 1 "D" V 5945 6029 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5900 5950 50  0001 C CNN
F 3 "~" H 5900 5950 50  0001 C CNN
F 4 "Small Signal Diode (DO-35)" V 5900 3850 50  0001 C CNN "Description"
	1    5900 5950
	0    1    1    0   
$EndComp
$Comp
L Device:D D16
U 1 1 5E6C4D88
P 6350 5950
F 0 "D16" V 6304 6029 50  0000 L CNN
F 1 "D" V 6395 6029 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6350 5950 50  0001 C CNN
F 3 "~" H 6350 5950 50  0001 C CNN
F 4 "Small Signal Diode (DO-35)" V 5900 3850 50  0001 C CNN "Description"
	1    6350 5950
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D15
U 1 1 5E6C4D8E
P 6350 5650
F 0 "D15" V 6304 5729 50  0000 L CNN
F 1 "D" V 6395 5729 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6350 5650 50  0001 C CNN
F 3 "~" H 6350 5650 50  0001 C CNN
F 4 "Small Signal Diode (DO-35)" V 5900 3850 50  0001 C CNN "Description"
	1    6350 5650
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D14
U 1 1 5E6C4D94
P 6350 5350
F 0 "D14" V 6304 5429 50  0000 L CNN
F 1 "D" V 6395 5429 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6350 5350 50  0001 C CNN
F 3 "~" H 6350 5350 50  0001 C CNN
F 4 "Small Signal Diode (DO-35)" V 5900 3850 50  0001 C CNN "Description"
	1    6350 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D13
U 1 1 5E6C4D9A
P 6350 5050
F 0 "D13" V 6304 5129 50  0000 L CNN
F 1 "D" V 6395 5129 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6350 5050 50  0001 C CNN
F 3 "~" H 6350 5050 50  0001 C CNN
F 4 "Small Signal Diode (DO-35)" V 5900 3850 50  0001 C CNN "Description"
	1    6350 5050
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D12
U 1 1 5E6C4DA0
P 6350 4750
F 0 "D12" V 6304 4829 50  0000 L CNN
F 1 "D" V 6395 4829 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6350 4750 50  0001 C CNN
F 3 "~" H 6350 4750 50  0001 C CNN
F 4 "Small Signal Diode (DO-35)" V 5900 3850 50  0001 C CNN "Description"
	1    6350 4750
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D11
U 1 1 5E6C4DA6
P 6350 4450
F 0 "D11" V 6304 4529 50  0000 L CNN
F 1 "D" V 6395 4529 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6350 4450 50  0001 C CNN
F 3 "~" H 6350 4450 50  0001 C CNN
F 4 "Small Signal Diode (DO-35)" V 5900 3850 50  0001 C CNN "Description"
	1    6350 4450
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D10
U 1 1 5E6C4DAC
P 6350 4150
F 0 "D10" V 6304 4229 50  0000 L CNN
F 1 "D" V 6395 4229 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6350 4150 50  0001 C CNN
F 3 "~" H 6350 4150 50  0001 C CNN
F 4 "Small Signal Diode (DO-35)" V 5900 3850 50  0001 C CNN "Description"
	1    6350 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D9
U 1 1 5E6C4DB2
P 6350 3850
F 0 "D9" V 6304 3929 50  0000 L CNN
F 1 "D" V 6395 3929 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6350 3850 50  0001 C CNN
F 3 "~" H 6350 3850 50  0001 C CNN
F 4 "Small Signal Diode (DO-35)" V 5900 3850 50  0001 C CNN "Description"
	1    6350 3850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R19
U 1 1 5E6C947E
P 5550 3600
F 0 "R19" V 5343 3600 50  0000 C CNN
F 1 "15k" V 5434 3600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5480 3600 50  0001 C CNN
F 3 "~" H 5550 3600 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    5550 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 3600 5900 3600
Wire Wire Line
	6350 3600 6350 3700
Wire Wire Line
	5900 3700 5900 3600
Connection ~ 5900 3600
Wire Wire Line
	5900 3600 6350 3600
$Comp
L Device:R R20
U 1 1 5E6D3FD9
P 5550 4300
F 0 "R20" V 5343 4300 50  0000 C CNN
F 1 "15k" V 5434 4300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5480 4300 50  0001 C CNN
F 3 "~" H 5550 4300 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    5550 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 4300 5900 4300
Connection ~ 5900 4300
Wire Wire Line
	5900 4300 6350 4300
Connection ~ 6350 4300
$Comp
L Device:R R21
U 1 1 5E6DD809
P 5550 4900
F 0 "R21" V 5343 4900 50  0000 C CNN
F 1 "15k" V 5434 4900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5480 4900 50  0001 C CNN
F 3 "~" H 5550 4900 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    5550 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 4900 5900 4900
Connection ~ 5900 4900
Wire Wire Line
	5900 4900 6350 4900
Connection ~ 6350 4900
$Comp
L Device:R R22
U 1 1 5E6E7749
P 5550 5500
F 0 "R22" V 5343 5500 50  0000 C CNN
F 1 "15k" V 5434 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5480 5500 50  0001 C CNN
F 3 "~" H 5550 5500 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    5550 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 5500 5900 5500
Connection ~ 5900 5500
Wire Wire Line
	5900 5500 6350 5500
Connection ~ 6350 5500
$Comp
L Device:R R25
U 1 1 5E6F2148
P 6700 4000
F 0 "R25" V 6493 4000 50  0000 C CNN
F 1 "15k" V 6584 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6630 4000 50  0001 C CNN
F 3 "~" H 6700 4000 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    6700 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 4000 6350 4000
Connection ~ 6350 4000
Wire Wire Line
	6350 4000 5900 4000
Connection ~ 5900 4000
$Comp
L Device:R R26
U 1 1 5E6FD157
P 6700 4600
F 0 "R26" V 6493 4600 50  0000 C CNN
F 1 "15k" V 6584 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6630 4600 50  0001 C CNN
F 3 "~" H 6700 4600 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    6700 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 4600 6350 4600
Connection ~ 6350 4600
Wire Wire Line
	6350 4600 5900 4600
Connection ~ 5900 4600
$Comp
L Device:R R27
U 1 1 5E70872F
P 6700 5200
F 0 "R27" V 6493 5200 50  0000 C CNN
F 1 "15k" V 6584 5200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6630 5200 50  0001 C CNN
F 3 "~" H 6700 5200 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    6700 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 5200 6350 5200
Connection ~ 6350 5200
Wire Wire Line
	6350 5200 5900 5200
Connection ~ 5900 5200
$Comp
L Device:R R28
U 1 1 5E715D09
P 6700 5800
F 0 "R28" V 6493 5800 50  0000 C CNN
F 1 "15k" V 6584 5800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6630 5800 50  0001 C CNN
F 3 "~" H 6700 5800 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    6700 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 5800 6350 5800
Connection ~ 6350 5800
Wire Wire Line
	6350 5800 5900 5800
Connection ~ 5900 5800
$Comp
L Device:R R29
U 1 1 5E75DEDC
P 6900 3200
F 0 "R29" V 7107 3200 50  0000 C CNN
F 1 "27k" V 7016 3200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6830 3200 50  0001 C CNN
F 3 "~" H 6900 3200 50  0001 C CNN
F 4 "Metal Film Resistors - Through Hole (L=3.6 mm, D=1.6 mm, 1%)" V 2200 6950 50  0001 C CNN "Description"
	1    6900 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7150 3200 7050 3200
Connection ~ 7150 3200
Wire Wire Line
	6750 3200 6650 3200
Wire Wire Line
	6500 3050 6500 2900
Wire Wire Line
	6500 2650 7150 2650
Wire Wire Line
	7150 2650 7150 2350
Wire Wire Line
	7000 2350 7150 2350
Wire Wire Line
	6500 2900 5300 2900
Wire Wire Line
	5300 2900 5300 6100
Wire Wire Line
	5300 6100 5900 6100
Connection ~ 6500 2900
Wire Wire Line
	6500 2900 6500 2650
Connection ~ 5900 6100
Wire Wire Line
	5900 6100 6350 6100
Wire Wire Line
	5400 5500 5400 4900
Wire Wire Line
	5400 3450 7050 3450
Wire Wire Line
	7050 3450 7050 3200
Connection ~ 5400 3600
Wire Wire Line
	5400 3600 5400 3450
Connection ~ 5400 4300
Wire Wire Line
	5400 4300 5400 3600
Connection ~ 5400 4900
Wire Wire Line
	5400 4900 5400 4300
Connection ~ 7050 3200
Wire Wire Line
	6850 3850 6850 4000
Connection ~ 6850 4000
Wire Wire Line
	6850 4000 6850 4600
Connection ~ 6850 4600
Wire Wire Line
	6850 4600 6850 5200
Connection ~ 6850 5200
Wire Wire Line
	6850 5200 6850 5800
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
L Device:R_POT_TRIM RV5
U 1 1 5E473DE9
P 4050 1400
F 0 "RV5" V 3935 1400 50  0000 C CNN
F 1 "1k" V 3844 1400 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Z_Horizontal" H 4050 1400 50  0001 C CNN
F 3 "~" H 4050 1400 50  0001 C CNN
F 4 "Trimmer Resistor, Bourns 3296Z" V 4050 1400 50  0001 C CNN "Description"
	1    4050 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8100 3300 8100 3850
Wire Wire Line
	6850 3850 8100 3850
Wire Wire Line
	8200 3500 8200 3550
Wire Wire Line
	8100 3300 8200 3300
Connection ~ 8100 3300
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
Text Label 1650 2300 2    50   ~ 0
input
Text Label 1650 3650 2    50   ~ 0
control
Text Label 1650 4600 2    50   ~ 0
range
Text Label 10100 3500 0    50   ~ 0
out
Text Label 6500 3050 2    50   ~ 0
shape_a
Text Label 6650 3200 2    50   ~ 0
shape_b
Text Label 7950 5150 2    50   ~ 0
input
Text Label 7950 4950 2    50   ~ 0
control
Text Label 7950 5050 2    50   ~ 0
range
Text Label 7950 5350 2    50   ~ 0
out
Text Label 8750 5050 2    50   ~ 0
shape_a
Text Label 8750 5150 2    50   ~ 0
shape_b
$Comp
L power:GND #PWR05
U 1 1 6126FB45
P 8750 4950
F 0 "#PWR05" H 8750 4700 50  0001 C CNN
F 1 "GND" V 8755 4822 50  0000 R CNN
F 2 "" H 8750 4950 50  0001 C CNN
F 3 "" H 8750 4950 50  0001 C CNN
	1    8750 4950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 612927B3
P 7950 4850
F 0 "#PWR07" H 7950 4700 50  0001 C CNN
F 1 "+5V" V 7965 4978 50  0000 L CNN
F 2 "" H 7950 4850 50  0001 C CNN
F 3 "" H 7950 4850 50  0001 C CNN
	1    7950 4850
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR06
U 1 1 6127169F
P 7950 5250
F 0 "#PWR06" H 7950 5100 50  0001 C CNN
F 1 "+15V" V 7965 5378 50  0000 L CNN
F 2 "" H 7950 5250 50  0001 C CNN
F 3 "" H 7950 5250 50  0001 C CNN
	1    7950 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 5050 3150 5000
Wire Wire Line
	3800 5000 3800 4950
$Comp
L Connector:Conn_01x06_Female J1
U 1 1 611F6237
P 8150 5050
F 0 "J1" H 8178 4980 50  0000 L CNN
F 1 "01x06 Female" H 8178 4935 50  0001 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 8150 5050 50  0001 C CNN
F 3 "~" H 8150 5050 50  0001 C CNN
F 4 "Board to Board Connectors (2.54 mm)" H 8150 5050 50  0001 C CNN "Description"
	1    8150 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J2
U 1 1 611F7236
P 8950 5050
F 0 "J2" H 8978 5030 50  0000 L CNN
F 1 "01x03 Female" H 8978 4985 50  0001 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 8950 5050 50  0001 C CNN
F 3 "~" H 8950 5050 50  0001 C CNN
F 4 "Board to Board Connectors (2.54 mm)" H 8950 5050 50  0001 C CNN "Description"
	1    8950 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 611EB3C0
P 8500 2850
F 0 "C7" V 8248 2850 50  0000 C CNN
F 1 "10p*" V 8339 2850 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 8538 2700 50  0001 C CNN
F 3 "~" H 8500 2850 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" V 8500 2850 50  0001 C CNN "Description"
	1    8500 2850
	0    1    1    0   
$EndComp
$Comp
L Device:C C8
U 1 1 611EC138
P 9500 2950
F 0 "C8" V 9248 2950 50  0000 C CNN
F 1 "10p*" V 9339 2950 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 9538 2800 50  0001 C CNN
F 3 "~" H 9500 2950 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC (50V, L=4 mm, W=2.5 mm, LS=2.5 mm)" V 9500 2950 50  0001 C CNN "Description"
	1    9500 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 2500 8200 2850
Connection ~ 8200 3300
Wire Wire Line
	8800 2500 8800 2850
Connection ~ 8800 3400
Wire Wire Line
	8800 2850 8650 2850
Wire Wire Line
	8350 2850 8200 2850
Connection ~ 8800 2850
Wire Wire Line
	8800 2850 8800 3400
Connection ~ 8200 2850
Wire Wire Line
	8200 2850 8200 3300
Wire Wire Line
	9150 2950 9350 2950
Wire Wire Line
	9650 2950 9800 2950
Connection ~ 9150 2950
Connection ~ 9800 2950
Wire Wire Line
	9150 2950 9150 3400
Connection ~ 9150 3400
Wire Wire Line
	9800 2950 9800 3500
Connection ~ 9800 3500
Text Notes 7050 6400 0    50   ~ 0
* Add capacitor from 10-47p when there \nis  self oscillation otherwise let connection \nopen
Wire Notes Line
	7000 6100 8800 6100
Wire Notes Line
	8800 6100 8800 6450
Wire Notes Line
	8800 6450 7000 6450
Wire Notes Line
	7000 6450 7000 6100
$EndSCHEMATC
