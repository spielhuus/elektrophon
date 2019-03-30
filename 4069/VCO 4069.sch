EESchema Schematic File Version 4
LIBS:VCO 4069-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "VCO 4069"
Date "2019-03-02"
Rev "1"
Comp "spielhuus"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
Text Notes 950  700  0    50   ~ 0
exponential current sync
Text Notes 4900 1100 0    50   ~ 0
oscilator\n
$Comp
L 4xxx:4069 U2
U 1 1 5C574B8F
P 6400 2700
F 0 "U2" H 6400 3017 50  0000 C CNN
F 1 "4069" H 6400 2926 50  0000 C CNN
F 2 "" H 6400 2700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 6400 2700 50  0001 C CNN
	1    6400 2700
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U1
U 6 1 5C574BEF
P 6450 3900
F 0 "U1" H 6450 4217 50  0000 C CNN
F 1 "4069" H 6450 4126 50  0000 C CNN
F 2 "" H 6450 3900 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 6450 3900 50  0001 C CNN
	6    6450 3900
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U1
U 5 1 5C574C50
P 7250 5150
F 0 "U1" H 7250 5467 50  0000 C CNN
F 1 "4069" H 7250 5376 50  0000 C CNN
F 2 "" H 7250 5150 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 7250 5150 50  0001 C CNN
	5    7250 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5C574CEE
P 5800 2700
F 0 "R12" V 5593 2700 50  0000 C CNN
F 1 "10k" V 5684 2700 50  0000 C CNN
F 2 "" V 5730 2700 50  0001 C CNN
F 3 "~" H 5800 2700 50  0001 C CNN
	1    5800 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 2700 6950 2700
$Comp
L Diode:1N4148 D2
U 1 1 5C576916
P 6200 1350
F 0 "D2" H 6200 1566 50  0000 C CNN
F 1 "1N4148" H 6200 1475 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6200 1175 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 6200 1350 50  0001 C CNN
	1    6200 1350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 5C576B49
P 5300 1750
F 0 "D1" H 5300 1534 50  0000 C CNN
F 1 "1N4148" H 5300 1625 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5300 1575 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5300 1750 50  0001 C CNN
	1    5300 1750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 5C576BD1
P 5300 2100
F 0 "R10" V 5093 2100 50  0000 C CNN
F 1 "R" V 5184 2100 50  0000 C CNN
F 2 "" V 5230 2100 50  0001 C CNN
F 3 "~" H 5300 2100 50  0001 C CNN
	1    5300 2100
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5C577D10
P 5000 1900
F 0 "C2" V 4748 1900 50  0000 C CNN
F 1 "2.2n" V 4839 1900 50  0000 C CNN
F 2 "" H 5038 1750 50  0001 C CNN
F 3 "~" H 5000 1900 50  0001 C CNN
	1    5000 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 2100 5150 1900
Connection ~ 5150 1900
Wire Wire Line
	5150 1900 5150 1750
Wire Wire Line
	5450 2100 5450 1900
Wire Wire Line
	4850 2700 4850 1900
$Comp
L Device:R R15
U 1 1 5C574EAF
P 6750 1950
F 0 "R15" V 6543 1950 50  0000 C CNN
F 1 "22k" V 6634 1950 50  0000 C CNN
F 2 "" V 6680 1950 50  0001 C CNN
F 3 "~" H 6750 1950 50  0001 C CNN
	1    6750 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 1900 5600 1900
Wire Wire Line
	5600 1900 5600 2700
Connection ~ 5450 1900
Wire Wire Line
	5450 1900 5450 1750
Wire Wire Line
	5450 2700 5600 2700
Wire Wire Line
	7550 1350 6350 1350
Wire Wire Line
	6050 1350 4850 1350
Wire Wire Line
	4850 1350 4850 1900
Connection ~ 4850 1900
Wire Wire Line
	5650 2700 5600 2700
Connection ~ 5600 2700
Wire Wire Line
	5950 2700 6000 2700
Wire Wire Line
	7550 1350 7550 1950
Wire Wire Line
	6900 1950 7550 1950
Wire Wire Line
	6600 1950 6000 1950
Wire Wire Line
	6000 1950 6000 2700
Connection ~ 6000 2700
Wire Wire Line
	6000 2700 6100 2700
$Comp
L Device:R R5
U 1 1 5C5C9DDB
P 1950 2700
F 0 "R5" V 1743 2700 50  0000 C CNN
F 1 "100k" V 1834 2700 50  0000 C CNN
F 2 "" V 1880 2700 50  0001 C CNN
F 3 "~" H 1950 2700 50  0001 C CNN
	1    1950 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5C5C9E59
P 1950 1300
F 0 "R3" V 1743 1300 50  0000 C CNN
F 1 "100k" V 1834 1300 50  0000 C CNN
F 2 "" V 1880 1300 50  0001 C CNN
F 3 "~" H 1950 1300 50  0001 C CNN
	1    1950 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 5C5C9EF5
P 1250 1300
F 0 "RV2" H 1180 1346 50  0000 R CNN
F 1 "22k" H 1180 1255 50  0000 R CNN
F 2 "" H 1250 1300 50  0001 C CNN
F 3 "~" H 1250 1300 50  0001 C CNN
	1    1250 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5C5C9F82
P 1250 1450
F 0 "#PWR02" H 1250 1200 50  0001 C CNN
F 1 "GND" H 1255 1277 50  0000 C CNN
F 2 "" H 1250 1450 50  0001 C CNN
F 3 "" H 1250 1450 50  0001 C CNN
	1    1250 1450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5C5CA007
P 1250 1150
F 0 "#PWR01" H 1250 1000 50  0001 C CNN
F 1 "VCC" H 1267 1323 50  0000 C CNN
F 2 "" H 1250 1150 50  0001 C CNN
F 3 "" H 1250 1150 50  0001 C CNN
	1    1250 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV3
U 1 1 5C5CA08C
P 2800 2950
F 0 "RV3" H 2730 2996 50  0000 R CNN
F 1 "1k" H 2730 2905 50  0000 R CNN
F 2 "" H 2800 2950 50  0001 C CNN
F 3 "~" H 2800 2950 50  0001 C CNN
	1    2800 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5C5CA1CF
P 2800 3400
F 0 "#PWR03" H 2800 3150 50  0001 C CNN
F 1 "GND" H 2805 3227 50  0000 C CNN
F 2 "" H 2800 3400 50  0001 C CNN
F 3 "" H 2800 3400 50  0001 C CNN
	1    2800 3400
	1    0    0    -1  
$EndComp
Text GLabel 1300 2700 0    50   Input ~ 0
CV2-In
$Comp
L Device:Thermistor_NTC TH1
U 1 1 5C61F7E9
P 2500 1300
F 0 "TH1" V 2210 1300 50  0000 C CNN
F 1 "10k NTC" V 2301 1300 50  0000 C CNN
F 2 "" H 2500 1350 50  0001 C CNN
F 3 "~" H 2500 1350 50  0001 C CNN
	1    2500 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5C620677
P 1950 2000
F 0 "R4" V 1743 2000 50  0000 C CNN
F 1 "100k" V 1834 2000 50  0000 C CNN
F 2 "" V 1880 2000 50  0001 C CNN
F 3 "~" H 1950 2000 50  0001 C CNN
	1    1950 2000
	0    1    1    0   
$EndComp
Text GLabel 1300 2000 0    50   Input ~ 0
CV1-In
Wire Wire Line
	1800 1300 1400 1300
Wire Wire Line
	1300 2000 1800 2000
Wire Wire Line
	1300 2700 1800 2700
Wire Wire Line
	2100 1300 2350 1300
$Comp
L Device:Thermistor_NTC TH2
U 1 1 5C621793
P 2500 2000
F 0 "TH2" V 2210 2000 50  0000 C CNN
F 1 "10k NTC" V 2301 2000 50  0000 C CNN
F 2 "" H 2500 2050 50  0001 C CNN
F 3 "~" H 2500 2050 50  0001 C CNN
	1    2500 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 2000 2350 2000
$Comp
L Device:Thermistor_NTC TH3
U 1 1 5C621AE3
P 2500 2700
F 0 "TH3" V 2210 2700 50  0000 C CNN
F 1 "10k NTC" V 2301 2700 50  0000 C CNN
F 2 "" H 2500 2750 50  0001 C CNN
F 3 "~" H 2500 2750 50  0001 C CNN
	1    2500 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 2700 2350 2700
$Comp
L Transistor_BJT:BC558 Q1
U 1 1 5C622CEB
P 3400 2700
F 0 "Q1" H 3591 2746 50  0000 L CNN
F 1 "BC558" H 3591 2655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3600 2625 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 3400 2700 50  0001 L CNN
	1    3400 2700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC548 Q2
U 1 1 5C6231B3
P 3950 2300
F 0 "Q2" H 4141 2346 50  0000 L CNN
F 1 "BC548" H 4141 2255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4150 2225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 3950 2300 50  0001 L CNN
	1    3950 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5C62327C
P 3500 1700
F 0 "#PWR05" H 3500 1450 50  0001 C CNN
F 1 "GND" H 3505 1527 50  0000 C CNN
F 2 "" H 3500 1700 50  0001 C CNN
F 3 "" H 3500 1700 50  0001 C CNN
	1    3500 1700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 5C623315
P 3500 1950
F 0 "R8" H 3570 1996 50  0000 L CNN
F 1 "1M" H 3570 1905 50  0000 L CNN
F 2 "" V 3430 1950 50  0001 C CNN
F 3 "~" H 3500 1950 50  0001 C CNN
	1    3500 1950
	1    0    0    -1  
$EndComp
$Comp
L power:-VSW #PWR06
U 1 1 5C6239F6
P 3500 3100
F 0 "#PWR06" H 3500 3200 50  0001 C CNN
F 1 "-VSW" H 3515 3273 50  0000 C CNN
F 2 "" H 3500 3100 50  0001 C CNN
F 3 "" H 3500 3100 50  0001 C CNN
	1    3500 3100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5C623A60
P 4050 3100
F 0 "#PWR07" H 4050 2850 50  0001 C CNN
F 1 "GND" H 4055 2927 50  0000 C CNN
F 2 "" H 4050 3100 50  0001 C CNN
F 3 "" H 4050 3100 50  0001 C CNN
	1    4050 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2500 3500 2300
Wire Wire Line
	3500 1800 3500 1700
Wire Wire Line
	3750 2300 3500 2300
Connection ~ 3500 2300
Wire Wire Line
	3500 2300 3500 2100
Wire Wire Line
	4050 1900 4050 2100
Wire Notes Line
	4400 2100 3150 2100
Wire Notes Line
	3150 2950 4400 2950
Wire Notes Line
	4400 2950 4400 2100
Wire Notes Line
	3150 2100 3150 2950
Wire Wire Line
	4050 2500 4050 3100
Wire Wire Line
	3500 2900 3500 3100
$Comp
L Device:R R6
U 1 1 5C62D7B7
P 2800 3250
F 0 "R6" V 2593 3250 50  0000 C CNN
F 1 "100k" V 2684 3250 50  0000 C CNN
F 2 "" V 2730 3250 50  0001 C CNN
F 3 "~" H 2800 3250 50  0001 C CNN
	1    2800 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 2800 2800 2700
Wire Wire Line
	2800 1300 2650 1300
Wire Wire Line
	2650 2000 2800 2000
Connection ~ 2800 2000
Wire Wire Line
	2800 2000 2800 1300
Wire Wire Line
	2650 2700 2800 2700
Connection ~ 2800 2700
Wire Wire Line
	2800 2700 2800 2000
Wire Wire Line
	3200 2700 2800 2700
Text Notes 4150 2950 0    39   ~ 0
coupled
$Comp
L 4xxx:4069 U2
U 2 1 5C636728
P 7250 2700
F 0 "U2" H 7250 3017 50  0000 C CNN
F 1 "4069" H 7250 2926 50  0000 C CNN
F 2 "" H 7250 2700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 7250 2700 50  0001 C CNN
	2    7250 2700
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U2
U 3 1 5C6367C5
P 5150 2700
F 0 "U2" H 5150 3017 50  0000 C CNN
F 1 "4069" H 5150 2926 50  0000 C CNN
F 2 "" H 5150 2700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 5150 2700 50  0001 C CNN
	3    5150 2700
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U1
U 7 1 5C63691C
P 1100 6900
F 0 "U1" H 1330 6946 50  0000 L CNN
F 1 "4069" H 1330 6855 50  0000 L CNN
F 2 "" H 1100 6900 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 1100 6900 50  0001 C CNN
	7    1100 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2700 7550 1950
Connection ~ 7550 1950
$Comp
L Device:C C4
U 1 1 5C63902D
P 9800 6000
F 0 "C4" V 9548 6000 50  0000 C CNN
F 1 "220n" V 9639 6000 50  0000 C CNN
F 2 "" H 9838 5850 50  0001 C CNN
F 3 "~" H 9800 6000 50  0001 C CNN
	1    9800 6000
	0    1    1    0   
$EndComp
Text GLabel 10250 6000 2    50   Input ~ 0
PhaseOut
$Comp
L Device:R R21
U 1 1 5C6397CB
P 10100 6300
F 0 "R21" V 9893 6300 50  0000 C CNN
F 1 "100k" V 9984 6300 50  0000 C CNN
F 2 "" V 10030 6300 50  0001 C CNN
F 3 "~" H 10100 6300 50  0001 C CNN
	1    10100 6300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5C639896
P 10100 6650
F 0 "#PWR014" H 10100 6400 50  0001 C CNN
F 1 "GND" H 10105 6477 50  0000 C CNN
F 2 "" H 10100 6650 50  0001 C CNN
F 3 "" H 10100 6650 50  0001 C CNN
	1    10100 6650
	1    0    0    -1  
$EndComp
Text GLabel 4800 6400 0    50   Input ~ 0
PWM
$Comp
L Device:R R9
U 1 1 5C63990E
P 5200 6400
F 0 "R9" V 4993 6400 50  0000 C CNN
F 1 "100k" V 5084 6400 50  0000 C CNN
F 2 "" V 5130 6400 50  0001 C CNN
F 3 "~" H 5200 6400 50  0001 C CNN
	1    5200 6400
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5C639A1A
P 5650 6850
F 0 "R11" V 5443 6850 50  0000 C CNN
F 1 "1M" V 5534 6850 50  0000 C CNN
F 2 "" V 5580 6850 50  0001 C CNN
F 3 "~" H 5650 6850 50  0001 C CNN
	1    5650 6850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5C63A151
P 5650 7150
F 0 "#PWR08" H 5650 6900 50  0001 C CNN
F 1 "GND" H 5655 6977 50  0000 C CNN
F 2 "" H 5650 7150 50  0001 C CNN
F 3 "" H 5650 7150 50  0001 C CNN
	1    5650 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 6150 10100 6000
Wire Wire Line
	10100 6450 10100 6650
Wire Wire Line
	5650 7000 5650 7150
Wire Wire Line
	5050 6400 4800 6400
$Comp
L power:-VSW #PWR012
U 1 1 5C653D1D
P 6350 7150
F 0 "#PWR012" H 6350 7250 50  0001 C CNN
F 1 "-VSW" H 6365 7323 50  0000 C CNN
F 2 "" H 6350 7150 50  0001 C CNN
F 3 "" H 6350 7150 50  0001 C CNN
	1    6350 7150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 6400 5650 6400
Wire Wire Line
	5650 6400 5650 6700
Connection ~ 5650 6400
Wire Wire Line
	5650 6400 6050 6400
$Comp
L Device:R R14
U 1 1 5C655BAB
P 6350 7000
F 0 "R14" V 6143 7000 50  0000 C CNN
F 1 "10k" V 6234 7000 50  0000 C CNN
F 2 "" V 6280 7000 50  0001 C CNN
F 3 "~" H 6350 7000 50  0001 C CNN
	1    6350 7000
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 6850 6350 6750
$Comp
L Device:R R17
U 1 1 5C6615A5
P 6700 6750
F 0 "R17" V 6493 6750 50  0000 C CNN
F 1 "100k" V 6584 6750 50  0000 C CNN
F 2 "" V 6630 6750 50  0001 C CNN
F 3 "~" H 6700 6750 50  0001 C CNN
	1    6700 6750
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 6750 7000 6750
Wire Wire Line
	6550 6750 6350 6750
Connection ~ 6350 6750
Wire Wire Line
	6350 6750 6350 6600
Wire Wire Line
	10250 6000 10100 6000
Connection ~ 10100 6000
Wire Wire Line
	10100 6000 9950 6000
Wire Wire Line
	9650 6000 9500 6000
Text GLabel 8450 5150 2    50   Input ~ 0
TRI
$Comp
L Device:C C3
U 1 1 5C694A7A
P 7850 5150
F 0 "C3" V 7598 5150 50  0000 C CNN
F 1 "10U" V 7689 5150 50  0000 C CNN
F 2 "" H 7888 5000 50  0001 C CNN
F 3 "~" H 7850 5150 50  0001 C CNN
	1    7850 5150
	0    1    1    0   
$EndComp
Text Notes 7400 6550 0    50   ~ 0
pulsewidth modulator
Text Notes 7100 3400 0    50   ~ 0
decouple output
Connection ~ 5450 2700
$Comp
L 4xxx:4069 U1
U 1 1 5C679782
P 1450 5600
F 0 "U1" H 1450 5917 50  0000 C CNN
F 1 "4069" H 1450 5826 50  0000 C CNN
F 2 "" H 1450 5600 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 1450 5600 50  0001 C CNN
	1    1450 5600
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U1
U 2 1 5C67984E
P 2500 5600
F 0 "U1" H 2500 5283 50  0000 C CNN
F 1 "4069" H 2500 5374 50  0000 C CNN
F 2 "" H 2500 5600 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 2500 5600 50  0001 C CNN
	2    2500 5600
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U1
U 3 1 5C67997B
P 3500 5600
F 0 "U1" H 3500 5283 50  0000 C CNN
F 1 "4069" H 3500 5374 50  0000 C CNN
F 2 "" H 3500 5600 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 3500 5600 50  0001 C CNN
	3    3500 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C679C5C
P 3000 5100
F 0 "R2" V 2793 5100 50  0000 C CNN
F 1 "100k" V 2884 5100 50  0000 C CNN
F 2 "" V 2930 5100 50  0001 C CNN
F 3 "~" H 3000 5100 50  0001 C CNN
	1    3000 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5C68BE65
P 2050 5600
F 0 "R7" H 1980 5554 50  0000 R CNN
F 1 "100k" H 1980 5645 50  0000 R CNN
F 2 "" V 1980 5600 50  0001 C CNN
F 3 "~" H 2050 5600 50  0001 C CNN
	1    2050 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5C6905DA
P 2100 4600
F 0 "R1" H 2030 4554 50  0000 R CNN
F 1 "1k" H 2030 4645 50  0000 R CNN
F 2 "" V 2030 4600 50  0001 C CNN
F 3 "~" H 2100 4600 50  0001 C CNN
	1    2100 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5C692C19
P 2600 4600
F 0 "RV1" H 2530 4646 50  0000 R CNN
F 1 "1M" H 2530 4555 50  0000 R CNN
F 2 "" H 2600 4600 50  0001 C CNN
F 3 "~" H 2600 4600 50  0001 C CNN
	1    2600 4600
	0    -1   -1   0   
$EndComp
Text GLabel 2150 6200 2    50   Input ~ 0
LFO
$Comp
L Device:R_POT RV4
U 1 1 5C69A522
P 1850 6200
F 0 "RV4" H 1780 6246 50  0000 R CNN
F 1 "100k" H 1780 6155 50  0000 R CNN
F 2 "" H 1850 6200 50  0001 C CNN
F 3 "~" H 1850 6200 50  0001 C CNN
	1    1850 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5C69A76B
P 1850 6450
F 0 "#PWR04" H 1850 6200 50  0001 C CNN
F 1 "GND" H 1855 6277 50  0000 C CNN
F 2 "" H 1850 6450 50  0001 C CNN
F 3 "" H 1850 6450 50  0001 C CNN
	1    1850 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6450 1850 6350
Wire Wire Line
	2000 6200 2150 6200
Wire Wire Line
	4050 1900 4850 1900
$Comp
L Device:C C1
U 1 1 5C685CD7
P 1450 5100
F 0 "C1" V 1198 5100 50  0000 C CNN
F 1 "1.33u" V 1289 5100 50  0000 C CNN
F 2 "" H 1488 4950 50  0001 C CNN
F 3 "~" H 1450 5100 50  0001 C CNN
	1    1450 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 5600 1750 5100
Wire Wire Line
	1150 5600 1150 5100
Wire Wire Line
	1150 5100 1300 5100
Wire Wire Line
	1600 5100 1750 5100
Wire Wire Line
	1900 5600 1850 5600
Connection ~ 1750 5600
Wire Wire Line
	1850 6050 1850 5600
Connection ~ 1850 5600
Wire Wire Line
	1850 5600 1750 5600
Wire Wire Line
	2800 5600 3200 5600
Wire Wire Line
	2850 5100 2200 5100
Wire Wire Line
	2200 5100 2200 5600
Connection ~ 2200 5600
Wire Wire Line
	3150 5100 3800 5100
Wire Wire Line
	3800 5100 3800 5600
Wire Wire Line
	1150 5100 1150 4600
Wire Wire Line
	1150 4600 1950 4600
Connection ~ 1150 5100
Wire Wire Line
	2450 4600 2400 4600
Wire Wire Line
	3800 5100 3800 4600
Wire Wire Line
	3800 4600 2750 4600
Connection ~ 3800 5100
Wire Wire Line
	2600 4450 2600 4350
Wire Wire Line
	2600 4350 2400 4350
Wire Wire Line
	2400 4350 2400 4600
Connection ~ 2400 4600
Wire Wire Line
	2400 4600 2250 4600
Text Notes 1150 4400 0    50   ~ 0
Triangle LFO
Text Notes 6100 2150 0    50   ~ 0
Schmitt Trigger\n
Text Notes 2300 5300 0    50   ~ 0
Schmitt Trigger\n
$Comp
L Device:R R?
U 1 1 5CA06790
P 5700 3900
F 0 "R?" V 5493 3900 50  0000 C CNN
F 1 "1M5" V 5584 3900 50  0000 C CNN
F 2 "" V 5630 3900 50  0001 C CNN
F 3 "~" H 5700 3900 50  0001 C CNN
	1    5700 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5CA06838
P 5700 3350
F 0 "R?" V 5493 3350 50  0000 C CNN
F 1 "1M" V 5584 3350 50  0000 C CNN
F 2 "" V 5630 3350 50  0001 C CNN
F 3 "~" H 5700 3350 50  0001 C CNN
	1    5700 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5CA0A98C
P 6400 3350
F 0 "R?" V 6193 3350 50  0000 C CNN
F 1 "1M" V 6284 3350 50  0000 C CNN
F 2 "" V 6330 3350 50  0001 C CNN
F 3 "~" H 6400 3350 50  0001 C CNN
	1    6400 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 3350 6000 3350
Wire Wire Line
	5850 3900 6000 3900
Wire Wire Line
	6000 3900 6000 3350
Connection ~ 6000 3900
Wire Wire Line
	6000 3900 6150 3900
Connection ~ 6000 3350
Wire Wire Line
	6000 3350 6250 3350
Wire Wire Line
	8000 5150 8450 5150
Wire Wire Line
	6750 3900 6800 3900
Wire Wire Line
	6800 3900 6800 3350
Wire Wire Line
	6800 3350 6550 3350
Connection ~ 6800 3900
Wire Wire Line
	5450 3350 5550 3350
Wire Wire Line
	5450 2700 5450 3350
$Comp
L Device:D D?
U 1 1 5CA22EDF
P 5450 4800
F 0 "D?" V 5496 4721 50  0000 R CNN
F 1 "D" V 5405 4721 50  0000 R CNN
F 2 "" H 5450 4800 50  0001 C CNN
F 3 "~" H 5450 4800 50  0001 C CNN
	1    5450 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D?
U 1 1 5CA2303F
P 5800 4800
F 0 "D?" V 5846 4721 50  0000 R CNN
F 1 "D" V 5755 4721 50  0000 R CNN
F 2 "" H 5800 4800 50  0001 C CNN
F 3 "~" H 5800 4800 50  0001 C CNN
	1    5800 4800
	0    -1   -1   0   
$EndComp
Connection ~ 5450 3350
Wire Wire Line
	6800 3900 7300 3900
Wire Wire Line
	5800 4250 6800 4250
Wire Wire Line
	6800 4250 6800 3900
$Comp
L Device:R R?
U 1 1 5CA3BAE7
P 5450 5450
F 0 "R?" V 5243 5450 50  0000 C CNN
F 1 "1M5" V 5334 5450 50  0000 C CNN
F 2 "" V 5380 5450 50  0001 C CNN
F 3 "~" H 5450 5450 50  0001 C CNN
	1    5450 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5CA3BC2E
P 5800 5450
F 0 "C?" V 5548 5450 50  0000 C CNN
F 1 "10U" V 5639 5450 50  0000 C CNN
F 2 "" H 5838 5300 50  0001 C CNN
F 3 "~" H 5800 5450 50  0001 C CNN
	1    5800 5450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5CA3BD2E
P 6350 5150
F 0 "R?" V 6143 5150 50  0000 C CNN
F 1 "1M" V 6234 5150 50  0000 C CNN
F 2 "" V 6280 5150 50  0001 C CNN
F 3 "~" H 6350 5150 50  0001 C CNN
	1    6350 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 5300 5450 5150
Wire Wire Line
	5800 5300 5800 5150
Connection ~ 5800 5150
Wire Wire Line
	5800 5150 5800 4950
Wire Wire Line
	5800 5150 5450 5150
Connection ~ 5450 5150
Wire Wire Line
	5450 5150 5450 4950
$Comp
L Device:R R?
U 1 1 5CA4CAA4
P 7250 4550
F 0 "R?" V 7043 4550 50  0000 C CNN
F 1 "2M2" V 7134 4550 50  0000 C CNN
F 2 "" V 7180 4550 50  0001 C CNN
F 3 "~" H 7250 4550 50  0001 C CNN
	1    7250 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 3350 5450 4650
Wire Wire Line
	5800 4650 5800 4250
Wire Wire Line
	5800 5150 6200 5150
Wire Wire Line
	6500 5150 6900 5150
Wire Wire Line
	7100 4550 6900 4550
Wire Wire Line
	6900 4550 6900 5150
Connection ~ 6900 5150
Wire Wire Line
	6900 5150 6950 5150
Wire Wire Line
	7400 4550 7600 4550
Wire Wire Line
	7600 4550 7600 5150
Wire Wire Line
	7550 5150 7600 5150
Connection ~ 7600 5150
Wire Wire Line
	7600 5150 7700 5150
$Comp
L Device:R R?
U 1 1 5CA74252
P 6900 5500
F 0 "R?" V 6693 5500 50  0000 C CNN
F 1 "3M9" V 6784 5500 50  0000 C CNN
F 2 "" V 6830 5500 50  0001 C CNN
F 3 "~" H 6900 5500 50  0001 C CNN
	1    6900 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CA74506
P 6900 5650
F 0 "#PWR?" H 6900 5400 50  0001 C CNN
F 1 "GND" H 6905 5477 50  0000 C CNN
F 2 "" H 6900 5650 50  0001 C CNN
F 3 "" H 6900 5650 50  0001 C CNN
	1    6900 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CA7486D
P 5450 5600
F 0 "#PWR?" H 5450 5350 50  0001 C CNN
F 1 "GND" H 5455 5427 50  0000 C CNN
F 2 "" H 5450 5600 50  0001 C CNN
F 3 "" H 5450 5600 50  0001 C CNN
	1    5450 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CA748DC
P 5800 5600
F 0 "#PWR?" H 5800 5350 50  0001 C CNN
F 1 "GND" H 5805 5427 50  0000 C CNN
F 2 "" H 5800 5600 50  0001 C CNN
F 3 "" H 5800 5600 50  0001 C CNN
	1    5800 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5350 6900 5150
$Comp
L Device:C C?
U 1 1 5CA7AADE
P 7450 3900
F 0 "C?" V 7198 3900 50  0000 C CNN
F 1 "10U" V 7289 3900 50  0000 C CNN
F 2 "" H 7488 3750 50  0001 C CNN
F 3 "~" H 7450 3900 50  0001 C CNN
	1    7450 3900
	0    1    1    0   
$EndComp
Text GLabel 7850 3900 2    50   Input ~ 0
SAW
Wire Wire Line
	7600 3900 7850 3900
$EndSCHEMATC
