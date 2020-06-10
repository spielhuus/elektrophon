EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "ПОЛИВОКС"
Date "2020-06-01"
Rev "01"
Comp ""
Comment1 "schema for main circuit"
Comment2 "polivoks LM4250 VCF"
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 5D6BEBB7
P 9350 5850
F 0 "J1" H 9400 6267 50  0000 C CNN
F 1 "IDC Header" H 9400 6176 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 9350 5850 50  0001 C CNN
F 3 "~" H 9350 5850 50  0001 C CNN
	1    9350 5850
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR027
U 1 1 5D6BEBBD
P 9050 5950
F 0 "#PWR027" H 9050 5800 50  0001 C CNN
F 1 "+15V" V 9065 6078 50  0000 L CNN
F 2 "" H 9050 5950 50  0001 C CNN
F 3 "" H 9050 5950 50  0001 C CNN
	1    9050 5950
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR032
U 1 1 5D6BEBC3
P 9550 5950
F 0 "#PWR032" H 9550 5800 50  0001 C CNN
F 1 "+15V" V 9565 6078 50  0000 L CNN
F 2 "" H 9550 5950 50  0001 C CNN
F 3 "" H 9550 5950 50  0001 C CNN
	1    9550 5950
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR028
U 1 1 5D6BEBC9
P 9050 6050
F 0 "#PWR028" H 9050 6150 50  0001 C CNN
F 1 "-15V" V 9065 6178 50  0000 L CNN
F 2 "" H 9050 6050 50  0001 C CNN
F 3 "" H 9050 6050 50  0001 C CNN
	1    9050 6050
	0    -1   -1   0   
$EndComp
$Comp
L power:-15V #PWR033
U 1 1 5D6BEBCF
P 9550 6050
F 0 "#PWR033" H 9550 6150 50  0001 C CNN
F 1 "-15V" V 9565 6178 50  0000 L CNN
F 2 "" H 9550 6050 50  0001 C CNN
F 3 "" H 9550 6050 50  0001 C CNN
	1    9550 6050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5D6BEBD5
P 9050 5850
F 0 "#PWR026" H 9050 5600 50  0001 C CNN
F 1 "GND" V 9055 5722 50  0000 R CNN
F 2 "" H 9050 5850 50  0001 C CNN
F 3 "" H 9050 5850 50  0001 C CNN
	1    9050 5850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5D6BEBDB
P 9050 5750
F 0 "#PWR025" H 9050 5500 50  0001 C CNN
F 1 "GND" V 9055 5622 50  0000 R CNN
F 2 "" H 9050 5750 50  0001 C CNN
F 3 "" H 9050 5750 50  0001 C CNN
	1    9050 5750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5D6BEBE1
P 9550 5750
F 0 "#PWR030" H 9550 5500 50  0001 C CNN
F 1 "GND" V 9555 5622 50  0000 R CNN
F 2 "" H 9550 5750 50  0001 C CNN
F 3 "" H 9550 5750 50  0001 C CNN
	1    9550 5750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5D6BEBE7
P 9550 5850
F 0 "#PWR031" H 9550 5600 50  0001 C CNN
F 1 "GND" V 9555 5722 50  0000 R CNN
F 2 "" H 9550 5850 50  0001 C CNN
F 3 "" H 9550 5850 50  0001 C CNN
	1    9550 5850
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR029
U 1 1 5D6BEBED
P 9550 5650
F 0 "#PWR029" H 9550 5500 50  0001 C CNN
F 1 "+5V" V 9565 5778 50  0000 L CNN
F 2 "" H 9550 5650 50  0001 C CNN
F 3 "" H 9550 5650 50  0001 C CNN
	1    9550 5650
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR024
U 1 1 5D6BEBF3
P 9050 5650
F 0 "#PWR024" H 9050 5500 50  0001 C CNN
F 1 "+5V" V 9065 5778 50  0000 L CNN
F 2 "" H 9050 5650 50  0001 C CNN
F 3 "" H 9050 5650 50  0001 C CNN
	1    9050 5650
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5D6BEBF9
P 9050 5650
F 0 "#FLG04" H 9050 5725 50  0001 C CNN
F 1 "PWR_FLAG" H 9050 5778 50  0001 L CNN
F 2 "" H 9050 5650 50  0001 C CNN
F 3 "~" H 9050 5650 50  0001 C CNN
	1    9050 5650
	1    0    0    -1  
$EndComp
Connection ~ 9050 5650
Text Notes 5300 7500 0    50   ~ 0
Power
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5E084229
P 5500 7150
F 0 "#FLG01" H 5500 7225 50  0001 C CNN
F 1 "PWR_FLAG" V 5500 7278 50  0000 L CNN
F 2 "" H 5500 7150 50  0001 C CNN
F 3 "~" H 5500 7150 50  0001 C CNN
	1    5500 7150
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR012
U 1 1 5ED7B185
P 5500 7150
F 0 "#PWR012" H 5500 7000 50  0001 C CNN
F 1 "+15V" V 5515 7278 50  0000 L CNN
F 2 "" H 5500 7150 50  0001 C CNN
F 3 "" H 5500 7150 50  0001 C CNN
	1    5500 7150
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR013
U 1 1 5ED7B186
P 5500 7250
F 0 "#PWR013" H 5500 7350 50  0001 C CNN
F 1 "-15V" V 5515 7378 50  0000 L CNN
F 2 "" H 5500 7250 50  0001 C CNN
F 3 "" H 5500 7250 50  0001 C CNN
	1    5500 7250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5ED7B187
P 5500 7350
F 0 "#PWR014" H 5500 7100 50  0001 C CNN
F 1 "GND" V 5500 7150 50  0000 C CNN
F 2 "" H 5500 7350 50  0001 C CNN
F 3 "" H 5500 7350 50  0001 C CNN
	1    5500 7350
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5ED7B188
P 5500 7250
F 0 "#FLG02" H 5500 7325 50  0001 C CNN
F 1 "PWR_FLAG" V 5500 7378 50  0000 L CNN
F 2 "" H 5500 7250 50  0001 C CNN
F 3 "~" H 5500 7250 50  0001 C CNN
	1    5500 7250
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5ED7B189
P 5500 7350
F 0 "#FLG03" H 5500 7425 50  0001 C CNN
F 1 "PWR_FLAG" V 5500 7478 50  0000 L CNN
F 2 "" H 5500 7350 50  0001 C CNN
F 3 "~" H 5500 7350 50  0001 C CNN
	1    5500 7350
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5D6DB9A0
P 6150 6950
F 0 "H1" H 6250 6996 50  0000 L CNN
F 1 "MountingHole" H 6250 6905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6150 6950 50  0001 C CNN
F 3 "~" H 6150 6950 50  0001 C CNN
	1    6150 6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5D6DC0FC
P 6150 7150
F 0 "H2" H 6250 7196 50  0000 L CNN
F 1 "MountingHole" H 6250 7105 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6150 7150 50  0001 C CNN
F 3 "~" H 6150 7150 50  0001 C CNN
	1    6150 7150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5D6DC549
P 6150 7350
F 0 "H3" H 6250 7396 50  0000 L CNN
F 1 "MountingHole" H 6250 7305 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6150 7350 50  0001 C CNN
F 3 "~" H 6150 7350 50  0001 C CNN
	1    6150 7350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5D6DCA0E
P 6150 7550
F 0 "H4" H 6250 7596 50  0000 L CNN
F 1 "MountingHole" H 6250 7505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6150 7550 50  0001 C CNN
F 3 "~" H 6150 7550 50  0001 C CNN
	1    6150 7550
	1    0    0    -1  
$EndComp
Text Notes 4750 7400 1    50   ~ 0
LM4250
$Comp
L Device:C C10
U 1 1 5D5F4D9B
P 3900 7400
F 0 "C10" H 4015 7446 50  0000 L CNN
F 1 "0.1u" H 4015 7355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3938 7250 50  0001 C CNN
F 3 "~" H 3900 7400 50  0001 C CNN
	1    3900 7400
	1    0    0    -1  
$EndComp
Text Notes 4250 7400 1    50   ~ 0
LM4250
$Comp
L Device:C C12
U 1 1 5E0942BB
P 4400 7400
F 0 "C12" H 4515 7446 50  0000 L CNN
F 1 "0.1u" H 4515 7355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4438 7250 50  0001 C CNN
F 3 "~" H 4400 7400 50  0001 C CNN
	1    4400 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5E0942C1
P 4400 7100
F 0 "C11" H 4515 7146 50  0000 L CNN
F 1 "0.1u" H 4515 7055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4438 6950 50  0001 C CNN
F 3 "~" H 4400 7100 50  0001 C CNN
	1    4400 7100
	1    0    0    -1  
$EndComp
Connection ~ 3900 7250
Connection ~ 3900 7550
Wire Wire Line
	3900 7250 4400 7250
Connection ~ 4400 7250
Wire Wire Line
	3900 7550 4400 7550
$Comp
L Amplifier_Operational:LM4250 U4
U 1 1 5ECDA42B
P 5300 4350
F 0 "U4" H 5350 4100 50  0000 L CNN
F 1 "LM4250" H 5350 4200 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 5350 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm4250.pdf" H 5350 4500 50  0001 C CNN
	1    5300 4350
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM4250 U5
U 1 1 5ECDAE78
P 7000 4250
F 0 "U5" H 7050 4000 50  0000 L CNN
F 1 "LM4250" H 7050 4100 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 7050 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm4250.pdf" H 7050 4400 50  0001 C CNN
	1    7000 4250
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 1 1 5ECDB4FD
P 2650 2800
F 0 "U1" H 2650 3167 50  0000 C CNN
F 1 "TL072" H 2650 3076 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2650 2800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2650 2800 50  0001 C CNN
	1    2650 2800
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 2 1 5ECDC3BF
P 2650 1050
F 0 "U1" H 2650 683 50  0000 C CNN
F 1 "TL072" H 2650 774 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2650 1050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2650 1050 50  0001 C CNN
	2    2650 1050
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U2
U 1 1 5ECE1F7C
P 4250 1800
F 0 "U2" H 4250 1433 50  0000 C CNN
F 1 "TL072" H 4250 1524 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 4250 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4250 1800 50  0001 C CNN
	1    4250 1800
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U2
U 2 1 5ECE1F82
P 8150 5900
F 0 "U2" H 8150 6267 50  0000 C CNN
F 1 "TL072" H 8150 6176 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 8150 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8150 5900 50  0001 C CNN
	2    8150 5900
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U3
U 1 1 5ECE2429
P 8950 2650
F 0 "U3" H 8950 3017 50  0000 C CNN
F 1 "TL072" H 8950 2926 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 8950 2650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8950 2650 50  0001 C CNN
	1    8950 2650
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U3
U 2 1 5ECE242F
P 8950 4350
F 0 "U3" H 8950 4717 50  0000 C CNN
F 1 "TL072" H 8950 4626 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 8950 4350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8950 4350 50  0001 C CNN
	2    8950 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR018
U 1 1 5ECE4C07
P 6900 4550
F 0 "#PWR018" H 6900 4400 50  0001 C CNN
F 1 "+15V" H 6915 4723 50  0000 C CNN
F 2 "" H 6900 4550 50  0001 C CNN
F 3 "" H 6900 4550 50  0001 C CNN
	1    6900 4550
	-1   0    0    1   
$EndComp
$Comp
L power:-15V #PWR010
U 1 1 5ECE5094
P 5200 4050
F 0 "#PWR010" H 5200 4150 50  0001 C CNN
F 1 "-15V" H 5215 4223 50  0000 C CNN
F 2 "" H 5200 4050 50  0001 C CNN
F 3 "" H 5200 4050 50  0001 C CNN
	1    5200 4050
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR017
U 1 1 5ECE5BDD
P 6900 3950
F 0 "#PWR017" H 6900 4050 50  0001 C CNN
F 1 "-15V" H 6915 4123 50  0000 C CNN
F 2 "" H 6900 3950 50  0001 C CNN
F 3 "" H 6900 3950 50  0001 C CNN
	1    6900 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5ECEABCF
P 2100 950
F 0 "R3" V 1893 950 50  0000 C CNN
F 1 "10k" V 1984 950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2030 950 50  0001 C CNN
F 3 "~" H 2100 950 50  0001 C CNN
	1    2100 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 950  2350 950 
Wire Wire Line
	2350 1150 2350 1300
Wire Wire Line
	2350 1300 2950 1300
Wire Wire Line
	2950 1300 2950 1050
Wire Wire Line
	1400 1450 2950 1450
Wire Wire Line
	2950 1450 2950 1300
Connection ~ 2950 1300
$Comp
L Device:R R6
U 1 1 5ECF08F5
P 2650 2300
F 0 "R6" V 2443 2300 50  0000 C CNN
F 1 "100k" V 2534 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2580 2300 50  0001 C CNN
F 3 "~" H 2650 2300 50  0001 C CNN
	1    2650 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 2300 3000 2300
Wire Wire Line
	3000 1950 1400 1950
Wire Wire Line
	2500 2300 2250 2300
Wire Wire Line
	2250 2300 2250 2700
Wire Wire Line
	2250 2700 2350 2700
$Comp
L power:GND #PWR05
U 1 1 5ECF9AAA
P 2250 2950
F 0 "#PWR05" H 2250 2700 50  0001 C CNN
F 1 "GND" H 2255 2777 50  0000 C CNN
F 2 "" H 2250 2950 50  0001 C CNN
F 3 "" H 2250 2950 50  0001 C CNN
	1    2250 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2900 2250 2900
Wire Wire Line
	2250 2900 2250 2950
$Comp
L Device:R R2
U 1 1 5ECFB7DF
P 1950 2300
F 0 "R2" V 1743 2300 50  0000 C CNN
F 1 "100k" V 1834 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1880 2300 50  0001 C CNN
F 3 "~" H 1950 2300 50  0001 C CNN
	1    1950 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5ECFBA3A
P 1700 2700
F 0 "R1" H 1630 2654 50  0000 R CNN
F 1 "220k" H 1630 2745 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1630 2700 50  0001 C CNN
F 3 "~" H 1700 2700 50  0001 C CNN
	1    1700 2700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5ECFBDF5
P 1700 2950
F 0 "#PWR04" H 1700 2700 50  0001 C CNN
F 1 "GND" H 1705 2777 50  0000 C CNN
F 2 "" H 1700 2950 50  0001 C CNN
F 3 "" H 1700 2950 50  0001 C CNN
	1    1700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2850 1700 2950
Wire Wire Line
	1700 2550 1700 2300
Wire Wire Line
	1700 2300 1800 2300
Wire Wire Line
	2100 2300 2250 2300
Connection ~ 2250 2300
Wire Wire Line
	3950 1700 3850 1700
$Comp
L Device:R R8
U 1 1 5ED04267
P 3100 1700
F 0 "R8" V 2893 1700 50  0000 C CNN
F 1 "120k" V 2984 1700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3030 1700 50  0001 C CNN
F 3 "~" H 3100 1700 50  0001 C CNN
	1    3100 1700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5ED04AA4
P 3850 1950
F 0 "#PWR07" H 3850 1700 50  0001 C CNN
F 1 "GND" H 3855 1777 50  0000 C CNN
F 2 "" H 3850 1950 50  0001 C CNN
F 3 "" H 3850 1950 50  0001 C CNN
	1    3850 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1900 3850 1900
$Comp
L Device:R R12
U 1 1 5ED06834
P 4650 1500
F 0 "R12" V 4443 1500 50  0000 C CNN
F 1 "3k" V 4534 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4580 1500 50  0001 C CNN
F 3 "~" H 4650 1500 50  0001 C CNN
	1    4650 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 1250 4650 1350
Wire Wire Line
	4650 1800 4550 1800
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5ED0A5D7
P 5050 1700
F 0 "Q1" V 5285 1700 50  0000 C CNN
F 1 "2N3904" V 5376 1700 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5250 1625 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5050 1700 50  0001 L CNN
	1    5050 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 1500 5050 1250
Wire Wire Line
	5050 1250 4650 1250
Connection ~ 4650 1250
Wire Wire Line
	4850 1800 4650 1800
Connection ~ 4650 1800
Wire Wire Line
	3850 1250 3850 1700
Connection ~ 3850 1700
Wire Wire Line
	3850 1900 3850 1950
Wire Wire Line
	3250 1700 3300 1700
$Comp
L Device:R R4
U 1 1 5ED387DD
P 2650 4100
F 0 "R4" V 2443 4100 50  0000 C CNN
F 1 "100k" V 2534 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2580 4100 50  0001 C CNN
F 3 "~" H 2650 4100 50  0001 C CNN
	1    2650 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5ED3C7CB
P 3550 1350
F 0 "R9" H 3480 1304 50  0000 R CNN
F 1 "100k" H 3480 1395 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3480 1350 50  0001 C CNN
F 3 "~" H 3550 1350 50  0001 C CNN
	1    3550 1350
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR06
U 1 1 5ED3DAE4
P 3550 1200
F 0 "#PWR06" H 3550 1050 50  0001 C CNN
F 1 "+15V" H 3565 1373 50  0000 C CNN
F 2 "" H 3550 1200 50  0001 C CNN
F 3 "" H 3550 1200 50  0001 C CNN
	1    3550 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1500 3550 1700
$Comp
L Device:R R5
U 1 1 5ED46F01
P 2650 4600
F 0 "R5" V 2443 4600 50  0000 C CNN
F 1 "470k" V 2534 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2580 4600 50  0001 C CNN
F 3 "~" H 2650 4600 50  0001 C CNN
	1    2650 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5ED4C5CF
P 4500 3950
F 0 "R10" H 4430 3904 50  0000 R CNN
F 1 "47k" H 4430 3995 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4430 3950 50  0001 C CNN
F 3 "~" H 4500 3950 50  0001 C CNN
	1    4500 3950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 5ED4C914
P 4500 4700
F 0 "R11" H 4430 4654 50  0000 R CNN
F 1 "1k" H 4430 4745 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4430 4700 50  0001 C CNN
F 3 "~" H 4500 4700 50  0001 C CNN
	1    4500 4700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5ED4CC9E
P 4500 4850
F 0 "#PWR08" H 4500 4600 50  0001 C CNN
F 1 "GND" H 4505 4677 50  0000 C CNN
F 2 "" H 4500 4850 50  0001 C CNN
F 3 "" H 4500 4850 50  0001 C CNN
	1    4500 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5ED4CF72
P 4850 4850
F 0 "#PWR09" H 4850 4600 50  0001 C CNN
F 1 "GND" H 4855 4677 50  0000 C CNN
F 2 "" H 4850 4850 50  0001 C CNN
F 3 "" H 4850 4850 50  0001 C CNN
	1    4850 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2300 3000 2800
Wire Wire Line
	3000 2800 2950 2800
Connection ~ 3000 2300
NoConn ~ 5300 4650
NoConn ~ 5400 4650
Wire Wire Line
	4650 1650 4650 1800
Wire Wire Line
	3850 1250 4650 1250
$Comp
L Device:R R14
U 1 1 5ED35BAC
P 6000 4350
F 0 "R14" V 5793 4350 50  0000 C CNN
F 1 "47k" V 5884 4350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5930 4350 50  0001 C CNN
F 3 "~" H 6000 4350 50  0001 C CNN
	1    6000 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 5ED36E2C
P 6200 4700
F 0 "R15" H 6130 4654 50  0000 R CNN
F 1 "1k" H 6130 4745 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6130 4700 50  0001 C CNN
F 3 "~" H 6200 4700 50  0001 C CNN
	1    6200 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 4350 6200 4350
Wire Wire Line
	6700 4150 6550 4150
$Comp
L power:GND #PWR015
U 1 1 5ED4B8C4
P 6200 4850
F 0 "#PWR015" H 6200 4600 50  0001 C CNN
F 1 "GND" H 6205 4677 50  0000 C CNN
F 2 "" H 6200 4850 50  0001 C CNN
F 3 "" H 6200 4850 50  0001 C CNN
	1    6200 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5ED4BCDD
P 6550 4850
F 0 "#PWR016" H 6550 4600 50  0001 C CNN
F 1 "GND" H 6555 4677 50  0000 C CNN
F 2 "" H 6550 4850 50  0001 C CNN
F 3 "" H 6550 4850 50  0001 C CNN
	1    6550 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR011
U 1 1 5ECE3F4A
P 5200 4650
F 0 "#PWR011" H 5200 4500 50  0001 C CNN
F 1 "+15V" H 5215 4823 50  0000 C CNN
F 2 "" H 5200 4650 50  0001 C CNN
F 3 "" H 5200 4650 50  0001 C CNN
	1    5200 4650
	-1   0    0    1   
$EndComp
NoConn ~ 7000 4550
NoConn ~ 7100 4550
Wire Wire Line
	4850 4450 4850 4850
Wire Wire Line
	5000 4450 4850 4450
Wire Wire Line
	6700 4350 6200 4350
Connection ~ 6200 4350
Wire Wire Line
	5000 4250 4500 4250
Wire Wire Line
	4500 4250 4500 4550
Wire Wire Line
	4500 4100 4500 4250
Connection ~ 4500 4250
Wire Wire Line
	7550 3650 7550 4250
Wire Wire Line
	7550 4250 7300 4250
Wire Wire Line
	4500 3650 4500 3800
Wire Wire Line
	6550 4150 6550 4850
Wire Wire Line
	6200 4350 6200 4550
Wire Wire Line
	4500 3650 7550 3650
$Comp
L Device:CP C14
U 1 1 5ED96486
P 7850 4250
F 0 "C14" V 8105 4250 50  0000 C CNN
F 1 "1u" V 8014 4250 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 7888 4100 50  0001 C CNN
F 3 "~" H 7850 4250 50  0001 C CNN
	1    7850 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7700 4250 7550 4250
Connection ~ 7550 4250
$Comp
L Device:R R18
U 1 1 5EDA2DCA
P 8100 4750
F 0 "R18" H 8030 4704 50  0000 R CNN
F 1 "100k" H 8030 4795 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8030 4750 50  0001 C CNN
F 3 "~" H 8100 4750 50  0001 C CNN
	1    8100 4750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5EDA2DD0
P 8100 4900
F 0 "#PWR021" H 8100 4650 50  0001 C CNN
F 1 "GND" H 8105 4727 50  0000 C CNN
F 2 "" H 8100 4900 50  0001 C CNN
F 3 "" H 8100 4900 50  0001 C CNN
	1    8100 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5EDADFF7
P 8500 4750
F 0 "R20" H 8430 4704 50  0000 R CNN
F 1 "10k" H 8430 4795 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8430 4750 50  0001 C CNN
F 3 "~" H 8500 4750 50  0001 C CNN
	1    8500 4750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5EDADFFD
P 8500 4900
F 0 "#PWR023" H 8500 4650 50  0001 C CNN
F 1 "GND" H 8505 4727 50  0000 C CNN
F 2 "" H 8500 4900 50  0001 C CNN
F 3 "" H 8500 4900 50  0001 C CNN
	1    8500 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4250 8100 4250
Wire Wire Line
	8500 4600 8500 4450
Wire Wire Line
	8500 4450 8650 4450
Wire Wire Line
	8100 4250 8100 4600
Connection ~ 8100 4250
$Comp
L Device:R R22
U 1 1 5EDB8585
P 9000 3800
F 0 "R22" V 9207 3800 50  0000 C CNN
F 1 "100k" V 9116 3800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8930 3800 50  0001 C CNN
F 3 "~" H 9000 3800 50  0001 C CNN
	1    9000 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8100 4250 8650 4250
Wire Wire Line
	8850 3800 8500 3800
Wire Wire Line
	8500 3800 8500 4450
Connection ~ 8500 4450
Wire Wire Line
	9150 3800 9450 3800
Wire Wire Line
	9450 3800 9450 4350
Wire Wire Line
	9450 4350 9250 4350
Wire Wire Line
	9550 4350 9450 4350
Connection ~ 9450 4350
Wire Wire Line
	3750 4250 4500 4250
Wire Wire Line
	5600 4350 5750 4350
$Comp
L Device:R R7
U 1 1 5EF32BA1
P 2650 3600
F 0 "R7" V 2443 3600 50  0000 C CNN
F 1 "162k" V 2534 3600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2580 3600 50  0001 C CNN
F 3 "~" H 2650 3600 50  0001 C CNN
	1    2650 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5EF3C877
P 5300 3300
F 0 "R13" H 5230 3254 50  0000 R CNN
F 1 "1M2" H 5230 3345 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5230 3300 50  0001 C CNN
F 3 "~" H 5300 3300 50  0001 C CNN
	1    5300 3300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R16
U 1 1 5EF3D69E
P 7000 3300
F 0 "R16" H 6930 3254 50  0000 R CNN
F 1 "1M2" H 6930 3345 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6930 3300 50  0001 C CNN
F 3 "~" H 7000 3300 50  0001 C CNN
	1    7000 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	7000 3950 7000 3450
Wire Wire Line
	7000 2950 6150 2950
Wire Wire Line
	5300 2950 5300 3150
Wire Wire Line
	5300 3450 5300 4050
Wire Wire Line
	7000 3150 7000 2950
Connection ~ 5750 4350
Wire Wire Line
	5750 4350 5850 4350
$Comp
L Device:CP C13
U 1 1 5EF649BA
P 7850 2550
F 0 "C13" V 8105 2550 50  0000 C CNN
F 1 "1u" V 8014 2550 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 7888 2400 50  0001 C CNN
F 3 "~" H 7850 2550 50  0001 C CNN
	1    7850 2550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R17
U 1 1 5EF649C0
P 8100 3050
F 0 "R17" H 8030 3004 50  0000 R CNN
F 1 "100k" H 8030 3095 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8030 3050 50  0001 C CNN
F 3 "~" H 8100 3050 50  0001 C CNN
	1    8100 3050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5EF649C6
P 8100 3200
F 0 "#PWR020" H 8100 2950 50  0001 C CNN
F 1 "GND" H 8105 3027 50  0000 C CNN
F 2 "" H 8100 3200 50  0001 C CNN
F 3 "" H 8100 3200 50  0001 C CNN
	1    8100 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 5EF649CC
P 8500 3050
F 0 "R19" H 8430 3004 50  0000 R CNN
F 1 "10k" H 8430 3095 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8430 3050 50  0001 C CNN
F 3 "~" H 8500 3050 50  0001 C CNN
	1    8500 3050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5EF649D2
P 8500 3200
F 0 "#PWR022" H 8500 2950 50  0001 C CNN
F 1 "GND" H 8505 3027 50  0000 C CNN
F 2 "" H 8500 3200 50  0001 C CNN
F 3 "" H 8500 3200 50  0001 C CNN
	1    8500 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2550 8100 2550
Wire Wire Line
	8500 2900 8500 2750
Wire Wire Line
	8500 2750 8650 2750
Wire Wire Line
	8100 2550 8100 2900
Connection ~ 8100 2550
$Comp
L Device:R R21
U 1 1 5EF649DD
P 9000 2100
F 0 "R21" V 9207 2100 50  0000 C CNN
F 1 "100k" V 9116 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8930 2100 50  0001 C CNN
F 3 "~" H 9000 2100 50  0001 C CNN
	1    9000 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8100 2550 8650 2550
Wire Wire Line
	8850 2100 8500 2100
Wire Wire Line
	8500 2100 8500 2750
Connection ~ 8500 2750
Wire Wire Line
	9150 2100 9450 2100
Wire Wire Line
	9450 2100 9450 2650
Wire Wire Line
	9450 2650 9250 2650
Wire Wire Line
	9550 2650 9450 2650
Connection ~ 9450 2650
Wire Wire Line
	5750 4350 5750 2550
Wire Wire Line
	5750 2550 7700 2550
Wire Wire Line
	3550 7550 3900 7550
Wire Wire Line
	3200 7250 3900 7250
Wire Wire Line
	2400 7250 3200 7250
Wire Wire Line
	2750 6950 3200 6950
Wire Wire Line
	2750 7550 3200 7550
Wire Wire Line
	3200 7550 3550 7550
Wire Wire Line
	3200 6950 3550 6950
Connection ~ 3200 7550
Connection ~ 3200 6950
Connection ~ 3200 7250
$Comp
L Device:C C8
U 1 1 5EFCF1D0
P 3200 7400
F 0 "C8" H 3315 7446 50  0000 L CNN
F 1 "0.1u" H 3315 7355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3238 7250 50  0001 C CNN
F 3 "~" H 3200 7400 50  0001 C CNN
	1    3200 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5EFCF1CA
P 3200 7100
F 0 "C7" H 3315 7146 50  0000 L CNN
F 1 "0.1u" H 3315 7055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3238 6950 50  0001 C CNN
F 3 "~" H 3200 7100 50  0001 C CNN
	1    3200 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6950 3900 6950
Wire Wire Line
	1950 6950 2400 6950
Connection ~ 1950 6950
Wire Wire Line
	1950 7550 2400 7550
Connection ~ 1950 7550
Wire Wire Line
	1550 6950 1950 6950
Wire Wire Line
	1550 7550 1950 7550
Wire Wire Line
	2400 7550 2750 7550
Wire Wire Line
	2400 6950 2750 6950
$Comp
L Amplifier_Operational:TL072 U3
U 3 1 5ECE2E4F
P 3650 7250
F 0 "U3" H 3608 7296 50  0000 L CNN
F 1 "TL072" H 3608 7205 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3650 7250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3650 7250 50  0001 C CNN
	3    3650 7250
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U2
U 3 1 5ECE278C
P 2850 7250
F 0 "U2" H 2808 7296 50  0000 L CNN
F 1 "TL072" H 2808 7205 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2850 7250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2850 7250 50  0001 C CNN
	3    2850 7250
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 5ECDE718
P 2050 7250
F 0 "U1" H 2008 7296 50  0000 L CNN
F 1 "TL072" H 2008 7205 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2050 7250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2050 7250 50  0001 C CNN
	3    2050 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 6950 4400 6950
Connection ~ 3900 6950
$Comp
L Device:C C9
U 1 1 5D5F4D95
P 3900 7100
F 0 "C9" H 4015 7146 50  0000 L CNN
F 1 "0.1u" H 4015 7055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3938 6950 50  0001 C CNN
F 3 "~" H 3900 7100 50  0001 C CNN
	1    3900 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 7250 1550 7250
Connection ~ 1050 7550
Wire Wire Line
	1050 7550 1550 7550
Wire Wire Line
	800  7550 1050 7550
Connection ~ 1050 6950
Wire Wire Line
	1050 6950 1550 6950
Connection ~ 2400 7550
Connection ~ 1550 7550
Connection ~ 2400 6950
Connection ~ 1550 6950
Connection ~ 2400 7250
Connection ~ 1550 7250
$Comp
L Device:C C6
U 1 1 5D5EB366
P 2400 7400
F 0 "C6" H 2515 7446 50  0000 L CNN
F 1 "0.1u" H 2515 7355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2438 7250 50  0001 C CNN
F 3 "~" H 2400 7400 50  0001 C CNN
	1    2400 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5D5EB360
P 2400 7100
F 0 "C5" H 2515 7146 50  0000 L CNN
F 1 "0.1u" H 2515 7055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2438 6950 50  0001 C CNN
F 3 "~" H 2400 7100 50  0001 C CNN
	1    2400 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5D5D9D2D
P 1550 7400
F 0 "C4" H 1665 7446 50  0000 L CNN
F 1 "0.1u" H 1665 7355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 1588 7250 50  0001 C CNN
F 3 "~" H 1550 7400 50  0001 C CNN
	1    1550 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5D5D98EA
P 1550 7100
F 0 "C3" H 1665 7146 50  0000 L CNN
F 1 "0.1u" H 1665 7055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 1588 6950 50  0001 C CNN
F 3 "~" H 1550 7100 50  0001 C CNN
	1    1550 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 6950 850  6950
$Comp
L power:-15V #PWR01
U 1 1 5D62273C
P 800 7550
F 0 "#PWR01" H 800 7650 50  0001 C CNN
F 1 "-15V" V 815 7678 50  0000 L CNN
F 2 "" H 800 7550 50  0001 C CNN
F 3 "" H 800 7550 50  0001 C CNN
	1    800  7550
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C1
U 1 1 5D5C24D0
P 1050 7100
F 0 "C1" H 1168 7146 50  0000 L CNN
F 1 "10u" H 1168 7055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1088 6950 50  0001 C CNN
F 3 "~" H 1050 7100 50  0001 C CNN
	1    1050 7100
	1    0    0    -1  
$EndComp
Connection ~ 1050 7250
Wire Wire Line
	1050 7250 850  7250
$Comp
L power:GND #PWR03
U 1 1 5D5C2DBB
P 850 7250
F 0 "#PWR03" H 850 7000 50  0001 C CNN
F 1 "GND" H 855 7077 50  0000 C CNN
F 2 "" H 850 7250 50  0001 C CNN
F 3 "" H 850 7250 50  0001 C CNN
	1    850  7250
	0    1    1    0   
$EndComp
$Comp
L Device:CP C2
U 1 1 5D5C2809
P 1050 7400
F 0 "C2" H 1168 7446 50  0000 L CNN
F 1 "10u" H 1168 7355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1088 7250 50  0001 C CNN
F 3 "~" H 1050 7400 50  0001 C CNN
	1    1050 7400
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR02
U 1 1 5D5BF152
P 850 6950
F 0 "#PWR02" H 850 6800 50  0001 C CNN
F 1 "+15V" V 865 7078 50  0000 L CNN
F 2 "" H 850 6950 50  0001 C CNN
F 3 "" H 850 6950 50  0001 C CNN
	1    850  6950
	0    -1   -1   0   
$EndComp
Connection ~ 2750 6950
Connection ~ 2750 7550
Connection ~ 3550 6950
Connection ~ 3550 7550
Wire Wire Line
	8450 5900 8450 5550
Wire Wire Line
	8450 5550 7850 5550
Wire Wire Line
	7850 5550 7850 5800
$Comp
L power:GND #PWR019
U 1 1 5F14959E
P 7800 6050
F 0 "#PWR019" H 7800 5800 50  0001 C CNN
F 1 "GND" H 7805 5877 50  0000 C CNN
F 2 "" H 7800 6050 50  0001 C CNN
F 3 "" H 7800 6050 50  0001 C CNN
	1    7800 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 6000 7800 6050
Wire Wire Line
	7850 6000 7800 6000
Wire Wire Line
	3300 1700 3300 3600
Wire Wire Line
	3000 1950 3000 2300
Wire Wire Line
	1600 950  1700 950 
Wire Wire Line
	1700 2300 1700 950 
Connection ~ 1700 2300
Connection ~ 1700 950 
Wire Wire Line
	1700 950  1950 950 
Connection ~ 3300 1700
Connection ~ 3300 3600
$Comp
L power:+15V #PWR034
U 1 1 5ED7B17D
P 10600 5050
F 0 "#PWR034" H 10600 4900 50  0001 C CNN
F 1 "+15V" V 10615 5178 50  0000 L CNN
F 2 "" H 10600 5050 50  0001 C CNN
F 3 "" H 10600 5050 50  0001 C CNN
	1    10600 5050
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR035
U 1 1 5ED7B17E
P 10600 5150
F 0 "#PWR035" H 10600 5250 50  0001 C CNN
F 1 "-15V" V 10615 5278 50  0000 L CNN
F 2 "" H 10600 5150 50  0001 C CNN
F 3 "" H 10600 5150 50  0001 C CNN
	1    10600 5150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR036
U 1 1 5ED7B17F
P 10600 5250
F 0 "#PWR036" H 10600 5000 50  0001 C CNN
F 1 "GND" V 10605 5122 50  0000 R CNN
F 2 "" H 10600 5250 50  0001 C CNN
F 3 "" H 10600 5250 50  0001 C CNN
	1    10600 5250
	0    -1   -1   0   
$EndComp
Text Label 10600 5350 0    50   ~ 0
fm_in
Text Label 10600 5650 0    50   ~ 0
fm_level_1
Text Label 10600 5550 0    50   ~ 0
fm_level_2
Text Label 10600 5450 0    50   ~ 0
fm_level_3
Text Label 10600 5750 0    50   ~ 0
freq
Text Label 10600 5850 0    50   ~ 0
cv
Text Label 10600 5950 0    50   ~ 0
in
Text Label 10600 6050 0    50   ~ 0
res_1
Text Label 10600 6150 0    50   ~ 0
res_2
Text Label 10600 6250 0    50   ~ 0
bp_out
Text Label 10600 6350 0    50   ~ 0
lp_out
Wire Wire Line
	2350 7250 2400 7250
Wire Wire Line
	1550 7250 2400 7250
$Comp
L Connector:Conn_01x14_Female J2
U 1 1 5EE3D3B2
P 10400 5650
F 0 "J2" H 10292 6435 50  0000 C CNN
F 1 "Conn_01x14_Female" H 10292 6344 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x14_P2.54mm_Vertical" H 10400 5650 50  0001 C CNN
F 3 "~" H 10400 5650 50  0001 C CNN
	1    10400 5650
	-1   0    0    -1  
$EndComp
Text Label 1600 950  2    50   ~ 0
fm_in
Text Label 1400 1450 2    50   ~ 0
fm_level_1
Text Label 1400 1700 2    50   ~ 0
fm_level_2
Text Label 1400 1950 2    50   ~ 0
fm_level_3
Text Label 1400 3600 2    50   ~ 0
freq
Text Label 1400 4100 2    50   ~ 0
cv
Text Label 1400 4600 2    50   ~ 0
in
Text Label 9550 4350 0    50   ~ 0
lp_out
Text Label 9550 2650 0    50   ~ 0
bp_out
Text Label 3750 5500 3    50   ~ 0
res_1
Text Label 5750 5500 3    50   ~ 0
res_2
Wire Wire Line
	5750 5500 5750 4350
Wire Wire Line
	1400 1700 2950 1700
Wire Wire Line
	1400 4100 2500 4100
Wire Wire Line
	2800 4100 3300 4100
Wire Wire Line
	3300 3600 3300 4100
Wire Wire Line
	2800 3600 3300 3600
Wire Wire Line
	2500 3600 1400 3600
Connection ~ 3550 1700
Wire Wire Line
	3550 1700 3850 1700
Wire Wire Line
	3300 1700 3550 1700
Wire Wire Line
	6150 2950 6150 1800
Connection ~ 6150 2950
Wire Wire Line
	5250 1800 6150 1800
Wire Wire Line
	5300 2950 6150 2950
Wire Wire Line
	2800 4600 3750 4600
Wire Wire Line
	3750 4250 3750 4600
Connection ~ 3750 4600
Wire Wire Line
	2500 4600 1400 4600
Wire Wire Line
	3750 4600 3750 5500
$EndSCHEMATC
