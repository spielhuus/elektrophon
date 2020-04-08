EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Smooth and Stepped Generator"
Date "2019-11-09"
Rev "01"
Comp ""
Comment1 "Original design by Ken Stone"
Comment2 "Schema for main circuit"
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
Text GLabel -1500 5700 0    50   Input ~ 0
VC_1
Text GLabel -1500 6000 0    50   Input ~ 0
HOLD_1
Text GLabel -1500 5800 0    50   Input ~ 0
RATE_1
Text GLabel -800 5500 0    50   Input ~ 0
SAMPLE_2
Text GLabel -800 6100 0    50   Input ~ 0
LED_2_a
Text GLabel -800 6200 0    50   Input ~ 0
LED_2_b
Text GLabel -1500 5500 0    50   Input ~ 0
IN_1
Text GLabel -1500 6200 0    50   Input ~ 0
LED_1_b
Text GLabel -1500 6100 0    50   Input ~ 0
LED_1_a
Text GLabel -1500 5900 0    50   Input ~ 0
CYCLE_1
Text GLabel -1500 6300 0    50   Input ~ 0
COUPLER_HOT
Text GLabel -1500 6400 0    50   Input ~ 0
COUPLER_5V
$Comp
L power:GND #PWR040
U 1 1 5DEF28EF
P -1500 5300
F 0 "#PWR040" H -1500 5050 50  0001 C CNN
F 1 "GND" V -1500 5050 50  0000 C CNN
F 2 "" H -1500 5300 50  0001 C CNN
F 3 "" H -1500 5300 50  0001 C CNN
	1    -1500 5300
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR041
U 1 1 5DEE742E
P -1500 5400
F 0 "#PWR041" H -1500 5500 50  0001 C CNN
F 1 "-15V" V -1500 5700 50  0000 C CNN
F 2 "" H -1500 5400 50  0001 C CNN
F 3 "" H -1500 5400 50  0001 C CNN
	1    -1500 5400
	0    -1   -1   0   
$EndComp
Text GLabel -1500 5600 0    50   Input ~ 0
OUT_1
$Comp
L power:+15V #PWR02
U 1 1 5D5BF152
P -6450 6850
F 0 "#PWR02" H -6450 6700 50  0001 C CNN
F 1 "+15V" V -6435 6978 50  0000 L CNN
F 2 "" H -6450 6850 50  0001 C CNN
F 3 "" H -6450 6850 50  0001 C CNN
	1    -6450 6850
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C2
U 1 1 5D5C2809
P -6250 7300
F 0 "C2" H -6132 7346 50  0000 L CNN
F 1 "10u" H -6132 7255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H -6212 7150 50  0001 C CNN
F 3 "~" H -6250 7300 50  0001 C CNN
	1    -6250 7300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5D5C2DBB
P -6450 7150
F 0 "#PWR03" H -6450 6900 50  0001 C CNN
F 1 "GND" H -6445 6977 50  0000 C CNN
F 2 "" H -6450 7150 50  0001 C CNN
F 3 "" H -6450 7150 50  0001 C CNN
	1    -6450 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	-6250 7150 -6450 7150
$Comp
L Device:C C9
U 1 1 5D5EB360
P -3850 7000
F 0 "C9" H -3735 7046 50  0000 L CNN
F 1 "0.1u" H -3735 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H -3812 6850 50  0001 C CNN
F 3 "~" H -3850 7000 50  0001 C CNN
	1    -3850 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5D5EB366
P -3850 7300
F 0 "C10" H -3735 7346 50  0000 L CNN
F 1 "0.1u" H -3735 7255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H -3812 7150 50  0001 C CNN
F 3 "~" H -3850 7300 50  0001 C CNN
	1    -3850 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5D5F4D95
P -3100 7000
F 0 "C11" H -2985 7046 50  0000 L CNN
F 1 "0.1u" H -2985 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H -3062 6850 50  0001 C CNN
F 3 "~" H -3100 7000 50  0001 C CNN
	1    -3100 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5D5F4D9B
P -3100 7300
F 0 "C12" H -2985 7346 50  0000 L CNN
F 1 "0.1u" H -2985 7255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H -3062 7150 50  0001 C CNN
F 3 "~" H -3100 7300 50  0001 C CNN
	1    -3100 7300
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D61BFF2
P -2500 6100
F 0 "#FLG02" H -2500 6175 50  0001 C CNN
F 1 "PWR_FLAG" V -2500 6228 50  0000 L CNN
F 2 "" H -2500 6100 50  0001 C CNN
F 3 "~" H -2500 6100 50  0001 C CNN
	1    -2500 6100
	0    -1   -1   0   
$EndComp
Connection ~ -6250 7150
$Comp
L Device:CP C1
U 1 1 5D5C24D0
P -6250 7000
F 0 "C1" H -6132 7046 50  0000 L CNN
F 1 "10u" H -6132 6955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H -6212 6850 50  0001 C CNN
F 3 "~" H -6250 7000 50  0001 C CNN
	1    -6250 7000
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR01
U 1 1 5D62273C
P -6500 7450
F 0 "#PWR01" H -6500 7550 50  0001 C CNN
F 1 "-15V" V -6485 7578 50  0000 L CNN
F 2 "" H -6500 7450 50  0001 C CNN
F 3 "" H -6500 7450 50  0001 C CNN
	1    -6500 7450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	-6250 6850 -6450 6850
Wire Wire Line
	-6500 7450 -6250 7450
Connection ~ -6250 7450
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 5D6BEBB7
P -2550 5350
F 0 "J1" H -2500 5767 50  0000 C CNN
F 1 "IDC Header" H -2500 5676 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H -2550 5350 50  0001 C CNN
F 3 "~" H -2550 5350 50  0001 C CNN
	1    -2550 5350
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR025
U 1 1 5D6BEBBD
P -2850 5450
F 0 "#PWR025" H -2850 5300 50  0001 C CNN
F 1 "+15V" V -2835 5578 50  0000 L CNN
F 2 "" H -2850 5450 50  0001 C CNN
F 3 "" H -2850 5450 50  0001 C CNN
	1    -2850 5450
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR035
U 1 1 5D6BEBC3
P -2350 5450
F 0 "#PWR035" H -2350 5300 50  0001 C CNN
F 1 "+15V" V -2335 5578 50  0000 L CNN
F 2 "" H -2350 5450 50  0001 C CNN
F 3 "" H -2350 5450 50  0001 C CNN
	1    -2350 5450
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR026
U 1 1 5D6BEBC9
P -2850 5550
F 0 "#PWR026" H -2850 5650 50  0001 C CNN
F 1 "-15V" V -2835 5678 50  0000 L CNN
F 2 "" H -2850 5550 50  0001 C CNN
F 3 "" H -2850 5550 50  0001 C CNN
	1    -2850 5550
	0    -1   -1   0   
$EndComp
$Comp
L power:-15V #PWR036
U 1 1 5D6BEBCF
P -2350 5550
F 0 "#PWR036" H -2350 5650 50  0001 C CNN
F 1 "-15V" V -2335 5678 50  0000 L CNN
F 2 "" H -2350 5550 50  0001 C CNN
F 3 "" H -2350 5550 50  0001 C CNN
	1    -2350 5550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5D6BEBD5
P -2850 5350
F 0 "#PWR024" H -2850 5100 50  0001 C CNN
F 1 "GND" V -2845 5222 50  0000 R CNN
F 2 "" H -2850 5350 50  0001 C CNN
F 3 "" H -2850 5350 50  0001 C CNN
	1    -2850 5350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5D6BEBDB
P -2850 5250
F 0 "#PWR023" H -2850 5000 50  0001 C CNN
F 1 "GND" V -2845 5122 50  0000 R CNN
F 2 "" H -2850 5250 50  0001 C CNN
F 3 "" H -2850 5250 50  0001 C CNN
	1    -2850 5250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR033
U 1 1 5D6BEBE1
P -2350 5250
F 0 "#PWR033" H -2350 5000 50  0001 C CNN
F 1 "GND" V -2345 5122 50  0000 R CNN
F 2 "" H -2350 5250 50  0001 C CNN
F 3 "" H -2350 5250 50  0001 C CNN
	1    -2350 5250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR034
U 1 1 5D6BEBE7
P -2350 5350
F 0 "#PWR034" H -2350 5100 50  0001 C CNN
F 1 "GND" V -2345 5222 50  0000 R CNN
F 2 "" H -2350 5350 50  0001 C CNN
F 3 "" H -2350 5350 50  0001 C CNN
	1    -2350 5350
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR032
U 1 1 5D6BEBED
P -2350 5150
F 0 "#PWR032" H -2350 5000 50  0001 C CNN
F 1 "+5V" V -2335 5278 50  0000 L CNN
F 2 "" H -2350 5150 50  0001 C CNN
F 3 "" H -2350 5150 50  0001 C CNN
	1    -2350 5150
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 5D6BEBF3
P -2850 5150
F 0 "#PWR022" H -2850 5000 50  0001 C CNN
F 1 "+5V" V -2835 5278 50  0000 L CNN
F 2 "" H -2850 5150 50  0001 C CNN
F 3 "" H -2850 5150 50  0001 C CNN
	1    -2850 5150
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D6BEBF9
P -2850 5150
F 0 "#FLG01" H -2850 5225 50  0001 C CNN
F 1 "PWR_FLAG" H -2850 5278 50  0001 L CNN
F 2 "" H -2850 5150 50  0001 C CNN
F 3 "~" H -2850 5150 50  0001 C CNN
	1    -2850 5150
	1    0    0    -1  
$EndComp
Connection ~ -2850 5150
Text Notes -2600 6000 0    50   ~ 0
Power
Text Notes -1350 6650 0    50   ~ 0
Mount Connection
$Comp
L power:+15V #PWR028
U 1 1 5D8164F9
P -2500 6100
F 0 "#PWR028" H -2500 5950 50  0001 C CNN
F 1 "+15V" V -2485 6228 50  0000 L CNN
F 2 "" H -2500 6100 50  0001 C CNN
F 3 "" H -2500 6100 50  0001 C CNN
	1    -2500 6100
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR029
U 1 1 5D8164FF
P -2500 6200
F 0 "#PWR029" H -2500 6300 50  0001 C CNN
F 1 "-15V" V -2485 6328 50  0000 L CNN
F 2 "" H -2500 6200 50  0001 C CNN
F 3 "" H -2500 6200 50  0001 C CNN
	1    -2500 6200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5D816505
P -2500 6300
F 0 "#PWR030" H -2500 6050 50  0001 C CNN
F 1 "GND" V -2500 6100 50  0000 C CNN
F 2 "" H -2500 6300 50  0001 C CNN
F 3 "" H -2500 6300 50  0001 C CNN
	1    -2500 6300
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5D826C06
P -2500 6200
F 0 "#FLG03" H -2500 6275 50  0001 C CNN
F 1 "PWR_FLAG" V -2500 6328 50  0000 L CNN
F 2 "" H -2500 6200 50  0001 C CNN
F 3 "~" H -2500 6200 50  0001 C CNN
	1    -2500 6200
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5D8270E4
P -2500 6300
F 0 "#FLG04" H -2500 6375 50  0001 C CNN
F 1 "PWR_FLAG" V -2500 6428 50  0000 L CNN
F 2 "" H -2500 6300 50  0001 C CNN
F 3 "~" H -2500 6300 50  0001 C CNN
	1    -2500 6300
	0    -1   -1   0   
$EndComp
Connection ~ -6250 6850
Text Notes -5800 7300 1    50   ~ 0
CA3080
Wire Wire Line
	-6250 7450 -5700 7450
Wire Wire Line
	-6250 6850 -5700 6850
Wire Wire Line
	-6250 7150 -5700 7150
$Comp
L Device:C C3
U 1 1 5DF86AED
P -5700 7000
F 0 "C3" H -5585 7046 50  0000 L CNN
F 1 "0.1u" H -5585 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H -5662 6850 50  0001 C CNN
F 3 "~" H -5700 7000 50  0001 C CNN
	1    -5700 7000
	1    0    0    -1  
$EndComp
Connection ~ -5700 6850
Wire Wire Line
	-5700 6850 -5200 6850
Connection ~ -5700 7150
Wire Wire Line
	-5700 7150 -5200 7150
$Comp
L Device:C C4
U 1 1 5DF871D3
P -5700 7300
F 0 "C4" H -5585 7346 50  0000 L CNN
F 1 "0.1u" H -5585 7255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H -5662 7150 50  0001 C CNN
F 3 "~" H -5700 7300 50  0001 C CNN
	1    -5700 7300
	1    0    0    -1  
$EndComp
Connection ~ -5700 7450
Wire Wire Line
	-5700 7450 -5200 7450
Text Notes -5300 7300 1    50   ~ 0
CA3080
$Comp
L Device:C C6
U 1 1 5DF908DE
P -5200 7300
F 0 "C6" H -5085 7346 50  0000 L CNN
F 1 "0.1u" H -5085 7255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H -5162 7150 50  0001 C CNN
F 3 "~" H -5200 7300 50  0001 C CNN
	1    -5200 7300
	1    0    0    -1  
$EndComp
Connection ~ -5200 7150
Connection ~ -5200 7450
$Comp
L Device:C C5
U 1 1 5DF90DCF
P -5200 7000
F 0 "C5" H -5085 7046 50  0000 L CNN
F 1 "0.1u" H -5085 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H -5162 6850 50  0001 C CNN
F 3 "~" H -5200 7000 50  0001 C CNN
	1    -5200 7000
	1    0    0    -1  
$EndComp
Connection ~ -5200 6850
Wire Wire Line
	-5200 7150 -4500 7150
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 5DF9ABA9
P -4700 7150
F 0 "U1" H -4742 7196 50  0000 L CNN
F 1 "TL072" H -4742 7105 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H -4700 7150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H -4700 7150 50  0001 C CNN
	3    -4700 7150
	1    0    0    -1  
$EndComp
Connection ~ -4800 7450
Wire Wire Line
	-4800 7450 -4500 7450
Connection ~ -4800 6850
Wire Wire Line
	-4800 6850 -4500 6850
Wire Wire Line
	-5200 6850 -4800 6850
Wire Wire Line
	-5200 7450 -4800 7450
$Comp
L Device:C C8
U 1 1 5DF9F979
P -4500 7300
F 0 "C8" H -4385 7346 50  0000 L CNN
F 1 "0.1u" H -4385 7255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H -4462 7150 50  0001 C CNN
F 3 "~" H -4500 7300 50  0001 C CNN
	1    -4500 7300
	1    0    0    -1  
$EndComp
Connection ~ -4500 7150
Connection ~ -4500 7450
$Comp
L Device:C C7
U 1 1 5DF9FD59
P -4500 7000
F 0 "C7" H -4385 7046 50  0000 L CNN
F 1 "0.1u" H -4385 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H -4462 6850 50  0001 C CNN
F 3 "~" H -4500 7000 50  0001 C CNN
	1    -4500 7000
	1    0    0    -1  
$EndComp
Connection ~ -4500 6850
Wire Wire Line
	-4500 7450 -4150 7450
Wire Wire Line
	-4500 6850 -4150 6850
$Comp
L Amplifier_Operational:TL072 U4
U 3 1 5DFA6673
P -4050 7150
F 0 "U4" H -4092 7196 50  0000 L CNN
F 1 "TL072" H -4092 7105 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H -4050 7150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H -4050 7150 50  0001 C CNN
	3    -4050 7150
	1    0    0    -1  
$EndComp
Connection ~ -4150 7450
Connection ~ -4150 6850
Connection ~ -3850 7150
Connection ~ -3850 7450
Connection ~ -3850 6850
Wire Wire Line
	-4150 6850 -3850 6850
Wire Wire Line
	-4500 7150 -3850 7150
Wire Wire Line
	-4150 7450 -3850 7450
$Comp
L Device:C C16
U 1 1 5E016909
P -2250 7000
F 0 "C16" H -2135 7046 50  0000 L CNN
F 1 "0.1u" H -2135 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H -2212 6850 50  0001 C CNN
F 3 "~" H -2250 7000 50  0001 C CNN
	1    -2250 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 5E017256
P -2250 7300
F 0 "C17" H -2135 7346 50  0000 L CNN
F 1 "0.1u" H -2135 7255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H -2212 7150 50  0001 C CNN
F 3 "~" H -2250 7300 50  0001 C CNN
	1    -2250 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 5E0725A9
P -1700 7000
F 0 "C18" H -1585 7046 50  0000 L CNN
F 1 "0.1u" H -1585 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H -1662 6850 50  0001 C CNN
F 3 "~" H -1700 7000 50  0001 C CNN
	1    -1700 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 5E0725AF
P -1700 7300
F 0 "C19" H -1585 7346 50  0000 L CNN
F 1 "0.1u" H -1585 7255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H -1662 7150 50  0001 C CNN
F 3 "~" H -1700 7300 50  0001 C CNN
	1    -1700 7300
	1    0    0    -1  
$EndComp
Text Notes -1850 7300 1    50   ~ 0
LM741
Connection ~ -2250 6850
Wire Wire Line
	-2250 6850 -1700 6850
Connection ~ -2250 7450
Wire Wire Line
	-2250 7450 -1700 7450
Connection ~ -1700 7150
Connection ~ -2250 7150
Wire Wire Line
	-2250 7150 -1700 7150
Connection ~ -3100 7150
Wire Wire Line
	-3850 7150 -3100 7150
Connection ~ -3100 6850
Connection ~ -3100 7450
Wire Wire Line
	-3100 7150 -2250 7150
$Comp
L Connector:Conn_01x12_Female J2
U 1 1 5DDBCD39
P -1300 5800
F 0 "J2" H -1600 6450 50  0000 L CNN
F 1 "Conn_01x12_Female" H -2000 6550 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H -1300 5800 50  0001 C CNN
F 3 "~" H -1300 5800 50  0001 C CNN
	1    -1300 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x09_Female J3
U 1 1 5DDE7181
P -600 5800
F 0 "J3" H -950 6450 50  0000 L CNN
F 1 "Conn_01x09_Female" H -1200 6550 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x09_P2.54mm_Vertical" H -600 5800 50  0001 C CNN
F 3 "~" H -600 5800 50  0001 C CNN
	1    -600 5800
	1    0    0    -1  
$EndComp
Text GLabel -800 5400 0    50   Input ~ 0
LED
Text GLabel -800 5800 0    50   Input ~ 0
VC_2
Text GLabel -800 5700 0    50   Input ~ 0
IN_2
Text GLabel -800 5600 0    50   Input ~ 0
OUT_2
Text GLabel -800 6000 0    50   Input ~ 0
CYCLE_2
Text GLabel -800 5900 0    50   Input ~ 0
RATE_2
Wire Wire Line
	-3100 6850 -2650 6850
Wire Wire Line
	-3100 7450 -2650 7450
$Comp
L elektrophon:LM3900 U3
U 5 1 5DE06BEB
P -2550 7150
F 0 "U3" H -2592 7196 50  0000 L CNN
F 1 "LM3900" H -2592 7105 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" V -2900 7450 50  0001 C CNN
F 3 "" V -2900 7450 50  0001 C CNN
	5    -2550 7150
	1    0    0    -1  
$EndComp
Connection ~ -2650 6850
Wire Wire Line
	-2650 6850 -2250 6850
Connection ~ -2650 7450
Wire Wire Line
	-2650 7450 -2250 7450
Wire Wire Line
	-3850 6850 -3500 6850
Wire Wire Line
	-3850 7450 -3500 7450
$Comp
L elektrophon:LM3900 U2
U 5 1 5DE079E4
P -3400 7150
F 0 "U2" H -3442 7196 50  0000 L CNN
F 1 "LM3900" H -3442 7105 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" V -3750 7450 50  0001 C CNN
F 3 "" V -3750 7450 50  0001 C CNN
	5    -3400 7150
	1    0    0    -1  
$EndComp
Connection ~ -3500 6850
Wire Wire Line
	-3500 6850 -3100 6850
Connection ~ -3500 7450
Wire Wire Line
	-3500 7450 -3100 7450
$Comp
L Amplifier_Audio:THAT2180 U?
U 1 1 5E8F68ED
P 2650 3500
F 0 "U?" H 2994 3546 50  0000 L CNN
F 1 "THAT2180" H 2994 3455 50  0000 L CNN
F 2 "Package_SIP:SIP-8_19x3mm_P2.54mm" H 2650 3500 50  0001 C CNN
F 3 "http://www.thatcorp.com/datashts/THAT_2180-Series_Datasheet.pdf" H 2650 3500 50  0001 C CNN
	1    2650 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E8F71DA
P 2550 4100
F 0 "R?" H 2480 4054 50  0000 R CNN
F 1 "4k7" H 2480 4145 50  0000 R CNN
F 2 "" V 2480 4100 50  0001 C CNN
F 3 "~" H 2550 4100 50  0001 C CNN
	1    2550 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 3950 2550 3800
$Comp
L power:-15V #PWR?
U 1 1 5E8F8C4B
P 2550 4250
F 0 "#PWR?" H 2550 4350 50  0001 C CNN
F 1 "-15V" H 2565 4423 50  0000 C CNN
F 2 "" H 2550 4250 50  0001 C CNN
F 3 "" H 2550 4250 50  0001 C CNN
	1    2550 4250
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 5E8F946B
P 2550 3200
F 0 "#PWR?" H 2550 3050 50  0001 C CNN
F 1 "+15V" H 2565 3373 50  0000 C CNN
F 2 "" H 2550 3200 50  0001 C CNN
F 3 "" H 2550 3200 50  0001 C CNN
	1    2550 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5E8F9E9A
P 1000 4850
F 0 "RV?" H 930 4896 50  0000 R CNN
F 1 "50k" H 930 4805 50  0000 R CNN
F 2 "" H 1000 4850 50  0001 C CNN
F 3 "~" H 1000 4850 50  0001 C CNN
	1    1000 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 5D73BD4E
P 950 1250
F 0 "J?" H 982 1575 50  0000 C CNN
F 1 "in" H 982 1484 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 950 1250 50  0001 C CNN
F 3 "~" H 950 1250 50  0001 C CNN
	1    950  1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1250 1450 1250
$Comp
L power:GND #PWR?
U 1 1 5D74CD7E
P 1150 1150
F 0 "#PWR?" H 1150 900 50  0001 C CNN
F 1 "GND" H 1155 977 50  0000 C CNN
F 2 "" H 1150 1150 50  0001 C CNN
F 3 "" H 1150 1150 50  0001 C CNN
	1    1150 1150
	0    -1   -1   0   
$EndComp
NoConn ~ 1150 1350
$Comp
L power:GND #PWR?
U 1 1 5E914F5E
P 1000 5000
F 0 "#PWR?" H 1000 4750 50  0001 C CNN
F 1 "GND" H 1005 4827 50  0000 C CNN
F 2 "" H 1000 5000 50  0001 C CNN
F 3 "" H 1000 5000 50  0001 C CNN
	1    1000 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4850 1150 4850
$Comp
L Device:R R?
U 1 1 5E9157CB
P 1400 4850
F 0 "R?" V 1193 4850 50  0000 C CNN
F 1 "105k" V 1284 4850 50  0000 C CNN
F 2 "" V 1330 4850 50  0001 C CNN
F 3 "~" H 1400 4850 50  0001 C CNN
	1    1400 4850
	0    1    1    0   
$EndComp
Text Label 1550 4850 0    50   ~ 0
IN
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 5E919CED
P 950 2300
F 0 "J?" H 982 2625 50  0000 C CNN
F 1 "trig" H 982 2534 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 950 2300 50  0001 C CNN
F 3 "~" H 950 2300 50  0001 C CNN
	1    950  2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2300 1400 2300
$Comp
L power:GND #PWR?
U 1 1 5E919CF4
P 1150 2200
F 0 "#PWR?" H 1150 1950 50  0001 C CNN
F 1 "GND" H 1155 2027 50  0000 C CNN
F 2 "" H 1150 2200 50  0001 C CNN
F 3 "" H 1150 2200 50  0001 C CNN
	1    1150 2200
	0    -1   -1   0   
$EndComp
NoConn ~ 1150 2400
$Comp
L Device:R R?
U 1 1 5E91B333
P 1600 2300
F 0 "R?" V 1393 2300 50  0000 C CNN
F 1 "1k" V 1484 2300 50  0000 C CNN
F 2 "" V 1530 2300 50  0001 C CNN
F 3 "~" H 1600 2300 50  0001 C CNN
	1    1600 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E91B6B1
P 1400 2550
F 0 "R?" H 1330 2504 50  0000 R CNN
F 1 "47k" H 1330 2595 50  0000 R CNN
F 2 "" V 1330 2550 50  0001 C CNN
F 3 "~" H 1400 2550 50  0001 C CNN
	1    1400 2550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E91B9D7
P 1400 2700
F 0 "#PWR?" H 1400 2450 50  0001 C CNN
F 1 "GND" H 1405 2527 50  0000 C CNN
F 2 "" H 1400 2700 50  0001 C CNN
F 3 "" H 1400 2700 50  0001 C CNN
	1    1400 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2400 1400 2300
Connection ~ 1400 2300
Wire Wire Line
	1400 2300 1450 2300
$Comp
L Device:C C?
U 1 1 5E91CA1D
P 1950 2300
F 0 "C?" V 1698 2300 50  0000 C CNN
F 1 "1n" V 1789 2300 50  0000 C CNN
F 2 "" H 1988 2150 50  0001 C CNN
F 3 "~" H 1950 2300 50  0001 C CNN
	1    1950 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 2300 1750 2300
$Comp
L Device:R R?
U 1 1 5E91F96C
P 2200 2550
F 0 "R?" H 2130 2504 50  0000 R CNN
F 1 "150k" H 2130 2595 50  0000 R CNN
F 2 "" V 2130 2550 50  0001 C CNN
F 3 "~" H 2200 2550 50  0001 C CNN
	1    2200 2550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E91F972
P 2200 2700
F 0 "#PWR?" H 2200 2450 50  0001 C CNN
F 1 "GND" H 2205 2527 50  0000 C CNN
F 2 "" H 2200 2700 50  0001 C CNN
F 3 "" H 2200 2700 50  0001 C CNN
	1    2200 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2400 2200 2300
$Comp
L Diode:1N4148 D?
U 1 1 5E920347
P 2450 2300
F 0 "D?" H 2450 2084 50  0000 C CNN
F 1 "1N4148" H 2450 2175 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2450 2125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2450 2300 50  0001 C CNN
	1    2450 2300
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5E92156F
P 3100 2400
F 0 "U?" H 3100 2767 50  0000 C CNN
F 1 "TL072" H 3100 2676 50  0000 C CNN
F 2 "" H 3100 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3100 2400 50  0001 C CNN
	1    3100 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2300 2200 2300
Connection ~ 2200 2300
Wire Wire Line
	2200 2300 2300 2300
Wire Wire Line
	2800 2300 2700 2300
$Comp
L power:GND #PWR?
U 1 1 5E92714C
P 2750 2550
F 0 "#PWR?" H 2750 2300 50  0001 C CNN
F 1 "GND" H 2755 2377 50  0000 C CNN
F 2 "" H 2750 2550 50  0001 C CNN
F 3 "" H 2750 2550 50  0001 C CNN
	1    2750 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2500 2750 2500
Wire Wire Line
	2750 2500 2750 2550
$Comp
L Device:C C?
U 1 1 5E928753
P 3100 1750
F 0 "C?" V 2848 1750 50  0000 C CNN
F 1 "220p" V 2939 1750 50  0000 C CNN
F 2 "" H 3138 1600 50  0001 C CNN
F 3 "~" H 3100 1750 50  0001 C CNN
	1    3100 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E928A12
P 3100 1350
F 0 "R?" V 2893 1350 50  0000 C CNN
F 1 "1M5" V 2984 1350 50  0000 C CNN
F 2 "" V 3030 1350 50  0001 C CNN
F 3 "~" H 3100 1350 50  0001 C CNN
	1    3100 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 1350 2700 1350
Wire Wire Line
	2700 1350 2700 1750
Connection ~ 2700 2300
Wire Wire Line
	2700 2300 2600 2300
Wire Wire Line
	3250 1350 3450 1350
Wire Wire Line
	3450 1350 3450 1750
Wire Wire Line
	3450 2400 3400 2400
Wire Wire Line
	2950 1750 2700 1750
Connection ~ 2700 1750
Wire Wire Line
	2700 1750 2700 2300
Wire Wire Line
	3250 1750 3450 1750
Connection ~ 3450 1750
Wire Wire Line
	3450 1750 3450 2400
$Comp
L Diode:1N4148 D?
U 1 1 5E92E549
P 3650 2400
F 0 "D?" H 3650 2184 50  0000 C CNN
F 1 "1N4148" H 3650 2275 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3650 2225 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3650 2400 50  0001 C CNN
	1    3650 2400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E92F41D
P 4000 2400
F 0 "R?" V 3793 2400 50  0000 C CNN
F 1 "220k" V 3884 2400 50  0000 C CNN
F 2 "" V 3930 2400 50  0001 C CNN
F 3 "~" H 4000 2400 50  0001 C CNN
	1    4000 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E92F788
P 4400 2400
F 0 "R?" V 4193 2400 50  0000 C CNN
F 1 "100k" V 4284 2400 50  0000 C CNN
F 2 "" V 4330 2400 50  0001 C CNN
F 3 "~" H 4400 2400 50  0001 C CNN
	1    4400 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E92FC14
P 3250 950
F 0 "R?" V 3043 950 50  0000 C CNN
F 1 "330k" V 3134 950 50  0000 C CNN
F 2 "" V 3180 950 50  0001 C CNN
F 3 "~" H 3250 950 50  0001 C CNN
	1    3250 950 
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 5E92FFE7
P 3700 950
F 0 "D?" H 3700 734 50  0000 C CNN
F 1 "1N4148" H 3700 825 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3700 775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3700 950 50  0001 C CNN
	1    3700 950 
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 1350 2700 950 
Wire Wire Line
	2700 950  3100 950 
Wire Wire Line
	4550 950  4550 2400
Wire Wire Line
	3400 950  3550 950 
Wire Wire Line
	3850 950  4550 950 
Connection ~ 2700 1350
Wire Wire Line
	4250 2400 4150 2400
Wire Wire Line
	3500 2400 3450 2400
Wire Wire Line
	3850 2400 3800 2400
Connection ~ 3450 2400
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 5E934618
P 950 3500
F 0 "J?" H 982 3825 50  0000 C CNN
F 1 "agc" H 982 3734 50  0000 C CNN
F 2 "elektrophon:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 950 3500 50  0001 C CNN
F 3 "~" H 950 3500 50  0001 C CNN
	1    950  3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3500 1400 3500
$Comp
L power:GND #PWR?
U 1 1 5E93461F
P 1150 3400
F 0 "#PWR?" H 1150 3150 50  0001 C CNN
F 1 "GND" H 1155 3227 50  0000 C CNN
F 2 "" H 1150 3400 50  0001 C CNN
F 3 "" H 1150 3400 50  0001 C CNN
	1    1150 3400
	0    -1   -1   0   
$EndComp
NoConn ~ 1150 3600
$Comp
L Device:R R?
U 1 1 5E938DCD
P 1400 3750
F 0 "R?" H 1330 3704 50  0000 R CNN
F 1 "47k" H 1330 3795 50  0000 R CNN
F 2 "" V 1330 3750 50  0001 C CNN
F 3 "~" H 1400 3750 50  0001 C CNN
	1    1400 3750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E938DD3
P 1400 3900
F 0 "#PWR?" H 1400 3650 50  0001 C CNN
F 1 "GND" H 1405 3727 50  0000 C CNN
F 2 "" H 1400 3900 50  0001 C CNN
F 3 "" H 1400 3900 50  0001 C CNN
	1    1400 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3600 1400 3500
$Comp
L Device:R R?
U 1 1 5E93A091
P 1600 3500
F 0 "R?" V 1393 3500 50  0000 C CNN
F 1 "100k" V 1484 3500 50  0000 C CNN
F 2 "" V 1530 3500 50  0001 C CNN
F 3 "~" H 1600 3500 50  0001 C CNN
	1    1600 3500
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E93A5B6
P 1950 3500
F 0 "C?" V 1698 3500 50  0000 C CNN
F 1 "100n" V 1789 3500 50  0000 C CNN
F 2 "" H 1988 3350 50  0001 C CNN
F 3 "~" H 1950 3500 50  0001 C CNN
	1    1950 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 3500 2100 3500
Wire Wire Line
	1450 3500 1400 3500
Wire Wire Line
	1800 3500 1750 3500
Connection ~ 1400 3500
$Comp
L power:+15V #PWR?
U 1 1 5E941E33
P 1000 4700
F 0 "#PWR?" H 1000 4550 50  0001 C CNN
F 1 "+15V" H 1015 4873 50  0000 C CNN
F 2 "" H 1000 4700 50  0001 C CNN
F 3 "" H 1000 4700 50  0001 C CNN
	1    1000 4700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
