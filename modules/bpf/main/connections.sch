EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "bpf"
Date "2020-06-05"
Rev "01"
Comp ""
Comment1 "simple resonant band pass filter"
Comment2 "schema for main circuit"
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
$Comp
L power:+15V #PWR?
U 1 1 5F186FB7
P 2400 5000
AR Path="/5F186FB7" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F186FB7" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 2400 4850 50  0001 C CNN
F 1 "+15V" V 2415 5128 50  0000 L CNN
F 2 "" H 2400 5000 50  0001 C CNN
F 3 "" H 2400 5000 50  0001 C CNN
	1    2400 5000
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C?
U 1 1 5F186FBD
P 2600 5450
AR Path="/5F186FBD" Ref="C?"  Part="1" 
AR Path="/5F169930/5F186FBD" Ref="C8"  Part="1" 
F 0 "C8" H 2718 5496 50  0000 L CNN
F 1 "10u" H 2718 5405 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2638 5300 50  0001 C CNN
F 3 "~" H 2600 5450 50  0001 C CNN
	1    2600 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F186FC3
P 2400 5300
AR Path="/5F186FC3" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F186FC3" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 2400 5050 50  0001 C CNN
F 1 "GND" H 2405 5127 50  0000 C CNN
F 2 "" H 2400 5300 50  0001 C CNN
F 3 "" H 2400 5300 50  0001 C CNN
	1    2400 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 5300 2400 5300
$Comp
L Device:C C?
U 1 1 5F186FCA
P 3650 5450
AR Path="/5F186FCA" Ref="C?"  Part="1" 
AR Path="/5F169930/5F186FCA" Ref="C10"  Part="1" 
F 0 "C10" H 3765 5496 50  0000 L CNN
F 1 "0.1u" H 3765 5405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3688 5300 50  0001 C CNN
F 3 "~" H 3650 5450 50  0001 C CNN
	1    3650 5450
	1    0    0    -1  
$EndComp
Connection ~ 2600 5300
$Comp
L Device:CP C?
U 1 1 5F186FD1
P 2600 5150
AR Path="/5F186FD1" Ref="C?"  Part="1" 
AR Path="/5F169930/5F186FD1" Ref="C7"  Part="1" 
F 0 "C7" H 2718 5196 50  0000 L CNN
F 1 "10u" H 2718 5105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2638 5000 50  0001 C CNN
F 3 "~" H 2600 5150 50  0001 C CNN
	1    2600 5150
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR?
U 1 1 5F186FD7
P 2350 5600
AR Path="/5F186FD7" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F186FD7" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 2350 5700 50  0001 C CNN
F 1 "-15V" V 2365 5728 50  0000 L CNN
F 2 "" H 2350 5600 50  0001 C CNN
F 3 "" H 2350 5600 50  0001 C CNN
	1    2350 5600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2600 5000 2400 5000
Wire Wire Line
	2350 5600 2600 5600
Connection ~ 2600 5600
Connection ~ 2600 5000
Wire Wire Line
	2600 5300 3650 5300
Connection ~ 3650 5300
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5F186FE3
P 3350 5300
AR Path="/5F186FE3" Ref="U?"  Part="3" 
AR Path="/5F169930/5F186FE3" Ref="U1"  Part="3" 
F 0 "U1" H 3308 5346 50  0000 L CNN
F 1 "TL072" H 3308 5255 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3350 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3350 5300 50  0001 C CNN
	3    3350 5300
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5F186FE9
P 4200 5300
AR Path="/5F186FE9" Ref="U?"  Part="3" 
AR Path="/5F169930/5F186FE9" Ref="U2"  Part="3" 
F 0 "U2" H 4158 5346 50  0000 L CNN
F 1 "TL072" H 4158 5255 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 4200 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4200 5300 50  0001 C CNN
	3    4200 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5000 3250 5000
Wire Wire Line
	2600 5600 3250 5600
Connection ~ 3250 5600
Wire Wire Line
	3250 5600 3650 5600
Connection ~ 3250 5000
Wire Wire Line
	3250 5000 3650 5000
$Comp
L Device:C C?
U 1 1 5F186FF5
P 3650 5150
AR Path="/5F186FF5" Ref="C?"  Part="1" 
AR Path="/5F169930/5F186FF5" Ref="C9"  Part="1" 
F 0 "C9" H 3765 5196 50  0000 L CNN
F 1 "0.1u" H 3765 5105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3688 5000 50  0001 C CNN
F 3 "~" H 3650 5150 50  0001 C CNN
	1    3650 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F186FFB
P 4500 5450
AR Path="/5F186FFB" Ref="C?"  Part="1" 
AR Path="/5F169930/5F186FFB" Ref="C12"  Part="1" 
F 0 "C12" H 4615 5496 50  0000 L CNN
F 1 "0.1u" H 4615 5405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4538 5300 50  0001 C CNN
F 3 "~" H 4500 5450 50  0001 C CNN
	1    4500 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F187001
P 4500 5150
AR Path="/5F187001" Ref="C?"  Part="1" 
AR Path="/5F169930/5F187001" Ref="C11"  Part="1" 
F 0 "C11" H 4615 5196 50  0000 L CNN
F 1 "0.1u" H 4615 5105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4538 5000 50  0001 C CNN
F 3 "~" H 4500 5150 50  0001 C CNN
	1    4500 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5000 4100 5000
Connection ~ 3650 5000
Connection ~ 4100 5000
Wire Wire Line
	4100 5000 4500 5000
Wire Wire Line
	4500 5600 4100 5600
Connection ~ 3650 5600
Connection ~ 4100 5600
Wire Wire Line
	4100 5600 3650 5600
Wire Wire Line
	3650 5300 4500 5300
Connection ~ 4500 5300
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5F187011
P 5050 5300
AR Path="/5F187011" Ref="U?"  Part="3" 
AR Path="/5F169930/5F187011" Ref="U3"  Part="3" 
F 0 "U3" H 5008 5346 50  0000 L CNN
F 1 "TL072" H 5008 5255 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 5050 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5050 5300 50  0001 C CNN
	3    5050 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F187017
P 5350 5450
AR Path="/5F187017" Ref="C?"  Part="1" 
AR Path="/5F169930/5F187017" Ref="C14"  Part="1" 
F 0 "C14" H 5465 5496 50  0000 L CNN
F 1 "0.1u" H 5465 5405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 5388 5300 50  0001 C CNN
F 3 "~" H 5350 5450 50  0001 C CNN
	1    5350 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F18701D
P 5350 5150
AR Path="/5F18701D" Ref="C?"  Part="1" 
AR Path="/5F169930/5F18701D" Ref="C13"  Part="1" 
F 0 "C13" H 5465 5196 50  0000 L CNN
F 1 "0.1u" H 5465 5105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 5388 5000 50  0001 C CNN
F 3 "~" H 5350 5150 50  0001 C CNN
	1    5350 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5000 4950 5000
Connection ~ 4950 5000
Connection ~ 4950 5600
Wire Wire Line
	4950 5600 4500 5600
Connection ~ 5350 5300
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5F187028
P 5850 5300
AR Path="/5F187028" Ref="U?"  Part="3" 
AR Path="/5F169930/5F187028" Ref="U4"  Part="3" 
F 0 "U4" H 5808 5346 50  0000 L CNN
F 1 "TL072" H 5808 5255 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 5850 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5850 5300 50  0001 C CNN
	3    5850 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F18702E
P 6150 5450
AR Path="/5F18702E" Ref="C?"  Part="1" 
AR Path="/5F169930/5F18702E" Ref="C16"  Part="1" 
F 0 "C16" H 6265 5496 50  0000 L CNN
F 1 "0.1u" H 6265 5405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 6188 5300 50  0001 C CNN
F 3 "~" H 6150 5450 50  0001 C CNN
	1    6150 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F187034
P 6150 5150
AR Path="/5F187034" Ref="C?"  Part="1" 
AR Path="/5F169930/5F187034" Ref="C15"  Part="1" 
F 0 "C15" H 6265 5196 50  0000 L CNN
F 1 "0.1u" H 6265 5105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 6188 5000 50  0001 C CNN
F 3 "~" H 6150 5150 50  0001 C CNN
	1    6150 5150
	1    0    0    -1  
$EndComp
Connection ~ 5750 5000
Wire Wire Line
	5750 5000 6150 5000
Wire Wire Line
	6150 5600 5750 5600
Connection ~ 5750 5600
Connection ~ 6150 5300
Wire Wire Line
	5350 5300 6150 5300
Wire Wire Line
	4950 5000 5350 5000
Wire Wire Line
	4950 5600 5350 5600
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5F187042
P 6700 5300
AR Path="/5F187042" Ref="U?"  Part="3" 
AR Path="/5F169930/5F187042" Ref="U5"  Part="3" 
F 0 "U5" H 6658 5346 50  0000 L CNN
F 1 "TL072" H 6658 5255 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 6700 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6700 5300 50  0001 C CNN
	3    6700 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F187048
P 7000 5450
AR Path="/5F187048" Ref="C?"  Part="1" 
AR Path="/5F169930/5F187048" Ref="C18"  Part="1" 
F 0 "C18" H 7115 5496 50  0000 L CNN
F 1 "0.1u" H 7115 5405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 7038 5300 50  0001 C CNN
F 3 "~" H 7000 5450 50  0001 C CNN
	1    7000 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F18704E
P 7000 5150
AR Path="/5F18704E" Ref="C?"  Part="1" 
AR Path="/5F169930/5F18704E" Ref="C17"  Part="1" 
F 0 "C17" H 7115 5196 50  0000 L CNN
F 1 "0.1u" H 7115 5105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 7038 5000 50  0001 C CNN
F 3 "~" H 7000 5150 50  0001 C CNN
	1    7000 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5000 6600 5000
Connection ~ 6600 5000
Wire Wire Line
	6600 5000 7000 5000
Wire Wire Line
	7000 5600 6600 5600
Connection ~ 6600 5600
Wire Wire Line
	6600 5600 6150 5600
Wire Wire Line
	6150 5300 7000 5300
Connection ~ 7000 5300
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5F18705C
P 7550 5300
AR Path="/5F18705C" Ref="U?"  Part="3" 
AR Path="/5F169930/5F18705C" Ref="U6"  Part="3" 
F 0 "U6" H 7508 5346 50  0000 L CNN
F 1 "TL072" H 7508 5255 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 7550 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7550 5300 50  0001 C CNN
	3    7550 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F187062
P 7850 5450
AR Path="/5F187062" Ref="C?"  Part="1" 
AR Path="/5F169930/5F187062" Ref="C20"  Part="1" 
F 0 "C20" H 7965 5496 50  0000 L CNN
F 1 "0.1u" H 7965 5405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 7888 5300 50  0001 C CNN
F 3 "~" H 7850 5450 50  0001 C CNN
	1    7850 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F187068
P 7850 5150
AR Path="/5F187068" Ref="C?"  Part="1" 
AR Path="/5F169930/5F187068" Ref="C19"  Part="1" 
F 0 "C19" H 7965 5196 50  0000 L CNN
F 1 "0.1u" H 7965 5105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 7888 5000 50  0001 C CNN
F 3 "~" H 7850 5150 50  0001 C CNN
	1    7850 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 5000 7450 5000
Connection ~ 7450 5000
Wire Wire Line
	7450 5000 7850 5000
Wire Wire Line
	7850 5600 7450 5600
Connection ~ 7450 5600
Wire Wire Line
	7450 5600 7000 5600
Wire Wire Line
	7000 5300 7850 5300
Connection ~ 7850 5300
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5F187076
P 8400 5300
AR Path="/5F187076" Ref="U?"  Part="3" 
AR Path="/5F169930/5F187076" Ref="U7"  Part="3" 
F 0 "U7" H 8358 5346 50  0000 L CNN
F 1 "TL072" H 8358 5255 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 8400 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8400 5300 50  0001 C CNN
	3    8400 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F18707C
P 8700 5450
AR Path="/5F18707C" Ref="C?"  Part="1" 
AR Path="/5F169930/5F18707C" Ref="C22"  Part="1" 
F 0 "C22" H 8815 5496 50  0000 L CNN
F 1 "0.1u" H 8815 5405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 8738 5300 50  0001 C CNN
F 3 "~" H 8700 5450 50  0001 C CNN
	1    8700 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F187082
P 8700 5150
AR Path="/5F187082" Ref="C?"  Part="1" 
AR Path="/5F169930/5F187082" Ref="C21"  Part="1" 
F 0 "C21" H 8815 5196 50  0000 L CNN
F 1 "0.1u" H 8815 5105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 8738 5000 50  0001 C CNN
F 3 "~" H 8700 5150 50  0001 C CNN
	1    8700 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 5000 8300 5000
Connection ~ 8300 5000
Wire Wire Line
	8300 5000 8700 5000
Wire Wire Line
	8700 5600 8300 5600
Connection ~ 8300 5600
Wire Wire Line
	8300 5600 7850 5600
Wire Wire Line
	7850 5300 8700 5300
Connection ~ 8700 5300
Connection ~ 4500 5000
Connection ~ 4500 5600
Connection ~ 5350 5000
Wire Wire Line
	5350 5000 5750 5000
Connection ~ 5350 5600
Wire Wire Line
	5350 5600 5750 5600
Connection ~ 6150 5000
Connection ~ 6150 5600
Connection ~ 7000 5000
Connection ~ 7000 5600
Connection ~ 7850 5000
Connection ~ 7850 5600
Wire Wire Line
	5300 5300 5350 5300
Wire Wire Line
	4500 5300 5350 5300
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5F194035
P 4600 6700
AR Path="/5F194035" Ref="#FLG?"  Part="1" 
AR Path="/5F169930/5F194035" Ref="#FLG02"  Part="1" 
F 0 "#FLG02" H 4600 6775 50  0001 C CNN
F 1 "PWR_FLAG" V 4600 6828 50  0000 L CNN
F 2 "" H 4600 6700 50  0001 C CNN
F 3 "~" H 4600 6700 50  0001 C CNN
	1    4600 6700
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J?
U 1 1 5F19403B
P 3200 6700
AR Path="/5F19403B" Ref="J?"  Part="1" 
AR Path="/5F169930/5F19403B" Ref="J2"  Part="1" 
F 0 "J2" H 3250 7117 50  0000 C CNN
F 1 "IDC Header" H 3250 7026 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 3200 6700 50  0001 C CNN
F 3 "~" H 3200 6700 50  0001 C CNN
	1    3200 6700
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 5F194041
P 2900 6800
AR Path="/5F194041" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F194041" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 2900 6650 50  0001 C CNN
F 1 "+15V" V 2915 6928 50  0000 L CNN
F 2 "" H 2900 6800 50  0001 C CNN
F 3 "" H 2900 6800 50  0001 C CNN
	1    2900 6800
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 5F194047
P 3400 6800
AR Path="/5F194047" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F194047" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 3400 6650 50  0001 C CNN
F 1 "+15V" V 3415 6928 50  0000 L CNN
F 2 "" H 3400 6800 50  0001 C CNN
F 3 "" H 3400 6800 50  0001 C CNN
	1    3400 6800
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR?
U 1 1 5F19404D
P 2900 6900
AR Path="/5F19404D" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F19404D" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 2900 7000 50  0001 C CNN
F 1 "-15V" V 2915 7028 50  0000 L CNN
F 2 "" H 2900 6900 50  0001 C CNN
F 3 "" H 2900 6900 50  0001 C CNN
	1    2900 6900
	0    -1   -1   0   
$EndComp
$Comp
L power:-15V #PWR?
U 1 1 5F194053
P 3400 6900
AR Path="/5F194053" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F194053" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 3400 7000 50  0001 C CNN
F 1 "-15V" V 3415 7028 50  0000 L CNN
F 2 "" H 3400 6900 50  0001 C CNN
F 3 "" H 3400 6900 50  0001 C CNN
	1    3400 6900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F194059
P 2900 6700
AR Path="/5F194059" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F194059" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 2900 6450 50  0001 C CNN
F 1 "GND" V 2905 6572 50  0000 R CNN
F 2 "" H 2900 6700 50  0001 C CNN
F 3 "" H 2900 6700 50  0001 C CNN
	1    2900 6700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F19405F
P 2900 6600
AR Path="/5F19405F" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F19405F" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 2900 6350 50  0001 C CNN
F 1 "GND" V 2905 6472 50  0000 R CNN
F 2 "" H 2900 6600 50  0001 C CNN
F 3 "" H 2900 6600 50  0001 C CNN
	1    2900 6600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F194065
P 3400 6600
AR Path="/5F194065" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F194065" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 3400 6350 50  0001 C CNN
F 1 "GND" V 3405 6472 50  0000 R CNN
F 2 "" H 3400 6600 50  0001 C CNN
F 3 "" H 3400 6600 50  0001 C CNN
	1    3400 6600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F19406B
P 3400 6700
AR Path="/5F19406B" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F19406B" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 3400 6450 50  0001 C CNN
F 1 "GND" V 3405 6572 50  0000 R CNN
F 2 "" H 3400 6700 50  0001 C CNN
F 3 "" H 3400 6700 50  0001 C CNN
	1    3400 6700
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F194071
P 3400 6500
AR Path="/5F194071" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F194071" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 3400 6350 50  0001 C CNN
F 1 "+5V" V 3415 6628 50  0000 L CNN
F 2 "" H 3400 6500 50  0001 C CNN
F 3 "" H 3400 6500 50  0001 C CNN
	1    3400 6500
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F194077
P 2900 6500
AR Path="/5F194077" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F194077" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 2900 6350 50  0001 C CNN
F 1 "+5V" V 2915 6628 50  0000 L CNN
F 2 "" H 2900 6500 50  0001 C CNN
F 3 "" H 2900 6500 50  0001 C CNN
	1    2900 6500
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5F19407D
P 2900 6500
AR Path="/5F19407D" Ref="#FLG?"  Part="1" 
AR Path="/5F169930/5F19407D" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 2900 6575 50  0001 C CNN
F 1 "PWR_FLAG" H 2900 6628 50  0001 L CNN
F 2 "" H 2900 6500 50  0001 C CNN
F 3 "~" H 2900 6500 50  0001 C CNN
	1    2900 6500
	1    0    0    -1  
$EndComp
Connection ~ 2900 6500
Text Notes 3050 7300 0    50   ~ 0
Power
$Comp
L power:+15V #PWR?
U 1 1 5F194085
P 4600 6700
AR Path="/5F194085" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F194085" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 4600 6550 50  0001 C CNN
F 1 "+15V" V 4615 6828 50  0000 L CNN
F 2 "" H 4600 6700 50  0001 C CNN
F 3 "" H 4600 6700 50  0001 C CNN
	1    4600 6700
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR?
U 1 1 5F19408B
P 4600 6800
AR Path="/5F19408B" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F19408B" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 4600 6900 50  0001 C CNN
F 1 "-15V" V 4615 6928 50  0000 L CNN
F 2 "" H 4600 6800 50  0001 C CNN
F 3 "" H 4600 6800 50  0001 C CNN
	1    4600 6800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F194091
P 4600 6900
AR Path="/5F194091" Ref="#PWR?"  Part="1" 
AR Path="/5F169930/5F194091" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 4600 6650 50  0001 C CNN
F 1 "GND" V 4600 6700 50  0000 C CNN
F 2 "" H 4600 6900 50  0001 C CNN
F 3 "" H 4600 6900 50  0001 C CNN
	1    4600 6900
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5F194097
P 4600 6800
AR Path="/5F194097" Ref="#FLG?"  Part="1" 
AR Path="/5F169930/5F194097" Ref="#FLG03"  Part="1" 
F 0 "#FLG03" H 4600 6875 50  0001 C CNN
F 1 "PWR_FLAG" V 4600 6928 50  0000 L CNN
F 2 "" H 4600 6800 50  0001 C CNN
F 3 "~" H 4600 6800 50  0001 C CNN
	1    4600 6800
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5F19409D
P 4600 6900
AR Path="/5F19409D" Ref="#FLG?"  Part="1" 
AR Path="/5F169930/5F19409D" Ref="#FLG04"  Part="1" 
F 0 "#FLG04" H 4600 6975 50  0001 C CNN
F 1 "PWR_FLAG" V 4600 7028 50  0000 L CNN
F 2 "" H 4600 6900 50  0001 C CNN
F 3 "~" H 4600 6900 50  0001 C CNN
	1    4600 6900
	0    -1   -1   0   
$EndComp
Text GLabel 2800 1400 0    50   Input ~ 0
IN
Text GLabel 2800 1500 0    50   Input ~ 0
IN_1
Text GLabel 2800 1600 0    50   Input ~ 0
RES_1
Text GLabel 2800 1700 0    50   Input ~ 0
FREQ_1_a
Text GLabel 2800 1800 0    50   Input ~ 0
FREQ_1_b
Text GLabel 2800 1900 0    50   Input ~ 0
FREQ_1_c
Text GLabel 2800 2000 0    50   Input ~ 0
OUT_1
Text GLabel 2800 2100 0    50   Input ~ 0
IN_2
Text GLabel 2800 2200 0    50   Input ~ 0
RES_2
Text GLabel 2800 2300 0    50   Input ~ 0
FREQ_2_a
Text GLabel 2800 2400 0    50   Input ~ 0
FREQ_2_b
Text GLabel 2800 2500 0    50   Input ~ 0
FREQ_2_c
Text GLabel 2800 2600 0    50   Input ~ 0
OUT_2
Text GLabel 2800 2700 0    50   Input ~ 0
IN_3
Text GLabel 2800 2800 0    50   Input ~ 0
RES_3
Text GLabel 2800 2900 0    50   Input ~ 0
FREQ_3_a
Text GLabel 2800 3000 0    50   Input ~ 0
FREQ_3_b
Text GLabel 2800 3100 0    50   Input ~ 0
FREQ_3_c
Text GLabel 2800 3200 0    50   Input ~ 0
OUT_3
Text GLabel 2800 3300 0    50   Input ~ 0
OUT
$Comp
L Connector:Conn_01x21_Female J1
U 1 1 5EE3A396
P 3000 2300
F 0 "J1" H 3028 2326 50  0000 L CNN
F 1 "Conn_01x21_Female" H 3028 2235 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x21_P2.54mm_Vertical" H 3000 2300 50  0001 C CNN
F 3 "~" H 3000 2300 50  0001 C CNN
	1    3000 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5EE3DC0A
P 2800 1300
F 0 "#PWR0101" H 2800 1050 50  0001 C CNN
F 1 "GND" V 2805 1172 50  0000 R CNN
F 2 "" H 2800 1300 50  0001 C CNN
F 3 "" H 2800 1300 50  0001 C CNN
	1    2800 1300
	0    1    1    0   
$EndComp
$EndSCHEMATC
