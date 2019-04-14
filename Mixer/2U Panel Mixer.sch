EESchema Schematic File Version 4
LIBS:2U Panel Mixer-cache
EELAYER 26 0
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
L Device:R R?
U 1 1 5C6092A4
P 3050 2200
F 0 "R?" V 2843 2200 50  0000 C CNN
F 1 "100k" V 2934 2200 50  0000 C CNN
F 2 "" V 2980 2200 50  0001 C CNN
F 3 "~" H 3050 2200 50  0001 C CNN
	1    3050 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C609313
P 3050 3100
F 0 "R?" V 2843 3100 50  0000 C CNN
F 1 "100k" V 2934 3100 50  0000 C CNN
F 2 "" V 2980 3100 50  0001 C CNN
F 3 "~" H 3050 3100 50  0001 C CNN
	1    3050 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C609372
P 3050 3950
F 0 "R?" V 2843 3950 50  0000 C CNN
F 1 "100k" V 2934 3950 50  0000 C CNN
F 2 "" V 2980 3950 50  0001 C CNN
F 3 "~" H 3050 3950 50  0001 C CNN
	1    3050 3950
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5C6094EF
P 4100 3200
F 0 "U?" H 4100 3567 50  0000 C CNN
F 1 "TL072" H 4100 3476 50  0000 C CNN
F 2 "" H 4100 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4100 3200 50  0001 C CNN
	1    4100 3200
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C609594
P 3750 3400
F 0 "#PWR?" H 3750 3150 50  0001 C CNN
F 1 "GND" H 3755 3227 50  0000 C CNN
F 2 "" H 3750 3400 50  0001 C CNN
F 3 "" H 3750 3400 50  0001 C CNN
	1    3750 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5CA8FF4D
P 2450 2200
F 0 "RV?" H 2380 2246 50  0000 R CNN
F 1 "100k" H 2380 2155 50  0000 R CNN
F 2 "" H 2450 2200 50  0001 C CNN
F 3 "~" H 2450 2200 50  0001 C CNN
	1    2450 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5CA8FFD7
P 2450 3100
F 0 "RV?" H 2380 3146 50  0000 R CNN
F 1 "100k" H 2380 3055 50  0000 R CNN
F 2 "" H 2450 3100 50  0001 C CNN
F 3 "~" H 2450 3100 50  0001 C CNN
	1    2450 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5CA90025
P 2450 3950
F 0 "RV?" H 2380 3996 50  0000 R CNN
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
Text GLabel 2200 1850 0    50   Input ~ 0
INPUT_1
Text GLabel 2200 2750 0    50   Input ~ 0
INPUT_2
Text GLabel 2200 3600 0    50   Input ~ 0
INPUT_3
Wire Wire Line
	2200 3600 2450 3600
$Comp
L power:GND #PWR?
U 1 1 5CA90440
P 2450 2350
F 0 "#PWR?" H 2450 2100 50  0001 C CNN
F 1 "GND" H 2455 2177 50  0000 C CNN
F 2 "" H 2450 2350 50  0001 C CNN
F 3 "" H 2450 2350 50  0001 C CNN
	1    2450 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CA90460
P 2450 3250
F 0 "#PWR?" H 2450 3000 50  0001 C CNN
F 1 "GND" H 2455 3077 50  0000 C CNN
F 2 "" H 2450 3250 50  0001 C CNN
F 3 "" H 2450 3250 50  0001 C CNN
	1    2450 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CA90479
P 2450 4100
F 0 "#PWR?" H 2450 3850 50  0001 C CNN
F 1 "GND" H 2455 3927 50  0000 C CNN
F 2 "" H 2450 4100 50  0001 C CNN
F 3 "" H 2450 4100 50  0001 C CNN
	1    2450 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2750 2450 2750
Wire Wire Line
	2200 1850 2450 1850
Wire Wire Line
	2450 1850 2450 2050
Wire Wire Line
	3200 3100 3350 3100
$Comp
L Device:R R?
U 1 1 5CA90B31
P 4100 2650
F 0 "R?" V 3893 2650 50  0000 C CNN
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
L Amplifier_Operational:TL072 U?
U 2 1 5CA91676
P 6000 3300
F 0 "U?" H 6000 3667 50  0000 C CNN
F 1 "TL072" H 6000 3576 50  0000 C CNN
F 2 "" H 6000 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6000 3300 50  0001 C CNN
	2    6000 3300
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5CA916E0
P 2250 6700
F 0 "U?" H 2208 6746 50  0000 L CNN
F 1 "TL072" H 2208 6655 50  0000 L CNN
F 2 "" H 2250 6700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2250 6700 50  0001 C CNN
	3    2250 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CA922B8
P 6000 2650
F 0 "R?" V 5793 2650 50  0000 C CNN
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
L power:GND #PWR?
U 1 1 5CA92A76
P 5600 3500
F 0 "#PWR?" H 5600 3250 50  0001 C CNN
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
Text GLabel 9250 3300 2    50   Input ~ 0
OUT_1
$Comp
L Device:R R?
U 1 1 5CA93171
P 6900 3300
F 0 "R?" V 6693 3300 50  0000 C CNN
F 1 "1k" V 6784 3300 50  0000 C CNN
F 2 "" V 6830 3300 50  0001 C CNN
F 3 "~" H 6900 3300 50  0001 C CNN
	1    6900 3300
	0    1    1    0   
$EndComp
Connection ~ 6300 3300
$Comp
L Device:R R?
U 1 1 5CA940C7
P 7100 2050
F 0 "R?" V 6893 2050 50  0000 C CNN
F 1 "10k" V 6984 2050 50  0000 C CNN
F 2 "" V 7030 2050 50  0001 C CNN
F 3 "~" H 7100 2050 50  0001 C CNN
	1    7100 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5CA94117
P 7100 2500
F 0 "R?" V 6893 2500 50  0000 C CNN
F 1 "10k" V 6984 2500 50  0000 C CNN
F 2 "" V 7030 2500 50  0001 C CNN
F 3 "~" H 7100 2500 50  0001 C CNN
	1    7100 2500
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 5CA9418D
P 7500 2050
F 0 "D?" H 7500 1834 50  0000 C CNN
F 1 "1N4148" H 7500 1925 50  0000 C CNN
F 2 "" H 7500 2050 50  0001 C CNN
F 3 "~" H 7500 2050 50  0001 C CNN
	1    7500 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:D D?
U 1 1 5CA941EF
P 7500 2500
F 0 "D?" H 7500 2284 50  0000 C CNN
F 1 "1N4148" H 7500 2375 50  0000 C CNN
F 2 "" H 7500 2500 50  0001 C CNN
F 3 "~" H 7500 2500 50  0001 C CNN
	1    7500 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5CA94260
P 7850 2750
F 0 "C?" H 7965 2796 50  0000 L CNN
F 1 "0.1u" H 7965 2705 50  0000 L CNN
F 2 "" H 7888 2600 50  0001 C CNN
F 3 "~" H 7850 2750 50  0001 C CNN
	1    7850 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CA942AC
P 7850 2900
F 0 "#PWR?" H 7850 2650 50  0001 C CNN
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
L Transistor_BJT:BC547 Q?
U 1 1 5CA95503
P 8250 2500
F 0 "Q?" H 8441 2546 50  0000 L CNN
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
L Device:R R?
U 1 1 5CA9630E
P 8700 2950
F 0 "R?" V 8493 2950 50  0000 C CNN
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
L power:+15V #PWR?
U 1 1 5CA96F62
P 8350 2000
F 0 "#PWR?" H 8350 1850 50  0001 C CNN
F 1 "+15V" H 8365 2173 50  0000 C CNN
F 2 "" H 8350 2000 50  0001 C CNN
F 3 "" H 8350 2000 50  0001 C CNN
	1    8350 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 2000 8350 2150
$Comp
L Device:C C?
U 1 1 5CA975D8
P 8850 2300
F 0 "C?" H 8965 2346 50  0000 L CNN
F 1 "0.1u" H 8965 2255 50  0000 L CNN
F 2 "" H 8888 2150 50  0001 C CNN
F 3 "~" H 8850 2300 50  0001 C CNN
	1    8850 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CA975DF
P 8850 2450
F 0 "#PWR?" H 8850 2200 50  0001 C CNN
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
L Device:R R?
U 1 1 5CA9BC52
P 5200 3200
F 0 "R?" V 4993 3200 50  0000 C CNN
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
L power:+15V #PWR?
U 1 1 5CA91398
P 1550 6400
F 0 "#PWR?" H 1550 6250 50  0001 C CNN
F 1 "+15V" H 1565 6573 50  0000 C CNN
F 2 "" H 1550 6400 50  0001 C CNN
F 3 "" H 1550 6400 50  0001 C CNN
	1    1550 6400
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR?
U 1 1 5CA914EA
P 1550 7000
F 0 "#PWR?" H 1550 7100 50  0001 C CNN
F 1 "-15V" H 1565 7173 50  0000 C CNN
F 2 "" H 1550 7000 50  0001 C CNN
F 3 "" H 1550 7000 50  0001 C CNN
	1    1550 7000
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5CB0C56C
P 4050 2250
F 0 "C?" V 3798 2250 50  0000 C CNN
F 1 "47p" V 3889 2250 50  0000 C CNN
F 2 "" H 4088 2100 50  0001 C CNN
F 3 "~" H 4050 2250 50  0001 C CNN
	1    4050 2250
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5CB0C8D0
P 6000 2250
F 0 "C?" V 5748 2250 50  0000 C CNN
F 1 "47p" V 5839 2250 50  0000 C CNN
F 2 "" H 6038 2100 50  0001 C CNN
F 3 "~" H 6000 2250 50  0001 C CNN
	1    6000 2250
	0    1    1    0   
$EndComp
Connection ~ 2150 6400
Connection ~ 2150 7000
$Comp
L power:GND #PWR?
U 1 1 5CB2B6FB
P 1400 6700
F 0 "#PWR?" H 1400 6450 50  0001 C CNN
F 1 "GND" V 1405 6572 50  0000 R CNN
F 2 "" H 1400 6700 50  0001 C CNN
F 3 "" H 1400 6700 50  0001 C CNN
	1    1400 6700
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5CB2D626
P 1850 6550
F 0 "C?" H 1965 6596 50  0000 L CNN
F 1 "C" H 1965 6505 50  0000 L CNN
F 2 "" H 1888 6400 50  0001 C CNN
F 3 "~" H 1850 6550 50  0001 C CNN
	1    1850 6550
	1    0    0    -1  
$EndComp
Connection ~ 1850 6400
Wire Wire Line
	1850 6400 2150 6400
Connection ~ 1850 6700
$Comp
L Device:C C?
U 1 1 5CB2DD9F
P 1850 6850
F 0 "C?" H 1965 6896 50  0000 L CNN
F 1 "C" H 1965 6805 50  0000 L CNN
F 2 "" H 1888 6700 50  0001 C CNN
F 3 "~" H 1850 6850 50  0001 C CNN
	1    1850 6850
	1    0    0    -1  
$EndComp
Connection ~ 1850 7000
Wire Wire Line
	1850 7000 2150 7000
$Comp
L Device:CP C?
U 1 1 5CB2EA19
P 2550 6550
F 0 "C?" H 2668 6596 50  0000 L CNN
F 1 "CP" H 2668 6505 50  0000 L CNN
F 2 "" H 2588 6400 50  0001 C CNN
F 3 "~" H 2550 6550 50  0001 C CNN
	1    2550 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5CB2F1AC
P 2550 6850
F 0 "C?" H 2432 6804 50  0000 R CNN
F 1 "CP" H 2432 6895 50  0000 R CNN
F 2 "" H 2588 6700 50  0001 C CNN
F 3 "~" H 2550 6850 50  0001 C CNN
	1    2550 6850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 7000 2550 7000
Wire Wire Line
	2150 6400 2550 6400
Wire Wire Line
	1850 6700 2550 6700
Connection ~ 2550 6700
Wire Wire Line
	1400 6700 1850 6700
Wire Wire Line
	1550 6400 1850 6400
Wire Wire Line
	1550 7000 1850 7000
Text GLabel 9250 2950 2    50   Input ~ 0
LED_1
$Comp
L Device:R R?
U 1 1 5CB4D16A
P 3050 4800
F 0 "R?" V 2843 4800 50  0000 C CNN
F 1 "100k" V 2934 4800 50  0000 C CNN
F 2 "" V 2980 4800 50  0001 C CNN
F 3 "~" H 3050 4800 50  0001 C CNN
	1    3050 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5CB4D170
P 2450 4800
F 0 "RV?" H 2380 4846 50  0000 R CNN
F 1 "100k" H 2380 4755 50  0000 R CNN
F 2 "" H 2450 4800 50  0001 C CNN
F 3 "~" H 2450 4800 50  0001 C CNN
	1    2450 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4800 2900 4800
Text GLabel 2200 4450 0    50   Input ~ 0
INPUT_4
Wire Wire Line
	2200 4450 2450 4450
$Comp
L power:GND #PWR?
U 1 1 5CB4D179
P 2450 4950
F 0 "#PWR?" H 2450 4700 50  0001 C CNN
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
$EndSCHEMATC
