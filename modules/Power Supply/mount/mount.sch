EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Metalizer"
Date "2020-02-09"
Rev "01"
Comp ""
Comment1 "Original design by Yves Usson"
Comment2 "Schema for mount circuit"
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
$Comp
L power:+15V #PWR0103
U 1 1 5E480B2E
P 1850 3650
F 0 "#PWR0103" H 1850 3500 50  0001 C CNN
F 1 "+15V" V 1850 3850 50  0000 C CNN
F 2 "" H 1850 3650 50  0001 C CNN
F 3 "" H 1850 3650 50  0001 C CNN
	1    1850 3650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5E480D2F
P 1850 3800
F 0 "#PWR0104" H 1850 3550 50  0001 C CNN
F 1 "GND" V 1850 3600 50  0000 C CNN
F 2 "" H 1850 3800 50  0001 C CNN
F 3 "" H 1850 3800 50  0001 C CNN
	1    1850 3800
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5E481205
P 1850 3650
F 0 "#FLG0101" H 1850 3725 50  0001 C CNN
F 1 "PWR_FLAG" V 1850 3777 50  0000 L CNN
F 2 "" H 1850 3650 50  0001 C CNN
F 3 "~" H 1850 3650 50  0001 C CNN
	1    1850 3650
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5E48150E
P 1850 3800
F 0 "#FLG0102" H 1850 3875 50  0001 C CNN
F 1 "PWR_FLAG" V 1850 3927 50  0000 L CNN
F 2 "" H 1850 3800 50  0001 C CNN
F 3 "~" H 1850 3800 50  0001 C CNN
	1    1850 3800
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 5D6BEBB7
P 1750 5700
F 0 "J1" H 1800 6117 50  0000 C CNN
F 1 "IDC Header" H 1800 6026 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 1750 5700 50  0001 C CNN
F 3 "~" H 1750 5700 50  0001 C CNN
	1    1750 5700
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR025
U 1 1 5D6BEBBD
P 1450 5800
F 0 "#PWR025" H 1450 5650 50  0001 C CNN
F 1 "+15V" V 1465 5928 50  0000 L CNN
F 2 "" H 1450 5800 50  0001 C CNN
F 3 "" H 1450 5800 50  0001 C CNN
	1    1450 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR035
U 1 1 5D6BEBC3
P 1950 5800
F 0 "#PWR035" H 1950 5650 50  0001 C CNN
F 1 "+15V" V 1965 5928 50  0000 L CNN
F 2 "" H 1950 5800 50  0001 C CNN
F 3 "" H 1950 5800 50  0001 C CNN
	1    1950 5800
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR026
U 1 1 5D6BEBC9
P 1450 5900
F 0 "#PWR026" H 1450 6000 50  0001 C CNN
F 1 "-15V" V 1465 6028 50  0000 L CNN
F 2 "" H 1450 5900 50  0001 C CNN
F 3 "" H 1450 5900 50  0001 C CNN
	1    1450 5900
	0    -1   -1   0   
$EndComp
$Comp
L power:-15V #PWR036
U 1 1 5D6BEBCF
P 1950 5900
F 0 "#PWR036" H 1950 6000 50  0001 C CNN
F 1 "-15V" V 1965 6028 50  0000 L CNN
F 2 "" H 1950 5900 50  0001 C CNN
F 3 "" H 1950 5900 50  0001 C CNN
	1    1950 5900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5D6BEBD5
P 1450 5700
F 0 "#PWR024" H 1450 5450 50  0001 C CNN
F 1 "GND" V 1455 5572 50  0000 R CNN
F 2 "" H 1450 5700 50  0001 C CNN
F 3 "" H 1450 5700 50  0001 C CNN
	1    1450 5700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5D6BEBDB
P 1450 5600
F 0 "#PWR023" H 1450 5350 50  0001 C CNN
F 1 "GND" V 1455 5472 50  0000 R CNN
F 2 "" H 1450 5600 50  0001 C CNN
F 3 "" H 1450 5600 50  0001 C CNN
	1    1450 5600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR033
U 1 1 5D6BEBE1
P 1950 5600
F 0 "#PWR033" H 1950 5350 50  0001 C CNN
F 1 "GND" V 1955 5472 50  0000 R CNN
F 2 "" H 1950 5600 50  0001 C CNN
F 3 "" H 1950 5600 50  0001 C CNN
	1    1950 5600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR034
U 1 1 5D6BEBE7
P 1950 5700
F 0 "#PWR034" H 1950 5450 50  0001 C CNN
F 1 "GND" V 1955 5572 50  0000 R CNN
F 2 "" H 1950 5700 50  0001 C CNN
F 3 "" H 1950 5700 50  0001 C CNN
	1    1950 5700
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR032
U 1 1 5D6BEBED
P 1950 5500
F 0 "#PWR032" H 1950 5350 50  0001 C CNN
F 1 "+5V" V 1965 5628 50  0000 L CNN
F 2 "" H 1950 5500 50  0001 C CNN
F 3 "" H 1950 5500 50  0001 C CNN
	1    1950 5500
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 5D6BEBF3
P 1450 5500
F 0 "#PWR022" H 1450 5350 50  0001 C CNN
F 1 "+5V" V 1465 5628 50  0000 L CNN
F 2 "" H 1450 5500 50  0001 C CNN
F 3 "" H 1450 5500 50  0001 C CNN
	1    1450 5500
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D6BEBF9
P 1450 5500
F 0 "#FLG01" H 1450 5575 50  0001 C CNN
F 1 "PWR_FLAG" H 1450 5628 50  0001 L CNN
F 2 "" H 1450 5500 50  0001 C CNN
F 3 "~" H 1450 5500 50  0001 C CNN
	1    1450 5500
	1    0    0    -1  
$EndComp
Connection ~ 1450 5500
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J3
U 1 1 5F7F3CA9
P 3050 5700
F 0 "J3" H 3100 6117 50  0000 C CNN
F 1 "IDC Header" H 3100 6026 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 3050 5700 50  0001 C CNN
F 3 "~" H 3050 5700 50  0001 C CNN
	1    3050 5700
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR04
U 1 1 5F7F3CAF
P 2750 5800
F 0 "#PWR04" H 2750 5650 50  0001 C CNN
F 1 "+15V" V 2765 5928 50  0000 L CNN
F 2 "" H 2750 5800 50  0001 C CNN
F 3 "" H 2750 5800 50  0001 C CNN
	1    2750 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR09
U 1 1 5F7F3CB5
P 3250 5800
F 0 "#PWR09" H 3250 5650 50  0001 C CNN
F 1 "+15V" V 3265 5928 50  0000 L CNN
F 2 "" H 3250 5800 50  0001 C CNN
F 3 "" H 3250 5800 50  0001 C CNN
	1    3250 5800
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR05
U 1 1 5F7F3CBB
P 2750 5900
F 0 "#PWR05" H 2750 6000 50  0001 C CNN
F 1 "-15V" V 2765 6028 50  0000 L CNN
F 2 "" H 2750 5900 50  0001 C CNN
F 3 "" H 2750 5900 50  0001 C CNN
	1    2750 5900
	0    -1   -1   0   
$EndComp
$Comp
L power:-15V #PWR010
U 1 1 5F7F3CC1
P 3250 5900
F 0 "#PWR010" H 3250 6000 50  0001 C CNN
F 1 "-15V" V 3265 6028 50  0000 L CNN
F 2 "" H 3250 5900 50  0001 C CNN
F 3 "" H 3250 5900 50  0001 C CNN
	1    3250 5900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5F7F3CC7
P 2750 5700
F 0 "#PWR03" H 2750 5450 50  0001 C CNN
F 1 "GND" V 2755 5572 50  0000 R CNN
F 2 "" H 2750 5700 50  0001 C CNN
F 3 "" H 2750 5700 50  0001 C CNN
	1    2750 5700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F7F3CCD
P 2750 5600
F 0 "#PWR02" H 2750 5350 50  0001 C CNN
F 1 "GND" V 2755 5472 50  0000 R CNN
F 2 "" H 2750 5600 50  0001 C CNN
F 3 "" H 2750 5600 50  0001 C CNN
	1    2750 5600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5F7F3CD3
P 3250 5600
F 0 "#PWR07" H 3250 5350 50  0001 C CNN
F 1 "GND" V 3255 5472 50  0000 R CNN
F 2 "" H 3250 5600 50  0001 C CNN
F 3 "" H 3250 5600 50  0001 C CNN
	1    3250 5600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5F7F3CD9
P 3250 5700
F 0 "#PWR08" H 3250 5450 50  0001 C CNN
F 1 "GND" V 3255 5572 50  0000 R CNN
F 2 "" H 3250 5700 50  0001 C CNN
F 3 "" H 3250 5700 50  0001 C CNN
	1    3250 5700
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5F7F3CDF
P 3250 5500
F 0 "#PWR06" H 3250 5350 50  0001 C CNN
F 1 "+5V" V 3265 5628 50  0000 L CNN
F 2 "" H 3250 5500 50  0001 C CNN
F 3 "" H 3250 5500 50  0001 C CNN
	1    3250 5500
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5F7F3CE5
P 2750 5500
F 0 "#PWR01" H 2750 5350 50  0001 C CNN
F 1 "+5V" V 2765 5628 50  0000 L CNN
F 2 "" H 2750 5500 50  0001 C CNN
F 3 "" H 2750 5500 50  0001 C CNN
	1    2750 5500
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5F7F3CEB
P 2750 5500
F 0 "#FLG02" H 2750 5575 50  0001 C CNN
F 1 "PWR_FLAG" H 2750 5628 50  0001 L CNN
F 2 "" H 2750 5500 50  0001 C CNN
F 3 "~" H 2750 5500 50  0001 C CNN
	1    2750 5500
	1    0    0    -1  
$EndComp
Connection ~ 2750 5500
$Comp
L Device:LED D1
U 1 1 6094E126
P 4850 2400
F 0 "D1" H 4843 2617 50  0000 C CNN
F 1 "LED" H 4843 2526 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 4850 2400 50  0001 C CNN
F 3 "~" H 4850 2400 50  0001 C CNN
	1    4850 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 6094E5D4
P 4850 3100
F 0 "D2" H 4843 3317 50  0000 C CNN
F 1 "LED" H 4843 3226 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 4850 3100 50  0001 C CNN
F 3 "~" H 4850 3100 50  0001 C CNN
	1    4850 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 6094ED48
P 4900 3850
F 0 "D3" H 4893 4067 50  0000 C CNN
F 1 "LED" H 4893 3976 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 4900 3850 50  0001 C CNN
F 3 "~" H 4900 3850 50  0001 C CNN
	1    4900 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 6094F829
P 5000 2400
F 0 "#PWR0101" H 5000 2250 50  0001 C CNN
F 1 "+5V" V 5015 2528 50  0000 L CNN
F 2 "" H 5000 2400 50  0001 C CNN
F 3 "" H 5000 2400 50  0001 C CNN
	1    5000 2400
	0    1    1    0   
$EndComp
$Comp
L power:+15V #PWR0102
U 1 1 609504FB
P 5000 3100
F 0 "#PWR0102" H 5000 2950 50  0001 C CNN
F 1 "+15V" V 5015 3228 50  0000 L CNN
F 2 "" H 5000 3100 50  0001 C CNN
F 3 "" H 5000 3100 50  0001 C CNN
	1    5000 3100
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR0105
U 1 1 609513CC
P 4500 3850
F 0 "#PWR0105" H 4500 3950 50  0001 C CNN
F 1 "-15V" V 4515 3978 50  0000 L CNN
F 2 "" H 4500 3850 50  0001 C CNN
F 3 "" H 4500 3850 50  0001 C CNN
	1    4500 3850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 6095214C
P 4450 2550
F 0 "R1" H 4520 2596 50  0000 L CNN
F 1 "R" H 4520 2505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4380 2550 50  0001 C CNN
F 3 "~" H 4450 2550 50  0001 C CNN
	1    4450 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60952650
P 4450 3250
F 0 "R2" H 4520 3296 50  0000 L CNN
F 1 "R" H 4520 3205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4380 3250 50  0001 C CNN
F 3 "~" H 4450 3250 50  0001 C CNN
	1    4450 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 60952AD3
P 5250 4000
F 0 "R3" H 5320 4046 50  0000 L CNN
F 1 "R" H 5320 3955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5180 4000 50  0001 C CNN
F 3 "~" H 5250 4000 50  0001 C CNN
	1    5250 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2400 4700 2400
Wire Wire Line
	4700 3100 4450 3100
Wire Wire Line
	4500 3850 4750 3850
Wire Wire Line
	5050 3850 5250 3850
$Comp
L power:GND #PWR0106
U 1 1 60955329
P 5250 4150
F 0 "#PWR0106" H 5250 3900 50  0001 C CNN
F 1 "GND" H 5255 3977 50  0000 C CNN
F 2 "" H 5250 4150 50  0001 C CNN
F 3 "" H 5250 4150 50  0001 C CNN
	1    5250 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 60957D5A
P 4450 3400
F 0 "#PWR0107" H 4450 3150 50  0001 C CNN
F 1 "GND" H 4455 3227 50  0000 C CNN
F 2 "" H 4450 3400 50  0001 C CNN
F 3 "" H 4450 3400 50  0001 C CNN
	1    4450 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 609580F9
P 4450 2700
F 0 "#PWR0108" H 4450 2450 50  0001 C CNN
F 1 "GND" H 4455 2527 50  0000 C CNN
F 2 "" H 4450 2700 50  0001 C CNN
F 3 "" H 4450 2700 50  0001 C CNN
	1    4450 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 6095E3F3
P 1900 1550
F 0 "J2" H 1928 1576 50  0000 L CNN
F 1 "Conn_01x01_Female" H 1928 1485 50  0000 L CNN
F 2 "MountingHole:MountingHole_6.4mm_M6_Pad_TopBottom" H 1900 1550 50  0001 C CNN
F 3 "~" H 1900 1550 50  0001 C CNN
	1    1900 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J4
U 1 1 6095EA79
P 1900 1900
F 0 "J4" H 1928 1926 50  0000 L CNN
F 1 "Conn_01x01_Female" H 1928 1835 50  0000 L CNN
F 2 "MountingHole:MountingHole_6.4mm_M6_Pad_TopBottom" H 1900 1900 50  0001 C CNN
F 3 "~" H 1900 1900 50  0001 C CNN
	1    1900 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J5
U 1 1 6095F0DD
P 1900 2200
F 0 "J5" H 1928 2226 50  0000 L CNN
F 1 "Conn_01x01_Female" H 1928 2135 50  0000 L CNN
F 2 "MountingHole:MountingHole_6.4mm_M6_Pad_TopBottom" H 1900 2200 50  0001 C CNN
F 3 "~" H 1900 2200 50  0001 C CNN
	1    1900 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J6
U 1 1 6095F76E
P 1900 2550
F 0 "J6" H 1928 2576 50  0000 L CNN
F 1 "Conn_01x01_Female" H 1928 2485 50  0000 L CNN
F 2 "MountingHole:MountingHole_6.4mm_M6_Pad_TopBottom" H 1900 2550 50  0001 C CNN
F 3 "~" H 1900 2550 50  0001 C CNN
	1    1900 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 6095FDED
P 1700 1550
F 0 "#PWR0109" H 1700 1400 50  0001 C CNN
F 1 "+5V" V 1715 1678 50  0000 L CNN
F 2 "" H 1700 1550 50  0001 C CNN
F 3 "" H 1700 1550 50  0001 C CNN
	1    1700 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR0110
U 1 1 6096075C
P 1700 1900
F 0 "#PWR0110" H 1700 1750 50  0001 C CNN
F 1 "+15V" V 1715 2028 50  0000 L CNN
F 2 "" H 1700 1900 50  0001 C CNN
F 3 "" H 1700 1900 50  0001 C CNN
	1    1700 1900
	0    -1   -1   0   
$EndComp
$Comp
L power:-15V #PWR0111
U 1 1 6096108A
P 1700 2200
F 0 "#PWR0111" H 1700 2300 50  0001 C CNN
F 1 "-15V" V 1715 2328 50  0000 L CNN
F 2 "" H 1700 2200 50  0001 C CNN
F 3 "" H 1700 2200 50  0001 C CNN
	1    1700 2200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 60961AF3
P 1700 2550
F 0 "#PWR0112" H 1700 2300 50  0001 C CNN
F 1 "GND" V 1705 2422 50  0000 R CNN
F 2 "" H 1700 2550 50  0001 C CNN
F 3 "" H 1700 2550 50  0001 C CNN
	1    1700 2550
	0    1    1    0   
$EndComp
$EndSCHEMATC