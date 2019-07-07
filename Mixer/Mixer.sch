EESchema Schematic File Version 4
LIBS:Mixer-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Mixer"
Date "2019-04-14"
Rev "1"
Comp "spielhuus"
Comment1 "License CC BY 4.0 - Attribution 4.0 International"
Comment2 ""
Comment3 ""
Comment4 "4 channel mixer"
$EndDescr
$Comp
L Device:R R1
U 1 1 5C6092A4
P 3050 2200
F 0 "R1" V 2843 2200 50  0000 C CNN
F 1 "100k" V 2934 2200 50  0000 C CNN
F 2 "" V 2980 2200 50  0001 C CNN
F 3 "~" H 3050 2200 50  0001 C CNN
	1    3050 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5C609313
P 3050 3100
F 0 "R2" V 2843 3100 50  0000 C CNN
F 1 "100k" V 2934 3100 50  0000 C CNN
F 2 "" V 2980 3100 50  0001 C CNN
F 3 "~" H 3050 3100 50  0001 C CNN
	1    3050 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5C609372
P 3050 3950
F 0 "R3" V 2843 3950 50  0000 C CNN
F 1 "100k" V 2934 3950 50  0000 C CNN
F 2 "" V 2980 3950 50  0001 C CNN
F 3 "~" H 3050 3950 50  0001 C CNN
	1    3050 3950
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 1 1 5C6094EF
P 4100 3200
F 0 "U1" H 4100 3567 50  0000 C CNN
F 1 "TL072" H 4100 3476 50  0000 C CNN
F 2 "" H 4100 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4100 3200 50  0001 C CNN
	1    4100 3200
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5C609594
P 3750 3400
F 0 "#PWR08" H 3750 3150 50  0001 C CNN
F 1 "GND" H 3755 3227 50  0000 C CNN
F 2 "" H 3750 3400 50  0001 C CNN
F 3 "" H 3750 3400 50  0001 C CNN
	1    3750 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5CA8FF4D
P 2450 2200
F 0 "RV1" H 2380 2246 50  0000 R CNN
F 1 "100k" H 2380 2155 50  0000 R CNN
F 2 "" H 2450 2200 50  0001 C CNN
F 3 "~" H 2450 2200 50  0001 C CNN
	1    2450 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 5CA8FFD7
P 2450 3100
F 0 "RV2" H 2380 3146 50  0000 R CNN
F 1 "100k" H 2380 3055 50  0000 R CNN
F 2 "" H 2450 3100 50  0001 C CNN
F 3 "~" H 2450 3100 50  0001 C CNN
	1    2450 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV3
U 1 1 5CA90025
P 2450 3950
F 0 "RV3" H 2380 3996 50  0000 R CNN
F 1 "100k" H 2380 3905 50  0000 R CNN
F 2 "" H 2450 3950 50  0001 C CNN
F 3 "~" H 2450 3950 50  0001 C CNN
	1    2450 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2200 2900 2200
Wire Wire Line
	2600 3100 2900 3100
Wire Wire Line
	2600 3950 2900 3950
$Comp
L power:GND #PWR04
U 1 1 5CA90440
P 2450 2350
F 0 "#PWR04" H 2450 2100 50  0001 C CNN
F 1 "GND" H 2455 2177 50  0000 C CNN
F 2 "" H 2450 2350 50  0001 C CNN
F 3 "" H 2450 2350 50  0001 C CNN
	1    2450 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5CA90460
P 2450 3250
F 0 "#PWR05" H 2450 3000 50  0001 C CNN
F 1 "GND" H 2455 3077 50  0000 C CNN
F 2 "" H 2450 3250 50  0001 C CNN
F 3 "" H 2450 3250 50  0001 C CNN
	1    2450 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5CA90479
P 2450 4100
F 0 "#PWR06" H 2450 3850 50  0001 C CNN
F 1 "GND" H 2455 3927 50  0000 C CNN
F 2 "" H 2450 4100 50  0001 C CNN
F 3 "" H 2450 4100 50  0001 C CNN
	1    2450 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1850 2100 1850
Wire Wire Line
	2450 1850 2450 2050
Wire Wire Line
	3200 3100 3350 3100
$Comp
L Device:R R5
U 1 1 5CA90B31
P 4100 2650
F 0 "R5" V 3893 2650 50  0000 C CNN
F 1 "100k" V 3984 2650 50  0000 C CNN
F 2 "" V 4030 2650 50  0001 C CNN
F 3 "~" H 4100 2650 50  0001 C CNN
	1    4100 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 2650 3750 2650
Wire Wire Line
	3750 2650 3750 3100
Connection ~ 3750 3100
Wire Wire Line
	3750 3100 3800 3100
Wire Wire Line
	4250 2650 4400 2650
Wire Wire Line
	4400 2650 4400 3200
Wire Wire Line
	3750 3400 3750 3300
Wire Wire Line
	3750 3300 3800 3300
Wire Wire Line
	3200 3950 3350 3950
Wire Wire Line
	3350 3950 3350 3100
Connection ~ 3350 3100
Wire Wire Line
	3350 3100 3750 3100
Wire Wire Line
	3200 2200 3350 2200
Wire Wire Line
	3350 2200 3350 3100
$Comp
L Amplifier_Operational:TL072 U1
U 2 1 5CA91676
P 6000 3300
F 0 "U1" H 6000 3667 50  0000 C CNN
F 1 "TL072" H 6000 3576 50  0000 C CNN
F 2 "" H 6000 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6000 3300 50  0001 C CNN
	2    6000 3300
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 5CA916E0
P 2900 6700
F 0 "U1" H 2858 6746 50  0000 L CNN
F 1 "TL072" H 2858 6655 50  0000 L CNN
F 2 "" H 2900 6700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2900 6700 50  0001 C CNN
	3    2900 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5CA922B8
P 6000 2650
F 0 "R7" V 5793 2650 50  0000 C CNN
F 1 "100k" V 5884 2650 50  0000 C CNN
F 2 "" V 5930 2650 50  0001 C CNN
F 3 "~" H 6000 2650 50  0001 C CNN
	1    6000 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 2650 6300 2650
Wire Wire Line
	6300 2650 6300 3300
Wire Wire Line
	5850 2650 5650 2650
Wire Wire Line
	5650 2650 5650 3200
$Comp
L power:GND #PWR019
U 1 1 5CA92A76
P 5600 3500
F 0 "#PWR019" H 5600 3250 50  0001 C CNN
F 1 "GND" H 5605 3327 50  0000 C CNN
F 2 "" H 5600 3500 50  0001 C CNN
F 3 "" H 5600 3500 50  0001 C CNN
	1    5600 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3500 5600 3400
Wire Wire Line
	5600 3400 5700 3400
$Comp
L Device:R R8
U 1 1 5CA93171
P 6900 3300
F 0 "R8" V 6693 3300 50  0000 C CNN
F 1 "1k" V 6784 3300 50  0000 C CNN
F 2 "" V 6830 3300 50  0001 C CNN
F 3 "~" H 6900 3300 50  0001 C CNN
	1    6900 3300
	0    1    1    0   
$EndComp
Connection ~ 6300 3300
$Comp
L Device:R R9
U 1 1 5CA940C7
P 7100 2050
F 0 "R9" V 6893 2050 50  0000 C CNN
F 1 "10k" V 6984 2050 50  0000 C CNN
F 2 "" V 7030 2050 50  0001 C CNN
F 3 "~" H 7100 2050 50  0001 C CNN
	1    7100 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5CA94117
P 7100 2500
F 0 "R10" V 6893 2500 50  0000 C CNN
F 1 "10k" V 6984 2500 50  0000 C CNN
F 2 "" V 7030 2500 50  0001 C CNN
F 3 "~" H 7100 2500 50  0001 C CNN
	1    7100 2500
	0    1    1    0   
$EndComp
$Comp
L Device:D D1
U 1 1 5CA9418D
P 7500 2050
F 0 "D1" H 7500 1834 50  0000 C CNN
F 1 "1N4148" H 7500 1925 50  0000 C CNN
F 2 "" H 7500 2050 50  0001 C CNN
F 3 "~" H 7500 2050 50  0001 C CNN
	1    7500 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:D D2
U 1 1 5CA941EF
P 7500 2500
F 0 "D2" H 7500 2284 50  0000 C CNN
F 1 "1N4148" H 7500 2375 50  0000 C CNN
F 2 "" H 7500 2500 50  0001 C CNN
F 3 "~" H 7500 2500 50  0001 C CNN
	1    7500 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:C C9
U 1 1 5CA94260
P 7850 2750
F 0 "C9" H 7965 2796 50  0000 L CNN
F 1 "0.1u" H 7965 2705 50  0000 L CNN
F 2 "" H 7888 2600 50  0001 C CNN
F 3 "~" H 7850 2750 50  0001 C CNN
	1    7850 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5CA942AC
P 7850 2900
F 0 "#PWR020" H 7850 2650 50  0001 C CNN
F 1 "GND" H 7855 2727 50  0000 C CNN
F 2 "" H 7850 2900 50  0001 C CNN
F 3 "" H 7850 2900 50  0001 C CNN
	1    7850 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3800 2450 3600
Wire Wire Line
	2450 2950 2450 2750
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 5CA95503
P 8250 2500
F 0 "Q1" H 8441 2546 50  0000 L CNN
F 1 "BC547" H 8441 2455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8450 2425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8250 2500 50  0001 L CNN
	1    8250 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2500 7850 2500
Wire Wire Line
	7850 2600 7850 2500
Connection ~ 7850 2500
Wire Wire Line
	7850 2500 8050 2500
Wire Wire Line
	7650 2050 7850 2050
$Comp
L Device:R R11
U 1 1 5CA9630E
P 8700 2950
F 0 "R11" V 8493 2950 50  0000 C CNN
F 1 "470" V 8584 2950 50  0000 C CNN
F 2 "" V 8630 2950 50  0001 C CNN
F 3 "~" H 8700 2950 50  0001 C CNN
	1    8700 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 2950 8350 2950
Wire Wire Line
	8350 2950 8350 2700
$Comp
L power:+15V #PWR021
U 1 1 5CA96F62
P 8350 2000
F 0 "#PWR021" H 8350 1850 50  0001 C CNN
F 1 "+15V" H 8365 2173 50  0000 C CNN
F 2 "" H 8350 2000 50  0001 C CNN
F 3 "" H 8350 2000 50  0001 C CNN
	1    8350 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 2000 8350 2150
$Comp
L Device:C C10
U 1 1 5CA975D8
P 8850 2300
F 0 "C10" H 8965 2346 50  0000 L CNN
F 1 "0.1u" H 8965 2255 50  0000 L CNN
F 2 "" H 8888 2150 50  0001 C CNN
F 3 "~" H 8850 2300 50  0001 C CNN
	1    8850 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5CA975DF
P 8850 2450
F 0 "#PWR022" H 8850 2200 50  0001 C CNN
F 1 "GND" H 8855 2277 50  0000 C CNN
F 2 "" H 8850 2450 50  0001 C CNN
F 3 "" H 8850 2450 50  0001 C CNN
	1    8850 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2150 8350 2150
Connection ~ 8350 2150
Wire Wire Line
	8350 2150 8350 2300
Wire Wire Line
	7350 2050 7250 2050
Wire Wire Line
	7350 2500 7250 2500
Wire Wire Line
	6950 2500 6600 2500
$Comp
L Device:R R6
U 1 1 5CA9BC52
P 5200 3200
F 0 "R6" V 4993 3200 50  0000 C CNN
F 1 "100k" V 5084 3200 50  0000 C CNN
F 2 "" V 5130 3200 50  0001 C CNN
F 3 "~" H 5200 3200 50  0001 C CNN
	1    5200 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 3200 5700 3200
Wire Wire Line
	6300 3300 6600 3300
Wire Wire Line
	6600 2500 6600 3300
Connection ~ 6600 3300
Wire Wire Line
	6600 3300 6750 3300
Wire Wire Line
	5350 3200 5650 3200
Connection ~ 5650 3200
Connection ~ 4400 3200
Wire Wire Line
	6950 2050 4750 2050
Wire Wire Line
	4750 2050 4750 3200
Wire Wire Line
	4400 3200 4750 3200
Connection ~ 4750 3200
Wire Wire Line
	4750 3200 5050 3200
Wire Wire Line
	7850 2050 7850 2500
Text Notes 8100 3100 0    50   ~ 0
Drive LED
$Comp
L power:+15V #PWR02
U 1 1 5CA91398
P 1550 6400
F 0 "#PWR02" H 1550 6250 50  0001 C CNN
F 1 "+15V" H 1565 6573 50  0000 C CNN
F 2 "" H 1550 6400 50  0001 C CNN
F 3 "" H 1550 6400 50  0001 C CNN
	1    1550 6400
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR03
U 1 1 5CA914EA
P 1550 7000
F 0 "#PWR03" H 1550 7100 50  0001 C CNN
F 1 "-15V" H 1565 7173 50  0000 C CNN
F 2 "" H 1550 7000 50  0001 C CNN
F 3 "" H 1550 7000 50  0001 C CNN
	1    1550 7000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5CB2B6FB
P 1400 6700
F 0 "#PWR01" H 1400 6450 50  0001 C CNN
F 1 "GND" V 1405 6572 50  0000 R CNN
F 2 "" H 1400 6700 50  0001 C CNN
F 3 "" H 1400 6700 50  0001 C CNN
	1    1400 6700
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 5CB2D626
P 2400 6550
F 0 "C7" H 2515 6596 50  0000 L CNN
F 1 "0.1u" H 2515 6505 50  0000 L CNN
F 2 "" H 2438 6400 50  0001 C CNN
F 3 "~" H 2400 6550 50  0001 C CNN
	1    2400 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5CB2DD9F
P 2400 6850
F 0 "C8" H 2515 6896 50  0000 L CNN
F 1 "0.1u" H 2515 6805 50  0000 L CNN
F 2 "" H 2438 6700 50  0001 C CNN
F 3 "~" H 2400 6850 50  0001 C CNN
	1    2400 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 5CB2EA19
P 1950 6550
F 0 "C5" H 2068 6596 50  0000 L CNN
F 1 "10u" H 2068 6505 50  0000 L CNN
F 2 "" H 1988 6400 50  0001 C CNN
F 3 "~" H 1950 6550 50  0001 C CNN
	1    1950 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C6
U 1 1 5CB2F1AC
P 1950 6850
F 0 "C6" H 1832 6804 50  0000 R CNN
F 1 "10u" H 1832 6895 50  0000 R CNN
F 2 "" H 1988 6700 50  0001 C CNN
F 3 "~" H 1950 6850 50  0001 C CNN
	1    1950 6850
	-1   0    0    1   
$EndComp
Wire Wire Line
	1400 6700 1500 6700
$Comp
L Device:R R4
U 1 1 5CB4D16A
P 3050 4800
F 0 "R4" V 2843 4800 50  0000 C CNN
F 1 "100k" V 2934 4800 50  0000 C CNN
F 2 "" V 2980 4800 50  0001 C CNN
F 3 "~" H 3050 4800 50  0001 C CNN
	1    3050 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV4
U 1 1 5CB4D170
P 2450 4800
F 0 "RV4" H 2380 4846 50  0000 R CNN
F 1 "100k" H 2380 4755 50  0000 R CNN
F 2 "" H 2450 4800 50  0001 C CNN
F 3 "~" H 2450 4800 50  0001 C CNN
	1    2450 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4800 2900 4800
$Comp
L power:GND #PWR07
U 1 1 5CB4D179
P 2450 4950
F 0 "#PWR07" H 2450 4700 50  0001 C CNN
F 1 "GND" H 2455 4777 50  0000 C CNN
F 2 "" H 2450 4950 50  0001 C CNN
F 3 "" H 2450 4950 50  0001 C CNN
	1    2450 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4800 3350 4800
Wire Wire Line
	2450 4650 2450 4450
Wire Wire Line
	3350 4800 3350 3950
Connection ~ 3350 3950
Wire Wire Line
	8850 2950 9250 2950
Wire Notes Line
	2750 5250 2750 1400
Wire Notes Line
	2750 1400 9200 1400
Wire Notes Line
	9200 1400 9200 5250
Wire Notes Line
	9200 5250 2750 5250
Wire Wire Line
	7050 3300 9250 3300
$Comp
L Device:C C1
U 1 1 5D0F952F
P 1800 1850
F 0 "C1" V 2055 1850 50  0000 C CNN
F 1 "0.22u" V 1962 1850 50  0000 C CNN
F 2 "" H 1838 1700 50  0001 C CNN
F 3 "~" H 1800 1850 50  0001 C CNN
	1    1800 1850
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 5D0FB1EC
P 1800 1450
F 0 "SW1" H 1800 1689 50  0000 C CNN
F 1 "SW_SPST" H 1800 1596 50  0000 C CNN
F 2 "" H 1800 1450 50  0001 C CNN
F 3 "~" H 1800 1450 50  0001 C CNN
	1    1800 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1850 1500 1850
Wire Wire Line
	1500 1850 1500 1450
Wire Wire Line
	1500 1450 1600 1450
Wire Wire Line
	2000 1450 2100 1450
Wire Wire Line
	2100 1450 2100 1850
Connection ~ 2100 1850
$Comp
L Connector:Conn_01x01_Female J1
U 1 1 5D100577
P 1150 1850
F 0 "J1" H 1042 1621 50  0000 C CNN
F 1 "Input1" H 1042 1714 50  0000 C CNN
F 2 "" H 1150 1850 50  0001 C CNN
F 3 "~" H 1150 1850 50  0001 C CNN
	1    1150 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 1850 1500 1850
Connection ~ 1500 1850
Wire Wire Line
	1950 2750 2100 2750
$Comp
L Device:C C2
U 1 1 5D104475
P 1800 2750
F 0 "C2" V 2055 2750 50  0000 C CNN
F 1 "0.22u" V 1962 2750 50  0000 C CNN
F 2 "" H 1838 2600 50  0001 C CNN
F 3 "~" H 1800 2750 50  0001 C CNN
	1    1800 2750
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_SPST SW2
U 1 1 5D10447B
P 1800 2350
F 0 "SW2" H 1800 2589 50  0000 C CNN
F 1 "SW_SPST" H 1800 2496 50  0000 C CNN
F 2 "" H 1800 2350 50  0001 C CNN
F 3 "~" H 1800 2350 50  0001 C CNN
	1    1800 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2750 1500 2750
Wire Wire Line
	1500 2750 1500 2350
Wire Wire Line
	1500 2350 1600 2350
Wire Wire Line
	2000 2350 2100 2350
Wire Wire Line
	2100 2350 2100 2750
Connection ~ 2100 2750
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 5D104488
P 1150 2750
F 0 "J2" H 1042 2521 50  0000 C CNN
F 1 "Input1" H 1042 2614 50  0000 C CNN
F 2 "" H 1150 2750 50  0001 C CNN
F 3 "~" H 1150 2750 50  0001 C CNN
	1    1150 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 2750 1500 2750
Connection ~ 1500 2750
Wire Wire Line
	2100 1850 2450 1850
Wire Wire Line
	2100 2750 2450 2750
Wire Wire Line
	1950 3600 2100 3600
$Comp
L Device:C C3
U 1 1 5D112269
P 1800 3600
F 0 "C3" V 2055 3600 50  0000 C CNN
F 1 "0.22u" V 1962 3600 50  0000 C CNN
F 2 "" H 1838 3450 50  0001 C CNN
F 3 "~" H 1800 3600 50  0001 C CNN
	1    1800 3600
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_SPST SW3
U 1 1 5D11226F
P 1800 3200
F 0 "SW3" H 1800 3439 50  0000 C CNN
F 1 "SW_SPST" H 1800 3346 50  0000 C CNN
F 2 "" H 1800 3200 50  0001 C CNN
F 3 "~" H 1800 3200 50  0001 C CNN
	1    1800 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3600 1500 3600
Wire Wire Line
	1500 3600 1500 3200
Wire Wire Line
	1500 3200 1600 3200
Wire Wire Line
	2000 3200 2100 3200
Wire Wire Line
	2100 3200 2100 3600
Connection ~ 2100 3600
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 5D11227B
P 1150 3600
F 0 "J3" H 1042 3371 50  0000 C CNN
F 1 "Input1" H 1042 3464 50  0000 C CNN
F 2 "" H 1150 3600 50  0001 C CNN
F 3 "~" H 1150 3600 50  0001 C CNN
	1    1150 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 3600 1500 3600
Connection ~ 1500 3600
Wire Wire Line
	2100 3600 2450 3600
Wire Wire Line
	1950 4450 2100 4450
$Comp
L Device:C C4
U 1 1 5D1155FE
P 1800 4450
F 0 "C4" V 2055 4450 50  0000 C CNN
F 1 "0.22u" V 1962 4450 50  0000 C CNN
F 2 "" H 1838 4300 50  0001 C CNN
F 3 "~" H 1800 4450 50  0001 C CNN
	1    1800 4450
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_SPST SW4
U 1 1 5D115604
P 1800 4050
F 0 "SW4" H 1800 4289 50  0000 C CNN
F 1 "SW_SPST" H 1800 4196 50  0000 C CNN
F 2 "" H 1800 4050 50  0001 C CNN
F 3 "~" H 1800 4050 50  0001 C CNN
	1    1800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4450 1500 4450
Wire Wire Line
	1500 4450 1500 4050
Wire Wire Line
	1500 4050 1600 4050
Wire Wire Line
	2000 4050 2100 4050
Wire Wire Line
	2100 4050 2100 4450
Connection ~ 2100 4450
$Comp
L Connector:Conn_01x01_Female J4
U 1 1 5D115610
P 1150 4450
F 0 "J4" H 1042 4221 50  0000 C CNN
F 1 "Input1" H 1042 4314 50  0000 C CNN
F 2 "" H 1150 4450 50  0001 C CNN
F 3 "~" H 1150 4450 50  0001 C CNN
	1    1150 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 4450 1500 4450
Connection ~ 1500 4450
Wire Wire Line
	2100 4450 2450 4450
$Comp
L Connector:Conn_01x01_Female J7
U 1 1 5D11CFF8
P 9450 3300
F 0 "J7" H 9477 3327 50  0000 L CNN
F 1 "Out" H 9477 3234 50  0000 L CNN
F 2 "" H 9450 3300 50  0001 C CNN
F 3 "~" H 9450 3300 50  0001 C CNN
	1    9450 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5D11D9B4
P 9400 2950
F 0 "D3" H 9393 2691 50  0000 C CNN
F 1 "LED" H 9393 2784 50  0000 C CNN
F 2 "" H 9400 2950 50  0001 C CNN
F 3 "~" H 9400 2950 50  0001 C CNN
	1    9400 2950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5D11E13B
P 9550 2950
F 0 "#PWR023" H 9550 2700 50  0001 C CNN
F 1 "GND" H 9555 2777 50  0000 C CNN
F 2 "" H 9550 2950 50  0001 C CNN
F 3 "" H 9550 2950 50  0001 C CNN
	1    9550 2950
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D11EC5B
P 1950 6400
F 0 "#FLG02" H 1950 6475 50  0001 C CNN
F 1 "PWR_FLAG" H 1950 6575 50  0000 C CNN
F 2 "" H 1950 6400 50  0001 C CNN
F 3 "~" H 1950 6400 50  0001 C CNN
	1    1950 6400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5D11F058
P 1950 7000
F 0 "#FLG03" H 1950 7075 50  0001 C CNN
F 1 "PWR_FLAG" H 1950 7175 50  0000 C CNN
F 2 "" H 1950 7000 50  0001 C CNN
F 3 "~" H 1950 7000 50  0001 C CNN
	1    1950 7000
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D11F753
P 1500 6700
F 0 "#FLG01" H 1500 6775 50  0001 C CNN
F 1 "PWR_FLAG" H 1500 6875 50  0000 C CNN
F 2 "" H 1500 6700 50  0001 C CNN
F 3 "~" H 1500 6700 50  0001 C CNN
	1    1500 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 6400 1950 6400
Connection ~ 1950 6400
Wire Wire Line
	1950 6400 2400 6400
Connection ~ 2400 6400
Wire Wire Line
	1500 6700 1950 6700
Connection ~ 1500 6700
Connection ~ 2400 6700
Connection ~ 1950 6700
Wire Wire Line
	1950 6700 2400 6700
Wire Wire Line
	1550 7000 1950 7000
Connection ~ 1950 7000
Wire Wire Line
	1950 7000 2400 7000
Connection ~ 2400 7000
Wire Wire Line
	2400 6400 2800 6400
Wire Wire Line
	2400 7000 2800 7000
$Comp
L Connector:Conn_01x07_Male J5
U 1 1 5D1C1AAA
P 3750 6650
F 0 "J5" H 3858 7135 50  0000 C CNN
F 1 "Panel" H 3858 7042 50  0000 C CNN
F 2 "" H 3750 6650 50  0001 C CNN
F 3 "~" H 3750 6650 50  0001 C CNN
	1    3750 6650
	1    0    0    -1  
$EndComp
Text Label 3950 6350 0    50   ~ 0
Input1
Text Label 3950 6450 0    50   ~ 0
Input2
Text Label 3950 6550 0    50   ~ 0
Input3
Text Label 3950 6650 0    50   ~ 0
Input4
Text Label 3950 6750 0    50   ~ 0
Output
Text Label 3950 6850 0    50   ~ 0
LED
Text Label 3950 6950 0    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J6
U 1 1 5D1CA214
P 5250 6600
F 0 "J6" H 5300 7020 50  0000 C CNN
F 1 "Power" H 5300 6927 50  0000 C CNN
F 2 "" H 5250 6600 50  0001 C CNN
F 3 "~" H 5250 6600 50  0001 C CNN
	1    5250 6600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5D1CBDA1
P 5050 6400
F 0 "#PWR09" H 5050 6250 50  0001 C CNN
F 1 "+5V" V 5065 6529 50  0000 L CNN
F 2 "" H 5050 6400 50  0001 C CNN
F 3 "" H 5050 6400 50  0001 C CNN
	1    5050 6400
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR014
U 1 1 5D1CBF03
P 5550 6400
F 0 "#PWR014" H 5550 6250 50  0001 C CNN
F 1 "+5V" V 5565 6529 50  0000 L CNN
F 2 "" H 5550 6400 50  0001 C CNN
F 3 "" H 5550 6400 50  0001 C CNN
	1    5550 6400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5D1CD1C4
P 5050 6500
F 0 "#PWR010" H 5050 6250 50  0001 C CNN
F 1 "GND" V 5055 6371 50  0000 R CNN
F 2 "" H 5050 6500 50  0001 C CNN
F 3 "" H 5050 6500 50  0001 C CNN
	1    5050 6500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5D1CD271
P 5050 6600
F 0 "#PWR011" H 5050 6350 50  0001 C CNN
F 1 "GND" V 5055 6471 50  0000 R CNN
F 2 "" H 5050 6600 50  0001 C CNN
F 3 "" H 5050 6600 50  0001 C CNN
	1    5050 6600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5D1CD448
P 5550 6500
F 0 "#PWR015" H 5550 6250 50  0001 C CNN
F 1 "GND" V 5555 6371 50  0000 R CNN
F 2 "" H 5550 6500 50  0001 C CNN
F 3 "" H 5550 6500 50  0001 C CNN
	1    5550 6500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5D1CD8ED
P 5550 6600
F 0 "#PWR016" H 5550 6350 50  0001 C CNN
F 1 "GND" V 5555 6471 50  0000 R CNN
F 2 "" H 5550 6600 50  0001 C CNN
F 3 "" H 5550 6600 50  0001 C CNN
	1    5550 6600
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR012
U 1 1 5D1CE1D0
P 5050 6700
F 0 "#PWR012" H 5050 6550 50  0001 C CNN
F 1 "+15V" V 5065 6829 50  0000 L CNN
F 2 "" H 5050 6700 50  0001 C CNN
F 3 "" H 5050 6700 50  0001 C CNN
	1    5050 6700
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR017
U 1 1 5D1CE2F3
P 5550 6700
F 0 "#PWR017" H 5550 6550 50  0001 C CNN
F 1 "+15V" V 5565 6829 50  0000 L CNN
F 2 "" H 5550 6700 50  0001 C CNN
F 3 "" H 5550 6700 50  0001 C CNN
	1    5550 6700
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR013
U 1 1 5D1CF33C
P 5050 6800
F 0 "#PWR013" H 5050 6900 50  0001 C CNN
F 1 "-15V" V 5065 6929 50  0000 L CNN
F 2 "" H 5050 6800 50  0001 C CNN
F 3 "" H 5050 6800 50  0001 C CNN
	1    5050 6800
	0    -1   -1   0   
$EndComp
$Comp
L power:-15V #PWR018
U 1 1 5D1CF46A
P 5550 6800
F 0 "#PWR018" H 5550 6900 50  0001 C CNN
F 1 "-15V" V 5565 6929 50  0000 L CNN
F 2 "" H 5550 6800 50  0001 C CNN
F 3 "" H 5550 6800 50  0001 C CNN
	1    5550 6800
	0    1    1    0   
$EndComp
Text Label 2750 2200 1    50   ~ 0
Input1
Text Label 2750 3100 1    50   ~ 0
Input2
Text Label 2750 3950 1    50   ~ 0
Input3
Text Label 2750 4800 1    50   ~ 0
Input4
Text Label 9200 3300 1    50   ~ 0
Output
Text Label 9200 2950 1    50   ~ 0
LED
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5D1D35CE
P 5050 6400
F 0 "#FLG04" H 5050 6475 50  0001 C CNN
F 1 "PWR_FLAG" H 5050 6575 50  0000 C CNN
F 2 "" H 5050 6400 50  0001 C CNN
F 3 "~" H 5050 6400 50  0001 C CNN
	1    5050 6400
	1    0    0    -1  
$EndComp
Connection ~ 5050 6400
$EndSCHEMATC
