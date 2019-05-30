EESchema Schematic File Version 4
LIBS:VCO-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "VCA-1"
Date "2019-04-08"
Rev "0.1"
Comp "spielhuus"
Comment1 ""
Comment2 ""
Comment3 "VCO-1 designed by Thomas Henry"
Comment4 "Voltage Controlled Oszillator"
$EndDescr
$Sheet
S 9750 4650 900  450 
U 5CF42726
F0 "Panel Wiring" 50
F1 "Panel Wiring.sch" 50
$EndSheet
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 5CEF675A
P 2250 7100
AR Path="/5CEF675A" Ref="U1"  Part="3" 
AR Path="/5CFCA4E3/5CEF675A" Ref="U?"  Part="3" 
F 0 "U1" H 2208 7146 50  0000 L CNN
F 1 "TL072" H 2208 7055 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2250 7100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2250 7100 50  0001 C CNN
	3    2250 7100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U2
U 3 1 5CEF6760
P 3150 7100
AR Path="/5CEF6760" Ref="U2"  Part="3" 
AR Path="/5CFCA4E3/5CEF6760" Ref="U?"  Part="3" 
F 0 "U2" H 3108 7146 50  0000 L CNN
F 1 "TL072" H 3108 7055 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3150 7100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3150 7100 50  0001 C CNN
	3    3150 7100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U3
U 3 1 5CEF6766
P 3950 7100
AR Path="/5CEF6766" Ref="U3"  Part="3" 
AR Path="/5CFCA4E3/5CEF6766" Ref="U?"  Part="3" 
F 0 "U3" H 3908 7146 50  0000 L CNN
F 1 "TL072" H 3908 7055 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3950 7100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3950 7100 50  0001 C CNN
	3    3950 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5CEF676C
P 900 7100
AR Path="/5CEF676C" Ref="#PWR09"  Part="1" 
AR Path="/5CFCA4E3/5CEF676C" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 900 6850 50  0001 C CNN
F 1 "GND" V 905 6972 50  0000 R CNN
F 2 "" H 900 7100 50  0001 C CNN
F 3 "" H 900 7100 50  0001 C CNN
	1    900  7100
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR011
U 1 1 5CEF6772
P 950 7550
AR Path="/5CEF6772" Ref="#PWR011"  Part="1" 
AR Path="/5CFCA4E3/5CEF6772" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 950 7650 50  0001 C CNN
F 1 "-15V" V 965 7678 50  0000 L CNN
F 2 "" H 950 7550 50  0001 C CNN
F 3 "" H 950 7550 50  0001 C CNN
	1    950  7550
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR010
U 1 1 5CEF6778
P 950 6600
AR Path="/5CEF6778" Ref="#PWR010"  Part="1" 
AR Path="/5CFCA4E3/5CEF6778" Ref="#PWR?"  Part="1" 
F 0 "#PWR010" H 950 6450 50  0001 C CNN
F 1 "+15V" V 965 6728 50  0000 L CNN
F 2 "" H 950 6600 50  0001 C CNN
F 3 "" H 950 6600 50  0001 C CNN
	1    950  6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C4
U 1 1 5CEF677E
P 1700 6750
AR Path="/5CEF677E" Ref="C4"  Part="1" 
AR Path="/5CFCA4E3/5CEF677E" Ref="C?"  Part="1" 
F 0 "C4" H 1815 6796 50  0000 L CNN
F 1 "0.01u" H 1815 6705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 1738 6600 50  0001 C CNN
F 3 "~" H 1700 6750 50  0001 C CNN
	1    1700 6750
	1    0    0    -1  
$EndComp
Connection ~ 1700 6600
$Comp
L Device:C C7
U 1 1 5CEF6785
P 2550 7400
AR Path="/5CEF6785" Ref="C7"  Part="1" 
AR Path="/5CFCA4E3/5CEF6785" Ref="C?"  Part="1" 
F 0 "C7" H 2665 7446 50  0000 L CNN
F 1 "0.01u" H 2665 7355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 2588 7250 50  0001 C CNN
F 3 "~" H 2550 7400 50  0001 C CNN
	1    2550 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 6600 2150 6600
Wire Wire Line
	2150 6800 2150 6600
Connection ~ 2150 6600
Wire Wire Line
	2150 6600 2550 6600
Wire Wire Line
	2150 7400 2150 7550
Connection ~ 2150 7550
Wire Wire Line
	2150 7550 2550 7550
$Comp
L Device:C C6
U 1 1 5CEF6792
P 2550 6750
AR Path="/5CEF6792" Ref="C6"  Part="1" 
AR Path="/5CFCA4E3/5CEF6792" Ref="C?"  Part="1" 
F 0 "C6" H 2665 6796 50  0000 L CNN
F 1 "0.01u" H 2665 6705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 2588 6600 50  0001 C CNN
F 3 "~" H 2550 6750 50  0001 C CNN
	1    2550 6750
	1    0    0    -1  
$EndComp
Connection ~ 2550 6600
Wire Wire Line
	2550 6600 3050 6600
Wire Wire Line
	2550 6900 2550 7100
Connection ~ 2550 7100
Wire Wire Line
	2550 7100 3400 7100
Wire Wire Line
	1700 6900 1700 7100
Connection ~ 1700 7100
Wire Wire Line
	1700 7100 2550 7100
Wire Wire Line
	1700 7250 1700 7100
Connection ~ 2550 7550
Wire Wire Line
	2550 7550 3050 7550
Wire Wire Line
	2550 7250 2550 7100
$Comp
L Device:C C5
U 1 1 5CEF67A4
P 1700 7400
AR Path="/5CEF67A4" Ref="C5"  Part="1" 
AR Path="/5CFCA4E3/5CEF67A4" Ref="C?"  Part="1" 
F 0 "C5" H 1815 7446 50  0000 L CNN
F 1 "0.01u" H 1815 7355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 1738 7250 50  0001 C CNN
F 3 "~" H 1700 7400 50  0001 C CNN
	1    1700 7400
	1    0    0    -1  
$EndComp
Connection ~ 1700 7550
Wire Wire Line
	1700 7550 2150 7550
Wire Wire Line
	3050 7400 3050 7550
Connection ~ 3050 7550
Wire Wire Line
	3050 7550 3400 7550
Wire Wire Line
	3050 6800 3050 6600
Connection ~ 3050 6600
Wire Wire Line
	3050 6600 3400 6600
$Comp
L Device:C C8
U 1 1 5CEF67B2
P 3400 6750
AR Path="/5CEF67B2" Ref="C8"  Part="1" 
AR Path="/5CFCA4E3/5CEF67B2" Ref="C?"  Part="1" 
F 0 "C8" H 3515 6796 50  0000 L CNN
F 1 "0.01u" H 3515 6705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 3438 6600 50  0001 C CNN
F 3 "~" H 3400 6750 50  0001 C CNN
	1    3400 6750
	1    0    0    -1  
$EndComp
Connection ~ 3400 6600
$Comp
L Device:C C9
U 1 1 5CEF67B9
P 3400 7400
AR Path="/5CEF67B9" Ref="C9"  Part="1" 
AR Path="/5CFCA4E3/5CEF67B9" Ref="C?"  Part="1" 
F 0 "C9" H 3515 7446 50  0000 L CNN
F 1 "0.01u" H 3515 7355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 3438 7250 50  0001 C CNN
F 3 "~" H 3400 7400 50  0001 C CNN
	1    3400 7400
	1    0    0    -1  
$EndComp
Connection ~ 3400 7550
Wire Wire Line
	3400 7250 3400 7100
Connection ~ 3400 7100
Wire Wire Line
	3400 7100 4250 7100
Wire Wire Line
	3400 6900 3400 7100
Wire Wire Line
	3400 6600 3850 6600
Wire Wire Line
	3400 7550 3850 7550
Wire Wire Line
	3850 6800 3850 6600
Connection ~ 3850 6600
Wire Wire Line
	3850 6600 4250 6600
Wire Wire Line
	3850 7400 3850 7550
Connection ~ 3850 7550
Wire Wire Line
	3850 7550 4250 7550
$Comp
L Device:C C11
U 1 1 5CEF67CC
P 4250 6750
AR Path="/5CEF67CC" Ref="C11"  Part="1" 
AR Path="/5CFCA4E3/5CEF67CC" Ref="C?"  Part="1" 
F 0 "C11" H 4365 6796 50  0000 L CNN
F 1 "0.01u" H 4365 6705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 4288 6600 50  0001 C CNN
F 3 "~" H 4250 6750 50  0001 C CNN
	1    4250 6750
	1    0    0    -1  
$EndComp
Connection ~ 4250 6600
$Comp
L Device:C C12
U 1 1 5CEF67D3
P 4250 7400
AR Path="/5CEF67D3" Ref="C12"  Part="1" 
AR Path="/5CFCA4E3/5CEF67D3" Ref="C?"  Part="1" 
F 0 "C12" H 4365 7446 50  0000 L CNN
F 1 "0.01u" H 4365 7355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 4288 7250 50  0001 C CNN
F 3 "~" H 4250 7400 50  0001 C CNN
	1    4250 7400
	1    0    0    -1  
$EndComp
Connection ~ 4250 7550
Wire Wire Line
	4750 6800 4750 6600
Wire Wire Line
	4250 6600 4750 6600
Wire Wire Line
	4750 7400 4750 7550
Wire Wire Line
	4250 7550 4750 7550
Wire Wire Line
	4250 6900 4250 7100
Connection ~ 4250 7100
Wire Wire Line
	4250 7250 4250 7100
$Comp
L Device:C C3
U 1 1 5CEF67E1
P 1200 7400
AR Path="/5CEF67E1" Ref="C3"  Part="1" 
AR Path="/5CFCA4E3/5CEF67E1" Ref="C?"  Part="1" 
F 0 "C3" H 1315 7446 50  0000 L CNN
F 1 "10u" H 1315 7355 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D5.0mm_H11.0mm_P2.00mm" H 1238 7250 50  0001 C CNN
F 3 "~" H 1200 7400 50  0001 C CNN
	1    1200 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5CEF67E7
P 1200 6750
AR Path="/5CEF67E7" Ref="C2"  Part="1" 
AR Path="/5CFCA4E3/5CEF67E7" Ref="C?"  Part="1" 
F 0 "C2" H 1315 6796 50  0000 L CNN
F 1 "10u" H 1315 6705 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D5.0mm_H11.0mm_P2.00mm" H 1238 6600 50  0001 C CNN
F 3 "~" H 1200 6750 50  0001 C CNN
	1    1200 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  6600 1200 6600
Connection ~ 1200 6600
Wire Wire Line
	1200 6600 1700 6600
Wire Wire Line
	1200 6900 1200 7100
Wire Wire Line
	900  7100 950  7100
Connection ~ 1200 7100
Wire Wire Line
	1200 7100 1700 7100
Wire Wire Line
	950  7550 1200 7550
Connection ~ 1200 7550
Wire Wire Line
	1200 7550 1700 7550
Wire Wire Line
	1200 7100 1200 7250
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5CEF67F8
P 4750 6600
AR Path="/5CEF67F8" Ref="#FLG02"  Part="1" 
AR Path="/5CFCA4E3/5CEF67F8" Ref="#FLG?"  Part="1" 
F 0 "#FLG02" H 4750 6675 50  0001 C CNN
F 1 "PWR_FLAG" V 4750 6728 50  0000 L CNN
F 2 "" H 4750 6600 50  0001 C CNN
F 3 "~" H 4750 6600 50  0001 C CNN
	1    4750 6600
	0    1    1    0   
$EndComp
Connection ~ 4750 6600
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5CEF67FF
P 4750 7550
AR Path="/5CEF67FF" Ref="#FLG03"  Part="1" 
AR Path="/5CFCA4E3/5CEF67FF" Ref="#FLG?"  Part="1" 
F 0 "#FLG03" H 4750 7625 50  0001 C CNN
F 1 "PWR_FLAG" V 4750 7678 50  0000 L CNN
F 2 "" H 4750 7550 50  0001 C CNN
F 3 "~" H 4750 7550 50  0001 C CNN
	1    4750 7550
	0    1    1    0   
$EndComp
Connection ~ 4750 7550
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5CEF6806
P 950 7100
AR Path="/5CEF6806" Ref="#FLG01"  Part="1" 
AR Path="/5CFCA4E3/5CEF6806" Ref="#FLG?"  Part="1" 
F 0 "#FLG01" H 950 7175 50  0001 C CNN
F 1 "PWR_FLAG" H 950 7273 50  0000 C CNN
F 2 "" H 950 7100 50  0001 C CNN
F 3 "~" H 950 7100 50  0001 C CNN
	1    950  7100
	-1   0    0    1   
$EndComp
Connection ~ 950  7100
Wire Wire Line
	950  7100 1200 7100
$Comp
L THAT~Corporation:THAT340 Q1
U 5 1 5CEF680E
P 5500 7100
AR Path="/5CEF680E" Ref="Q1"  Part="5" 
AR Path="/5CFCA4E3/5CEF680E" Ref="Q?"  Part="5" 
F 0 "Q1" V 5454 7228 50  0000 L CNN
F 1 "THAT340" V 5545 7228 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5620 7200 50  0001 C CNN
F 3 "" H 5420 7100 50  0000 C CNN
	5    5500 7100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5CEF6814
P 5500 6800
AR Path="/5CEF6814" Ref="#PWR021"  Part="1" 
AR Path="/5CFCA4E3/5CEF6814" Ref="#PWR?"  Part="1" 
F 0 "#PWR021" H 5500 6550 50  0001 C CNN
F 1 "GND" V 5505 6672 50  0000 R CNN
F 2 "" H 5500 6800 50  0001 C CNN
F 3 "" H 5500 6800 50  0001 C CNN
	1    5500 6800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5CEF681A
P 5500 7400
AR Path="/5CEF681A" Ref="#PWR022"  Part="1" 
AR Path="/5CFCA4E3/5CEF681A" Ref="#PWR?"  Part="1" 
F 0 "#PWR022" H 5500 7150 50  0001 C CNN
F 1 "GND" V 5505 7272 50  0000 R CNN
F 2 "" H 5500 7400 50  0001 C CNN
F 3 "" H 5500 7400 50  0001 C CNN
	1    5500 7400
	1    0    0    -1  
$EndComp
Text GLabel 6350 7550 0    50   Input ~ 0
PULSE
Text GLabel 6350 7450 0    50   Input ~ 0
Sine
Text GLabel 6350 7350 0    50   Input ~ 0
Triangle
Text GLabel 6350 7250 0    50   Input ~ 0
INITIAL
Text GLabel 6350 7150 0    50   Input ~ 0
PWM
Text GLabel 6350 7050 0    50   Input ~ 0
LIN_FM
Text GLabel 6350 6950 0    50   Input ~ 0
EXP_FM
Text GLabel 6350 6850 0    50   Input ~ 0
FINE
Text GLabel 6350 6750 0    50   Input ~ 0
Coarse
Text GLabel 6350 6650 0    50   Input ~ 0
CV
$Comp
L Amplifier_Operational:TL072 U1
U 2 1 5CEF6830
P 3500 4800
AR Path="/5CEF6830" Ref="U1"  Part="2" 
AR Path="/5CFCA4E3/5CEF6830" Ref="U?"  Part="2" 
F 0 "U1" H 3500 4433 50  0000 C CNN
F 1 "TL072" H 3500 4524 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3500 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3500 4800 50  0001 C CNN
	2    3500 4800
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U3
U 1 1 5CEF6836
P 6000 2000
AR Path="/5CEF6836" Ref="U3"  Part="1" 
AR Path="/5CFCA4E3/5CEF6836" Ref="U?"  Part="1" 
F 0 "U3" H 6000 1633 50  0000 C CNN
F 1 "TL072" H 6000 1724 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6000 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6000 2000 50  0001 C CNN
	1    6000 2000
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U3
U 2 1 5CEF683C
P 8000 3900
AR Path="/5CEF683C" Ref="U3"  Part="2" 
AR Path="/5CFCA4E3/5CEF683C" Ref="U?"  Part="2" 
F 0 "U3" H 8000 4267 50  0000 C CNN
F 1 "TL072" H 8000 4176 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8000 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8000 3900 50  0001 C CNN
	2    8000 3900
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 1 1 5CEF6842
P 2850 5750
AR Path="/5CEF6842" Ref="U1"  Part="1" 
AR Path="/5CFCA4E3/5CEF6842" Ref="U?"  Part="1" 
F 0 "U1" H 2850 6117 50  0000 C CNN
F 1 "TL072" H 2850 6026 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2850 5750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2850 5750 50  0001 C CNN
	1    2850 5750
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U2
U 2 1 5CEF6848
P 7650 5650
AR Path="/5CEF6848" Ref="U2"  Part="2" 
AR Path="/5CFCA4E3/5CEF6848" Ref="U?"  Part="2" 
F 0 "U2" H 7650 6017 50  0000 C CNN
F 1 "TL072" H 7650 5926 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 7650 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7650 5650 50  0001 C CNN
	2    7650 5650
	1    0    0    -1  
$EndComp
$Comp
L Kicad_Library:CA3080 U4
U 1 1 5CEF684E
P 5100 1900
AR Path="/5CEF684E" Ref="U4"  Part="1" 
AR Path="/5CFCA4E3/5CEF684E" Ref="U?"  Part="2" 
F 0 "U4" H 5050 1650 50  0000 L CNN
F 1 "CA3080" H 5000 1550 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5100 1900 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/ca30/ca3080-a.pdf" H 5100 2000 50  0001 C CNN
	1    5100 1900
	1    0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5CEF6854
P 2100 1550
AR Path="/5CEF6854" Ref="R1"  Part="1" 
AR Path="/5CFCA4E3/5CEF6854" Ref="R?"  Part="1" 
F 0 "R1" V 1893 1550 50  0000 C CNN
F 1 "100k" V 1984 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2030 1550 50  0001 C CNN
F 3 "~" H 2100 1550 50  0001 C CNN
	1    2100 1550
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5CEF685A
P 2100 3500
AR Path="/5CEF685A" Ref="R4"  Part="1" 
AR Path="/5CFCA4E3/5CEF685A" Ref="R?"  Part="1" 
F 0 "R4" V 1893 3500 50  0000 C CNN
F 1 "100k" V 1984 3500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2030 3500 50  0001 C CNN
F 3 "~" H 2100 3500 50  0001 C CNN
	1    2100 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5CEF6860
P 2100 2000
AR Path="/5CEF6860" Ref="R2"  Part="1" 
AR Path="/5CFCA4E3/5CEF6860" Ref="R?"  Part="1" 
F 0 "R2" V 1893 2000 50  0000 C CNN
F 1 "100k" V 1984 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2030 2000 50  0001 C CNN
F 3 "~" H 2100 2000 50  0001 C CNN
	1    2100 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 2000 1550 2000
$Comp
L Device:R R3
U 1 1 5CEF6867
P 2100 2750
AR Path="/5CEF6867" Ref="R3"  Part="1" 
AR Path="/5CFCA4E3/5CEF6867" Ref="R?"  Part="1" 
F 0 "R3" V 1893 2750 50  0000 C CNN
F 1 "3M3" V 1984 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2030 2750 50  0001 C CNN
F 3 "~" H 2100 2750 50  0001 C CNN
	1    2100 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 2750 1550 2750
$Comp
L Device:R R5
U 1 1 5CEF686E
P 2100 4700
AR Path="/5CEF686E" Ref="R5"  Part="1" 
AR Path="/5CFCA4E3/5CEF686E" Ref="R?"  Part="1" 
F 0 "R5" V 1893 4700 50  0000 C CNN
F 1 "1M" V 1984 4700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2030 4700 50  0001 C CNN
F 3 "~" H 2100 4700 50  0001 C CNN
	1    2100 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 2750 2450 2750
Wire Wire Line
	2250 3500 2450 3500
$Comp
L power:GND #PWR013
U 1 1 5CEF6876
P 2600 1850
AR Path="/5CEF6876" Ref="#PWR013"  Part="1" 
AR Path="/5CFCA4E3/5CEF6876" Ref="#PWR?"  Part="1" 
F 0 "#PWR013" H 2600 1600 50  0001 C CNN
F 1 "GND" H 2605 1677 50  0000 C CNN
F 2 "" H 2600 1850 50  0001 C CNN
F 3 "" H 2600 1850 50  0001 C CNN
	1    2600 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1850 2600 1750
Wire Wire Line
	2600 1750 2700 1750
$Comp
L Device:R R11
U 1 1 5CEF687E
P 3000 1150
AR Path="/5CEF687E" Ref="R11"  Part="1" 
AR Path="/5CFCA4E3/5CEF687E" Ref="R?"  Part="1" 
F 0 "R11" V 2793 1150 50  0000 C CNN
F 1 "2k" V 2884 1150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2930 1150 50  0001 C CNN
F 3 "~" H 3000 1150 50  0001 C CNN
	1    3000 1150
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5CEF6884
P 3300 2000
AR Path="/5CEF6884" Ref="R12"  Part="1" 
AR Path="/5CFCA4E3/5CEF6884" Ref="R?"  Part="1" 
F 0 "R12" H 3230 1954 50  0000 R CNN
F 1 "47" H 3230 2045 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3230 2000 50  0001 C CNN
F 3 "~" H 3300 2000 50  0001 C CNN
	1    3300 2000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5CEF688A
P 3300 2750
AR Path="/5CEF688A" Ref="#PWR016"  Part="1" 
AR Path="/5CFCA4E3/5CEF688A" Ref="#PWR?"  Part="1" 
F 0 "#PWR016" H 3300 2500 50  0001 C CNN
F 1 "GND" H 3305 2577 50  0000 C CNN
F 2 "" H 3300 2750 50  0001 C CNN
F 3 "" H 3300 2750 50  0001 C CNN
	1    3300 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM RV5
U 1 1 5CEF6890
P 3300 2300
AR Path="/5CEF6890" Ref="RV5"  Part="1" 
AR Path="/5CFCA4E3/5CEF6890" Ref="RV?"  Part="1" 
F 0 "RV5" H 3230 2346 50  0000 R CNN
F 1 "100 (TRIM)" H 3230 2255 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Vishay_43_Horizontal" H 3300 2300 50  0001 C CNN
F 3 "~" H 3300 2300 50  0001 C CNN
	1    3300 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5CEF6896
P 3100 4950
AR Path="/5CEF6896" Ref="#PWR015"  Part="1" 
AR Path="/5CFCA4E3/5CEF6896" Ref="#PWR?"  Part="1" 
F 0 "#PWR015" H 3100 4700 50  0001 C CNN
F 1 "GND" H 3105 4777 50  0000 C CNN
F 2 "" H 3100 4950 50  0001 C CNN
F 3 "" H 3100 4950 50  0001 C CNN
	1    3100 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4950 3100 4900
Wire Wire Line
	3100 4900 3200 4900
$Comp
L power:GND #PWR017
U 1 1 5CEF689E
P 3300 3250
AR Path="/5CEF689E" Ref="#PWR017"  Part="1" 
AR Path="/5CFCA4E3/5CEF689E" Ref="#PWR?"  Part="1" 
F 0 "#PWR017" H 3300 3000 50  0001 C CNN
F 1 "GND" H 3305 3077 50  0000 C CNN
F 2 "" H 3300 3250 50  0001 C CNN
F 3 "" H 3300 3250 50  0001 C CNN
	1    3300 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3250 3300 3250
$Comp
L Device:C C10
U 1 1 5CEF68A5
P 3500 4250
AR Path="/5CEF68A5" Ref="C10"  Part="1" 
AR Path="/5CFCA4E3/5CEF68A5" Ref="C?"  Part="1" 
F 0 "C10" V 3248 4250 50  0000 C CNN
F 1 "1n" V 3339 4250 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 3538 4100 50  0001 C CNN
F 3 "~" H 3500 4250 50  0001 C CNN
	1    3500 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 4800 3800 4250
$Comp
L Device:R R14
U 1 1 5CEF68AC
P 3800 4000
AR Path="/5CEF68AC" Ref="R14"  Part="1" 
AR Path="/5CFCA4E3/5CEF68AC" Ref="R?"  Part="1" 
F 0 "R14" H 3730 3954 50  0000 R CNN
F 1 "22k" H 3730 4045 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3730 4000 50  0001 C CNN
F 3 "~" H 3800 4000 50  0001 C CNN
	1    3800 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 4250 3800 4250
Connection ~ 3800 4250
Wire Wire Line
	3800 4250 3800 4150
Wire Wire Line
	3400 3550 3100 3550
Wire Wire Line
	3100 4700 3200 4700
Wire Wire Line
	3350 4250 3100 4250
Connection ~ 3100 4250
$Comp
L Device:R R8
U 1 1 5CEF68B9
P 2750 4250
AR Path="/5CEF68B9" Ref="R8"  Part="1" 
AR Path="/5CFCA4E3/5CEF68B9" Ref="R?"  Part="1" 
F 0 "R8" V 2543 4250 50  0000 C CNN
F 1 "1M5" V 2634 4250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2680 4250 50  0001 C CNN
F 3 "~" H 2750 4250 50  0001 C CNN
	1    2750 4250
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR014
U 1 1 5CEF68BF
P 2600 4250
AR Path="/5CEF68BF" Ref="#PWR014"  Part="1" 
AR Path="/5CFCA4E3/5CEF68BF" Ref="#PWR?"  Part="1" 
F 0 "#PWR014" H 2600 4350 50  0001 C CNN
F 1 "-15V" V 2615 4378 50  0000 L CNN
F 2 "" H 2600 4250 50  0001 C CNN
F 3 "" H 2600 4250 50  0001 C CNN
	1    2600 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 4250 3100 4250
Wire Wire Line
	2250 4700 3100 4700
Connection ~ 3100 4700
$Comp
L Device:D D1
U 1 1 5CEF68C8
P 4000 4800
AR Path="/5CEF68C8" Ref="D1"  Part="1" 
AR Path="/5CFCA4E3/5CEF68C8" Ref="D?"  Part="1" 
F 0 "D1" H 4000 4584 50  0000 C CNN
F 1 "D" H 4000 4675 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P10.16mm_Horizontal" H 4000 4800 50  0001 C CNN
F 3 "~" H 4000 4800 50  0001 C CNN
	1    4000 4800
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RV6
U 1 1 5CEF68CE
P 4400 4800
AR Path="/5CEF68CE" Ref="RV6"  Part="1" 
AR Path="/5CFCA4E3/5CEF68CE" Ref="RV?"  Part="1" 
F 0 "RV6" V 4300 4850 50  0000 R CNN
F 1 "100k (TRIM)" V 4200 5050 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Vishay_43_Horizontal" H 4400 4800 50  0001 C CNN
F 3 "~" H 4400 4800 50  0001 C CNN
	1    4400 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 4800 3800 4800
Connection ~ 3800 4800
$Comp
L power:GND #PWR020
U 1 1 5CEF68D6
P 4700 4850
AR Path="/5CEF68D6" Ref="#PWR020"  Part="1" 
AR Path="/5CFCA4E3/5CEF68D6" Ref="#PWR?"  Part="1" 
F 0 "#PWR020" H 4700 4600 50  0001 C CNN
F 1 "GND" H 4705 4677 50  0000 C CNN
F 2 "" H 4700 4850 50  0001 C CNN
F 3 "" H 4700 4850 50  0001 C CNN
	1    4700 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5CEF68DC
P 2800 3050
AR Path="/5CEF68DC" Ref="R9"  Part="1" 
AR Path="/5CFCA4E3/5CEF68DC" Ref="R?"  Part="1" 
F 0 "R9" V 2593 3050 50  0000 C CNN
F 1 "2M2" V 2684 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2730 3050 50  0001 C CNN
F 3 "~" H 2800 3050 50  0001 C CNN
	1    2800 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5CEF68E2
P 3300 2600
AR Path="/5CEF68E2" Ref="R13"  Part="1" 
AR Path="/5CFCA4E3/5CEF68E2" Ref="R?"  Part="1" 
F 0 "R13" H 3230 2554 50  0000 R CNN
F 1 "820" H 3230 2645 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3230 2600 50  0001 C CNN
F 3 "~" H 3300 2600 50  0001 C CNN
	1    3300 2600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R16
U 1 1 5CEF68E8
P 4400 2200
AR Path="/5CEF68E8" Ref="R16"  Part="1" 
AR Path="/5CFCA4E3/5CEF68E8" Ref="R?"  Part="1" 
F 0 "R16" H 4330 2154 50  0000 R CNN
F 1 "10k" H 4330 2245 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4330 2200 50  0001 C CNN
F 3 "~" H 4400 2200 50  0001 C CNN
	1    4400 2200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R15
U 1 1 5CEF68EE
P 4400 1400
AR Path="/5CEF68EE" Ref="R15"  Part="1" 
AR Path="/5CFCA4E3/5CEF68EE" Ref="R?"  Part="1" 
F 0 "R15" H 4330 1354 50  0000 R CNN
F 1 "100k" H 4330 1445 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4330 1400 50  0001 C CNN
F 3 "~" H 4400 1400 50  0001 C CNN
	1    4400 1400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5CEF68F4
P 4400 2350
AR Path="/5CEF68F4" Ref="#PWR018"  Part="1" 
AR Path="/5CFCA4E3/5CEF68F4" Ref="#PWR?"  Part="1" 
F 0 "#PWR018" H 4400 2100 50  0001 C CNN
F 1 "GND" H 4405 2177 50  0000 C CNN
F 2 "" H 4400 2350 50  0001 C CNN
F 3 "" H 4400 2350 50  0001 C CNN
	1    4400 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5CEF68FA
P 4700 2050
AR Path="/5CEF68FA" Ref="#PWR019"  Part="1" 
AR Path="/5CFCA4E3/5CEF68FA" Ref="#PWR?"  Part="1" 
F 0 "#PWR019" H 4700 1800 50  0001 C CNN
F 1 "GND" H 4705 1877 50  0000 C CNN
F 2 "" H 4700 2050 50  0001 C CNN
F 3 "" H 4700 2050 50  0001 C CNN
	1    4700 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2050 4700 2000
Wire Wire Line
	4700 2000 4800 2000
Wire Wire Line
	4800 1800 4400 1800
Wire Wire Line
	4400 1800 4400 2050
Wire Wire Line
	4400 1550 4400 1800
Connection ~ 4400 1800
Wire Wire Line
	4200 3550 5100 3550
$Comp
L Device:C C13
U 1 1 5CEF6907
P 6050 1350
AR Path="/5CEF6907" Ref="C13"  Part="1" 
AR Path="/5CFCA4E3/5CEF6907" Ref="C?"  Part="1" 
F 0 "C13" V 5798 1350 50  0000 C CNN
F 1 "0.001u" V 5889 1350 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 6088 1200 50  0001 C CNN
F 3 "~" H 6050 1350 50  0001 C CNN
	1    6050 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 1350 6300 1350
Wire Wire Line
	6300 1350 6300 2000
Wire Wire Line
	5900 1350 5700 1350
Wire Wire Line
	5700 1350 5700 1900
Wire Wire Line
	5700 1900 5400 1900
Connection ~ 5700 1900
$Comp
L power:GND #PWR023
U 1 1 5CEF6913
P 5600 2150
AR Path="/5CEF6913" Ref="#PWR023"  Part="1" 
AR Path="/5CFCA4E3/5CEF6913" Ref="#PWR?"  Part="1" 
F 0 "#PWR023" H 5600 1900 50  0001 C CNN
F 1 "GND" H 5605 1977 50  0000 C CNN
F 2 "" H 5600 2150 50  0001 C CNN
F 3 "" H 5600 2150 50  0001 C CNN
	1    5600 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2150 5600 2100
Wire Wire Line
	5600 2100 5700 2100
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 5CEF691B
P 6800 2000
AR Path="/5CEF691B" Ref="Q2"  Part="1" 
AR Path="/5CFCA4E3/5CEF691B" Ref="Q?"  Part="1" 
F 0 "Q2" H 6991 2046 50  0000 L CNN
F 1 "2N3904" H 6991 1955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7000 1925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 6800 2000 50  0001 L CNN
	1    6800 2000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q3
U 1 1 5CEF6921
P 7650 1650
AR Path="/5CEF6921" Ref="Q3"  Part="1" 
AR Path="/5CFCA4E3/5CEF6921" Ref="Q?"  Part="1" 
F 0 "Q3" H 7841 1696 50  0000 L CNN
F 1 "2N3904" H 7841 1605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7850 1575 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 7650 1650 50  0001 L CNN
	1    7650 1650
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR027
U 1 1 5CEF6927
P 6900 2700
AR Path="/5CEF6927" Ref="#PWR027"  Part="1" 
AR Path="/5CFCA4E3/5CEF6927" Ref="#PWR?"  Part="1" 
F 0 "#PWR027" H 6900 2800 50  0001 C CNN
F 1 "-15V" H 6915 2873 50  0000 C CNN
F 2 "" H 6900 2700 50  0001 C CNN
F 3 "" H 6900 2700 50  0001 C CNN
	1    6900 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R23
U 1 1 5CEF692D
P 6900 2450
AR Path="/5CEF692D" Ref="R23"  Part="1" 
AR Path="/5CFCA4E3/5CEF692D" Ref="R?"  Part="1" 
F 0 "R23" H 6830 2404 50  0000 R CNN
F 1 "10k" H 6830 2495 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6830 2450 50  0001 C CNN
F 3 "~" H 6900 2450 50  0001 C CNN
	1    6900 2450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R27
U 1 1 5CEF6933
P 7400 2450
AR Path="/5CEF6933" Ref="R27"  Part="1" 
AR Path="/5CFCA4E3/5CEF6933" Ref="R?"  Part="1" 
F 0 "R27" H 7330 2404 50  0000 R CNN
F 1 "100k" H 7330 2495 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7330 2450 50  0001 C CNN
F 3 "~" H 7400 2450 50  0001 C CNN
	1    7400 2450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R25
U 1 1 5CEF6939
P 7150 1650
AR Path="/5CEF6939" Ref="R25"  Part="1" 
AR Path="/5CFCA4E3/5CEF6939" Ref="R?"  Part="1" 
F 0 "R25" V 7357 1650 50  0000 C CNN
F 1 "18k" V 7266 1650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7080 1650 50  0001 C CNN
F 3 "~" H 7150 1650 50  0001 C CNN
	1    7150 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C14
U 1 1 5CEF693F
P 7150 1300
AR Path="/5CEF693F" Ref="C14"  Part="1" 
AR Path="/5CFCA4E3/5CEF693F" Ref="C?"  Part="1" 
F 0 "C14" V 6898 1300 50  0000 C CNN
F 1 "47p" V 6989 1300 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 7188 1150 50  0001 C CNN
F 3 "~" H 7150 1300 50  0001 C CNN
	1    7150 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R R22
U 1 1 5CEF6945
P 6900 1100
AR Path="/5CEF6945" Ref="R22"  Part="1" 
AR Path="/5CFCA4E3/5CEF6945" Ref="R?"  Part="1" 
F 0 "R22" H 6830 1054 50  0000 R CNN
F 1 "10k" H 6830 1145 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6830 1100 50  0001 C CNN
F 3 "~" H 6900 1100 50  0001 C CNN
	1    6900 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR028
U 1 1 5CEF694B
P 7350 950
AR Path="/5CEF694B" Ref="#PWR028"  Part="1" 
AR Path="/5CFCA4E3/5CEF694B" Ref="#PWR?"  Part="1" 
F 0 "#PWR028" H 7350 800 50  0001 C CNN
F 1 "+15V" H 7350 1150 50  0000 C CNN
F 2 "" H 7350 950 50  0001 C CNN
F 3 "" H 7350 950 50  0001 C CNN
	1    7350 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R30
U 1 1 5CEF6951
P 7750 1100
AR Path="/5CEF6951" Ref="R30"  Part="1" 
AR Path="/5CFCA4E3/5CEF6951" Ref="R?"  Part="1" 
F 0 "R30" H 7680 1054 50  0000 R CNN
F 1 "5.1k" H 7680 1145 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7680 1100 50  0001 C CNN
F 3 "~" H 7750 1100 50  0001 C CNN
	1    7750 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	7750 1850 7750 2250
Connection ~ 7750 2250
Wire Wire Line
	6900 2650 6900 2600
Wire Wire Line
	6900 2700 6900 2650
Connection ~ 6900 2650
Wire Wire Line
	6900 2200 6900 2250
Wire Wire Line
	7400 2650 7400 2600
Wire Wire Line
	6900 2650 7400 2650
Wire Wire Line
	6900 2250 7750 2250
Wire Wire Line
	7400 1300 7300 1300
Wire Wire Line
	7000 1300 6900 1300
Wire Wire Line
	6900 1300 6900 1650
Wire Wire Line
	7450 1650 7400 1650
Wire Wire Line
	7000 1650 6900 1650
Connection ~ 6900 1650
Wire Wire Line
	6900 1650 6900 1800
Text Notes 8900 1500 0    50   ~ 0
All IC are powered with +/-15V.\n\nDecouple capacitors (0.01u) connected \nas closely as possible to the power pins.\n\nFor better stability  MAT03 matched trasistor \npairs are used.\n\nRx can the replaced with 2k/+3300ppm/°C \nthermistor and mounted as closely as \npossible to Ux.
$Comp
L Device:R R18
U 1 1 5CEF6968
P 6100 3600
AR Path="/5CEF6968" Ref="R18"  Part="1" 
AR Path="/5CFCA4E3/5CEF6968" Ref="R?"  Part="1" 
F 0 "R18" H 6030 3554 50  0000 R CNN
F 1 "10k" H 6030 3645 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6030 3600 50  0001 C CNN
F 3 "~" H 6100 3600 50  0001 C CNN
	1    6100 3600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R24
U 1 1 5CEF696E
P 7050 3600
AR Path="/5CEF696E" Ref="R24"  Part="1" 
AR Path="/5CFCA4E3/5CEF696E" Ref="R?"  Part="1" 
F 0 "R24" H 6980 3554 50  0000 R CNN
F 1 "10k" H 6980 3645 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6980 3600 50  0001 C CNN
F 3 "~" H 7050 3600 50  0001 C CNN
	1    7050 3600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5CEF6974
P 2450 5950
AR Path="/5CEF6974" Ref="#PWR012"  Part="1" 
AR Path="/5CFCA4E3/5CEF6974" Ref="#PWR?"  Part="1" 
F 0 "#PWR012" H 2450 5700 50  0001 C CNN
F 1 "GND" H 2455 5777 50  0000 C CNN
F 2 "" H 2450 5950 50  0001 C CNN
F 3 "" H 2450 5950 50  0001 C CNN
	1    2450 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5950 2450 5850
Wire Wire Line
	2450 5850 2550 5850
$Comp
L Device:R R10
U 1 1 5CEF697C
P 2850 5400
AR Path="/5CEF697C" Ref="R10"  Part="1" 
AR Path="/5CFCA4E3/5CEF697C" Ref="R?"  Part="1" 
F 0 "R10" H 2780 5354 50  0000 R CNN
F 1 "150k" H 2780 5445 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2780 5400 50  0001 C CNN
F 3 "~" H 2850 5400 50  0001 C CNN
	1    2850 5400
	0    1    1    0   
$EndComp
Connection ~ 2450 2750
Wire Wire Line
	2850 1150 2600 1150
Wire Wire Line
	2600 1150 2600 1550
Wire Wire Line
	3150 1150 3300 1150
Wire Wire Line
	3300 1150 3300 1650
Wire Wire Line
	3300 1850 3300 1650
Connection ~ 3300 1650
$Comp
L Amplifier_Operational:TL072 U2
U 1 1 5CEF6989
P 3000 1650
AR Path="/5CEF6989" Ref="U2"  Part="1" 
AR Path="/5CFCA4E3/5CEF6989" Ref="U?"  Part="1" 
F 0 "U2" H 3000 1283 50  0000 C CNN
F 1 "TL072" H 3000 1374 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3000 1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3000 1650 50  0001 C CNN
	1    3000 1650
	1    0    0    1   
$EndComp
Wire Wire Line
	2700 1550 2600 1550
Connection ~ 2450 1550
Wire Wire Line
	2450 1550 2250 1550
Connection ~ 2600 1550
Wire Wire Line
	2600 1550 2450 1550
Wire Wire Line
	4000 3250 4000 2300
Wire Wire Line
	4000 2300 3450 2300
Wire Wire Line
	3100 4250 3100 4700
Wire Wire Line
	3800 3550 3800 3850
Wire Wire Line
	3100 3550 3100 4250
Wire Wire Line
	1750 4700 1950 4700
Wire Wire Line
	4150 4800 4250 4800
Wire Wire Line
	4550 4800 4700 4800
Wire Wire Line
	4700 4800 4700 4850
Wire Wire Line
	2450 2750 2450 3050
Wire Wire Line
	4400 3050 2950 3050
Wire Wire Line
	4400 3050 4400 4650
Wire Wire Line
	2650 3050 2450 3050
Connection ~ 2450 3050
Wire Wire Line
	2450 3050 2450 3500
$Comp
L Device:R R6
U 1 1 5CEF69A3
P 2100 5400
AR Path="/5CEF69A3" Ref="R6"  Part="1" 
AR Path="/5CFCA4E3/5CEF69A3" Ref="R?"  Part="1" 
F 0 "R6" V 1893 5400 50  0000 C CNN
F 1 "100k" V 1984 5400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2030 5400 50  0001 C CNN
F 3 "~" H 2100 5400 50  0001 C CNN
	1    2100 5400
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5CEF69A9
P 2100 5900
AR Path="/5CEF69A9" Ref="R7"  Part="1" 
AR Path="/5CFCA4E3/5CEF69A9" Ref="R?"  Part="1" 
F 0 "R7" V 1893 5900 50  0000 C CNN
F 1 "330k" V 1984 5900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2030 5900 50  0001 C CNN
F 3 "~" H 2100 5900 50  0001 C CNN
	1    2100 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 5400 3150 5400
Wire Wire Line
	3150 5400 3150 5750
Wire Wire Line
	2250 5900 2350 5900
Wire Wire Line
	2350 5400 2250 5400
Wire Wire Line
	2350 5400 2700 5400
Wire Wire Line
	2550 5650 2350 5650
Connection ~ 2350 5650
Connection ~ 2350 5400
Wire Wire Line
	2350 5650 2350 5400
Wire Wire Line
	2350 5900 2350 5650
$Comp
L Device:R R29
U 1 1 5CEF69B9
P 7700 5100
AR Path="/5CEF69B9" Ref="R29"  Part="1" 
AR Path="/5CFCA4E3/5CEF69B9" Ref="R?"  Part="1" 
F 0 "R29" H 7630 5054 50  0000 R CNN
F 1 "2M2" H 7630 5145 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7630 5100 50  0001 C CNN
F 3 "~" H 7700 5100 50  0001 C CNN
	1    7700 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 5100 7950 5100
Wire Wire Line
	7950 5100 7950 5650
Wire Wire Line
	7550 5100 7350 5100
Wire Wire Line
	7350 5100 7350 5550
$Comp
L Device:R R32
U 1 1 5CEF69C3
P 8250 5650
AR Path="/5CEF69C3" Ref="R32"  Part="1" 
AR Path="/5CFCA4E3/5CEF69C3" Ref="R?"  Part="1" 
F 0 "R32" H 8180 5604 50  0000 R CNN
F 1 "3k" H 8180 5695 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8180 5650 50  0001 C CNN
F 3 "~" H 8250 5650 50  0001 C CNN
	1    8250 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 5650 7950 5650
Connection ~ 7950 5650
$Comp
L Device:R R36
U 1 1 5CEF69CB
P 8550 5950
AR Path="/5CEF69CB" Ref="R36"  Part="1" 
AR Path="/5CFCA4E3/5CEF69CB" Ref="R?"  Part="1" 
F 0 "R36" H 8480 5904 50  0000 R CNN
F 1 "3k" H 8480 5995 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8480 5950 50  0001 C CNN
F 3 "~" H 8550 5950 50  0001 C CNN
	1    8550 5950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5CEF69D1
P 8550 6100
AR Path="/5CEF69D1" Ref="#PWR031"  Part="1" 
AR Path="/5CFCA4E3/5CEF69D1" Ref="#PWR?"  Part="1" 
F 0 "#PWR031" H 8550 5850 50  0001 C CNN
F 1 "GND" H 8555 5927 50  0000 C CNN
F 2 "" H 8550 6100 50  0001 C CNN
F 3 "" H 8550 6100 50  0001 C CNN
	1    8550 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 5650 8550 5650
Wire Wire Line
	8550 5650 8550 5800
Wire Wire Line
	8950 5650 8550 5650
Connection ~ 8550 5650
$Comp
L Device:R R17
U 1 1 5CEF69DB
P 5750 4500
AR Path="/5CEF69DB" Ref="R17"  Part="1" 
AR Path="/5CFCA4E3/5CEF69DB" Ref="R?"  Part="1" 
F 0 "R17" H 5680 4454 50  0000 R CNN
F 1 "2.2k" H 5680 4545 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5680 4500 50  0001 C CNN
F 3 "~" H 5750 4500 50  0001 C CNN
	1    5750 4500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5CEF69E1
P 5750 4650
AR Path="/5CEF69E1" Ref="#PWR024"  Part="1" 
AR Path="/5CFCA4E3/5CEF69E1" Ref="#PWR?"  Part="1" 
F 0 "#PWR024" H 5750 4400 50  0001 C CNN
F 1 "GND" H 5755 4477 50  0000 C CNN
F 2 "" H 5750 4650 50  0001 C CNN
F 3 "" H 5750 4650 50  0001 C CNN
	1    5750 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV7
U 1 1 5CEF69E7
P 5500 4200
AR Path="/5CEF69E7" Ref="RV7"  Part="1" 
AR Path="/5CFCA4E3/5CEF69E7" Ref="RV?"  Part="1" 
F 0 "RV7" V 5400 4250 50  0000 R CNN
F 1 "100k (TRIM)" V 5300 4400 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Vishay_43_Horizontal" H 5500 4200 50  0001 C CNN
F 3 "~" H 5500 4200 50  0001 C CNN
	1    5500 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4200 5750 4200
$Comp
L power:+15V #PWR025
U 1 1 5CEF69EE
P 6550 3350
AR Path="/5CEF69EE" Ref="#PWR025"  Part="1" 
AR Path="/5CFCA4E3/5CEF69EE" Ref="#PWR?"  Part="1" 
F 0 "#PWR025" H 6550 3200 50  0001 C CNN
F 1 "+15V" H 6565 3523 50  0000 C CNN
F 2 "" H 6550 3350 50  0001 C CNN
F 3 "" H 6550 3350 50  0001 C CNN
	1    6550 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5CEF69F4
P 6600 4500
AR Path="/5CEF69F4" Ref="R20"  Part="1" 
AR Path="/5CFCA4E3/5CEF69F4" Ref="R?"  Part="1" 
F 0 "R20" H 6530 4454 50  0000 R CNN
F 1 "390" H 6530 4545 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6530 4500 50  0001 C CNN
F 3 "~" H 6600 4500 50  0001 C CNN
	1    6600 4500
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV8
U 1 1 5CEF69FA
P 6600 4900
AR Path="/5CEF69FA" Ref="RV8"  Part="1" 
AR Path="/5CFCA4E3/5CEF69FA" Ref="RV?"  Part="1" 
F 0 "RV8" V 6500 4950 50  0000 R CNN
F 1 "50k (TRIM)" V 6400 5100 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Vishay_43_Horizontal" H 6600 4900 50  0001 C CNN
F 3 "~" H 6600 4900 50  0001 C CNN
	1    6600 4900
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR026
U 1 1 5CEF6A00
P 6600 5350
AR Path="/5CEF6A00" Ref="#PWR026"  Part="1" 
AR Path="/5CFCA4E3/5CEF6A00" Ref="#PWR?"  Part="1" 
F 0 "#PWR026" H 6600 5450 50  0001 C CNN
F 1 "-15V" H 6615 5523 50  0000 C CNN
F 2 "" H 6600 5350 50  0001 C CNN
F 3 "" H 6600 5350 50  0001 C CNN
	1    6600 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	6450 4900 6100 4900
Wire Wire Line
	6750 4900 7050 4900
$Comp
L Device:R R21
U 1 1 5CEF6A08
P 6600 5200
AR Path="/5CEF6A08" Ref="R21"  Part="1" 
AR Path="/5CFCA4E3/5CEF6A08" Ref="R?"  Part="1" 
F 0 "R21" H 6530 5154 50  0000 R CNN
F 1 "18k" H 6530 5245 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6530 5200 50  0001 C CNN
F 3 "~" H 6600 5200 50  0001 C CNN
	1    6600 5200
	-1   0    0    1   
$EndComp
Wire Wire Line
	6100 4400 6100 4500
Wire Wire Line
	7050 4400 7050 4500
Wire Wire Line
	6450 4500 6100 4500
Connection ~ 6100 4500
Wire Wire Line
	6100 4500 6100 4900
Wire Wire Line
	6750 4500 7050 4500
Connection ~ 7050 4500
Wire Wire Line
	7050 4500 7050 4900
$Comp
L power:GND #PWR029
U 1 1 5CEF6A16
P 7350 4500
AR Path="/5CEF6A16" Ref="#PWR029"  Part="1" 
AR Path="/5CFCA4E3/5CEF6A16" Ref="#PWR?"  Part="1" 
F 0 "#PWR029" H 7350 4250 50  0001 C CNN
F 1 "GND" H 7355 4327 50  0000 C CNN
F 2 "" H 7350 4500 50  0001 C CNN
F 3 "" H 7350 4500 50  0001 C CNN
	1    7350 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R26
U 1 1 5CEF6A1C
P 7350 4350
AR Path="/5CEF6A1C" Ref="R26"  Part="1" 
AR Path="/5CFCA4E3/5CEF6A1C" Ref="R?"  Part="1" 
F 0 "R26" H 7280 4304 50  0000 R CNN
F 1 "2.2k" H 7280 4395 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7280 4350 50  0001 C CNN
F 3 "~" H 7350 4350 50  0001 C CNN
	1    7350 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	7050 3750 7050 4000
$Comp
L Device:R R28
U 1 1 5CEF6A23
P 7650 4350
AR Path="/5CEF6A23" Ref="R28"  Part="1" 
AR Path="/5CFCA4E3/5CEF6A23" Ref="R?"  Part="1" 
F 0 "R28" H 7580 4304 50  0000 R CNN
F 1 "2.2k" H 7580 4395 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7580 4350 50  0001 C CNN
F 3 "~" H 7650 4350 50  0001 C CNN
	1    7650 4350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5CEF6A29
P 7650 4500
AR Path="/5CEF6A29" Ref="#PWR030"  Part="1" 
AR Path="/5CFCA4E3/5CEF6A29" Ref="#PWR?"  Part="1" 
F 0 "#PWR030" H 7650 4250 50  0001 C CNN
F 1 "GND" H 7655 4327 50  0000 C CNN
F 2 "" H 7650 4500 50  0001 C CNN
F 3 "" H 7650 4500 50  0001 C CNN
	1    7650 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4200 7650 4000
Connection ~ 7650 4000
Wire Wire Line
	7650 4000 7700 4000
$Comp
L Device:R R31
U 1 1 5CEF6A32
P 8000 3400
AR Path="/5CEF6A32" Ref="R31"  Part="1" 
AR Path="/5CFCA4E3/5CEF6A32" Ref="R?"  Part="1" 
F 0 "R31" H 7930 3354 50  0000 R CNN
F 1 "12k" H 7930 3445 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7930 3400 50  0001 C CNN
F 3 "~" H 8000 3400 50  0001 C CNN
	1    8000 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 3400 8300 3900
Wire Wire Line
	7650 3400 7650 3800
Connection ~ 7650 3800
Wire Wire Line
	7650 3800 7700 3800
Connection ~ 8300 3900
$Comp
L Device:R R33
U 1 1 5CEF6A3D
P 8300 4350
AR Path="/5CEF6A3D" Ref="R33"  Part="1" 
AR Path="/5CFCA4E3/5CEF6A3D" Ref="R?"  Part="1" 
F 0 "R33" H 8230 4304 50  0000 R CNN
F 1 "2.2k" H 8230 4395 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8230 4350 50  0001 C CNN
F 3 "~" H 8300 4350 50  0001 C CNN
	1    8300 4350
	-1   0    0    1   
$EndComp
Connection ~ 7350 5100
Wire Wire Line
	8300 4850 8300 4500
Wire Wire Line
	4400 700  4400 1250
Wire Wire Line
	7400 1300 7400 1650
Connection ~ 7400 1650
Wire Wire Line
	7400 1650 7300 1650
Wire Wire Line
	7400 1650 7400 2300
Wire Wire Line
	6900 1250 6900 1300
Connection ~ 6900 1300
Wire Wire Line
	6900 950  7350 950 
Connection ~ 7350 950 
Wire Wire Line
	7350 950  7750 950 
Wire Wire Line
	7750 1250 7750 1450
Wire Wire Line
	8250 2250 8250 700 
Wire Wire Line
	8250 2250 7750 2250
$Comp
L Device:R R19
U 1 1 5CEF6A52
P 6450 2000
AR Path="/5CEF6A52" Ref="R19"  Part="1" 
AR Path="/5CFCA4E3/5CEF6A52" Ref="R?"  Part="1" 
F 0 "R19" H 6380 1954 50  0000 R CNN
F 1 "27k" H 6380 2045 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6380 2000 50  0001 C CNN
F 3 "~" H 6450 2000 50  0001 C CNN
	1    6450 2000
	0    -1   -1   0   
$EndComp
Connection ~ 6300 2000
Wire Wire Line
	6900 2300 6900 2250
Connection ~ 6900 2250
Wire Wire Line
	6300 2000 6300 3050
$Comp
L Device:R R34
U 1 1 5CEF6A5C
P 8500 3050
AR Path="/5CEF6A5C" Ref="R34"  Part="1" 
AR Path="/5CFCA4E3/5CEF6A5C" Ref="R?"  Part="1" 
F 0 "R34" H 8430 3004 50  0000 R CNN
F 1 "1k" H 8430 3095 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8430 3050 50  0001 C CNN
F 3 "~" H 8500 3050 50  0001 C CNN
	1    8500 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 4200 8300 3900
Wire Wire Line
	7350 4850 7350 5100
Wire Wire Line
	4400 700  8250 700 
Wire Wire Line
	5500 4050 5500 3050
Wire Wire Line
	5500 3050 6300 3050
Wire Notes Line
	8750 550  1800 550 
Wire Notes Line
	1800 550  1800 6400
Wire Notes Line
	1800 6400 8750 6400
Wire Notes Line
	8750 550  8750 6400
Wire Wire Line
	1400 1550 1950 1550
Text Notes 900  2150 1    50   ~ 0
Coarse
Text Notes 900  2850 1    50   ~ 0
FINE
Text Notes 2750 2200 3    50   ~ 0
V/OCT
Text Notes 4600 5150 2    50   ~ 0
High Freq
Wire Wire Line
	3150 5750 7350 5750
Connection ~ 3150 5750
Wire Wire Line
	5750 4350 5750 4200
Connection ~ 5750 4200
Wire Wire Line
	5750 4200 5650 4200
Text Notes 5200 4050 3    50   ~ 0
High Freq
Text Notes 6850 4650 2    50   ~ 0
Sine Symetrie
Wire Wire Line
	6300 3050 8350 3050
Connection ~ 6300 3050
Wire Wire Line
	8950 3050 8650 3050
Wire Wire Line
	6100 3450 6100 3350
Wire Wire Line
	6100 3350 6550 3350
Wire Wire Line
	7050 3450 7050 3350
Wire Wire Line
	7050 3350 6550 3350
Connection ~ 6550 3350
Wire Wire Line
	6100 3750 6100 3800
Wire Wire Line
	7050 4000 7650 4000
Wire Wire Line
	6100 3800 7650 3800
Connection ~ 6100 3800
Wire Wire Line
	6100 3800 6100 4000
Wire Wire Line
	7850 3400 7650 3400
Wire Wire Line
	8150 3400 8300 3400
Wire Wire Line
	8350 3900 8300 3900
$Comp
L Device:R R35
U 1 1 5CEF6A88
P 8500 3900
AR Path="/5CEF6A88" Ref="R35"  Part="1" 
AR Path="/5CFCA4E3/5CEF6A88" Ref="R?"  Part="1" 
F 0 "R35" H 8430 3854 50  0000 R CNN
F 1 "1k" H 8430 3945 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8430 3900 50  0001 C CNN
F 3 "~" H 8500 3900 50  0001 C CNN
	1    8500 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 3900 8650 3900
Wire Wire Line
	7350 4850 8300 4850
Text Notes 7100 2800 0    50   ~ 0
schmitt trigger
Text Notes 5200 2500 0    50   ~ 0
oszillator
Text Notes 3400 5300 0    50   ~ 0
exponential converter
Text Notes 2600 850  0    50   ~ 0
cv voltage summer.
NoConn ~ 5500 4350
Wire Wire Line
	2450 1550 2450 2000
Wire Wire Line
	2250 2000 2450 2000
Connection ~ 2450 2000
Wire Wire Line
	2450 2000 2450 2750
Wire Wire Line
	1950 3500 1550 3500
$Comp
L THAT~Corporation:THAT340 Q1
U 1 1 5CEF6A9A
P 6000 4200
AR Path="/5CEF6A9A" Ref="Q1"  Part="1" 
AR Path="/5CFCA4E3/5CEF6A9A" Ref="Q?"  Part="1" 
F 0 "Q1" H 6190 4246 50  0000 L CNN
F 1 "THAT340" H 6190 4155 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 6120 4300 50  0001 C CNN
F 3 "" H 5920 4200 50  0000 C CNN
	1    6000 4200
	1    0    0    -1  
$EndComp
$Comp
L THAT~Corporation:THAT340 Q1
U 2 1 5CEF6AA0
P 7150 4200
AR Path="/5CEF6AA0" Ref="Q1"  Part="2" 
AR Path="/5CFCA4E3/5CEF6AA0" Ref="Q?"  Part="2" 
F 0 "Q1" H 7340 4246 50  0000 L CNN
F 1 "THAT340" H 7340 4155 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 7270 4300 50  0001 C CNN
F 3 "" H 7070 4200 50  0000 C CNN
	2    7150 4200
	-1   0    0    -1  
$EndComp
Connection ~ 7050 4000
$Comp
L THAT~Corporation:THAT340 Q1
U 3 1 5CEF6AA7
P 3600 3450
AR Path="/5CEF6AA7" Ref="Q1"  Part="3" 
AR Path="/5CFCA4E3/5CEF6AA7" Ref="Q?"  Part="3" 
F 0 "Q1" V 3835 3450 50  0000 C CNN
F 1 "THAT340" V 3926 3450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3720 3550 50  0001 C CNN
F 3 "" H 3520 3450 50  0000 C CNN
	3    3600 3450
	0    1    1    0   
$EndComp
$Comp
L THAT~Corporation:THAT340 Q1
U 4 1 5CEF6AAD
P 4000 3450
AR Path="/5CEF6AAD" Ref="Q1"  Part="4" 
AR Path="/5CFCA4E3/5CEF6AAD" Ref="Q?"  Part="4" 
F 0 "Q1" V 4235 3450 50  0000 C CNN
F 1 "THAT340" V 4326 3450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 4120 3550 50  0001 C CNN
F 3 "" H 3920 3450 50  0000 C CNN
	4    4000 3450
	0    -1   1    0   
$EndComp
Connection ~ 3800 3550
Text GLabel 1400 1550 0    50   Input ~ 0
CV
Text GLabel 1550 2000 0    50   Input ~ 0
Coarse
Text GLabel 1550 2750 0    50   Input ~ 0
FINE
Text GLabel 1550 3500 0    50   Input ~ 0
EXP_FM
Text GLabel 1750 4700 0    50   Input ~ 0
LIN_FM
Text GLabel 1400 5400 0    50   Input ~ 0
PWM
Text GLabel 1450 5900 0    50   Input ~ 0
INITIAL
Wire Wire Line
	1450 5900 1950 5900
Wire Wire Line
	1400 5400 1950 5400
Text GLabel 8950 3050 2    50   Input ~ 0
Triangle
Text GLabel 8950 3900 2    50   Input ~ 0
Sine
Text GLabel 8950 5650 2    50   Input ~ 0
PULSE
$Comp
L Kicad_Library:CA3080 U4
U 2 1 5CEF6AC0
P 4850 7100
AR Path="/5CEF6AC0" Ref="U4"  Part="2" 
AR Path="/5CFCA4E3/5CEF6AC0" Ref="U?"  Part="1" 
F 0 "U4" H 4900 7050 50  0000 C CNN
F 1 "CA3080" H 4950 7150 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4850 7100 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/ca30/ca3080-a.pdf" H 4850 7200 50  0001 C CNN
	2    4850 7100
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x10_Male J8
U 1 1 5CEB323D
P 6550 7150
F 0 "J8" H 6522 7032 50  0000 R CNN
F 1 "PANEL" H 6522 7123 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 6550 7150 50  0001 C CNN
F 3 "~" H 6550 7150 50  0001 C CNN
	1    6550 7150
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J9
U 1 1 5CEB5EFB
P 10050 6100
F 0 "J9" H 10100 6517 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 10100 6426 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 10050 6100 50  0001 C CNN
F 3 "~" H 10050 6100 50  0001 C CNN
	1    10050 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 5CEB6816
P 10350 6200
AR Path="/5CEB6816" Ref="#PWR040"  Part="1" 
AR Path="/5CFCA4E3/5CEB6816" Ref="#PWR?"  Part="1" 
F 0 "#PWR040" H 10350 5950 50  0001 C CNN
F 1 "GND" V 10355 6072 50  0000 R CNN
F 2 "" H 10350 6200 50  0001 C CNN
F 3 "" H 10350 6200 50  0001 C CNN
	1    10350 6200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR039
U 1 1 5CEB722E
P 10350 6100
AR Path="/5CEB722E" Ref="#PWR039"  Part="1" 
AR Path="/5CFCA4E3/5CEB722E" Ref="#PWR?"  Part="1" 
F 0 "#PWR039" H 10350 5850 50  0001 C CNN
F 1 "GND" V 10355 5972 50  0000 R CNN
F 2 "" H 10350 6100 50  0001 C CNN
F 3 "" H 10350 6100 50  0001 C CNN
	1    10350 6100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR034
U 1 1 5CEB7537
P 9850 6100
AR Path="/5CEB7537" Ref="#PWR034"  Part="1" 
AR Path="/5CFCA4E3/5CEB7537" Ref="#PWR?"  Part="1" 
F 0 "#PWR034" H 9850 5850 50  0001 C CNN
F 1 "GND" V 9855 5972 50  0000 R CNN
F 2 "" H 9850 6100 50  0001 C CNN
F 3 "" H 9850 6100 50  0001 C CNN
	1    9850 6100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR035
U 1 1 5CEB7F6A
P 9850 6200
AR Path="/5CEB7F6A" Ref="#PWR035"  Part="1" 
AR Path="/5CFCA4E3/5CEB7F6A" Ref="#PWR?"  Part="1" 
F 0 "#PWR035" H 9850 5950 50  0001 C CNN
F 1 "GND" V 9855 6072 50  0000 R CNN
F 2 "" H 9850 6200 50  0001 C CNN
F 3 "" H 9850 6200 50  0001 C CNN
	1    9850 6200
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR032
U 1 1 5CEB81D8
P 9850 5900
AR Path="/5CEB81D8" Ref="#PWR032"  Part="1" 
AR Path="/5CFCA4E3/5CEB81D8" Ref="#PWR?"  Part="1" 
F 0 "#PWR032" H 9850 6000 50  0001 C CNN
F 1 "-15V" V 9865 6028 50  0000 L CNN
F 2 "" H 9850 5900 50  0001 C CNN
F 3 "" H 9850 5900 50  0001 C CNN
	1    9850 5900
	0    -1   -1   0   
$EndComp
$Comp
L power:-15V #PWR037
U 1 1 5CEB8BFA
P 10350 5900
AR Path="/5CEB8BFA" Ref="#PWR037"  Part="1" 
AR Path="/5CFCA4E3/5CEB8BFA" Ref="#PWR?"  Part="1" 
F 0 "#PWR037" H 10350 6000 50  0001 C CNN
F 1 "-15V" V 10365 6028 50  0000 L CNN
F 2 "" H 10350 5900 50  0001 C CNN
F 3 "" H 10350 5900 50  0001 C CNN
	1    10350 5900
	0    1    1    0   
$EndComp
$Comp
L power:+15V #PWR033
U 1 1 5CEB91AC
P 9850 6000
AR Path="/5CEB91AC" Ref="#PWR033"  Part="1" 
AR Path="/5CFCA4E3/5CEB91AC" Ref="#PWR?"  Part="1" 
F 0 "#PWR033" H 9850 5850 50  0001 C CNN
F 1 "+15V" V 9865 6128 50  0000 L CNN
F 2 "" H 9850 6000 50  0001 C CNN
F 3 "" H 9850 6000 50  0001 C CNN
	1    9850 6000
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR038
U 1 1 5CEB9D94
P 10350 6000
AR Path="/5CEB9D94" Ref="#PWR038"  Part="1" 
AR Path="/5CFCA4E3/5CEB9D94" Ref="#PWR?"  Part="1" 
F 0 "#PWR038" H 10350 5850 50  0001 C CNN
F 1 "+15V" V 10365 6128 50  0000 L CNN
F 2 "" H 10350 6000 50  0001 C CNN
F 3 "" H 10350 6000 50  0001 C CNN
	1    10350 6000
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR036
U 1 1 5CEBB1AC
P 9850 6300
F 0 "#PWR036" H 9850 6150 50  0001 C CNN
F 1 "+5V" V 9865 6428 50  0000 L CNN
F 2 "" H 9850 6300 50  0001 C CNN
F 3 "" H 9850 6300 50  0001 C CNN
	1    9850 6300
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR041
U 1 1 5CEBB503
P 10350 6300
F 0 "#PWR041" H 10350 6150 50  0001 C CNN
F 1 "+5V" V 10365 6428 50  0000 L CNN
F 2 "" H 10350 6300 50  0001 C CNN
F 3 "" H 10350 6300 50  0001 C CNN
	1    10350 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 2200 5100 3550
$EndSCHEMATC
