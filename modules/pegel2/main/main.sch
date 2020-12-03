EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "pegel"
Date "2020-09-20"
Rev "01"
Comp ""
Comment1 "schema for main circuit"
Comment2 "voltage controlled attenuator and ring modulator"
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
$Comp
L power:+15V #PWR021
U 1 1 5F502CF7
P 3050 6750
F 0 "#PWR021" H 3050 6600 50  0001 C CNN
F 1 "+15V" H 3065 6923 50  0000 C CNN
F 2 "" H 3050 6750 50  0001 C CNN
F 3 "" H 3050 6750 50  0001 C CNN
	1    3050 6750
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR022
U 1 1 5F503CEA
P 3050 7350
F 0 "#PWR022" H 3050 7450 50  0001 C CNN
F 1 "-15V" H 3065 7523 50  0000 C CNN
F 2 "" H 3050 7350 50  0001 C CNN
F 3 "" H 3050 7350 50  0001 C CNN
	1    3050 7350
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 2100 1750 1700
Wire Wire Line
	1800 2100 1750 2100
Wire Wire Line
	2400 2200 2450 2200
Wire Wire Line
	2450 1700 2450 2200
Wire Wire Line
	2550 2200 2450 2200
Connection ~ 2450 2200
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 5F50185F
P 3150 7050
F 0 "U1" H 3108 7096 50  0000 L CNN
F 1 "TL072" H 3108 7005 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3150 7050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3150 7050 50  0001 C CNN
F 4 "X" H 3150 7050 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 3150 7050 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3150 7050 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/opamp/TL072-dual.lib" H 3150 7050 50  0001 C CNN "Spice_Lib_File"
	3    3150 7050
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 1 1 5F4FEC7E
P 2100 2200
F 0 "U1" H 2100 1950 50  0000 C CNN
F 1 "TL072" H 2100 1850 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2100 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2100 2200 50  0001 C CNN
F 4 "X" H 2100 2200 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 2100 2200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2100 2200 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/opamp/TL072-dual.lib" H 2100 2200 50  0001 C CNN "Spice_Lib_File"
	1    2100 2200
	1    0    0    1   
$EndComp
Text GLabel 2550 2200 2    50   Input ~ 0
Xa
Wire Wire Line
	1750 3200 1750 2800
Wire Wire Line
	1800 3200 1750 3200
Wire Wire Line
	2400 3300 2450 3300
Wire Wire Line
	2450 2800 2450 3300
Wire Wire Line
	2550 3300 2450 3300
Connection ~ 2450 3300
Text GLabel 2550 3300 2    50   Input ~ 0
Ya
$Comp
L power:+15V #PWR027
U 1 1 5F63E167
P 3950 6750
F 0 "#PWR027" H 3950 6600 50  0001 C CNN
F 1 "+15V" H 3965 6923 50  0000 C CNN
F 2 "" H 3950 6750 50  0001 C CNN
F 3 "" H 3950 6750 50  0001 C CNN
	1    3950 6750
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR028
U 1 1 5F63E16D
P 3950 7350
F 0 "#PWR028" H 3950 7450 50  0001 C CNN
F 1 "-15V" H 3965 7523 50  0000 C CNN
F 2 "" H 3950 7350 50  0001 C CNN
F 3 "" H 3950 7350 50  0001 C CNN
	1    3950 7350
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U2
U 3 1 5F63E178
P 4050 7050
F 0 "U2" H 4008 7096 50  0000 L CNN
F 1 "TL072" H 4008 7005 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4050 7050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4050 7050 50  0001 C CNN
F 4 "X" H 4050 7050 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 4050 7050 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4050 7050 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/opamp/TL072-dual.lib" H 4050 7050 50  0001 C CNN "Spice_Lib_File"
	3    4050 7050
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR034
U 1 1 5F816C5C
P 6300 7350
F 0 "#PWR034" H 6300 7200 50  0001 C CNN
F 1 "+15V" H 6315 7523 50  0000 C CNN
F 2 "" H 6300 7350 50  0001 C CNN
F 3 "" H 6300 7350 50  0001 C CNN
	1    6300 7350
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR035
U 1 1 5F816FAE
P 6550 7350
F 0 "#PWR035" H 6550 7450 50  0001 C CNN
F 1 "-15V" H 6565 7523 50  0000 C CNN
F 2 "" H 6550 7350 50  0001 C CNN
F 3 "" H 6550 7350 50  0001 C CNN
	1    6550 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 5F817A91
P 6800 7450
F 0 "#PWR036" H 6800 7200 50  0001 C CNN
F 1 "GND" H 6805 7277 50  0000 C CNN
F 2 "" H 6800 7450 50  0001 C CNN
F 3 "" H 6800 7450 50  0001 C CNN
	1    6800 7450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J4
U 1 1 5E180747
P 1250 7000
AR Path="/5E180747" Ref="J4"  Part="1" 
AR Path="/5DD3665B/5E180747" Ref="J?"  Part="1" 
F 0 "J4" H 1300 7417 50  0000 C CNN
F 1 "IDC Header" H 1300 7326 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 1250 7000 50  0001 C CNN
F 3 "~" H 1250 7000 50  0001 C CNN
F 4 "J" H 1250 7000 50  0001 C CNN "Spice_Primitive"
F 5 "IDC Header" H 1250 7000 50  0001 C CNN "Spice_Model"
F 6 "N" H 1250 7000 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1250 7000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E180765
P 950 7000
AR Path="/5E180765" Ref="#PWR03"  Part="1" 
AR Path="/5DD3665B/5E180765" Ref="#PWR?"  Part="1" 
F 0 "#PWR03" H 950 6750 50  0001 C CNN
F 1 "GND" V 955 6872 50  0000 R CNN
F 2 "" H 950 7000 50  0001 C CNN
F 3 "" H 950 7000 50  0001 C CNN
	1    950  7000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5E18076B
P 950 6900
AR Path="/5E18076B" Ref="#PWR02"  Part="1" 
AR Path="/5DD3665B/5E18076B" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 950 6650 50  0001 C CNN
F 1 "GND" V 955 6772 50  0000 R CNN
F 2 "" H 950 6900 50  0001 C CNN
F 3 "" H 950 6900 50  0001 C CNN
	1    950  6900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5E180771
P 1450 6900
AR Path="/5E180771" Ref="#PWR010"  Part="1" 
AR Path="/5DD3665B/5E180771" Ref="#PWR?"  Part="1" 
F 0 "#PWR010" H 1450 6650 50  0001 C CNN
F 1 "GND" V 1455 6772 50  0000 R CNN
F 2 "" H 1450 6900 50  0001 C CNN
F 3 "" H 1450 6900 50  0001 C CNN
	1    1450 6900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5E180777
P 1450 7000
AR Path="/5E180777" Ref="#PWR011"  Part="1" 
AR Path="/5DD3665B/5E180777" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 1450 6750 50  0001 C CNN
F 1 "GND" V 1455 6872 50  0000 R CNN
F 2 "" H 1450 7000 50  0001 C CNN
F 3 "" H 1450 7000 50  0001 C CNN
	1    1450 7000
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5E18077D
P 1450 6800
AR Path="/5E18077D" Ref="#PWR09"  Part="1" 
AR Path="/5DD3665B/5E18077D" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 1450 6650 50  0001 C CNN
F 1 "+5V" V 1465 6928 50  0000 L CNN
F 2 "" H 1450 6800 50  0001 C CNN
F 3 "" H 1450 6800 50  0001 C CNN
	1    1450 6800
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5E180783
P 950 6800
AR Path="/5E180783" Ref="#PWR01"  Part="1" 
AR Path="/5DD3665B/5E180783" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 950 6650 50  0001 C CNN
F 1 "+5V" V 965 6928 50  0000 L CNN
F 2 "" H 950 6800 50  0001 C CNN
F 3 "" H 950 6800 50  0001 C CNN
	1    950  6800
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5E180789
P 950 6800
AR Path="/5E180789" Ref="#FLG01"  Part="1" 
AR Path="/5DD3665B/5E180789" Ref="#FLG?"  Part="1" 
F 0 "#FLG01" H 950 6875 50  0001 C CNN
F 1 "PWR_FLAG" H 950 6928 50  0001 L CNN
F 2 "" H 950 6800 50  0001 C CNN
F 3 "~" H 950 6800 50  0001 C CNN
	1    950  6800
	1    0    0    -1  
$EndComp
Connection ~ 950  6800
Text Notes 1100 7600 0    50   ~ 0
Power
$Comp
L Device:C C3
U 1 1 5F6F526B
P 2750 6900
F 0 "C3" H 2865 6946 50  0000 L CNN
F 1 "0.1u" H 2865 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2788 6750 50  0001 C CNN
F 3 "~" H 2750 6900 50  0001 C CNN
F 4 "C" H 2750 6900 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 2750 6900 50  0001 C CNN "Spice_Model"
F 6 "N" H 2750 6900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2750 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F6F586F
P 2750 7200
F 0 "C4" H 2865 7246 50  0000 L CNN
F 1 "0.1u" H 2865 7155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2788 7050 50  0001 C CNN
F 3 "~" H 2750 7200 50  0001 C CNN
F 4 "C" H 2750 7200 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 2750 7200 50  0001 C CNN "Spice_Model"
F 6 "N" H 2750 7200 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2750 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 6750 3050 6750
Wire Wire Line
	3050 7350 2750 7350
Connection ~ 3050 7350
Connection ~ 3050 6750
$Comp
L power:GND #PWR020
U 1 1 5F70ACFD
P 2550 7100
F 0 "#PWR020" H 2550 6850 50  0001 C CNN
F 1 "GND" H 2555 6927 50  0000 C CNN
F 2 "" H 2550 7100 50  0001 C CNN
F 3 "" H 2550 7100 50  0001 C CNN
	1    2550 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 7100 2550 7050
Wire Wire Line
	2550 7050 2750 7050
Connection ~ 2750 7050
$Comp
L Device:C C5
U 1 1 5F7116CC
P 3650 6900
F 0 "C5" H 3765 6946 50  0000 L CNN
F 1 "0.1u" H 3765 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3688 6750 50  0001 C CNN
F 3 "~" H 3650 6900 50  0001 C CNN
F 4 "C" H 3650 6900 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 3650 6900 50  0001 C CNN "Spice_Model"
F 6 "N" H 3650 6900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    3650 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F7116D2
P 3650 7200
F 0 "C6" H 3765 7246 50  0000 L CNN
F 1 "0.1u" H 3765 7155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3688 7050 50  0001 C CNN
F 3 "~" H 3650 7200 50  0001 C CNN
F 4 "C" H 3650 7200 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 3650 7200 50  0001 C CNN "Spice_Model"
F 6 "N" H 3650 7200 50  0001 C CNN "Spice_Netlist_Enabled"
	1    3650 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 6750 3950 6750
Wire Wire Line
	3950 7350 3650 7350
$Comp
L power:GND #PWR024
U 1 1 5F7116DA
P 3450 7100
F 0 "#PWR024" H 3450 6850 50  0001 C CNN
F 1 "GND" H 3455 6927 50  0000 C CNN
F 2 "" H 3450 7100 50  0001 C CNN
F 3 "" H 3450 7100 50  0001 C CNN
	1    3450 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 7100 3450 7050
Wire Wire Line
	3450 7050 3650 7050
Connection ~ 3650 7050
Connection ~ 3950 7350
Connection ~ 3950 6750
$Comp
L Device:CP C1
U 1 1 5F71FC85
P 2150 6900
F 0 "C1" H 2268 6946 50  0000 L CNN
F 1 "10u" H 2268 6855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2188 6750 50  0001 C CNN
F 3 "~" H 2150 6900 50  0001 C CNN
F 4 "C" H 2150 6900 50  0001 C CNN "Spice_Primitive"
F 5 "10u" H 2150 6900 50  0001 C CNN "Spice_Model"
F 6 "N" H 2150 6900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2150 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5F720385
P 2150 7200
F 0 "C2" H 2268 7246 50  0000 L CNN
F 1 "10u" H 2268 7155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2188 7050 50  0001 C CNN
F 3 "~" H 2150 7200 50  0001 C CNN
F 4 "C" H 2150 7200 50  0001 C CNN "Spice_Primitive"
F 5 "10u" H 2150 7200 50  0001 C CNN "Spice_Model"
F 6 "N" H 2150 7200 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2150 7200
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR019
U 1 1 5F720867
P 2150 7350
F 0 "#PWR019" H 2150 7450 50  0001 C CNN
F 1 "-15V" H 2165 7523 50  0000 C CNN
F 2 "" H 2150 7350 50  0001 C CNN
F 3 "" H 2150 7350 50  0001 C CNN
	1    2150 7350
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR018
U 1 1 5F720EF2
P 2150 6750
F 0 "#PWR018" H 2150 6600 50  0001 C CNN
F 1 "+15V" H 2165 6923 50  0000 C CNN
F 2 "" H 2150 6750 50  0001 C CNN
F 3 "" H 2150 6750 50  0001 C CNN
	1    2150 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5F722C0D
P 1950 7100
F 0 "#PWR017" H 1950 6850 50  0001 C CNN
F 1 "GND" H 1955 6927 50  0000 C CNN
F 2 "" H 1950 7100 50  0001 C CNN
F 3 "" H 1950 7100 50  0001 C CNN
	1    1950 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 7100 1950 7050
Wire Wire Line
	1950 7050 2150 7050
Connection ~ 2150 7050
$Comp
L Amplifier_Operational:TL072 U1
U 2 1 5F693502
P 2100 3300
F 0 "U1" H 2100 2933 50  0000 C CNN
F 1 "TL072" H 2100 3024 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2100 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2100 3300 50  0001 C CNN
F 4 "X" H 2100 3300 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 2100 3300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2100 3300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/opamp/TL072-dual.lib" H 2100 3300 50  0001 C CNN "Spice_Lib_File"
	2    2100 3300
	1    0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5F737716
P 6300 7350
F 0 "#FLG02" H 6300 7425 50  0001 C CNN
F 1 "PWR_FLAG" H 6300 7523 50  0001 C CNN
F 2 "" H 6300 7350 50  0001 C CNN
F 3 "~" H 6300 7350 50  0001 C CNN
	1    6300 7350
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5F737C0D
P 6550 7350
F 0 "#FLG03" H 6550 7425 50  0001 C CNN
F 1 "PWR_FLAG" H 6550 7523 50  0001 C CNN
F 2 "" H 6550 7350 50  0001 C CNN
F 3 "~" H 6550 7350 50  0001 C CNN
	1    6550 7350
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5F737FC5
P 6800 7450
F 0 "#FLG04" H 6800 7525 50  0001 C CNN
F 1 "PWR_FLAG" H 6800 7623 50  0001 C CNN
F 2 "" H 6800 7450 50  0001 C CNN
F 3 "~" H 6800 7450 50  0001 C CNN
	1    6800 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3300 4700 3300
$Comp
L power:-15V #PWR013
U 1 1 5F73BC52
P 1450 7200
F 0 "#PWR013" H 1450 7300 50  0001 C CNN
F 1 "-15V" V 1465 7328 50  0000 L CNN
F 2 "" H 1450 7200 50  0001 C CNN
F 3 "" H 1450 7200 50  0001 C CNN
	1    1450 7200
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR05
U 1 1 5F73BF28
P 950 7200
F 0 "#PWR05" H 950 7300 50  0001 C CNN
F 1 "-15V" V 965 7328 50  0000 L CNN
F 2 "" H 950 7200 50  0001 C CNN
F 3 "" H 950 7200 50  0001 C CNN
	1    950  7200
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR012
U 1 1 5F73D28C
P 1450 7100
F 0 "#PWR012" H 1450 6950 50  0001 C CNN
F 1 "+15V" V 1465 7228 50  0000 L CNN
F 2 "" H 1450 7100 50  0001 C CNN
F 3 "" H 1450 7100 50  0001 C CNN
	1    1450 7100
	0    1    1    0   
$EndComp
$Comp
L power:+15V #PWR04
U 1 1 5F73D5E9
P 950 7100
F 0 "#PWR04" H 950 6950 50  0001 C CNN
F 1 "+15V" V 965 7228 50  0000 L CNN
F 2 "" H 950 7100 50  0001 C CNN
F 3 "" H 950 7100 50  0001 C CNN
	1    950  7100
	0    -1   -1   0   
$EndComp
$Comp
L elektrophon:AD633 U3
U 1 1 5F74D4F3
P 3700 3100
F 0 "U3" H 3900 3700 50  0000 C CNN
F 1 "AD633" H 3900 3600 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4300 2500 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD633.pdf" H 4550 2700 50  0001 C CNN
F 4 "X" H 3700 3100 50  0001 C CNN "Spice_Primitive"
F 5 "AD633" H 3700 3100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3700 3100 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/opamp/ad633.lib" H 3700 3100 50  0001 C CNN "Spice_Lib_File"
	1    3700 3100
	1    0    0    -1  
$EndComp
Text GLabel 3200 2900 0    50   Input ~ 0
Xa
Text GLabel 3200 3300 0    50   Input ~ 0
Ya
Text GLabel 4200 3300 2    50   Input ~ 0
Za
$Comp
L power:GND #PWR023
U 1 1 5F755EA3
P 2950 3600
F 0 "#PWR023" H 2950 3350 50  0001 C CNN
F 1 "GND" H 2955 3427 50  0000 C CNN
F 2 "" H 2950 3600 50  0001 C CNN
F 3 "" H 2950 3600 50  0001 C CNN
	1    2950 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4250 1750 3850
Wire Wire Line
	1800 4250 1750 4250
Wire Wire Line
	2400 4350 2450 4350
Wire Wire Line
	2450 3850 2450 4350
Wire Wire Line
	2550 4350 2450 4350
Connection ~ 2450 4350
Text GLabel 2550 4350 2    50   Input ~ 0
Za
$Comp
L Amplifier_Operational:TL072 U2
U 2 1 5F7BABD5
P 2100 4350
F 0 "U2" H 2100 3983 50  0000 C CNN
F 1 "TL072" H 2100 4074 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2100 4350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2100 4350 50  0001 C CNN
F 4 "X" H 2100 4350 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 2100 4350 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2100 4350 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/opamp/TL072-dual.lib" H 2100 4350 50  0001 C CNN "Spice_Lib_File"
	2    2100 4350
	1    0    0    1   
$EndComp
$Comp
L Device:C C7
U 1 1 5F7DF1DD
P 3500 2550
F 0 "C7" H 3350 2600 50  0000 R CNN
F 1 "0.1u" H 3350 2500 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3538 2400 50  0001 C CNN
F 3 "~" H 3500 2550 50  0001 C CNN
F 4 "C" H 3500 2550 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 3500 2550 50  0001 C CNN "Spice_Model"
F 6 "N" H 3500 2550 50  0001 C CNN "Spice_Netlist_Enabled"
	1    3500 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2700 3700 2700
Wire Wire Line
	3500 2400 3700 2400
Wire Wire Line
	3700 2400 3700 2700
Connection ~ 3700 2700
$Comp
L Device:C C8
U 1 1 5F7E6B68
P 3500 3850
F 0 "C8" H 3350 3900 50  0000 R CNN
F 1 "0.1u" H 3350 3800 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3538 3700 50  0001 C CNN
F 3 "~" H 3500 3850 50  0001 C CNN
F 4 "C" H 3500 3850 50  0001 C CNN "Spice_Primitive"
F 5 "0.1u" H 3500 3850 50  0001 C CNN "Spice_Model"
F 6 "N" H 3500 3850 50  0001 C CNN "Spice_Netlist_Enabled"
	1    3500 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3700 3700 3700
Wire Wire Line
	3500 4000 3700 4000
Wire Wire Line
	3700 4000 3700 3700
Connection ~ 3700 3700
$Comp
L power:+15V #PWR025
U 1 1 5F7EE1F9
P 3700 2400
F 0 "#PWR025" H 3700 2250 50  0001 C CNN
F 1 "+15V" H 3715 2573 50  0000 C CNN
F 2 "" H 3700 2400 50  0001 C CNN
F 3 "" H 3700 2400 50  0001 C CNN
	1    3700 2400
	1    0    0    -1  
$EndComp
Connection ~ 3700 2400
$Comp
L power:-15V #PWR026
U 1 1 5F7F0FCE
P 3700 4000
F 0 "#PWR026" H 3700 4100 50  0001 C CNN
F 1 "-15V" H 3715 4173 50  0000 C CNN
F 2 "" H 3700 4000 50  0001 C CNN
F 3 "" H 3700 4000 50  0001 C CNN
	1    3700 4000
	-1   0    0    1   
$EndComp
Connection ~ 3700 4000
Wire Wire Line
	2950 3100 2950 3500
Wire Wire Line
	2950 3100 3200 3100
Wire Wire Line
	3200 3500 2950 3500
Connection ~ 2950 3500
Wire Wire Line
	2950 3500 2950 3600
$Comp
L Amplifier_Operational:TL072 U2
U 1 1 5F7B8552
P 5050 3200
F 0 "U2" H 5050 3550 50  0000 C CNN
F 1 "TL072" H 5050 3450 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5050 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5050 3200 50  0001 C CNN
F 4 "X" H 5050 3200 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 5050 3200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5050 3200 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/opamp/TL072-dual.lib" H 5050 3200 50  0001 C CNN "Spice_Lib_File"
	1    5050 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1700 2450 1700
Wire Wire Line
	1750 2800 2450 2800
Wire Wire Line
	1750 3850 2450 3850
Wire Wire Line
	4200 3100 4750 3100
$Comp
L Device:R R2
U 1 1 5F78B0A7
P 5050 3650
F 0 "R2" V 4843 3650 50  0000 C CNN
F 1 "10k" V 4934 3650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4980 3650 50  0001 C CNN
F 3 "~" H 5050 3650 50  0001 C CNN
	1    5050 3650
	0    1    1    0   
$EndComp
Connection ~ 5350 3200
Wire Wire Line
	5200 3650 5350 3650
Wire Wire Line
	5350 3650 5350 3200
Wire Wire Line
	4900 3650 4700 3650
Wire Wire Line
	4700 3650 4700 3300
$Comp
L Device:R R1
U 1 1 5F793822
P 4450 3650
F 0 "R1" V 4243 3650 50  0000 C CNN
F 1 "10k" V 4334 3650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4380 3650 50  0001 C CNN
F 3 "~" H 4450 3650 50  0001 C CNN
	1    4450 3650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5F793DA6
P 4250 3700
F 0 "#PWR030" H 4250 3450 50  0001 C CNN
F 1 "GND" H 4255 3527 50  0000 C CNN
F 2 "" H 4250 3700 50  0001 C CNN
F 3 "" H 4250 3700 50  0001 C CNN
	1    4250 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3700 4250 3650
Wire Wire Line
	4250 3650 4300 3650
Wire Wire Line
	4600 3650 4700 3650
Connection ~ 4700 3650
Wire Wire Line
	1600 2300 1800 2300
Wire Wire Line
	1600 3400 1800 3400
Wire Wire Line
	1600 4450 1800 4450
Text Notes 1100 5100 0    50   ~ 0
needs to be grounded when not connectet
$Comp
L power:GND #PWR06
U 1 1 5F65BBA2
P 1150 1900
F 0 "#PWR06" H 1150 1650 50  0001 C CNN
F 1 "GND" V 1155 1772 50  0000 R CNN
F 2 "" H 1150 1900 50  0001 C CNN
F 3 "" H 1150 1900 50  0001 C CNN
	1    1150 1900
	0    -1   -1   0   
$EndComp
NoConn ~ 1150 2100
$Comp
L Connector:AudioJack2_SwitchT J1
U 1 1 5F658247
P 950 2000
F 0 "J1" H 982 2325 50  0000 C CNN
F 1 "IN_X" H 982 2234 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 950 2000 50  0001 C CNN
F 3 "~" H 950 2000 50  0001 C CNN
F 4 "X" H 950 2000 50  0001 C CNN "Spice_Primitive"
F 5 "IN_1" H 950 2000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 950 2000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "S T" H 950 2000 50  0001 C CNN "Spice_Node_Sequence"
	1    950  2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5F613554
P 1450 2300
F 0 "RV1" H 1381 2346 50  0000 R CNN
F 1 "100k" H 1381 2255 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1450 2300 50  0001 C CNN
F 3 "~" H 1450 2300 50  0001 C CNN
F 4 "X" H 1450 2300 50  0001 C CNN "Spice_Primitive"
F 5 "RV1" H 1450 2300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1450 2300 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1450 2300
	1    0    0    1   
$EndComp
Wire Wire Line
	1150 2000 1450 2000
Wire Wire Line
	1450 2000 1450 2150
$Comp
L power:GND #PWR014
U 1 1 5F616FAE
P 1450 2450
F 0 "#PWR014" H 1450 2200 50  0001 C CNN
F 1 "GND" H 1455 2277 50  0000 C CNN
F 2 "" H 1450 2450 50  0001 C CNN
F 3 "" H 1450 2450 50  0001 C CNN
	1    1450 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5F635024
P 1150 4050
F 0 "#PWR08" H 1150 3800 50  0001 C CNN
F 1 "GND" V 1155 3922 50  0000 R CNN
F 2 "" H 1150 4050 50  0001 C CNN
F 3 "" H 1150 4050 50  0001 C CNN
	1    1150 4050
	0    -1   -1   0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J3
U 1 1 5F63502F
P 950 4150
F 0 "J3" H 982 4475 50  0000 C CNN
F 1 "IN_Z" H 982 4384 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 950 4150 50  0001 C CNN
F 3 "~" H 950 4150 50  0001 C CNN
F 4 "X" H 950 4150 50  0001 C CNN "Spice_Primitive"
F 5 "IN_2" H 950 4150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 950 4150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "S T" H 950 4150 50  0001 C CNN "Spice_Node_Sequence"
	1    950  4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV3
U 1 1 5F635038
P 1450 4450
F 0 "RV3" H 1381 4496 50  0000 R CNN
F 1 "100k" H 1381 4405 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1450 4450 50  0001 C CNN
F 3 "~" H 1450 4450 50  0001 C CNN
F 4 "X" H 1450 4450 50  0001 C CNN "Spice_Primitive"
F 5 "RV2" H 1450 4450 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1450 4450 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1450 4450
	1    0    0    1   
$EndComp
Wire Wire Line
	1150 4150 1450 4150
Wire Wire Line
	1450 4150 1450 4300
$Comp
L power:GND #PWR016
U 1 1 5F635041
P 1450 4600
F 0 "#PWR016" H 1450 4350 50  0001 C CNN
F 1 "GND" H 1455 4427 50  0000 C CNN
F 2 "" H 1450 4600 50  0001 C CNN
F 3 "" H 1450 4600 50  0001 C CNN
	1    1450 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3200 6000 3200
$Comp
L power:GND #PWR033
U 1 1 5F80AB42
P 6000 3100
F 0 "#PWR033" H 6000 2850 50  0001 C CNN
F 1 "GND" V 6005 2972 50  0000 R CNN
F 2 "" H 6000 3100 50  0001 C CNN
F 3 "" H 6000 3100 50  0001 C CNN
	1    6000 3100
	0    1    1    0   
$EndComp
NoConn ~ 6000 3300
$Comp
L Connector:AudioJack2_SwitchT J5
U 1 1 5F7FAFCA
P 6200 3200
F 0 "J5" H 6232 3525 50  0000 C CNN
F 1 "OUT" H 6232 3434 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 6200 3200 50  0001 C CNN
F 3 "~" H 6200 3200 50  0001 C CNN
F 4 "X" H 6200 3200 50  0001 C CNN "Spice_Primitive"
F 5 "OUT" H 6200 3200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6200 3200 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "S T" H 6200 3200 50  0001 C CNN "Spice_Node_Sequence"
	1    6200 3200
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F7FA5E2
P 5600 3200
F 0 "R3" V 5807 3200 50  0000 C CNN
F 1 "1k" V 5716 3200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5530 3200 50  0001 C CNN
F 3 "~" H 5600 3200 50  0001 C CNN
	1    5600 3200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5F74A953
P 1150 3000
F 0 "#PWR07" H 1150 2750 50  0001 C CNN
F 1 "GND" V 1155 2872 50  0000 R CNN
F 2 "" H 1150 3000 50  0001 C CNN
F 3 "" H 1150 3000 50  0001 C CNN
	1    1150 3000
	0    -1   -1   0   
$EndComp
NoConn ~ 1150 3200
$Comp
L Connector:AudioJack2_SwitchT J2
U 1 1 5F74A95E
P 950 3100
F 0 "J2" H 982 3425 50  0000 C CNN
F 1 "IN_Y" H 982 3334 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical" H 950 3100 50  0001 C CNN
F 3 "~" H 950 3100 50  0001 C CNN
F 4 "X" H 950 3100 50  0001 C CNN "Spice_Primitive"
F 5 "IN_1" H 950 3100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 950 3100 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "S T" H 950 3100 50  0001 C CNN "Spice_Node_Sequence"
	1    950  3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 5F74A967
P 1450 3400
F 0 "RV2" H 1381 3446 50  0000 R CNN
F 1 "100k" H 1381 3355 50  0000 R CNN
F 2 "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1450 3400 50  0001 C CNN
F 3 "~" H 1450 3400 50  0001 C CNN
F 4 "X" H 1450 3400 50  0001 C CNN "Spice_Primitive"
F 5 "RV1" H 1450 3400 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1450 3400 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1450 3400
	1    0    0    1   
$EndComp
Wire Wire Line
	1150 3100 1450 3100
Wire Wire Line
	1450 3100 1450 3250
$Comp
L power:GND #PWR015
U 1 1 5F74A96F
P 1450 3550
F 0 "#PWR015" H 1450 3300 50  0001 C CNN
F 1 "GND" H 1455 3377 50  0000 C CNN
F 2 "" H 1450 3550 50  0001 C CNN
F 3 "" H 1450 3550 50  0001 C CNN
	1    1450 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 4250 1650 4250
Wire Wire Line
	1650 4250 1650 3100
Wire Wire Line
	1650 3100 1450 3100
Connection ~ 1450 3100
Wire Wire Line
	5350 3200 5450 3200
Text GLabel 5850 3200 3    50   Input ~ 0
OUT
Text GLabel 1700 2300 3    50   Input ~ 0
IN_X
Text GLabel 1750 3400 3    50   Input ~ 0
IN_Y
Text GLabel 1750 4450 3    50   Input ~ 0
IN_Z
$EndSCHEMATC
