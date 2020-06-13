EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "resonanz"
Date "2020-06-13"
Rev "01"
Comp ""
Comment1 "schema for main circuit"
Comment2 "resonant band pass filter"
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
$Comp
L power:+15V #PWR?
U 1 1 5F186FB7
P 1450 4900
AR Path="/5F186FB7" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F186FB7" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 1450 4750 50  0001 C CNN
F 1 "+15V" V 1465 5028 50  0000 L CNN
F 2 "" H 1450 4900 50  0001 C CNN
F 3 "" H 1450 4900 50  0001 C CNN
	1    1450 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C?
U 1 1 5F186FBD
P 1650 5350
AR Path="/5F186FBD" Ref="C?"  Part="1" 
AR Path="/5F169930/5F186FBD" Ref="C8"  Part="1" 
F 0 "C8" H 1768 5396 50  0000 L CNN
F 1 "10u" H 1768 5305 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1688 5200 50  0001 C CNN
F 3 "~" H 1650 5350 50  0001 C CNN
	1    1650 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F186FC3
P 1450 5200
AR Path="/5F186FC3" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F186FC3" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 1450 4950 50  0001 C CNN
F 1 "GND" H 1455 5027 50  0000 C CNN
F 2 "" H 1450 5200 50  0001 C CNN
F 3 "" H 1450 5200 50  0001 C CNN
	1    1450 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 5200 1450 5200
$Comp
L Device:C C?
U 1 1 5F186FCA
P 2700 5350
AR Path="/5F186FCA" Ref="C?"  Part="1" 
AR Path="/5F169930/5F186FCA" Ref="C10"  Part="1" 
F 0 "C10" H 2815 5396 50  0000 L CNN
F 1 "0.1u" H 2815 5305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2738 5200 50  0001 C CNN
F 3 "~" H 2700 5350 50  0001 C CNN
	1    2700 5350
	1    0    0    -1  
$EndComp
Connection ~ 1650 5200
$Comp
L Device:CP C?
U 1 1 5F186FD1
P 1650 5050
AR Path="/5F186FD1" Ref="C?"  Part="1" 
AR Path="/5F169930/5F186FD1" Ref="C7"  Part="1" 
F 0 "C7" H 1768 5096 50  0000 L CNN
F 1 "10u" H 1768 5005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1688 4900 50  0001 C CNN
F 3 "~" H 1650 5050 50  0001 C CNN
	1    1650 5050
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR?
U 1 1 5F186FD7
P 1400 5500
AR Path="/5F186FD7" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F186FD7" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 1400 5600 50  0001 C CNN
F 1 "-15V" V 1415 5628 50  0000 L CNN
F 2 "" H 1400 5500 50  0001 C CNN
F 3 "" H 1400 5500 50  0001 C CNN
	1    1400 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1650 4900 1450 4900
Wire Wire Line
	1400 5500 1650 5500
Connection ~ 1650 5500
Connection ~ 1650 4900
Wire Wire Line
	1650 5200 2700 5200
Connection ~ 2700 5200
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5F186FE3
P 2400 5200
AR Path="/5F186FE3" Ref="U?"  Part="3" 
AR Path="/5F169930/5F186FE3" Ref="U1"  Part="3" 
F 0 "U1" H 2358 5246 50  0000 L CNN
F 1 "TL072" H 2358 5155 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2400 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2400 5200 50  0001 C CNN
	3    2400 5200
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5F186FE9
P 3250 5200
AR Path="/5F186FE9" Ref="U?"  Part="3" 
AR Path="/5F169930/5F186FE9" Ref="U2"  Part="3" 
F 0 "U2" H 3208 5246 50  0000 L CNN
F 1 "TL072" H 3208 5155 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3250 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3250 5200 50  0001 C CNN
	3    3250 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4900 2300 4900
Wire Wire Line
	1650 5500 2300 5500
Connection ~ 2300 5500
Wire Wire Line
	2300 5500 2700 5500
Connection ~ 2300 4900
Wire Wire Line
	2300 4900 2700 4900
$Comp
L Device:C C?
U 1 1 5F186FF5
P 2700 5050
AR Path="/5F186FF5" Ref="C?"  Part="1" 
AR Path="/5F169930/5F186FF5" Ref="C9"  Part="1" 
F 0 "C9" H 2815 5096 50  0000 L CNN
F 1 "0.1u" H 2815 5005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2738 4900 50  0001 C CNN
F 3 "~" H 2700 5050 50  0001 C CNN
	1    2700 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F186FFB
P 3550 5350
AR Path="/5F186FFB" Ref="C?"  Part="1" 
AR Path="/5F169930/5F186FFB" Ref="C12"  Part="1" 
F 0 "C12" H 3665 5396 50  0000 L CNN
F 1 "0.1u" H 3665 5305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3588 5200 50  0001 C CNN
F 3 "~" H 3550 5350 50  0001 C CNN
	1    3550 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F187001
P 3550 5050
AR Path="/5F187001" Ref="C?"  Part="1" 
AR Path="/5F169930/5F187001" Ref="C11"  Part="1" 
F 0 "C11" H 3665 5096 50  0000 L CNN
F 1 "0.1u" H 3665 5005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3588 4900 50  0001 C CNN
F 3 "~" H 3550 5050 50  0001 C CNN
	1    3550 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4900 3150 4900
Connection ~ 2700 4900
Connection ~ 3150 4900
Wire Wire Line
	3150 4900 3550 4900
Wire Wire Line
	3550 5500 3150 5500
Connection ~ 2700 5500
Connection ~ 3150 5500
Wire Wire Line
	3150 5500 2700 5500
Wire Wire Line
	2700 5200 3550 5200
Connection ~ 3550 5200
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5F187011
P 4100 5200
AR Path="/5F187011" Ref="U?"  Part="3" 
AR Path="/5F169930/5F187011" Ref="U3"  Part="3" 
F 0 "U3" H 4058 5246 50  0000 L CNN
F 1 "TL072" H 4058 5155 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 4100 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4100 5200 50  0001 C CNN
	3    4100 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F187017
P 4400 5350
AR Path="/5F187017" Ref="C?"  Part="1" 
AR Path="/5F169930/5F187017" Ref="C14"  Part="1" 
F 0 "C14" H 4515 5396 50  0000 L CNN
F 1 "0.1u" H 4515 5305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4438 5200 50  0001 C CNN
F 3 "~" H 4400 5350 50  0001 C CNN
	1    4400 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F18701D
P 4400 5050
AR Path="/5F18701D" Ref="C?"  Part="1" 
AR Path="/5F169930/5F18701D" Ref="C13"  Part="1" 
F 0 "C13" H 4515 5096 50  0000 L CNN
F 1 "0.1u" H 4515 5005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4438 4900 50  0001 C CNN
F 3 "~" H 4400 5050 50  0001 C CNN
	1    4400 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4900 4000 4900
Connection ~ 4000 4900
Connection ~ 4000 5500
Wire Wire Line
	4000 5500 3550 5500
Connection ~ 4400 5200
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5F187028
P 4900 5200
AR Path="/5F187028" Ref="U?"  Part="3" 
AR Path="/5F169930/5F187028" Ref="U4"  Part="3" 
F 0 "U4" H 4858 5246 50  0000 L CNN
F 1 "TL072" H 4858 5155 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 4900 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4900 5200 50  0001 C CNN
	3    4900 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F18702E
P 5200 5350
AR Path="/5F18702E" Ref="C?"  Part="1" 
AR Path="/5F169930/5F18702E" Ref="C16"  Part="1" 
F 0 "C16" H 5315 5396 50  0000 L CNN
F 1 "0.1u" H 5315 5305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 5238 5200 50  0001 C CNN
F 3 "~" H 5200 5350 50  0001 C CNN
	1    5200 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F187034
P 5200 5050
AR Path="/5F187034" Ref="C?"  Part="1" 
AR Path="/5F169930/5F187034" Ref="C15"  Part="1" 
F 0 "C15" H 5315 5096 50  0000 L CNN
F 1 "0.1u" H 5315 5005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 5238 4900 50  0001 C CNN
F 3 "~" H 5200 5050 50  0001 C CNN
	1    5200 5050
	1    0    0    -1  
$EndComp
Connection ~ 4800 4900
Wire Wire Line
	4800 4900 5200 4900
Wire Wire Line
	5200 5500 4800 5500
Connection ~ 4800 5500
Connection ~ 5200 5200
Wire Wire Line
	4400 5200 5200 5200
Wire Wire Line
	4000 4900 4400 4900
Wire Wire Line
	4000 5500 4400 5500
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5F187042
P 5750 5200
AR Path="/5F187042" Ref="U?"  Part="3" 
AR Path="/5F169930/5F187042" Ref="U5"  Part="3" 
F 0 "U5" H 5708 5246 50  0000 L CNN
F 1 "TL072" H 5708 5155 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 5750 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5750 5200 50  0001 C CNN
	3    5750 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F187048
P 6050 5350
AR Path="/5F187048" Ref="C?"  Part="1" 
AR Path="/5F169930/5F187048" Ref="C18"  Part="1" 
F 0 "C18" H 6165 5396 50  0000 L CNN
F 1 "0.1u" H 6165 5305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 6088 5200 50  0001 C CNN
F 3 "~" H 6050 5350 50  0001 C CNN
	1    6050 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F18704E
P 6050 5050
AR Path="/5F18704E" Ref="C?"  Part="1" 
AR Path="/5F169930/5F18704E" Ref="C17"  Part="1" 
F 0 "C17" H 6165 5096 50  0000 L CNN
F 1 "0.1u" H 6165 5005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 6088 4900 50  0001 C CNN
F 3 "~" H 6050 5050 50  0001 C CNN
	1    6050 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4900 5650 4900
Connection ~ 5650 4900
Wire Wire Line
	5650 4900 6050 4900
Wire Wire Line
	6050 5500 5650 5500
Connection ~ 5650 5500
Wire Wire Line
	5650 5500 5200 5500
Wire Wire Line
	5200 5200 6050 5200
Connection ~ 6050 5200
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5F18705C
P 6600 5200
AR Path="/5F18705C" Ref="U?"  Part="3" 
AR Path="/5F169930/5F18705C" Ref="U6"  Part="3" 
F 0 "U6" H 6558 5246 50  0000 L CNN
F 1 "TL072" H 6558 5155 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 6600 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6600 5200 50  0001 C CNN
	3    6600 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F187062
P 6900 5350
AR Path="/5F187062" Ref="C?"  Part="1" 
AR Path="/5F169930/5F187062" Ref="C20"  Part="1" 
F 0 "C20" H 7015 5396 50  0000 L CNN
F 1 "0.1u" H 7015 5305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 6938 5200 50  0001 C CNN
F 3 "~" H 6900 5350 50  0001 C CNN
	1    6900 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F187068
P 6900 5050
AR Path="/5F187068" Ref="C?"  Part="1" 
AR Path="/5F169930/5F187068" Ref="C19"  Part="1" 
F 0 "C19" H 7015 5096 50  0000 L CNN
F 1 "0.1u" H 7015 5005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 6938 4900 50  0001 C CNN
F 3 "~" H 6900 5050 50  0001 C CNN
	1    6900 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4900 6500 4900
Connection ~ 6500 4900
Wire Wire Line
	6500 4900 6900 4900
Wire Wire Line
	6900 5500 6500 5500
Connection ~ 6500 5500
Wire Wire Line
	6500 5500 6050 5500
Wire Wire Line
	6050 5200 6900 5200
Connection ~ 6900 5200
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5F187076
P 7450 5200
AR Path="/5F187076" Ref="U?"  Part="3" 
AR Path="/5F169930/5F187076" Ref="U7"  Part="3" 
F 0 "U7" H 7408 5246 50  0000 L CNN
F 1 "TL072" H 7408 5155 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 7450 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7450 5200 50  0001 C CNN
	3    7450 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F18707C
P 7750 5350
AR Path="/5F18707C" Ref="C?"  Part="1" 
AR Path="/5F169930/5F18707C" Ref="C22"  Part="1" 
F 0 "C22" H 7865 5396 50  0000 L CNN
F 1 "0.1u" H 7865 5305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 7788 5200 50  0001 C CNN
F 3 "~" H 7750 5350 50  0001 C CNN
	1    7750 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F187082
P 7750 5050
AR Path="/5F187082" Ref="C?"  Part="1" 
AR Path="/5F169930/5F187082" Ref="C21"  Part="1" 
F 0 "C21" H 7865 5096 50  0000 L CNN
F 1 "0.1u" H 7865 5005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 7788 4900 50  0001 C CNN
F 3 "~" H 7750 5050 50  0001 C CNN
	1    7750 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4900 7350 4900
Connection ~ 7350 4900
Wire Wire Line
	7350 4900 7750 4900
Wire Wire Line
	7750 5500 7350 5500
Connection ~ 7350 5500
Wire Wire Line
	7350 5500 6900 5500
Wire Wire Line
	6900 5200 7750 5200
Connection ~ 7750 5200
Connection ~ 3550 4900
Connection ~ 3550 5500
Connection ~ 4400 4900
Wire Wire Line
	4400 4900 4800 4900
Connection ~ 4400 5500
Wire Wire Line
	4400 5500 4800 5500
Connection ~ 5200 4900
Connection ~ 5200 5500
Connection ~ 6050 4900
Connection ~ 6050 5500
Connection ~ 6900 4900
Connection ~ 6900 5500
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5F194035
P 5000 6450
AR Path="/5F194035" Ref="#FLG?"  Part="1" 
AR Path="/5F169930/5F194035" Ref="#FLG02"  Part="1" 
F 0 "#FLG02" H 5000 6525 50  0001 C CNN
F 1 "PWR_FLAG" V 5000 6578 50  0000 L CNN
F 2 "" H 5000 6450 50  0001 C CNN
F 3 "~" H 5000 6450 50  0001 C CNN
	1    5000 6450
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J?
U 1 1 5F19403B
P 3600 6450
AR Path="/5F19403B" Ref="J?"  Part="1" 
AR Path="/5F169930/5F19403B" Ref="J2"  Part="1" 
F 0 "J2" H 3650 6867 50  0000 C CNN
F 1 "IDC Header" H 3650 6776 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 3600 6450 50  0001 C CNN
F 3 "~" H 3600 6450 50  0001 C CNN
	1    3600 6450
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 5F194041
P 3300 6550
AR Path="/5F194041" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F194041" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 3300 6400 50  0001 C CNN
F 1 "+15V" V 3315 6678 50  0000 L CNN
F 2 "" H 3300 6550 50  0001 C CNN
F 3 "" H 3300 6550 50  0001 C CNN
	1    3300 6550
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 5F194047
P 3800 6550
AR Path="/5F194047" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F194047" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 3800 6400 50  0001 C CNN
F 1 "+15V" V 3815 6678 50  0000 L CNN
F 2 "" H 3800 6550 50  0001 C CNN
F 3 "" H 3800 6550 50  0001 C CNN
	1    3800 6550
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR?
U 1 1 5F19404D
P 3300 6650
AR Path="/5F19404D" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F19404D" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 3300 6750 50  0001 C CNN
F 1 "-15V" V 3315 6778 50  0000 L CNN
F 2 "" H 3300 6650 50  0001 C CNN
F 3 "" H 3300 6650 50  0001 C CNN
	1    3300 6650
	0    -1   -1   0   
$EndComp
$Comp
L power:-15V #PWR?
U 1 1 5F194053
P 3800 6650
AR Path="/5F194053" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F194053" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 3800 6750 50  0001 C CNN
F 1 "-15V" V 3815 6778 50  0000 L CNN
F 2 "" H 3800 6650 50  0001 C CNN
F 3 "" H 3800 6650 50  0001 C CNN
	1    3800 6650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F194059
P 3300 6450
AR Path="/5F194059" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F194059" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 3300 6200 50  0001 C CNN
F 1 "GND" V 3305 6322 50  0000 R CNN
F 2 "" H 3300 6450 50  0001 C CNN
F 3 "" H 3300 6450 50  0001 C CNN
	1    3300 6450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F19405F
P 3300 6350
AR Path="/5F19405F" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F19405F" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 3300 6100 50  0001 C CNN
F 1 "GND" V 3305 6222 50  0000 R CNN
F 2 "" H 3300 6350 50  0001 C CNN
F 3 "" H 3300 6350 50  0001 C CNN
	1    3300 6350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F194065
P 3800 6350
AR Path="/5F194065" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F194065" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 3800 6100 50  0001 C CNN
F 1 "GND" V 3805 6222 50  0000 R CNN
F 2 "" H 3800 6350 50  0001 C CNN
F 3 "" H 3800 6350 50  0001 C CNN
	1    3800 6350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F19406B
P 3800 6450
AR Path="/5F19406B" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F19406B" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 3800 6200 50  0001 C CNN
F 1 "GND" V 3805 6322 50  0000 R CNN
F 2 "" H 3800 6450 50  0001 C CNN
F 3 "" H 3800 6450 50  0001 C CNN
	1    3800 6450
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F194071
P 3800 6250
AR Path="/5F194071" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F194071" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 3800 6100 50  0001 C CNN
F 1 "+5V" V 3815 6378 50  0000 L CNN
F 2 "" H 3800 6250 50  0001 C CNN
F 3 "" H 3800 6250 50  0001 C CNN
	1    3800 6250
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F194077
P 3300 6250
AR Path="/5F194077" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F194077" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 3300 6100 50  0001 C CNN
F 1 "+5V" V 3315 6378 50  0000 L CNN
F 2 "" H 3300 6250 50  0001 C CNN
F 3 "" H 3300 6250 50  0001 C CNN
	1    3300 6250
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5F19407D
P 3300 6250
AR Path="/5F19407D" Ref="#FLG?"  Part="1" 
AR Path="/5F169930/5F19407D" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 3300 6325 50  0001 C CNN
F 1 "PWR_FLAG" H 3300 6378 50  0001 L CNN
F 2 "" H 3300 6250 50  0001 C CNN
F 3 "~" H 3300 6250 50  0001 C CNN
	1    3300 6250
	1    0    0    -1  
$EndComp
Connection ~ 3300 6250
Text Notes 3450 7050 0    50   ~ 0
Power
$Comp
L power:+15V #PWR?
U 1 1 5F194085
P 5000 6450
AR Path="/5F194085" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F194085" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 5000 6300 50  0001 C CNN
F 1 "+15V" V 5015 6578 50  0000 L CNN
F 2 "" H 5000 6450 50  0001 C CNN
F 3 "" H 5000 6450 50  0001 C CNN
	1    5000 6450
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR?
U 1 1 5F19408B
P 5000 6550
AR Path="/5F19408B" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F19408B" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 5000 6650 50  0001 C CNN
F 1 "-15V" V 5015 6678 50  0000 L CNN
F 2 "" H 5000 6550 50  0001 C CNN
F 3 "" H 5000 6550 50  0001 C CNN
	1    5000 6550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F194091
P 5000 6650
AR Path="/5F194091" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F194091" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 5000 6400 50  0001 C CNN
F 1 "GND" V 5000 6450 50  0000 C CNN
F 2 "" H 5000 6650 50  0001 C CNN
F 3 "" H 5000 6650 50  0001 C CNN
	1    5000 6650
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5F194097
P 5000 6550
AR Path="/5F194097" Ref="#FLG?"  Part="1" 
AR Path="/5F169930/5F194097" Ref="#FLG03"  Part="1" 
F 0 "#FLG03" H 5000 6625 50  0001 C CNN
F 1 "PWR_FLAG" V 5000 6678 50  0000 L CNN
F 2 "" H 5000 6550 50  0001 C CNN
F 3 "~" H 5000 6550 50  0001 C CNN
	1    5000 6550
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5F19409D
P 5000 6650
AR Path="/5F19409D" Ref="#FLG?"  Part="1" 
AR Path="/5F169930/5F19409D" Ref="#FLG04"  Part="1" 
F 0 "#FLG04" H 5000 6725 50  0001 C CNN
F 1 "PWR_FLAG" V 5000 6778 50  0000 L CNN
F 2 "" H 5000 6650 50  0001 C CNN
F 3 "~" H 5000 6650 50  0001 C CNN
	1    5000 6650
	0    -1   -1   0   
$EndComp
Text GLabel 3200 1150 0    50   Input ~ 0
IN
Text GLabel 3200 1250 0    50   Input ~ 0
IN_1
Text GLabel 3200 1450 0    50   Input ~ 0
RES_1
Text GLabel 3200 1350 0    50   Input ~ 0
FREQ_1_a
Text GLabel 3200 1650 0    50   Input ~ 0
FREQ_1_b
Text GLabel 3200 1550 0    50   Input ~ 0
FREQ_1_c
Text GLabel 3200 1750 0    50   Input ~ 0
OUT_1
Text GLabel 3200 1850 0    50   Input ~ 0
IN_2
Text GLabel 3200 1950 0    50   Input ~ 0
FREQ_2_a
Text GLabel 3200 2250 0    50   Input ~ 0
FREQ_2_b
Text GLabel 3200 2150 0    50   Input ~ 0
FREQ_2_c
Text GLabel 3200 2350 0    50   Input ~ 0
OUT_2
Text GLabel 3200 2450 0    50   Input ~ 0
IN_3
Text GLabel 3200 2650 0    50   Input ~ 0
RES_3
Text GLabel 3200 2550 0    50   Input ~ 0
FREQ_3_a
Text GLabel 3200 2850 0    50   Input ~ 0
FREQ_3_b
Text GLabel 3200 2750 0    50   Input ~ 0
FREQ_3_c
Text GLabel 3200 2950 0    50   Input ~ 0
OUT_3
Text GLabel 5050 2650 0    50   Input ~ 0
OUT
$Comp
L power:GND #PWR0101
U 1 1 5EE884E8
P 3200 1050
F 0 "#PWR0101" H 3200 800 50  0001 C CNN
F 1 "GND" V 3205 922 50  0000 R CNN
F 2 "" H 3200 1050 50  0001 C CNN
F 3 "" H 3200 1050 50  0001 C CNN
	1    3200 1050
	0    1    1    0   
$EndComp
Text GLabel 3200 2050 0    50   Input ~ 0
RES_2
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5EED6A1B
P 8300 5200
AR Path="/5EED6A1B" Ref="U?"  Part="3" 
AR Path="/5F169930/5EED6A1B" Ref="U8"  Part="3" 
F 0 "U8" H 8258 5246 50  0000 L CNN
F 1 "TL072" H 8258 5155 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 8300 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8300 5200 50  0001 C CNN
	3    8300 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EED6A21
P 8600 5350
AR Path="/5EED6A21" Ref="C?"  Part="1" 
AR Path="/5F169930/5EED6A21" Ref="C26"  Part="1" 
F 0 "C26" H 8715 5396 50  0000 L CNN
F 1 "0.1u" H 8715 5305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 8638 5200 50  0001 C CNN
F 3 "~" H 8600 5350 50  0001 C CNN
	1    8600 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EED6A27
P 8600 5050
AR Path="/5EED6A27" Ref="C?"  Part="1" 
AR Path="/5F169930/5EED6A27" Ref="C25"  Part="1" 
F 0 "C25" H 8715 5096 50  0000 L CNN
F 1 "0.1u" H 8715 5005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 8638 4900 50  0001 C CNN
F 3 "~" H 8600 5050 50  0001 C CNN
	1    8600 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4900 8200 4900
Connection ~ 8200 4900
Wire Wire Line
	8200 4900 8600 4900
Wire Wire Line
	8600 5500 8200 5500
Connection ~ 8200 5500
Wire Wire Line
	8200 5500 7750 5500
Wire Wire Line
	7750 5200 8600 5200
Connection ~ 8600 5200
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5EED6A35
P 9150 5200
AR Path="/5EED6A35" Ref="U?"  Part="3" 
AR Path="/5F169930/5EED6A35" Ref="U9"  Part="3" 
F 0 "U9" H 9108 5246 50  0000 L CNN
F 1 "TL072" H 9108 5155 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 9150 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 9150 5200 50  0001 C CNN
	3    9150 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EED6A3B
P 9450 5350
AR Path="/5EED6A3B" Ref="C?"  Part="1" 
AR Path="/5F169930/5EED6A3B" Ref="C28"  Part="1" 
F 0 "C28" H 9565 5396 50  0000 L CNN
F 1 "0.1u" H 9565 5305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 9488 5200 50  0001 C CNN
F 3 "~" H 9450 5350 50  0001 C CNN
	1    9450 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EED6A41
P 9450 5050
AR Path="/5EED6A41" Ref="C?"  Part="1" 
AR Path="/5F169930/5EED6A41" Ref="C27"  Part="1" 
F 0 "C27" H 9565 5096 50  0000 L CNN
F 1 "0.1u" H 9565 5005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 9488 4900 50  0001 C CNN
F 3 "~" H 9450 5050 50  0001 C CNN
	1    9450 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4900 9050 4900
Connection ~ 9050 4900
Wire Wire Line
	9050 4900 9450 4900
Wire Wire Line
	9450 5500 9050 5500
Connection ~ 9050 5500
Wire Wire Line
	9050 5500 8600 5500
Wire Wire Line
	8600 5200 9450 5200
Connection ~ 9450 5200
Connection ~ 8600 4900
Connection ~ 8600 5500
Text GLabel 3200 3050 0    50   Input ~ 0
IN_4
Text GLabel 3200 3250 0    50   Input ~ 0
RES_4
Text GLabel 3200 3150 0    50   Input ~ 0
FREQ_4_a
Text GLabel 3200 3450 0    50   Input ~ 0
FREQ_4_b
Text GLabel 3200 3350 0    50   Input ~ 0
FREQ_4_c
Text GLabel 3200 3550 0    50   Input ~ 0
OUT_4
Connection ~ 7750 4900
Connection ~ 7750 5500
$Comp
L Mechanical:MountingHole H1
U 1 1 5D6C300D
P 5950 6750
F 0 "H1" H 6050 6796 50  0000 L CNN
F 1 "MountingHole" H 6050 6705 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 5950 6750 50  0001 C CNN
F 3 "~" H 5950 6750 50  0001 C CNN
	1    5950 6750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5D6C3220
P 5950 6950
F 0 "H2" H 6050 6996 50  0000 L CNN
F 1 "MountingHole" H 6050 6905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 5950 6950 50  0001 C CNN
F 3 "~" H 5950 6950 50  0001 C CNN
	1    5950 6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5D6C3412
P 5950 7150
F 0 "H3" H 6050 7196 50  0000 L CNN
F 1 "MountingHole" H 6050 7105 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 5950 7150 50  0001 C CNN
F 3 "~" H 5950 7150 50  0001 C CNN
	1    5950 7150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5D6C35D6
P 5950 7350
F 0 "H4" H 6050 7396 50  0000 L CNN
F 1 "MountingHole" H 6050 7305 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 5950 7350 50  0001 C CNN
F 3 "~" H 5950 7350 50  0001 C CNN
	1    5950 7350
	1    0    0    -1  
$EndComp
Text GLabel 5050 2250 0    50   Input ~ 0
MIX_1
Text GLabel 5050 2350 0    50   Input ~ 0
MIX_2
Text GLabel 5050 2450 0    50   Input ~ 0
MIX_3
Text GLabel 5050 2550 0    50   Input ~ 0
MIX_4
Wire Wire Line
	4350 5200 4400 5200
Wire Wire Line
	3550 5200 4400 5200
$Comp
L Connector:Conn_01x26_Female J1
U 1 1 5EE53CE4
P 3400 2250
F 0 "J1" H 3428 2226 50  0000 L CNN
F 1 "Conn_01x26_Female" H 3428 2135 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x26_P2.54mm_Vertical" H 3400 2250 50  0001 C CNN
F 3 "~" H 3400 2250 50  0001 C CNN
	1    3400 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Female J3
U 1 1 5EE56746
P 5250 2450
F 0 "J3" H 5278 2476 50  0000 L CNN
F 1 "Conn_01x05_Female" H 5278 2385 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 5250 2450 50  0001 C CNN
F 3 "~" H 5250 2450 50  0001 C CNN
	1    5250 2450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
