EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L Amplifier_Operational:TL072 U?
U 1 1 5EE6BAC5
P 2000 2150
F 0 "U?" H 2000 1783 50  0000 C CNN
F 1 "TL072" H 2000 1874 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2000 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2000 2150 50  0001 C CNN
	1    2000 2150
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 2 1 5EE6BACB
P 3300 2050
F 0 "U?" H 3300 1683 50  0000 C CNN
F 1 "TL072" H 3300 1774 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3300 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3300 2050 50  0001 C CNN
	2    3300 2050
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5EE6BAD1
P 4750 2050
F 0 "U?" H 4750 1683 50  0000 C CNN
F 1 "TL072" H 4750 1774 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 4750 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4750 2050 50  0001 C CNN
	1    4750 2050
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 2 1 5EE6BAD7
P 6000 2050
F 0 "U?" H 6000 2417 50  0000 C CNN
F 1 "TL072" H 6000 2326 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 6000 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6000 2050 50  0001 C CNN
	2    6000 2050
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5EE6BADD
P 1300 1550
F 0 "R?" V 1507 1550 50  0000 C CNN
F 1 "47k" V 1416 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1230 1550 50  0001 C CNN
F 3 "~" H 1300 1550 50  0001 C CNN
	1    1300 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EE6BAE3
P 1300 2050
F 0 "R?" V 1507 2050 50  0000 C CNN
F 1 "47k" V 1416 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1230 2050 50  0001 C CNN
F 3 "~" H 1300 2050 50  0001 C CNN
	1    1300 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EE6BAE9
P 2000 1600
F 0 "R?" V 2207 1600 50  0000 C CNN
F 1 "47k" V 2116 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1930 1600 50  0001 C CNN
F 3 "~" H 2000 1600 50  0001 C CNN
	1    2000 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 1600 1650 1600
Wire Wire Line
	1650 1600 1650 2050
Wire Wire Line
	1650 2050 1700 2050
Wire Wire Line
	2150 1600 2350 1600
Wire Wire Line
	2350 1600 2350 2150
Wire Wire Line
	2350 2150 2300 2150
$Comp
L Device:R R?
U 1 1 5EE6BAF5
P 2600 2150
F 0 "R?" V 2807 2150 50  0000 C CNN
F 1 "10k" V 2716 2150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2530 2150 50  0001 C CNN
F 3 "~" H 2600 2150 50  0001 C CNN
	1    2600 2150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EE6BAFB
P 3300 1500
F 0 "R?" V 3507 1500 50  0000 C CNN
F 1 "10k" V 3416 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3230 1500 50  0001 C CNN
F 3 "~" H 3300 1500 50  0001 C CNN
	1    3300 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 1500 2950 1500
Wire Wire Line
	2950 1500 2950 1950
Wire Wire Line
	3450 1500 3650 1500
Wire Wire Line
	3650 1500 3650 2050
Wire Wire Line
	2950 1950 3000 1950
Wire Wire Line
	3650 2050 3600 2050
Wire Wire Line
	1450 1550 1550 1550
Wire Wire Line
	1550 1550 1550 2050
Wire Wire Line
	1550 2050 1450 2050
Wire Wire Line
	1650 2050 1550 2050
Connection ~ 1650 2050
Connection ~ 1550 2050
$Comp
L Device:R R?
U 1 1 5EE6BB0D
P 3300 1100
F 0 "R?" V 3507 1100 50  0000 C CNN
F 1 "10k" V 3416 1100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3230 1100 50  0001 C CNN
F 3 "~" H 3300 1100 50  0001 C CNN
	1    3300 1100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EE6BB13
P 3650 3900
F 0 "R?" H 3720 3946 50  0000 L CNN
F 1 "15k" H 3720 3855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3580 3900 50  0001 C CNN
F 3 "~" H 3650 3900 50  0001 C CNN
	1    3650 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EE6BB19
P 4800 1500
F 0 "C?" V 4548 1500 50  0000 C CNN
F 1 "22n" V 4639 1500 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W5.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 4838 1350 50  0001 C CNN
F 3 "~" H 4800 1500 50  0001 C CNN
	1    4800 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 1500 4400 1950
Wire Wire Line
	4400 1950 4450 1950
Wire Wire Line
	4400 1500 4650 1500
Wire Wire Line
	5150 1500 5150 2050
Wire Wire Line
	5050 2050 5150 2050
Wire Wire Line
	4950 1500 5150 1500
Wire Wire Line
	5150 1500 5150 1100
Connection ~ 5150 1500
Wire Wire Line
	3150 1100 2950 1100
Wire Wire Line
	2950 1100 2950 1500
Connection ~ 2950 1500
Wire Wire Line
	2350 2150 2450 2150
Wire Wire Line
	2750 2150 2800 2150
Connection ~ 2350 2150
$Comp
L Diode:1N4148 D?
U 1 1 5EE6BB2D
P 3200 2950
F 0 "D?" H 3200 3166 50  0000 C CNN
F 1 "1N4148" H 3200 3075 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3200 2775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3200 2950 50  0001 C CNN
	1    3200 2950
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 5EE6BB33
P 3200 3300
F 0 "D?" H 3200 3084 50  0000 C CNN
F 1 "1N4148" H 3200 3175 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3200 3125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3200 3300 50  0001 C CNN
	1    3200 3300
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5EE6BB39
P 2800 3700
F 0 "RV?" V 2685 3700 50  0000 C CNN
F 1 "50k" V 2594 3700 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09Y11_Single_Horizontal" H 2800 3700 50  0001 C CNN
F 3 "~" H 2800 3700 50  0001 C CNN
	1    2800 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EE6BB3F
P 2450 3700
F 0 "R?" V 2243 3700 50  0000 C CNN
F 1 "4k7" V 2334 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2380 3700 50  0001 C CNN
F 3 "~" H 2450 3700 50  0001 C CNN
	1    2450 3700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EE6BB45
P 2250 3750
F 0 "#PWR?" H 2250 3500 50  0001 C CNN
F 1 "GND" H 2255 3577 50  0000 C CNN
F 2 "" H 2250 3750 50  0001 C CNN
F 3 "" H 2250 3750 50  0001 C CNN
	1    2250 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3700 2250 3700
Wire Wire Line
	2250 3700 2250 3750
Wire Wire Line
	3050 2950 2800 2950
Connection ~ 2800 2950
Wire Wire Line
	3050 3300 2800 3300
Connection ~ 2800 3300
Wire Wire Line
	2800 3300 2800 2950
Wire Wire Line
	3650 3750 3650 3300
Wire Wire Line
	3650 2950 3350 2950
Wire Wire Line
	3350 3300 3650 3300
Connection ~ 3650 3300
Wire Wire Line
	3650 3300 3650 2950
$Comp
L power:GND #PWR?
U 1 1 5EE6BB57
P 3650 4050
F 0 "#PWR?" H 3650 3800 50  0001 C CNN
F 1 "GND" H 3655 3877 50  0000 C CNN
F 2 "" H 3650 4050 50  0001 C CNN
F 3 "" H 3650 4050 50  0001 C CNN
	1    3650 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2950 2800 2150
Wire Wire Line
	2800 2150 3000 2150
Connection ~ 2800 2150
$Comp
L Device:R_POT_Dual_Separate RV?
U 1 1 5EE6BB60
P 4750 2600
F 0 "RV?" V 4635 2600 50  0000 C CNN
F 1 "100k" V 4544 2600 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK097_Dual_Horizontal" H 4750 2600 50  0001 C CNN
F 3 "~" H 4750 2600 50  0001 C CNN
	1    4750 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_POT_Dual_Separate RV?
U 2 1 5EE6BB66
P 4750 3200
F 0 "RV?" V 4635 3200 50  0000 C CNN
F 1 "100k" V 4544 3200 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK097_Dual_Horizontal" H 4750 3200 50  0001 C CNN
F 3 "~" H 4750 3200 50  0001 C CNN
	2    4750 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 3050 4600 3200
Wire Wire Line
	4750 2450 4600 2450
Wire Wire Line
	4600 2450 4600 2600
$Comp
L Device:R R?
U 1 1 5EE6BB6F
P 3850 2950
F 0 "R?" V 3643 2950 50  0000 C CNN
F 1 "6k8" V 3734 2950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3780 2950 50  0001 C CNN
F 3 "~" H 3850 2950 50  0001 C CNN
	1    3850 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 1100 5150 1100
$Comp
L Device:R R?
U 1 1 5EE6BB76
P 4150 2250
F 0 "R?" H 3900 2300 50  0000 L CNN
F 1 "680" H 3900 2200 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4080 2250 50  0001 C CNN
F 3 "~" H 4150 2250 50  0001 C CNN
	1    4150 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1950 4150 1950
Wire Wire Line
	4150 1950 4150 2100
Connection ~ 4400 1950
Wire Wire Line
	4150 3200 4600 3200
Connection ~ 4600 3200
Wire Wire Line
	3650 2600 4600 2600
Connection ~ 3650 2050
Connection ~ 4600 2600
Wire Wire Line
	4600 3050 4750 3050
Wire Wire Line
	3700 2950 3650 2950
Connection ~ 3650 2950
$Comp
L Device:R R?
U 1 1 5EE6BB87
P 5400 2250
F 0 "R?" H 5150 2300 50  0000 L CNN
F 1 "680" H 5150 2200 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5330 2250 50  0001 C CNN
F 3 "~" H 5400 2250 50  0001 C CNN
	1    5400 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1950 5550 1950
Wire Wire Line
	5400 1950 5400 2100
Wire Wire Line
	5400 2600 4900 2600
Wire Wire Line
	5400 2400 5400 2600
Wire Wire Line
	3650 2050 3650 2600
Wire Wire Line
	4150 2400 4150 3200
Wire Wire Line
	4000 2950 5300 2950
Wire Wire Line
	4900 3200 5300 3200
Wire Wire Line
	5300 3200 5300 2950
Connection ~ 5300 2950
Wire Wire Line
	2950 3700 4600 3700
Wire Wire Line
	5300 3700 5300 3200
Connection ~ 5300 3200
$Comp
L Device:R R?
U 1 1 5EE6BB9A
P 4750 3700
F 0 "R?" V 4543 3700 50  0000 C CNN
F 1 "22k" V 4634 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4680 3700 50  0001 C CNN
F 3 "~" H 4750 3700 50  0001 C CNN
	1    4750 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 3700 5300 3700
$Comp
L Device:C C?
U 1 1 5EE6BBA1
P 5950 1500
F 0 "C?" V 5698 1500 50  0000 C CNN
F 1 "22n" V 5789 1500 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W5.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 5988 1350 50  0001 C CNN
F 3 "~" H 5950 1500 50  0001 C CNN
	1    5950 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 1500 5800 1500
Wire Wire Line
	5550 1500 5550 1950
Connection ~ 5550 1950
Wire Wire Line
	5550 1950 5400 1950
Wire Wire Line
	6350 1500 6350 2050
Wire Wire Line
	5300 2950 6350 2950
Wire Wire Line
	6100 1500 6350 1500
Wire Wire Line
	6300 2050 6350 2050
Connection ~ 6350 2050
Wire Wire Line
	2600 3700 2650 3700
$Comp
L power:GND #PWR?
U 1 1 5EE6BBB1
P 1650 2300
F 0 "#PWR?" H 1650 2050 50  0001 C CNN
F 1 "GND" H 1655 2127 50  0000 C CNN
F 2 "" H 1650 2300 50  0001 C CNN
F 3 "" H 1650 2300 50  0001 C CNN
	1    1650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2250 1650 2250
Wire Wire Line
	1650 2250 1650 2300
$Comp
L power:GND #PWR?
U 1 1 5EE6BBB9
P 4400 2200
F 0 "#PWR?" H 4400 1950 50  0001 C CNN
F 1 "GND" H 4405 2027 50  0000 C CNN
F 2 "" H 4400 2200 50  0001 C CNN
F 3 "" H 4400 2200 50  0001 C CNN
	1    4400 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2150 4400 2150
Wire Wire Line
	4400 2150 4400 2200
$Comp
L power:GND #PWR?
U 1 1 5EE6BBC1
P 5650 2200
F 0 "#PWR?" H 5650 1950 50  0001 C CNN
F 1 "GND" H 5655 2027 50  0000 C CNN
F 2 "" H 5650 2200 50  0001 C CNN
F 3 "" H 5650 2200 50  0001 C CNN
	1    5650 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2150 5650 2150
Wire Wire Line
	5650 2150 5650 2200
Wire Wire Line
	2800 3300 2800 3550
Text Notes 4550 3100 1    50   ~ 0
frequency
Text Notes 2600 4150 0    50   ~ 0
resonance/\nband width
Wire Wire Line
	6350 2050 6350 2950
Text GLabel 1150 1550 0    50   Input ~ 0
IN_2_a
Text GLabel 1150 2050 0    50   Input ~ 0
IN_2_b
Text GLabel 6350 2050 2    50   Input ~ 0
OUT_2
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5EE38097
P 2150 5550
F 0 "U?" H 2150 5183 50  0000 C CNN
F 1 "TL072" H 2150 5274 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2150 5550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2150 5550 50  0001 C CNN
	1    2150 5550
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 2 1 5EE3809D
P 3450 5450
F 0 "U?" H 3450 5083 50  0000 C CNN
F 1 "TL072" H 3450 5174 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3450 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3450 5450 50  0001 C CNN
	2    3450 5450
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5EE380A3
P 4900 5450
F 0 "U?" H 4900 5083 50  0000 C CNN
F 1 "TL072" H 4900 5174 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 4900 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4900 5450 50  0001 C CNN
	1    4900 5450
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 2 1 5EE380A9
P 6150 5450
F 0 "U?" H 6150 5817 50  0000 C CNN
F 1 "TL072" H 6150 5726 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 6150 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6150 5450 50  0001 C CNN
	2    6150 5450
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5EE380AF
P 1450 4950
F 0 "R?" V 1657 4950 50  0000 C CNN
F 1 "47k" V 1566 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1380 4950 50  0001 C CNN
F 3 "~" H 1450 4950 50  0001 C CNN
	1    1450 4950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EE380B5
P 1450 5450
F 0 "R?" V 1657 5450 50  0000 C CNN
F 1 "47k" V 1566 5450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1380 5450 50  0001 C CNN
F 3 "~" H 1450 5450 50  0001 C CNN
	1    1450 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EE380BB
P 2150 5000
F 0 "R?" V 2357 5000 50  0000 C CNN
F 1 "47k" V 2266 5000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2080 5000 50  0001 C CNN
F 3 "~" H 2150 5000 50  0001 C CNN
	1    2150 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 5000 1800 5000
Wire Wire Line
	1800 5000 1800 5450
Wire Wire Line
	1800 5450 1850 5450
Wire Wire Line
	2300 5000 2500 5000
Wire Wire Line
	2500 5000 2500 5550
Wire Wire Line
	2500 5550 2450 5550
$Comp
L Device:R R?
U 1 1 5EE380C7
P 2750 5550
F 0 "R?" V 2957 5550 50  0000 C CNN
F 1 "10k" V 2866 5550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2680 5550 50  0001 C CNN
F 3 "~" H 2750 5550 50  0001 C CNN
	1    2750 5550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EE380CD
P 3450 4900
F 0 "R?" V 3657 4900 50  0000 C CNN
F 1 "10k" V 3566 4900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3380 4900 50  0001 C CNN
F 3 "~" H 3450 4900 50  0001 C CNN
	1    3450 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 4900 3100 4900
Wire Wire Line
	3100 4900 3100 5350
Wire Wire Line
	3600 4900 3800 4900
Wire Wire Line
	3800 4900 3800 5450
Wire Wire Line
	3100 5350 3150 5350
Wire Wire Line
	3800 5450 3750 5450
Wire Wire Line
	1600 4950 1700 4950
Wire Wire Line
	1700 4950 1700 5450
Wire Wire Line
	1700 5450 1600 5450
Wire Wire Line
	1800 5450 1700 5450
Connection ~ 1800 5450
Connection ~ 1700 5450
$Comp
L Device:R R?
U 1 1 5EE380DF
P 3450 4500
F 0 "R?" V 3657 4500 50  0000 C CNN
F 1 "10k" V 3566 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3380 4500 50  0001 C CNN
F 3 "~" H 3450 4500 50  0001 C CNN
	1    3450 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EE380E5
P 3800 7300
F 0 "R?" H 3870 7346 50  0000 L CNN
F 1 "15k" H 3870 7255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3730 7300 50  0001 C CNN
F 3 "~" H 3800 7300 50  0001 C CNN
	1    3800 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EE380EB
P 4950 4900
F 0 "C?" V 4698 4900 50  0000 C CNN
F 1 "22n" V 4789 4900 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W5.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 4988 4750 50  0001 C CNN
F 3 "~" H 4950 4900 50  0001 C CNN
	1    4950 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 4900 4550 5350
Wire Wire Line
	4550 5350 4600 5350
Wire Wire Line
	4550 4900 4800 4900
Wire Wire Line
	5300 4900 5300 5450
Wire Wire Line
	5200 5450 5300 5450
Wire Wire Line
	5100 4900 5300 4900
Wire Wire Line
	5300 4900 5300 4500
Connection ~ 5300 4900
Wire Wire Line
	3300 4500 3100 4500
Wire Wire Line
	3100 4500 3100 4900
Connection ~ 3100 4900
Wire Wire Line
	2500 5550 2600 5550
Wire Wire Line
	2900 5550 2950 5550
Connection ~ 2500 5550
$Comp
L Diode:1N4148 D?
U 1 1 5EE380FF
P 3350 6350
F 0 "D?" H 3350 6566 50  0000 C CNN
F 1 "1N4148" H 3350 6475 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3350 6175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3350 6350 50  0001 C CNN
	1    3350 6350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 5EE38105
P 3350 6700
F 0 "D?" H 3350 6484 50  0000 C CNN
F 1 "1N4148" H 3350 6575 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3350 6525 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3350 6700 50  0001 C CNN
	1    3350 6700
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5EE3810B
P 2950 7100
F 0 "RV?" V 2835 7100 50  0000 C CNN
F 1 "50k" V 2744 7100 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09Y11_Single_Horizontal" H 2950 7100 50  0001 C CNN
F 3 "~" H 2950 7100 50  0001 C CNN
	1    2950 7100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EE38111
P 2600 7100
F 0 "R?" V 2393 7100 50  0000 C CNN
F 1 "4k7" V 2484 7100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2530 7100 50  0001 C CNN
F 3 "~" H 2600 7100 50  0001 C CNN
	1    2600 7100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EE38117
P 2400 7150
F 0 "#PWR?" H 2400 6900 50  0001 C CNN
F 1 "GND" H 2405 6977 50  0000 C CNN
F 2 "" H 2400 7150 50  0001 C CNN
F 3 "" H 2400 7150 50  0001 C CNN
	1    2400 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 7100 2400 7100
Wire Wire Line
	2400 7100 2400 7150
Wire Wire Line
	3200 6350 2950 6350
Connection ~ 2950 6350
Wire Wire Line
	3200 6700 2950 6700
Connection ~ 2950 6700
Wire Wire Line
	2950 6700 2950 6350
Wire Wire Line
	3800 7150 3800 6700
Wire Wire Line
	3800 6350 3500 6350
Wire Wire Line
	3500 6700 3800 6700
Connection ~ 3800 6700
Wire Wire Line
	3800 6700 3800 6350
$Comp
L power:GND #PWR?
U 1 1 5EE38129
P 3800 7450
F 0 "#PWR?" H 3800 7200 50  0001 C CNN
F 1 "GND" H 3805 7277 50  0000 C CNN
F 2 "" H 3800 7450 50  0001 C CNN
F 3 "" H 3800 7450 50  0001 C CNN
	1    3800 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 6350 2950 5550
Wire Wire Line
	2950 5550 3150 5550
Connection ~ 2950 5550
$Comp
L Device:R_POT_Dual_Separate RV?
U 1 1 5EE38132
P 4900 6000
F 0 "RV?" V 4785 6000 50  0000 C CNN
F 1 "100k" V 4694 6000 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK097_Dual_Horizontal" H 4900 6000 50  0001 C CNN
F 3 "~" H 4900 6000 50  0001 C CNN
	1    4900 6000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_POT_Dual_Separate RV?
U 2 1 5EE38138
P 4900 6600
F 0 "RV?" V 4785 6600 50  0000 C CNN
F 1 "100k" V 4694 6600 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK097_Dual_Horizontal" H 4900 6600 50  0001 C CNN
F 3 "~" H 4900 6600 50  0001 C CNN
	2    4900 6600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4750 6450 4750 6600
Wire Wire Line
	4900 5850 4750 5850
Wire Wire Line
	4750 5850 4750 6000
$Comp
L Device:R R?
U 1 1 5EE38141
P 4000 6350
F 0 "R?" V 3793 6350 50  0000 C CNN
F 1 "6k8" V 3884 6350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3930 6350 50  0001 C CNN
F 3 "~" H 4000 6350 50  0001 C CNN
	1    4000 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 4500 5300 4500
$Comp
L Device:R R?
U 1 1 5EE38148
P 4300 5650
F 0 "R?" H 4050 5700 50  0000 L CNN
F 1 "680" H 4050 5600 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4230 5650 50  0001 C CNN
F 3 "~" H 4300 5650 50  0001 C CNN
	1    4300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5350 4300 5350
Wire Wire Line
	4300 5350 4300 5500
Connection ~ 4550 5350
Wire Wire Line
	4300 6600 4750 6600
Connection ~ 4750 6600
Wire Wire Line
	3800 6000 4750 6000
Connection ~ 3800 5450
Connection ~ 4750 6000
Wire Wire Line
	4750 6450 4900 6450
Wire Wire Line
	3850 6350 3800 6350
Connection ~ 3800 6350
$Comp
L Device:R R?
U 1 1 5EE38159
P 5550 5650
F 0 "R?" H 5300 5700 50  0000 L CNN
F 1 "680" H 5300 5600 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5480 5650 50  0001 C CNN
F 3 "~" H 5550 5650 50  0001 C CNN
	1    5550 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5350 5700 5350
Wire Wire Line
	5550 5350 5550 5500
Wire Wire Line
	5550 6000 5050 6000
Wire Wire Line
	5550 5800 5550 6000
Wire Wire Line
	3800 5450 3800 6000
Wire Wire Line
	4300 5800 4300 6600
Wire Wire Line
	4150 6350 5450 6350
Wire Wire Line
	5050 6600 5450 6600
Wire Wire Line
	5450 6600 5450 6350
Connection ~ 5450 6350
Wire Wire Line
	3100 7100 4750 7100
Wire Wire Line
	5450 7100 5450 6600
Connection ~ 5450 6600
$Comp
L Device:R R?
U 1 1 5EE3816C
P 4900 7100
F 0 "R?" V 4693 7100 50  0000 C CNN
F 1 "22k" V 4784 7100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4830 7100 50  0001 C CNN
F 3 "~" H 4900 7100 50  0001 C CNN
	1    4900 7100
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 7100 5450 7100
$Comp
L Device:C C?
U 1 1 5EE38173
P 6100 4900
F 0 "C?" V 5848 4900 50  0000 C CNN
F 1 "22n" V 5939 4900 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W5.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 6138 4750 50  0001 C CNN
F 3 "~" H 6100 4900 50  0001 C CNN
	1    6100 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 4900 5950 4900
Wire Wire Line
	5700 4900 5700 5350
Connection ~ 5700 5350
Wire Wire Line
	5700 5350 5550 5350
Wire Wire Line
	6500 4900 6500 5450
Wire Wire Line
	5450 6350 6500 6350
Wire Wire Line
	6250 4900 6500 4900
Wire Wire Line
	6450 5450 6500 5450
Connection ~ 6500 5450
Wire Wire Line
	2750 7100 2800 7100
$Comp
L power:GND #PWR?
U 1 1 5EE38183
P 1800 5700
F 0 "#PWR?" H 1800 5450 50  0001 C CNN
F 1 "GND" H 1805 5527 50  0000 C CNN
F 2 "" H 1800 5700 50  0001 C CNN
F 3 "" H 1800 5700 50  0001 C CNN
	1    1800 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 5650 1800 5650
Wire Wire Line
	1800 5650 1800 5700
$Comp
L power:GND #PWR?
U 1 1 5EE3818B
P 4550 5600
F 0 "#PWR?" H 4550 5350 50  0001 C CNN
F 1 "GND" H 4555 5427 50  0000 C CNN
F 2 "" H 4550 5600 50  0001 C CNN
F 3 "" H 4550 5600 50  0001 C CNN
	1    4550 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5550 4550 5550
Wire Wire Line
	4550 5550 4550 5600
$Comp
L power:GND #PWR?
U 1 1 5EE38193
P 5800 5600
F 0 "#PWR?" H 5800 5350 50  0001 C CNN
F 1 "GND" H 5805 5427 50  0000 C CNN
F 2 "" H 5800 5600 50  0001 C CNN
F 3 "" H 5800 5600 50  0001 C CNN
	1    5800 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5550 5800 5550
Wire Wire Line
	5800 5550 5800 5600
Wire Wire Line
	2950 6700 2950 6950
Text Notes 4700 6500 1    50   ~ 0
frequency
Text Notes 2750 7550 0    50   ~ 0
resonance/\nband width
Wire Wire Line
	6500 5450 6500 6350
Text GLabel 1300 4950 0    50   Input ~ 0
IN_3_a
Text GLabel 1300 5450 0    50   Input ~ 0
IN_3_b
Text GLabel 6500 5450 2    50   Input ~ 0
OUT_3
$EndSCHEMATC
