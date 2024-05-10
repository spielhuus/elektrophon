EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Audio:PCM5100 U2
U 1 1 601CF0EF
P 2150 2350
F 0 "U2" H 2150 3131 50  0000 C CNN
F 1 "PCM5100" H 2150 3040 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 2100 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/pcm5100.pdf" H 2100 3100 50  0001 C CNN
	1    2150 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 601CFD6C
P 2500 1100
F 0 "C7" H 2615 1146 50  0000 L CNN
F 1 "100n" H 2615 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2538 950 50  0001 C CNN
F 3 "~" H 2500 1100 50  0001 C CNN
	1    2500 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C10
U 1 1 601D04E9
P 2900 1100
F 0 "C10" H 3018 1146 50  0000 L CNN
F 1 "10u" H 3018 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2938 950 50  0001 C CNN
F 3 "~" H 2900 1100 50  0001 C CNN
	1    2900 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 601D6C7B
P 1250 1100
F 0 "C4" H 1365 1146 50  0000 L CNN
F 1 "100n" H 1365 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1288 950 50  0001 C CNN
F 3 "~" H 1250 1100 50  0001 C CNN
	1    1250 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 601D6C81
P 1650 1100
F 0 "C5" H 1768 1146 50  0000 L CNN
F 1 "10u" H 1768 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1688 950 50  0001 C CNN
F 3 "~" H 1650 1100 50  0001 C CNN
	1    1650 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 601D6D8B
P 850 1100
F 0 "C1" H 965 1146 50  0000 L CNN
F 1 "100n" H 965 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 888 950 50  0001 C CNN
F 3 "~" H 850 1100 50  0001 C CNN
	1    850  1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 601D71B6
P 850 1250
F 0 "#PWR0101" H 850 1000 50  0001 C CNN
F 1 "GND" H 855 1077 50  0000 C CNN
F 2 "" H 850 1250 50  0001 C CNN
F 3 "" H 850 1250 50  0001 C CNN
	1    850  1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 601D75B0
P 1250 1250
F 0 "#PWR0102" H 1250 1000 50  0001 C CNN
F 1 "GND" H 1255 1077 50  0000 C CNN
F 2 "" H 1250 1250 50  0001 C CNN
F 3 "" H 1250 1250 50  0001 C CNN
	1    1250 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 601D7841
P 1650 1250
F 0 "#PWR0103" H 1650 1000 50  0001 C CNN
F 1 "GND" H 1655 1077 50  0000 C CNN
F 2 "" H 1650 1250 50  0001 C CNN
F 3 "" H 1650 1250 50  0001 C CNN
	1    1650 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 601D7B28
P 2500 1250
F 0 "#PWR0104" H 2500 1000 50  0001 C CNN
F 1 "GND" H 2505 1077 50  0000 C CNN
F 2 "" H 2500 1250 50  0001 C CNN
F 3 "" H 2500 1250 50  0001 C CNN
	1    2500 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 601D7E85
P 2900 1250
F 0 "#PWR0105" H 2900 1000 50  0001 C CNN
F 1 "GND" H 2905 1077 50  0000 C CNN
F 2 "" H 2900 1250 50  0001 C CNN
F 3 "" H 2900 1250 50  0001 C CNN
	1    2900 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  950  850  850 
Wire Wire Line
	850  850  1250 850 
Wire Wire Line
	1650 850  1650 950 
Wire Wire Line
	1250 950  1250 850 
Connection ~ 1250 850 
Wire Wire Line
	1250 850  1650 850 
Wire Wire Line
	2500 950  2500 850 
Wire Wire Line
	2500 850  2900 850 
Wire Wire Line
	2900 850  2900 950 
Wire Wire Line
	1650 850  2050 850 
Wire Wire Line
	2050 850  2050 1500
Connection ~ 1650 850 
Wire Wire Line
	2050 1500 2250 1500
Wire Wire Line
	2250 1500 2250 1750
Connection ~ 2050 1500
Wire Wire Line
	2050 1500 2050 1750
Wire Wire Line
	2500 850  2150 850 
Wire Wire Line
	2150 850  2150 1750
Connection ~ 2500 850 
$Comp
L power:+3.3V #PWR0106
U 1 1 601D9278
P 1250 850
F 0 "#PWR0106" H 1250 700 50  0001 C CNN
F 1 "+3.3V" H 1265 1023 50  0000 C CNN
F 2 "" H 1250 850 50  0001 C CNN
F 3 "" H 1250 850 50  0001 C CNN
	1    1250 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0107
U 1 1 601D96FA
P 2500 850
F 0 "#PWR0107" H 2500 700 50  0001 C CNN
F 1 "+3.3V" H 2515 1023 50  0000 C CNN
F 2 "" H 2500 850 50  0001 C CNN
F 3 "" H 2500 850 50  0001 C CNN
	1    2500 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 601D9D71
P 2900 2400
F 0 "C11" H 3015 2446 50  0000 L CNN
F 1 "2.2u" H 3015 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2938 2250 50  0001 C CNN
F 3 "~" H 2900 2400 50  0001 C CNN
	1    2900 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2250 2900 2250
Wire Wire Line
	2900 2550 2650 2550
Wire Wire Line
	2050 3050 2050 3150
Wire Wire Line
	2050 3150 2150 3150
Wire Wire Line
	2250 3150 2250 3050
Wire Wire Line
	2150 3050 2150 3150
Connection ~ 2150 3150
Wire Wire Line
	2150 3150 2250 3150
$Comp
L power:GND #PWR0108
U 1 1 601DB92E
P 2150 3150
F 0 "#PWR0108" H 2150 2900 50  0001 C CNN
F 1 "GND" H 2155 2977 50  0000 C CNN
F 2 "" H 2150 3150 50  0001 C CNN
F 3 "" H 2150 3150 50  0001 C CNN
	1    2150 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 601DBE67
P 2700 3050
F 0 "C8" H 2815 3096 50  0000 L CNN
F 1 "2.2u" H 2815 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2738 2900 50  0001 C CNN
F 3 "~" H 2700 3050 50  0001 C CNN
	1    2700 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 601DC45F
P 2700 3200
F 0 "#PWR0109" H 2700 2950 50  0001 C CNN
F 1 "GND" H 2705 3027 50  0000 C CNN
F 2 "" H 2700 3200 50  0001 C CNN
F 3 "" H 2700 3200 50  0001 C CNN
	1    2700 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2850 2700 2850
Wire Wire Line
	2700 2850 2700 2900
$Comp
L Device:C C12
U 1 1 601DD020
P 3100 3050
F 0 "C12" H 3215 3096 50  0000 L CNN
F 1 "100n" H 3215 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3138 2900 50  0001 C CNN
F 3 "~" H 3100 3050 50  0001 C CNN
	1    3100 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 601DD278
P 3100 3200
F 0 "#PWR0110" H 3100 2950 50  0001 C CNN
F 1 "GND" H 3105 3027 50  0000 C CNN
F 2 "" H 3100 3200 50  0001 C CNN
F 3 "" H 3100 3200 50  0001 C CNN
	1    3100 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2900 3100 2750
Wire Wire Line
	3100 2750 2650 2750
Text Label 1650 2050 2    50   ~ 0
DAC_DIN
Text Label 1650 1950 2    50   ~ 0
DAC_LRCK
Text Label 1650 2150 2    50   ~ 0
DAC_DCK
$Comp
L power:+3.3V #PWR0111
U 1 1 601DE903
P 900 2300
F 0 "#PWR0111" H 900 2150 50  0001 C CNN
F 1 "+3.3V" H 915 2473 50  0000 C CNN
F 2 "" H 900 2300 50  0001 C CNN
F 3 "" H 900 2300 50  0001 C CNN
	1    900  2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2450 900  2450
Wire Wire Line
	900  2450 900  2300
Wire Wire Line
	1650 2650 900  2650
Wire Wire Line
	900  2650 900  2450
Connection ~ 900  2450
$Comp
L power:GND #PWR0112
U 1 1 601DFDCB
P 1000 2850
F 0 "#PWR0112" H 1000 2600 50  0001 C CNN
F 1 "GND" H 1005 2677 50  0000 C CNN
F 2 "" H 1000 2850 50  0001 C CNN
F 3 "" H 1000 2850 50  0001 C CNN
	1    1000 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2850 1000 2750
Wire Wire Line
	1000 2250 1650 2250
Wire Wire Line
	1650 2550 1000 2550
Connection ~ 1000 2550
Wire Wire Line
	1000 2550 1000 2250
Wire Wire Line
	1650 2750 1000 2750
Connection ~ 1000 2750
Wire Wire Line
	1000 2750 1000 2550
$Comp
L Device:Crystal Y2
U 1 1 5EA338CD
P 9750 3050
AR Path="/5EA338CD" Ref="Y2"  Part="1" 
AR Path="/5E9FE2D3/5EA338CD" Ref="Y2"  Part="1" 
F 0 "Y2" V 9704 3181 50  0000 L CNN
F 1 "32.768K" V 9795 3181 50  0000 L CNN
F 2 "Crystal:Crystal_Round_D2.0mm_Vertical" H 9750 3050 50  0001 C CNN
F 3 "~" H 9750 3050 50  0001 C CNN
	1    9750 3050
	0    1    1    0   
$EndComp
$Comp
L Device:C C19
U 1 1 5EA338D3
P 9350 2800
AR Path="/5EA338D3" Ref="C19"  Part="1" 
AR Path="/5E9FE2D3/5EA338D3" Ref="C12"  Part="1" 
F 0 "C19" V 9098 2800 50  0000 C CNN
F 1 "20p" V 9189 2800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9388 2650 50  0001 C CNN
F 3 "~" H 9350 2800 50  0001 C CNN
	1    9350 2800
	0    1    1    0   
$EndComp
$Comp
L Device:C C20
U 1 1 5EA338D9
P 9350 3300
AR Path="/5EA338D9" Ref="C20"  Part="1" 
AR Path="/5E9FE2D3/5EA338D9" Ref="C13"  Part="1" 
F 0 "C20" V 9098 3300 50  0000 C CNN
F 1 "20p" V 9189 3300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9388 3150 50  0001 C CNN
F 3 "~" H 9350 3300 50  0001 C CNN
	1    9350 3300
	0    1    1    0   
$EndComp
Text Label 10300 2800 0    50   ~ 0
OSC32_IN
Text Label 10300 3300 0    50   ~ 0
OSC32_OUT
Wire Wire Line
	9500 3300 9750 3300
Wire Wire Line
	9500 2800 9750 2800
Wire Wire Line
	9750 2900 9750 2800
Connection ~ 9750 2800
Wire Wire Line
	9750 2800 10300 2800
Wire Wire Line
	9750 3200 9750 3300
Connection ~ 9750 3300
Wire Wire Line
	9750 3300 10300 3300
$Comp
L Device:C C21
U 1 1 5EA338E9
P 9350 3800
AR Path="/5EA338E9" Ref="C21"  Part="1" 
AR Path="/5E9FE2D3/5EA338E9" Ref="C14"  Part="1" 
F 0 "C21" V 9098 3800 50  0000 C CNN
F 1 "20p" V 9189 3800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9388 3650 50  0001 C CNN
F 3 "~" H 9350 3800 50  0001 C CNN
	1    9350 3800
	0    1    1    0   
$EndComp
$Comp
L Device:C C22
U 1 1 5EA338EF
P 9350 4300
AR Path="/5EA338EF" Ref="C22"  Part="1" 
AR Path="/5E9FE2D3/5EA338EF" Ref="C15"  Part="1" 
F 0 "C22" V 9098 4300 50  0000 C CNN
F 1 "20p" V 9189 4300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9388 4150 50  0001 C CNN
F 3 "~" H 9350 4300 50  0001 C CNN
	1    9350 4300
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5EA338F5
P 9700 4050
AR Path="/5EA338F5" Ref="Y1"  Part="1" 
AR Path="/5E9FE2D3/5EA338F5" Ref="Y1"  Part="1" 
F 0 "Y1" V 9654 4181 50  0000 L CNN
F 1 "8MHz" V 9745 4181 50  0000 L CNN
F 2 "Crystal:Crystal_Round_D3.0mm_Vertical" H 9700 4050 50  0001 C CNN
F 3 "~" H 9700 4050 50  0001 C CNN
	1    9700 4050
	0    1    1    0   
$EndComp
Text Label 10300 3800 0    50   ~ 0
OSCIN
Wire Wire Line
	10300 3800 10100 3800
Text Label 10300 4300 0    50   ~ 0
OSCOUT
Wire Wire Line
	10300 4300 10100 4300
$Comp
L Device:R R4
U 1 1 5EA338FF
P 10100 4050
AR Path="/5EA338FF" Ref="R4"  Part="1" 
AR Path="/5E9FE2D3/5EA338FF" Ref="R5"  Part="1" 
F 0 "R4" H 10170 4096 50  0000 L CNN
F 1 "1M" H 10170 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10030 4050 50  0001 C CNN
F 3 "~" H 10100 4050 50  0001 C CNN
	1    10100 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3900 10100 3800
Connection ~ 10100 3800
Wire Wire Line
	10100 3800 9700 3800
Wire Wire Line
	9700 3900 9700 3800
Connection ~ 9700 3800
Wire Wire Line
	9700 3800 9500 3800
Wire Wire Line
	9700 4200 9700 4300
Connection ~ 9700 4300
Wire Wire Line
	9700 4300 9500 4300
Wire Wire Line
	10100 4200 10100 4300
Connection ~ 10100 4300
Wire Wire Line
	10100 4300 9700 4300
$Comp
L power:GND #PWR0113
U 1 1 5EA33911
P 9150 4400
AR Path="/5EA33911" Ref="#PWR0113"  Part="1" 
AR Path="/5E9FE2D3/5EA33911" Ref="#PWR042"  Part="1" 
F 0 "#PWR0113" H 9150 4150 50  0001 C CNN
F 1 "GND" H 9155 4227 50  0000 C CNN
F 2 "" H 9150 4400 50  0001 C CNN
F 3 "" H 9150 4400 50  0001 C CNN
	1    9150 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 4400 9150 4300
Wire Wire Line
	9150 2800 9200 2800
Wire Wire Line
	9200 3300 9150 3300
Connection ~ 9150 3300
Wire Wire Line
	9150 3300 9150 2800
Wire Wire Line
	9200 3800 9150 3800
Connection ~ 9150 3800
Wire Wire Line
	9150 3800 9150 3300
Wire Wire Line
	9200 4300 9150 4300
Connection ~ 9150 4300
Wire Wire Line
	9150 4300 9150 3800
Text Label 4100 2400 2    50   ~ 0
OSCIN
Text Label 4100 2500 2    50   ~ 0
OSCOUT
Text Label 6450 5300 0    50   ~ 0
PC14
Text Label 6450 5400 0    50   ~ 0
PC15
$Comp
L Device:CP C2
U 1 1 5EA33932
P 850 6600
AR Path="/5EA33932" Ref="C2"  Part="1" 
AR Path="/5E9FE2D3/5EA33932" Ref="C3"  Part="1" 
F 0 "C2" H 968 6646 50  0000 L CNN
F 1 "100u" H 968 6555 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-15_AVX-H_Pad1.50x2.35mm_HandSolder" H 888 6450 50  0001 C CNN
F 3 "~" H 850 6600 50  0001 C CNN
	1    850  6600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5EA33938
P 1200 6600
AR Path="/5EA33938" Ref="C3"  Part="1" 
AR Path="/5E9FE2D3/5EA33938" Ref="C4"  Part="1" 
F 0 "C3" V 948 6600 50  0000 C CNN
F 1 "100n" V 1039 6600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1238 6450 50  0001 C CNN
F 3 "~" H 1200 6600 50  0001 C CNN
	1    1200 6600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5EA3393E
P 850 6750
AR Path="/5EA3393E" Ref="#PWR0114"  Part="1" 
AR Path="/5E9FE2D3/5EA3393E" Ref="#PWR020"  Part="1" 
F 0 "#PWR0114" H 850 6500 50  0001 C CNN
F 1 "GND" H 855 6577 50  0000 C CNN
F 2 "" H 850 6750 50  0001 C CNN
F 3 "" H 850 6750 50  0001 C CNN
	1    850  6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5EA33944
P 1200 6750
AR Path="/5EA33944" Ref="#PWR0115"  Part="1" 
AR Path="/5E9FE2D3/5EA33944" Ref="#PWR021"  Part="1" 
F 0 "#PWR0115" H 1200 6500 50  0001 C CNN
F 1 "GND" H 1205 6577 50  0000 C CNN
F 2 "" H 1200 6750 50  0001 C CNN
F 3 "" H 1200 6750 50  0001 C CNN
	1    1200 6750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 5EA3394A
P 850 6450
AR Path="/5EA3394A" Ref="#PWR0116"  Part="1" 
AR Path="/5E9FE2D3/5EA3394A" Ref="#PWR019"  Part="1" 
F 0 "#PWR0116" H 850 6300 50  0001 C CNN
F 1 "+5V" H 865 6623 50  0000 C CNN
F 2 "" H 850 6450 50  0001 C CNN
F 3 "" H 850 6450 50  0001 C CNN
	1    850  6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6450 1200 6450
Connection ~ 850  6450
Connection ~ 1200 6450
Wire Wire Line
	1200 6450 850  6450
$Comp
L power:GND #PWR0117
U 1 1 5EA33954
P 1800 6750
AR Path="/5EA33954" Ref="#PWR0117"  Part="1" 
AR Path="/5E9FE2D3/5EA33954" Ref="#PWR022"  Part="1" 
F 0 "#PWR0117" H 1800 6500 50  0001 C CNN
F 1 "GND" H 1805 6577 50  0000 C CNN
F 2 "" H 1800 6750 50  0001 C CNN
F 3 "" H 1800 6750 50  0001 C CNN
	1    1800 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C6
U 1 1 5EA3395A
P 2250 6600
AR Path="/5EA3395A" Ref="C6"  Part="1" 
AR Path="/5E9FE2D3/5EA3395A" Ref="C5"  Part="1" 
F 0 "C6" H 2368 6646 50  0000 L CNN
F 1 "330u" H 2368 6555 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-6032-20_AVX-F_Pad2.25x2.35mm_HandSolder" H 2288 6450 50  0001 C CNN
F 3 "~" H 2250 6600 50  0001 C CNN
	1    2250 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5EA33960
P 2700 6600
AR Path="/5EA33960" Ref="C9"  Part="1" 
AR Path="/5E9FE2D3/5EA33960" Ref="C6"  Part="1" 
F 0 "C9" V 2448 6600 50  0000 C CNN
F 1 "100n" V 2539 6600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2738 6450 50  0001 C CNN
F 3 "~" H 2700 6600 50  0001 C CNN
	1    2700 6600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5EA33966
P 2250 6750
AR Path="/5EA33966" Ref="#PWR0118"  Part="1" 
AR Path="/5E9FE2D3/5EA33966" Ref="#PWR024"  Part="1" 
F 0 "#PWR0118" H 2250 6500 50  0001 C CNN
F 1 "GND" H 2255 6577 50  0000 C CNN
F 2 "" H 2250 6750 50  0001 C CNN
F 3 "" H 2250 6750 50  0001 C CNN
	1    2250 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5EA3396C
P 2700 6750
AR Path="/5EA3396C" Ref="#PWR0119"  Part="1" 
AR Path="/5E9FE2D3/5EA3396C" Ref="#PWR027"  Part="1" 
F 0 "#PWR0119" H 2700 6500 50  0001 C CNN
F 1 "GND" H 2705 6577 50  0000 C CNN
F 2 "" H 2700 6750 50  0001 C CNN
F 3 "" H 2700 6750 50  0001 C CNN
	1    2700 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 6450 2250 6450
Connection ~ 2250 6450
Wire Wire Line
	2250 6450 2700 6450
$Comp
L power:+3.3V #PWR0120
U 1 1 5EA33975
P 2700 6450
AR Path="/5EA33975" Ref="#PWR0120"  Part="1" 
AR Path="/5E9FE2D3/5EA33975" Ref="#PWR026"  Part="1" 
F 0 "#PWR0120" H 2700 6300 50  0001 C CNN
F 1 "+3.3V" H 2715 6623 50  0000 C CNN
F 2 "" H 2700 6450 50  0001 C CNN
F 3 "" H 2700 6450 50  0001 C CNN
	1    2700 6450
	1    0    0    -1  
$EndComp
Connection ~ 2700 6450
$Comp
L power:+3.3V #PWR0121
U 1 1 5EA3397C
P 5000 850
AR Path="/5EA3397C" Ref="#PWR0121"  Part="1" 
AR Path="/5E9FE2D3/5EA3397C" Ref="#PWR025"  Part="1" 
F 0 "#PWR0121" H 5000 700 50  0001 C CNN
F 1 "+3.3V" H 5015 1023 50  0000 C CNN
F 2 "" H 5000 850 50  0001 C CNN
F 3 "" H 5000 850 50  0001 C CNN
	1    5000 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 850  4700 900 
Wire Wire Line
	4800 900  4800 850 
Connection ~ 4800 850 
Wire Wire Line
	4800 850  4700 850 
Wire Wire Line
	4900 900  4900 850 
Connection ~ 4900 850 
Wire Wire Line
	4900 850  4800 850 
Wire Wire Line
	5000 900  5000 850 
Wire Wire Line
	5000 850  4900 850 
Connection ~ 5000 850 
$Comp
L Device:C C13
U 1 1 5EA3398C
P 3250 6600
AR Path="/5EA3398C" Ref="C13"  Part="1" 
AR Path="/5E9FE2D3/5EA3398C" Ref="C7"  Part="1" 
F 0 "C13" V 2998 6600 50  0000 C CNN
F 1 "10n" V 3089 6600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3288 6450 50  0001 C CNN
F 3 "~" H 3250 6600 50  0001 C CNN
	1    3250 6600
	-1   0    0    1   
$EndComp
$Comp
L Device:C C15
U 1 1 5EA33992
P 4150 6600
AR Path="/5EA33992" Ref="C15"  Part="1" 
AR Path="/5E9FE2D3/5EA33992" Ref="C8"  Part="1" 
F 0 "C15" V 3898 6600 50  0000 C CNN
F 1 "100n" V 3989 6600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4188 6450 50  0001 C CNN
F 3 "~" H 4150 6600 50  0001 C CNN
	1    4150 6600
	-1   0    0    1   
$EndComp
$Comp
L Device:C C16
U 1 1 5EA33998
P 4550 6600
AR Path="/5EA33998" Ref="C16"  Part="1" 
AR Path="/5E9FE2D3/5EA33998" Ref="C9"  Part="1" 
F 0 "C16" V 4298 6600 50  0000 C CNN
F 1 "100n" V 4389 6600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4588 6450 50  0001 C CNN
F 3 "~" H 4550 6600 50  0001 C CNN
	1    4550 6600
	-1   0    0    1   
$EndComp
$Comp
L Device:C C17
U 1 1 5EA3399E
P 4950 6600
AR Path="/5EA3399E" Ref="C17"  Part="1" 
AR Path="/5E9FE2D3/5EA3399E" Ref="C10"  Part="1" 
F 0 "C17" V 4698 6600 50  0000 C CNN
F 1 "100n" V 4789 6600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4988 6450 50  0001 C CNN
F 3 "~" H 4950 6600 50  0001 C CNN
	1    4950 6600
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0122
U 1 1 5EA339A4
P 3250 6450
AR Path="/5EA339A4" Ref="#PWR0122"  Part="1" 
AR Path="/5E9FE2D3/5EA339A4" Ref="#PWR028"  Part="1" 
F 0 "#PWR0122" H 3250 6300 50  0001 C CNN
F 1 "+3.3V" H 3265 6623 50  0000 C CNN
F 2 "" H 3250 6450 50  0001 C CNN
F 3 "" H 3250 6450 50  0001 C CNN
	1    3250 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0123
U 1 1 5EA339AA
P 4150 6450
AR Path="/5EA339AA" Ref="#PWR0123"  Part="1" 
AR Path="/5E9FE2D3/5EA339AA" Ref="#PWR030"  Part="1" 
F 0 "#PWR0123" H 4150 6300 50  0001 C CNN
F 1 "+3.3V" H 4165 6623 50  0000 C CNN
F 2 "" H 4150 6450 50  0001 C CNN
F 3 "" H 4150 6450 50  0001 C CNN
	1    4150 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0124
U 1 1 5EA339B0
P 4550 6450
AR Path="/5EA339B0" Ref="#PWR0124"  Part="1" 
AR Path="/5E9FE2D3/5EA339B0" Ref="#PWR032"  Part="1" 
F 0 "#PWR0124" H 4550 6300 50  0001 C CNN
F 1 "+3.3V" H 4565 6623 50  0000 C CNN
F 2 "" H 4550 6450 50  0001 C CNN
F 3 "" H 4550 6450 50  0001 C CNN
	1    4550 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0125
U 1 1 5EA339B6
P 4950 6450
AR Path="/5EA339B6" Ref="#PWR0125"  Part="1" 
AR Path="/5E9FE2D3/5EA339B6" Ref="#PWR034"  Part="1" 
F 0 "#PWR0125" H 4950 6300 50  0001 C CNN
F 1 "+3.3V" H 4965 6623 50  0000 C CNN
F 2 "" H 4950 6450 50  0001 C CNN
F 3 "" H 4950 6450 50  0001 C CNN
	1    4950 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5EA339BC
P 3250 6750
AR Path="/5EA339BC" Ref="#PWR0126"  Part="1" 
AR Path="/5E9FE2D3/5EA339BC" Ref="#PWR029"  Part="1" 
F 0 "#PWR0126" H 3250 6500 50  0001 C CNN
F 1 "GND" H 3255 6577 50  0000 C CNN
F 2 "" H 3250 6750 50  0001 C CNN
F 3 "" H 3250 6750 50  0001 C CNN
	1    3250 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5EA339C2
P 4150 6750
AR Path="/5EA339C2" Ref="#PWR0127"  Part="1" 
AR Path="/5E9FE2D3/5EA339C2" Ref="#PWR031"  Part="1" 
F 0 "#PWR0127" H 4150 6500 50  0001 C CNN
F 1 "GND" H 4155 6577 50  0000 C CNN
F 2 "" H 4150 6750 50  0001 C CNN
F 3 "" H 4150 6750 50  0001 C CNN
	1    4150 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 5EA339C8
P 4550 6750
AR Path="/5EA339C8" Ref="#PWR0128"  Part="1" 
AR Path="/5E9FE2D3/5EA339C8" Ref="#PWR033"  Part="1" 
F 0 "#PWR0128" H 4550 6500 50  0001 C CNN
F 1 "GND" H 4555 6577 50  0000 C CNN
F 2 "" H 4550 6750 50  0001 C CNN
F 3 "" H 4550 6750 50  0001 C CNN
	1    4550 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 5EA339CE
P 4950 6750
AR Path="/5EA339CE" Ref="#PWR0129"  Part="1" 
AR Path="/5E9FE2D3/5EA339CE" Ref="#PWR035"  Part="1" 
F 0 "#PWR0129" H 4950 6500 50  0001 C CNN
F 1 "GND" H 4955 6577 50  0000 C CNN
F 2 "" H 4950 6750 50  0001 C CNN
F 3 "" H 4950 6750 50  0001 C CNN
	1    4950 6750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5EA33A0B
P 9300 5750
AR Path="/5EA33A0B" Ref="J2"  Part="1" 
AR Path="/5E9FE2D3/5EA33A0B" Ref="J4"  Part="1" 
F 0 "J2" H 9408 6031 50  0000 C CNN
F 1 "SWD" H 9408 5940 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 9300 5750 50  0001 C CNN
F 3 "~" H 9300 5750 50  0001 C CNN
	1    9300 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 5EA33A11
P 9600 6000
AR Path="/5EA33A11" Ref="#PWR0130"  Part="1" 
AR Path="/5E9FE2D3/5EA33A11" Ref="#PWR039"  Part="1" 
F 0 "#PWR0130" H 9600 5750 50  0001 C CNN
F 1 "GND" H 9605 5827 50  0000 C CNN
F 2 "" H 9600 6000 50  0001 C CNN
F 3 "" H 9600 6000 50  0001 C CNN
	1    9600 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5950 9600 5950
Wire Wire Line
	9600 5950 9600 6000
Wire Wire Line
	9500 5650 9600 5650
Wire Wire Line
	9600 5650 9600 5600
Text Label 9900 5850 0    50   ~ 0
SWDCLK
$Comp
L Device:R R3
U 1 1 5EA33A1C
P 9800 6000
AR Path="/5EA33A1C" Ref="R3"  Part="1" 
AR Path="/5E9FE2D3/5EA33A1C" Ref="R2"  Part="1" 
F 0 "R3" H 9730 5954 50  0000 R CNN
F 1 "10k" H 9730 6045 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9730 6000 50  0001 C CNN
F 3 "~" H 9800 6000 50  0001 C CNN
	1    9800 6000
	-1   0    0    1   
$EndComp
Wire Wire Line
	9900 5850 9800 5850
Connection ~ 9800 5850
Wire Wire Line
	9800 5850 9500 5850
Text Label 10400 5750 0    50   ~ 0
SWDIO
$Comp
L Device:R R5
U 1 1 5EA33A26
P 10250 5900
AR Path="/5EA33A26" Ref="R5"  Part="1" 
AR Path="/5E9FE2D3/5EA33A26" Ref="R3"  Part="1" 
F 0 "R5" H 10180 5854 50  0000 R CNN
F 1 "10k" H 10180 5945 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10180 5900 50  0001 C CNN
F 3 "~" H 10250 5900 50  0001 C CNN
	1    10250 5900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 5EA33A2C
P 10250 6050
AR Path="/5EA33A2C" Ref="#PWR0131"  Part="1" 
AR Path="/5E9FE2D3/5EA33A2C" Ref="#PWR041"  Part="1" 
F 0 "#PWR0131" H 10250 5800 50  0001 C CNN
F 1 "GND" H 10255 5877 50  0000 C CNN
F 2 "" H 10250 6050 50  0001 C CNN
F 3 "" H 10250 6050 50  0001 C CNN
	1    10250 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5750 10250 5750
Connection ~ 10250 5750
Wire Wire Line
	10250 5750 10400 5750
$Comp
L power:+3.3V #PWR0132
U 1 1 5EA33A35
P 9600 5600
AR Path="/5EA33A35" Ref="#PWR0132"  Part="1" 
AR Path="/5E9FE2D3/5EA33A35" Ref="#PWR038"  Part="1" 
F 0 "#PWR0132" H 9600 5450 50  0001 C CNN
F 1 "+3.3V" H 9615 5773 50  0000 C CNN
F 2 "" H 9600 5600 50  0001 C CNN
F 3 "" H 9600 5600 50  0001 C CNN
	1    9600 5600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0133
U 1 1 5EA33A3B
P 9800 6150
AR Path="/5EA33A3B" Ref="#PWR0133"  Part="1" 
AR Path="/5E9FE2D3/5EA33A3B" Ref="#PWR040"  Part="1" 
F 0 "#PWR0133" H 9800 6000 50  0001 C CNN
F 1 "+3.3V" H 9815 6323 50  0000 C CNN
F 2 "" H 9800 6150 50  0001 C CNN
F 3 "" H 9800 6150 50  0001 C CNN
	1    9800 6150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 5EA33A43
P 4450 4600
AR Path="/5EA33A43" Ref="#PWR0134"  Part="1" 
AR Path="/5E9FE2D3/5EA33A43" Ref="#PWR023"  Part="1" 
F 0 "#PWR0134" H 4450 4350 50  0001 C CNN
F 1 "GND" H 4455 4427 50  0000 C CNN
F 2 "" H 4450 4600 50  0001 C CNN
F 3 "" H 4450 4600 50  0001 C CNN
	1    4450 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4600 5000 4500
Wire Wire Line
	4700 4500 4700 4600
Wire Wire Line
	4700 4600 4800 4600
Wire Wire Line
	4800 4500 4800 4600
Connection ~ 4800 4600
Wire Wire Line
	4800 4600 4900 4600
Wire Wire Line
	4900 4500 4900 4600
Connection ~ 4900 4600
Wire Wire Line
	4900 4600 5000 4600
$Comp
L Switch:SW_Push SW1
U 1 1 5EA33A54
P 7450 1550
AR Path="/5EA33A54" Ref="SW1"  Part="1" 
AR Path="/5E9FE2D3/5EA33A54" Ref="SW1"  Part="1" 
F 0 "SW1" V 7496 1502 50  0000 R CNN
F 1 "SW_Push" V 7405 1502 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 7450 1750 50  0001 C CNN
F 3 "~" H 7450 1750 50  0001 C CNN
	1    7450 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C18
U 1 1 5EA33A5A
P 8000 1550
AR Path="/5EA33A5A" Ref="C18"  Part="1" 
AR Path="/5E9FE2D3/5EA33A5A" Ref="C11"  Part="1" 
F 0 "C18" V 7748 1550 50  0000 C CNN
F 1 "100n" V 7839 1550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8038 1400 50  0001 C CNN
F 3 "~" H 8000 1550 50  0001 C CNN
	1    8000 1550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 5EA33A60
P 8000 1750
AR Path="/5EA33A60" Ref="#PWR0135"  Part="1" 
AR Path="/5E9FE2D3/5EA33A60" Ref="#PWR037"  Part="1" 
F 0 "#PWR0135" H 8000 1500 50  0001 C CNN
F 1 "GND" H 8005 1577 50  0000 C CNN
F 2 "" H 8000 1750 50  0001 C CNN
F 3 "" H 8000 1750 50  0001 C CNN
	1    8000 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1750 7450 1750
Wire Wire Line
	8000 1750 8000 1700
Connection ~ 8000 1750
Wire Wire Line
	7450 1350 8000 1350
Wire Wire Line
	8000 1350 8000 1400
$Comp
L Device:R R1
U 1 1 5EA33A6B
P 8000 1150
AR Path="/5EA33A6B" Ref="R1"  Part="1" 
AR Path="/5E9FE2D3/5EA33A6B" Ref="R1"  Part="1" 
F 0 "R1" H 7930 1104 50  0000 R CNN
F 1 "10k" H 7930 1195 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7930 1150 50  0001 C CNN
F 3 "~" H 8000 1150 50  0001 C CNN
	1    8000 1150
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0136
U 1 1 5EA33A71
P 8000 1000
AR Path="/5EA33A71" Ref="#PWR0136"  Part="1" 
AR Path="/5E9FE2D3/5EA33A71" Ref="#PWR036"  Part="1" 
F 0 "#PWR0136" H 8000 850 50  0001 C CNN
F 1 "+3.3V" H 8015 1173 50  0000 C CNN
F 2 "" H 8000 1000 50  0001 C CNN
F 3 "" H 8000 1000 50  0001 C CNN
	1    8000 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1300 8000 1350
Connection ~ 8000 1350
Text Label 8300 1350 0    50   ~ 0
NRST
Wire Wire Line
	8300 1350 8000 1350
$Comp
L power:+3.3V #PWR0137
U 1 1 5EA33A9C
P 10600 1150
AR Path="/5EA33A9C" Ref="#PWR0137"  Part="1" 
AR Path="/5E9FE2D3/5EA33A9C" Ref="#PWR046"  Part="1" 
F 0 "#PWR0137" H 10600 1000 50  0001 C CNN
F 1 "+3.3V" H 10615 1323 50  0000 C CNN
F 2 "" H 10600 1150 50  0001 C CNN
F 3 "" H 10600 1150 50  0001 C CNN
	1    10600 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 1150 10600 1200
Wire Wire Line
	10600 1200 10150 1200
$Comp
L power:+3.3V #PWR0138
U 1 1 5EA33AA4
P 9200 1150
AR Path="/5EA33AA4" Ref="#PWR0138"  Part="1" 
AR Path="/5E9FE2D3/5EA33AA4" Ref="#PWR043"  Part="1" 
F 0 "#PWR0138" H 9200 1000 50  0001 C CNN
F 1 "+3.3V" H 9215 1323 50  0000 C CNN
F 2 "" H 9200 1150 50  0001 C CNN
F 3 "" H 9200 1150 50  0001 C CNN
	1    9200 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1150 9200 1200
Wire Wire Line
	9200 1200 9650 1200
$Comp
L power:GND #PWR0139
U 1 1 5EA33AAC
P 9650 1400
AR Path="/5EA33AAC" Ref="#PWR0139"  Part="1" 
AR Path="/5E9FE2D3/5EA33AAC" Ref="#PWR044"  Part="1" 
F 0 "#PWR0139" H 9650 1150 50  0001 C CNN
F 1 "GND" H 9655 1227 50  0000 C CNN
F 2 "" H 9650 1400 50  0001 C CNN
F 3 "" H 9650 1400 50  0001 C CNN
	1    9650 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0140
U 1 1 5EA33AB2
P 10150 1400
AR Path="/5EA33AB2" Ref="#PWR0140"  Part="1" 
AR Path="/5E9FE2D3/5EA33AB2" Ref="#PWR045"  Part="1" 
F 0 "#PWR0140" H 10150 1150 50  0001 C CNN
F 1 "GND" H 10155 1227 50  0000 C CNN
F 2 "" H 10150 1400 50  0001 C CNN
F 3 "" H 10150 1400 50  0001 C CNN
	1    10150 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5EA33AB8
P 10350 1450
AR Path="/5EA33AB8" Ref="R6"  Part="1" 
AR Path="/5E9FE2D3/5EA33AB8" Ref="R6"  Part="1" 
F 0 "R6" H 10280 1404 50  0000 R CNN
F 1 "100k" H 10280 1495 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10280 1450 50  0001 C CNN
F 3 "~" H 10350 1450 50  0001 C CNN
	1    10350 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	10350 1300 10150 1300
$Comp
L Device:R R2
U 1 1 5EA33ABF
P 9350 1450
AR Path="/5EA33ABF" Ref="R2"  Part="1" 
AR Path="/5E9FE2D3/5EA33ABF" Ref="R4"  Part="1" 
F 0 "R2" H 9280 1404 50  0000 R CNN
F 1 "100k" H 9280 1495 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9280 1450 50  0001 C CNN
F 3 "~" H 9350 1450 50  0001 C CNN
	1    9350 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	9650 1300 9350 1300
Text Label 10350 1600 3    50   ~ 0
BOOT1
Text Label 9350 1600 3    50   ~ 0
BOOT0
$Comp
L Device:C C14
U 1 1 5EAC592E
P 3700 6600
AR Path="/5EAC592E" Ref="C14"  Part="1" 
AR Path="/5E9FE2D3/5EAC592E" Ref="C25"  Part="1" 
F 0 "C14" V 3448 6600 50  0000 C CNN
F 1 "1u" V 3539 6600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3738 6450 50  0001 C CNN
F 3 "~" H 3700 6600 50  0001 C CNN
	1    3700 6600
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0141
U 1 1 5EAC5EE9
P 3700 6450
AR Path="/5EAC5EE9" Ref="#PWR0141"  Part="1" 
AR Path="/5E9FE2D3/5EAC5EE9" Ref="#PWR04"  Part="1" 
F 0 "#PWR0141" H 3700 6300 50  0001 C CNN
F 1 "+3.3V" H 3715 6623 50  0000 C CNN
F 2 "" H 3700 6450 50  0001 C CNN
F 3 "" H 3700 6450 50  0001 C CNN
	1    3700 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0142
U 1 1 5EAC6183
P 3700 6750
AR Path="/5EAC6183" Ref="#PWR0142"  Part="1" 
AR Path="/5E9FE2D3/5EAC6183" Ref="#PWR076"  Part="1" 
F 0 "#PWR0142" H 3700 6500 50  0001 C CNN
F 1 "GND" H 3705 6577 50  0000 C CNN
F 2 "" H 3700 6750 50  0001 C CNN
F 3 "" H 3700 6750 50  0001 C CNN
	1    3700 6750
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U1
U 1 1 5EAECB6F
P 1800 6450
F 0 "U1" H 1800 6692 50  0000 C CNN
F 1 "AMS1117-3.3" H 1800 6601 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1800 6650 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 1900 6200 50  0001 C CNN
	1    1800 6450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J5
U 1 1 5EBB3828
P 9850 1300
F 0 "J5" H 9900 1617 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 9900 1526 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 9850 1300 50  0001 C CNN
F 3 "~" H 9850 1300 50  0001 C CNN
	1    9850 1300
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32F7:STM32F732RETx U3
U 1 1 6061C872
P 4800 2700
F 0 "U3" H 4750 4681 50  0000 C CNN
F 1 "STM32F732RETx" H 4750 4590 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 4200 1000 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00330507.pdf" H 4800 2700 50  0001 C CNN
	1    4800 2700
	1    0    0    -1  
$EndComp
NoConn ~ 4600 900 
Text Label 2650 1950 0    50   ~ 0
OUT_L
Text Label 2650 2050 0    50   ~ 0
OUT_R
Text Label 5400 1100 0    50   ~ 0
PA0
Text Label 5400 1200 0    50   ~ 0
PA1
Text Label 5400 1400 0    50   ~ 0
PA3
Text Label 5400 1300 0    50   ~ 0
PA2
Text Label 5400 1500 0    50   ~ 0
PA4
Text Label 5400 1600 0    50   ~ 0
PA5
Text Label 5400 1700 0    50   ~ 0
PA6
Text Label 5400 1800 0    50   ~ 0
PA7
Text Label 5400 1900 0    50   ~ 0
PA8
Text Label 5400 2000 0    50   ~ 0
PA9
Text Label 5400 2100 0    50   ~ 0
PA10
Text Label 5400 2200 0    50   ~ 0
PA11
Text Label 5400 2300 0    50   ~ 0
PA12
Text Label 5400 2400 0    50   ~ 0
PA13
Text Label 5400 2500 0    50   ~ 0
PA14
Text Label 5400 2600 0    50   ~ 0
PA15
Text Label 5400 2800 0    50   ~ 0
PB0
Text Label 5400 2900 0    50   ~ 0
PB1
Text Label 5400 3000 0    50   ~ 0
PB2
Text Label 5400 3100 0    50   ~ 0
PB3
Text Label 5400 3200 0    50   ~ 0
PB4
Text Label 5400 3300 0    50   ~ 0
PB5
Text Label 5400 3400 0    50   ~ 0
PB6
Text Label 5400 3500 0    50   ~ 0
PB7
Text Label 5400 3600 0    50   ~ 0
PB8
Text Label 5400 3700 0    50   ~ 0
PB9
Text Label 5400 3800 0    50   ~ 0
PB10
Text Label 5400 3900 0    50   ~ 0
PB11
Text Label 5400 4000 0    50   ~ 0
PB12
Text Label 5400 4100 0    50   ~ 0
PB13
Text Label 5400 4200 0    50   ~ 0
PB14
Text Label 5400 4300 0    50   ~ 0
PB15
Text Label 4100 1100 2    50   ~ 0
NRST
Text Label 4100 1300 2    50   ~ 0
BOOT0
Text Label 4100 1500 2    50   ~ 0
VCAP_1
Text Label 4100 1600 2    50   ~ 0
VREF
Text Label 4100 2700 2    50   ~ 0
PD2
Text Label 6450 4000 0    50   ~ 0
PC0
Text Label 6450 4100 0    50   ~ 0
PC1
Text Label 6450 4200 0    50   ~ 0
PC2
Text Label 6450 4300 0    50   ~ 0
PC3
Text Label 6450 4400 0    50   ~ 0
PC4
Text Label 6450 4500 0    50   ~ 0
PC5
Text Label 6450 4600 0    50   ~ 0
PC7
Text Label 6450 4700 0    50   ~ 0
PC8
Text Label 6450 4800 0    50   ~ 0
PC9
Text Label 6450 4900 0    50   ~ 0
PC10
Text Label 6450 5000 0    50   ~ 0
PC11
Text Label 6450 5100 0    50   ~ 0
PC12
Text Label 6450 5200 0    50   ~ 0
PC13
$Comp
L Connector:Conn_01x16_Male J4
U 1 1 606CC944
P 6950 2800
F 0 "J4" H 7058 3681 50  0000 C CNN
F 1 "Conn_01x16_Male" H 7058 3590 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 6950 2800 50  0001 C CNN
F 3 "~" H 6950 2800 50  0001 C CNN
	1    6950 2800
	1    0    0    -1  
$EndComp
Text Label 7150 2100 0    50   ~ 0
PA0
Text Label 7150 2200 0    50   ~ 0
PA1
Text Label 7150 2400 0    50   ~ 0
PA3
Text Label 7150 2300 0    50   ~ 0
PA2
Text Label 7150 2500 0    50   ~ 0
PA4
Text Label 7150 2600 0    50   ~ 0
PA5
Text Label 7150 2700 0    50   ~ 0
PA6
Text Label 7150 2800 0    50   ~ 0
PA7
Text Label 7150 2900 0    50   ~ 0
PA8
Text Label 7150 3000 0    50   ~ 0
PA9
Text Label 7150 3100 0    50   ~ 0
PA10
Text Label 7150 3200 0    50   ~ 0
PA11
Text Label 7150 3300 0    50   ~ 0
PA12
Text Label 7150 3400 0    50   ~ 0
PA13
Text Label 7150 3500 0    50   ~ 0
PA14
Text Label 7150 3600 0    50   ~ 0
PA15
$Comp
L Connector:Conn_01x16_Male J1
U 1 1 606D853F
P 6250 2800
F 0 "J1" H 6358 3681 50  0000 C CNN
F 1 "Conn_01x16_Male" H 6358 3590 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 6250 2800 50  0001 C CNN
F 3 "~" H 6250 2800 50  0001 C CNN
	1    6250 2800
	1    0    0    -1  
$EndComp
Text Label 6450 2100 0    50   ~ 0
PB0
Text Label 6450 2200 0    50   ~ 0
PB1
Text Label 6450 2300 0    50   ~ 0
PB2
Text Label 6450 2400 0    50   ~ 0
PB3
Text Label 6450 2500 0    50   ~ 0
PB4
Text Label 6450 2600 0    50   ~ 0
PB5
Text Label 6450 2700 0    50   ~ 0
PB6
Text Label 6450 2800 0    50   ~ 0
PB7
Text Label 6450 2900 0    50   ~ 0
PB8
Text Label 6450 3000 0    50   ~ 0
PB9
Text Label 6450 3100 0    50   ~ 0
PB10
Text Label 6450 3200 0    50   ~ 0
PB11
Text Label 6450 3300 0    50   ~ 0
PB12
Text Label 6450 3400 0    50   ~ 0
PB13
Text Label 6450 3500 0    50   ~ 0
PB14
Text Label 6450 3600 0    50   ~ 0
PB15
$Comp
L Connector:Conn_01x16_Male J3
U 1 1 606E2BDF
P 6250 4700
F 0 "J3" H 6358 5581 50  0000 C CNN
F 1 "Conn_01x16_Male" H 6358 5490 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 6250 4700 50  0001 C CNN
F 3 "~" H 6250 4700 50  0001 C CNN
	1    6250 4700
	1    0    0    -1  
$EndComp
NoConn ~ 6450 5500
Text Label 4100 4200 2    50   ~ 0
OSC32_IN
Text Label 4100 4300 2    50   ~ 0
OSC32_OUT
Text Label 4100 2900 2    50   ~ 0
PC0
Text Label 4100 3000 2    50   ~ 0
PC1
Text Label 4100 3100 2    50   ~ 0
PC2
Text Label 4100 3200 2    50   ~ 0
PC3
Text Label 4100 3300 2    50   ~ 0
PC4
Text Label 4100 3400 2    50   ~ 0
PC5
Text Label 4100 3500 2    50   ~ 0
PC7
Text Label 4100 3600 2    50   ~ 0
PC8
Text Label 4100 3700 2    50   ~ 0
PC9
Text Label 4100 3800 2    50   ~ 0
PC10
Text Label 4100 3900 2    50   ~ 0
PC11
Text Label 4100 4000 2    50   ~ 0
PC12
Text Label 4100 4100 2    50   ~ 0
PC13
Wire Wire Line
	4450 4600 4600 4600
Connection ~ 4700 4600
Wire Wire Line
	4600 4500 4600 4600
Connection ~ 4600 4600
Wire Wire Line
	4600 4600 4700 4600
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 607C6783
P 5850 6700
F 0 "#FLG0101" H 5850 6775 50  0001 C CNN
F 1 "PWR_FLAG" H 5850 6873 50  0000 C CNN
F 2 "" H 5850 6700 50  0001 C CNN
F 3 "~" H 5850 6700 50  0001 C CNN
	1    5850 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0143
U 1 1 607C716D
P 5850 6700
AR Path="/607C716D" Ref="#PWR0143"  Part="1" 
AR Path="/5E9FE2D3/607C716D" Ref="#PWR?"  Part="1" 
F 0 "#PWR0143" H 5850 6450 50  0001 C CNN
F 1 "GND" H 5855 6527 50  0000 C CNN
F 2 "" H 5850 6700 50  0001 C CNN
F 3 "" H 5850 6700 50  0001 C CNN
	1    5850 6700
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 607C8843
P 6550 6850
F 0 "#FLG0103" H 6550 6925 50  0001 C CNN
F 1 "PWR_FLAG" H 6550 7023 50  0000 C CNN
F 2 "" H 6550 6850 50  0001 C CNN
F 3 "~" H 6550 6850 50  0001 C CNN
	1    6550 6850
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0145
U 1 1 607CA599
P 6550 6850
AR Path="/607CA599" Ref="#PWR0145"  Part="1" 
AR Path="/5E9FE2D3/607CA599" Ref="#PWR?"  Part="1" 
F 0 "#PWR0145" H 6550 6700 50  0001 C CNN
F 1 "+5V" H 6565 7023 50  0000 C CNN
F 2 "" H 6550 6850 50  0001 C CNN
F 3 "" H 6550 6850 50  0001 C CNN
	1    6550 6850
	1    0    0    -1  
$EndComp
$EndSCHEMATC