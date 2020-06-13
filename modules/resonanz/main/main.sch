EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "resonanz"
Date "2020-06-13"
Rev "01"
Comp ""
Comment1 "schema for main circuit"
Comment2 "resonant band pass filter"
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
Text Notes 9000 5250 0    50   ~ 0
C7 and C8 are polyester capacitors
Text Notes 9000 5600 0    50   ~ 0
the opamps can be TL072 or MC1458 \nfor more vintage sound
$Comp
L Amplifier_Operational:TL072 U1
U 1 1 5EEAAAAE
P 1800 1900
F 0 "U1" H 1800 1533 50  0000 C CNN
F 1 "TL072" H 1800 1624 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 1800 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1800 1900 50  0001 C CNN
	1    1800 1900
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U3
U 2 1 5EEAAAB4
P 5800 1800
F 0 "U3" H 5800 1433 50  0000 C CNN
F 1 "TL072" H 5800 1524 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 5800 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5800 1800 50  0001 C CNN
	2    5800 1800
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U3
U 1 1 5EEAAABA
P 4550 1800
F 0 "U3" H 4550 1433 50  0000 C CNN
F 1 "TL072" H 4550 1524 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 4550 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4550 1800 50  0001 C CNN
	1    4550 1800
	1    0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5EEAAAC6
P 1100 1300
F 0 "R1" V 1307 1300 50  0000 C CNN
F 1 "47k" V 1216 1300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1030 1300 50  0001 C CNN
F 3 "~" H 1100 1300 50  0001 C CNN
	1    1100 1300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5EEAAACC
P 1100 1800
F 0 "R2" V 1307 1800 50  0000 C CNN
F 1 "47k" V 1216 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1030 1800 50  0001 C CNN
F 3 "~" H 1100 1800 50  0001 C CNN
	1    1100 1800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5EEAAAD2
P 1800 1350
F 0 "R3" V 2007 1350 50  0000 C CNN
F 1 "47k" V 1916 1350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1730 1350 50  0001 C CNN
F 3 "~" H 1800 1350 50  0001 C CNN
	1    1800 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1650 1350 1450 1350
Wire Wire Line
	1450 1350 1450 1800
Wire Wire Line
	1450 1800 1500 1800
Wire Wire Line
	1950 1350 2150 1350
Wire Wire Line
	2150 1350 2150 1900
Wire Wire Line
	2150 1900 2100 1900
$Comp
L Device:R R7
U 1 1 5EEAAADE
P 2400 1900
F 0 "R7" V 2607 1900 50  0000 C CNN
F 1 "10k" V 2516 1900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2330 1900 50  0001 C CNN
F 3 "~" H 2400 1900 50  0001 C CNN
	1    2400 1900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5EEAAAE4
P 3100 1250
F 0 "R10" V 3307 1250 50  0000 C CNN
F 1 "10k" V 3216 1250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3030 1250 50  0001 C CNN
F 3 "~" H 3100 1250 50  0001 C CNN
	1    3100 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 1250 2750 1250
Wire Wire Line
	2750 1250 2750 1700
Wire Wire Line
	3250 1250 3450 1250
Wire Wire Line
	3450 1250 3450 1800
Wire Wire Line
	2750 1700 2800 1700
Wire Wire Line
	3450 1800 3400 1800
Wire Wire Line
	1250 1300 1350 1300
Wire Wire Line
	1350 1300 1350 1800
Wire Wire Line
	1350 1800 1250 1800
Wire Wire Line
	1450 1800 1350 1800
Connection ~ 1450 1800
Connection ~ 1350 1800
$Comp
L Device:R R9
U 1 1 5EEAAAF6
P 3100 850
F 0 "R9" V 3307 850 50  0000 C CNN
F 1 "10k" V 3216 850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3030 850 50  0001 C CNN
F 3 "~" H 3100 850 50  0001 C CNN
	1    3100 850 
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R11
U 1 1 5EEAAAFC
P 3450 3250
F 0 "R11" H 3520 3296 50  0000 L CNN
F 1 "15k" H 3520 3205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3380 3250 50  0001 C CNN
F 3 "~" H 3450 3250 50  0001 C CNN
	1    3450 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5EEAAB02
P 4600 1250
F 0 "C1" V 4348 1250 50  0000 C CNN
F 1 "22n" V 4439 1250 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W5.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 4638 1100 50  0001 C CNN
F 3 "~" H 4600 1250 50  0001 C CNN
	1    4600 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 1250 4200 1700
Wire Wire Line
	4200 1700 4250 1700
Wire Wire Line
	4200 1250 4450 1250
Wire Wire Line
	4950 1250 4950 1800
Wire Wire Line
	4850 1800 4950 1800
Wire Wire Line
	4750 1250 4950 1250
Wire Wire Line
	4950 1250 4950 850 
Connection ~ 4950 1250
Wire Wire Line
	2950 850  2750 850 
Wire Wire Line
	2750 850  2750 1250
Connection ~ 2750 1250
Wire Wire Line
	2150 1900 2250 1900
Wire Wire Line
	2550 1900 2600 1900
Connection ~ 2150 1900
$Comp
L Diode:1N4148 D1
U 1 1 5EEAAB16
P 3000 2700
F 0 "D1" H 3000 2916 50  0000 C CNN
F 1 "1N4148" H 3000 2825 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P3.81mm_Vertical_AnodeUp" H 3000 2525 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3000 2700 50  0001 C CNN
	1    3000 2700
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D2
U 1 1 5EEAAB1C
P 3000 3050
F 0 "D2" H 3000 2834 50  0000 C CNN
F 1 "1N4148" H 3000 2925 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P3.81mm_Vertical_AnodeUp" H 3000 2875 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3000 3050 50  0001 C CNN
	1    3000 3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 2700 2600 2700
Connection ~ 2600 2700
Wire Wire Line
	2850 3050 2600 3050
Connection ~ 2600 3050
Wire Wire Line
	2600 3050 2600 2700
Wire Wire Line
	3450 2700 3150 2700
Wire Wire Line
	3150 3050 3450 3050
Wire Wire Line
	3450 3050 3450 2700
$Comp
L power:GND #PWR06
U 1 1 5EEAAB40
P 3450 3400
F 0 "#PWR06" H 3450 3150 50  0001 C CNN
F 1 "GND" H 3455 3227 50  0000 C CNN
F 2 "" H 3450 3400 50  0001 C CNN
F 3 "" H 3450 3400 50  0001 C CNN
	1    3450 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2700 2600 1900
Wire Wire Line
	2600 1900 2800 1900
Connection ~ 2600 1900
$Comp
L Device:R R13
U 1 1 5EEAAB58
P 3650 2700
F 0 "R13" V 3443 2700 50  0000 C CNN
F 1 "6k8" V 3534 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3580 2700 50  0001 C CNN
F 3 "~" H 3650 2700 50  0001 C CNN
	1    3650 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 850  4950 850 
$Comp
L Device:R R14
U 1 1 5EEAAB5F
P 3950 2000
F 0 "R14" H 3700 2050 50  0000 L CNN
F 1 "680" H 3700 1950 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3880 2000 50  0001 C CNN
F 3 "~" H 3950 2000 50  0001 C CNN
	1    3950 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1700 3950 1700
Wire Wire Line
	3950 1700 3950 1850
Connection ~ 4200 1700
Wire Wire Line
	3950 2950 4400 2950
Wire Wire Line
	3450 2350 4400 2350
Connection ~ 3450 1800
Wire Wire Line
	3500 2700 3450 2700
Connection ~ 3450 2700
$Comp
L Device:R R17
U 1 1 5EEAAB70
P 5200 2000
F 0 "R17" H 4950 2050 50  0000 L CNN
F 1 "680" H 4950 1950 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5130 2000 50  0001 C CNN
F 3 "~" H 5200 2000 50  0001 C CNN
	1    5200 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1700 5350 1700
Wire Wire Line
	5200 1700 5200 1850
Wire Wire Line
	5200 2350 4700 2350
Wire Wire Line
	5200 2150 5200 2350
Wire Wire Line
	3450 1800 3450 2350
Wire Wire Line
	3950 2150 3950 2950
Wire Wire Line
	3800 2700 5100 2700
Wire Wire Line
	4700 2950 5100 2950
Wire Wire Line
	5100 2950 5100 2700
Connection ~ 5100 2700
$Comp
L Device:C C2
U 1 1 5EEAAB8A
P 5750 1250
F 0 "C2" V 5498 1250 50  0000 C CNN
F 1 "22n" V 5589 1250 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W5.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 5788 1100 50  0001 C CNN
F 3 "~" H 5750 1250 50  0001 C CNN
	1    5750 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 1250 5600 1250
Wire Wire Line
	5350 1250 5350 1700
Connection ~ 5350 1700
Wire Wire Line
	5350 1700 5200 1700
Wire Wire Line
	6150 1250 6150 1800
Wire Wire Line
	5100 2700 6150 2700
Wire Wire Line
	5900 1250 6150 1250
Wire Wire Line
	6100 1800 6150 1800
Connection ~ 6150 1800
$Comp
L power:GND #PWR01
U 1 1 5EEAAB9A
P 1450 2050
F 0 "#PWR01" H 1450 1800 50  0001 C CNN
F 1 "GND" H 1455 1877 50  0000 C CNN
F 2 "" H 1450 2050 50  0001 C CNN
F 3 "" H 1450 2050 50  0001 C CNN
	1    1450 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2000 1450 2000
Wire Wire Line
	1450 2000 1450 2050
$Comp
L power:GND #PWR08
U 1 1 5EEAABA2
P 4200 1950
F 0 "#PWR08" H 4200 1700 50  0001 C CNN
F 1 "GND" H 4205 1777 50  0000 C CNN
F 2 "" H 4200 1950 50  0001 C CNN
F 3 "" H 4200 1950 50  0001 C CNN
	1    4200 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1900 4200 1900
Wire Wire Line
	4200 1900 4200 1950
$Comp
L power:GND #PWR09
U 1 1 5EEAABAA
P 5450 1950
F 0 "#PWR09" H 5450 1700 50  0001 C CNN
F 1 "GND" H 5455 1777 50  0000 C CNN
F 2 "" H 5450 1950 50  0001 C CNN
F 3 "" H 5450 1950 50  0001 C CNN
	1    5450 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1900 5450 1900
Wire Wire Line
	5450 1900 5450 1950
Wire Wire Line
	2600 3050 2600 3300
Wire Wire Line
	6150 1800 6150 2700
$Comp
L Device:R R4
U 1 1 5EED9C8C
P 1900 5150
F 0 "R4" V 1693 5150 50  0000 C CNN
F 1 "100k" V 1784 5150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1830 5150 50  0001 C CNN
F 3 "~" H 1900 5150 50  0001 C CNN
	1    1900 5150
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 2 1 5EEDB120
P 3100 1800
F 0 "U1" H 3100 2167 50  0000 C CNN
F 1 "TL072" H 3100 2076 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3100 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3100 1800 50  0001 C CNN
	2    3100 1800
	1    0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5EEE1513
P 1900 5500
F 0 "R5" V 1693 5500 50  0000 C CNN
F 1 "100k" V 1784 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1830 5500 50  0001 C CNN
F 3 "~" H 1900 5500 50  0001 C CNN
	1    1900 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5EEEFE63
P 1900 6350
F 0 "R6" V 1693 6350 50  0000 C CNN
F 1 "100k" V 1784 6350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1830 6350 50  0001 C CNN
F 3 "~" H 1900 6350 50  0001 C CNN
	1    1900 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 6350 2300 6350
Wire Wire Line
	2300 5150 2500 5150
Wire Wire Line
	2050 5150 2300 5150
Connection ~ 2300 5150
Wire Wire Line
	2050 5500 2300 5500
$Comp
L Device:R R8
U 1 1 5EF2B814
P 2850 4800
F 0 "R8" V 2643 4800 50  0000 C CNN
F 1 "100k" V 2734 4800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2780 4800 50  0001 C CNN
F 3 "~" H 2850 4800 50  0001 C CNN
	1    2850 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 4800 2500 4800
Wire Wire Line
	2500 4800 2500 5150
Connection ~ 2500 5150
Wire Wire Line
	2500 5150 2550 5150
Wire Wire Line
	3000 4800 3200 4800
Wire Wire Line
	3200 4800 3200 5250
Wire Wire Line
	3200 5250 3150 5250
$Comp
L Device:R R12
U 1 1 5EF4D1C7
P 3450 5250
F 0 "R12" V 3243 5250 50  0000 C CNN
F 1 "100k" V 3334 5250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3380 5250 50  0001 C CNN
F 3 "~" H 3450 5250 50  0001 C CNN
	1    3450 5250
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:TL072 U2
U 2 1 5EF4D8B5
P 2850 5250
F 0 "U2" H 2850 4900 50  0000 C CNN
F 1 "TL072" H 2850 5000 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2850 5250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2850 5250 50  0001 C CNN
	2    2850 5250
	1    0    0    1   
$EndComp
$Comp
L Device:R R15
U 1 1 5EF4EE16
P 4050 4850
F 0 "R15" V 3843 4850 50  0000 C CNN
F 1 "100k" V 3934 4850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3980 4850 50  0001 C CNN
F 3 "~" H 4050 4850 50  0001 C CNN
	1    4050 4850
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 5EF4F75F
P 4600 5350
F 0 "R16" V 4393 5350 50  0000 C CNN
F 1 "100k" V 4484 5350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4530 5350 50  0001 C CNN
F 3 "~" H 4600 5350 50  0001 C CNN
	1    4600 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 4850 4950 4850
Wire Wire Line
	4950 4850 4950 5350
Wire Wire Line
	4950 5350 4750 5350
Wire Wire Line
	4450 5350 4350 5350
Wire Wire Line
	3900 4850 3700 4850
Wire Wire Line
	3700 4850 3700 5250
Wire Wire Line
	3700 5250 3750 5250
Wire Wire Line
	3700 5250 3600 5250
Connection ~ 3700 5250
Wire Wire Line
	3300 5250 3200 5250
Connection ~ 3200 5250
$Comp
L power:GND #PWR05
U 1 1 5EFA56F4
P 2500 5400
F 0 "#PWR05" H 2500 5150 50  0001 C CNN
F 1 "GND" H 2505 5227 50  0000 C CNN
F 2 "" H 2500 5400 50  0001 C CNN
F 3 "" H 2500 5400 50  0001 C CNN
	1    2500 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5EFA5FC8
P 3700 5500
F 0 "#PWR07" H 3700 5250 50  0001 C CNN
F 1 "GND" H 3705 5327 50  0000 C CNN
F 2 "" H 3700 5500 50  0001 C CNN
F 3 "" H 3700 5500 50  0001 C CNN
	1    3700 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 5450 3700 5450
Wire Wire Line
	3700 5450 3700 5500
Wire Wire Line
	2550 5350 2500 5350
Wire Wire Line
	2500 5350 2500 5400
$Sheet
S 1450 4100 4800 150 
U 5EE15000
F0 "Sheet5EE14FFF" 50
F1 "band pass filters.sch" 50
$EndSheet
Text GLabel 950  1300 0    50   Input ~ 0
IN
Text GLabel 950  1800 0    50   Input ~ 0
IN_1
Text GLabel 4950 5350 2    50   Input ~ 0
OUT
Text GLabel 4400 2350 3    50   Input ~ 0
FREQ_1_a
Text GLabel 4700 2350 3    50   Input ~ 0
FREQ_1_b
Text GLabel 4400 2950 3    50   Input ~ 0
FREQ_1_c
Text GLabel 2600 3300 3    50   Input ~ 0
RES_1
Text GLabel 6150 1800 2    50   Input ~ 0
OUT_1
Text GLabel 4700 2950 3    50   Input ~ 0
OUT_1
Wire Wire Line
	3450 3100 3450 3050
Connection ~ 3450 3050
$Comp
L Amplifier_Operational:TL072 U2
U 1 1 5F14EDE8
P 4050 5350
F 0 "U2" H 4050 5000 50  0000 C CNN
F 1 "TL072" H 4050 5100 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 4050 5350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4050 5350 50  0001 C CNN
	1    4050 5350
	1    0    0    1   
$EndComp
$Sheet
S 4150 6950 2000 350 
U 5F169930
F0 "connections" 50
F1 "connections.sch" 50
$EndSheet
Text GLabel 1750 5150 0    50   Input ~ 0
MIX_1
Text GLabel 1750 5500 0    50   Input ~ 0
MIX_2
Text GLabel 1750 6350 0    50   Input ~ 0
MIX_4
$Comp
L Device:R R48
U 1 1 5EE58A16
P 1900 5900
F 0 "R48" V 1693 5900 50  0000 C CNN
F 1 "100k" V 1784 5900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1830 5900 50  0001 C CNN
F 3 "~" H 1900 5900 50  0001 C CNN
	1    1900 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 5900 2300 5900
Text GLabel 1750 5900 0    50   Input ~ 0
MIX_3
Connection ~ 2300 5500
Connection ~ 2300 5900
Wire Wire Line
	2300 5900 2300 5500
Wire Wire Line
	2300 5900 2300 6350
Wire Wire Line
	2300 5150 2300 5500
$EndSCHEMATC