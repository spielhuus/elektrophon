EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Power Supply"
Date "2019-12-26"
Rev "01"
Comp ""
Comment1 "main circuit"
Comment2 "Wall Wart Power Supply (+15V/-15V/5V)"
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
$Comp
L Diode:1N4004 D1
U 1 1 5C605131
P 1800 1400
F 0 "D1" H 1800 1184 50  0000 C CNN
F 1 "1N4004" H 1800 1275 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 1800 1225 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 1800 1400 50  0001 C CNN
	1    1800 1400
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4004 D2
U 1 1 5C605216
P 1800 3300
F 0 "D2" H 1800 3516 50  0000 C CNN
F 1 "1N4004" H 1800 3425 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 1800 3125 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 1800 3300 50  0001 C CNN
	1    1800 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C1
U 1 1 5C605282
P 2300 1800
F 0 "C1" H 2415 1846 50  0000 L CNN
F 1 "3300uF" H 2415 1755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D12.5mm_P5.00mm" H 2300 1800 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/293/UBY_e-1280407.pdf" H 2300 1800 50  0001 C CNN
F 4 "Aluminium Electrolytic Capacitor, 35V, D=12.5 mm, LS=5 mm" H 2300 1800 50  0001 C CNN "Description"
	1    2300 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C3
U 1 1 5C6052C4
P 3000 1800
F 0 "C3" H 3115 1846 50  0000 L CNN
F 1 "3300uF" H 3115 1755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D12.5mm_P5.00mm" H 3000 1800 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/293/UBY_e-1280407.pdf" H 3000 1800 50  0001 C CNN
F 4 "Aluminium Electrolytic Capacitor, 35V, D=12.5 mm, LS=5 mm" H 3000 1800 50  0001 C CNN "Description"
	1    3000 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C5
U 1 1 5C6052FE
P 3700 1800
F 0 "C5" H 3815 1846 50  0000 L CNN
F 1 "3300uF" H 3815 1755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D12.5mm_P5.00mm" H 3700 1800 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/293/UBY_e-1280407.pdf" H 3700 1800 50  0001 C CNN
F 4 "Aluminium Electrolytic Capacitor, 35V, D=12.5 mm, LS=5 mm" H 3700 1800 50  0001 C CNN "Description"
	1    3700 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C7
U 1 1 5C605355
P 4400 1800
F 0 "C7" H 4515 1846 50  0000 L CNN
F 1 "1uF" H 4515 1755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4400 1800 50  0001 C CNN
F 3 "~" H 4400 1800 50  0001 C CNN
F 4 "Aluminium Electrolytic Capacitor, 35V, D=5 mm, LS=2 mm" H 4400 1800 50  0001 C CNN "Description"
	1    4400 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C2
U 1 1 5C606170
P 2300 3800
F 0 "C2" H 2185 3754 50  0000 R CNN
F 1 "3300uF" H 2185 3845 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D12.5mm_P5.00mm" H 2300 3800 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/293/UBY_e-1280407.pdf" H 2300 3800 50  0001 C CNN
F 4 "Aluminium Electrolytic Capacitor, 35V, D=12.5 mm, LS=5 mm" H 2300 3800 50  0001 C CNN "Description"
	1    2300 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1 C4
U 1 1 5C6061C2
P 3000 3800
F 0 "C4" H 2885 3754 50  0000 R CNN
F 1 "3300uF" H 2885 3845 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D12.5mm_P5.00mm" H 3000 3800 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/293/UBY_e-1280407.pdf" H 3000 3800 50  0001 C CNN
F 4 "Aluminium Electrolytic Capacitor, 35V, D=12.5 mm, LS=5 mm" H 3000 3800 50  0001 C CNN "Description"
	1    3000 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1 C6
U 1 1 5C6061FA
P 3700 3800
F 0 "C6" H 3585 3754 50  0000 R CNN
F 1 "3300uF" H 3585 3845 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D12.5mm_P5.00mm" H 3700 3800 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/293/UBY_e-1280407.pdf" H 3700 3800 50  0001 C CNN
F 4 "Aluminium Electrolytic Capacitor, 35V, D=12.5 mm, LS=5 mm" H 3700 3800 50  0001 C CNN "Description"
	1    3700 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1 C8
U 1 1 5C60623E
P 4400 3800
F 0 "C8" H 4285 3754 50  0000 R CNN
F 1 "1uF" H 4285 3845 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4400 3800 50  0001 C CNN
F 3 "~" H 4400 3800 50  0001 C CNN
F 4 "Aluminium Electrolytic Capacitor, 35V, D=5 mm, LS=2 mm" H 4400 3800 50  0001 C CNN "Description"
	1    4400 3800
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4004 D5
U 1 1 5C6066FA
P 6550 1800
F 0 "D5" V 6504 1879 50  0000 L CNN
F 1 "1N4004" V 6595 1879 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 6550 1625 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6550 1800 50  0001 C CNN
	1    6550 1800
	0    1    1    0   
$EndComp
$Comp
L Device:CP1 C9
U 1 1 5C6067C2
P 6050 1800
F 0 "C9" H 6165 1846 50  0000 L CNN
F 1 "1uF" H 6165 1755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 6050 1800 50  0001 C CNN
F 3 "~" H 6050 1800 50  0001 C CNN
F 4 "Aluminium Electrolytic Capacitor, 35V, D=5 mm, LS=2 mm" H 6050 1800 50  0001 C CNN "Description"
	1    6050 1800
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4004 D3
U 1 1 5C6068A3
P 5250 850
F 0 "D3" H 5250 1066 50  0000 C CNN
F 1 "1N4004" H 5250 975 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5250 675 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 5250 850 50  0001 C CNN
	1    5250 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1400 2300 1400
Wire Wire Line
	2300 1650 2300 1400
Connection ~ 2300 1400
Wire Wire Line
	2300 1400 3000 1400
Wire Wire Line
	3000 1650 3000 1400
Connection ~ 3000 1400
Wire Wire Line
	3000 1400 3700 1400
Wire Wire Line
	3700 1650 3700 1400
Connection ~ 3700 1400
Wire Wire Line
	3700 1400 4400 1400
Wire Wire Line
	4400 1650 4400 1400
Wire Wire Line
	2300 1950 2300 2250
Wire Wire Line
	2300 2250 3000 2250
Wire Wire Line
	3000 1950 3000 2250
Connection ~ 3000 2250
Wire Wire Line
	3700 1950 3700 2250
Wire Wire Line
	3000 2250 3700 2250
Connection ~ 3700 2250
Wire Wire Line
	3700 2250 4400 2250
Wire Wire Line
	4400 1950 4400 2250
Connection ~ 4400 2250
Wire Wire Line
	4400 2250 5250 2250
Wire Wire Line
	6550 2250 6550 1950
Wire Wire Line
	6550 1650 6550 1400
Wire Wire Line
	6050 1650 6050 1400
Wire Wire Line
	6050 1950 6050 2250
Connection ~ 6050 2250
Wire Wire Line
	6050 2250 6550 2250
Connection ~ 4400 1400
Connection ~ 6050 1400
Wire Wire Line
	6050 1400 5750 1400
Connection ~ 6550 1400
Wire Wire Line
	6550 1400 6050 1400
Wire Wire Line
	4750 1400 4750 850 
Wire Wire Line
	4750 850  5100 850 
Connection ~ 4750 1400
Wire Wire Line
	4750 1400 4400 1400
Wire Wire Line
	5400 850  5750 850 
Wire Wire Line
	5750 850  5750 1400
Connection ~ 5750 1400
Wire Wire Line
	5250 1700 5250 2250
Connection ~ 5250 2250
Wire Wire Line
	5250 2250 6050 2250
Wire Wire Line
	1650 3300 1500 3300
Wire Wire Line
	5550 3300 5750 3300
Wire Wire Line
	1950 3300 2300 3300
$Comp
L Device:CP1 C10
U 1 1 5C60E44D
P 6050 3800
F 0 "C10" H 5935 3754 50  0000 R CNN
F 1 "1uF" H 5935 3845 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 6050 3800 50  0001 C CNN
F 3 "~" H 6050 3800 50  0001 C CNN
F 4 "Aluminium Electrolytic Capacitor, 35V, D=5 mm, LS=2 mm" H 6050 3800 50  0001 C CNN "Description"
	1    6050 3800
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4004 D6
U 1 1 5C60E4E9
P 6550 3800
F 0 "D6" V 6596 3721 50  0000 R CNN
F 1 "1N4004" V 6505 3721 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 6550 3625 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6550 3800 50  0001 C CNN
	1    6550 3800
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4004 D4
U 1 1 5C60E5C2
P 5250 2850
F 0 "D4" H 5250 2634 50  0000 C CNN
F 1 "1N4004" H 5250 2725 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5250 2675 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 5250 2850 50  0001 C CNN
	1    5250 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 1400 1500 1400
Wire Wire Line
	1500 3300 1500 1400
Connection ~ 1500 1400
Wire Wire Line
	1500 1400 1650 1400
Wire Wire Line
	2300 3650 2300 3300
Connection ~ 2300 3300
Wire Wire Line
	2300 3300 3000 3300
Wire Wire Line
	3000 3650 3000 3300
Connection ~ 3000 3300
Wire Wire Line
	3000 3300 3700 3300
Wire Wire Line
	3700 3650 3700 3300
Connection ~ 3700 3300
Wire Wire Line
	3700 3300 4400 3300
Wire Wire Line
	4400 3650 4400 3300
Connection ~ 4400 3300
Wire Wire Line
	4400 3300 4800 3300
Wire Wire Line
	6550 2250 6900 2250
Wire Wire Line
	8050 2250 8050 4250
Wire Wire Line
	8050 4250 6550 4250
Connection ~ 6550 2250
Connection ~ 6900 2250
Wire Wire Line
	6900 2250 8050 2250
Wire Wire Line
	6050 3650 6050 3300
Connection ~ 6050 3300
Wire Wire Line
	6050 3300 6550 3300
Wire Wire Line
	6550 3650 6550 3300
Connection ~ 6550 3300
Wire Wire Line
	2300 3950 2300 4250
Connection ~ 2300 4250
Wire Wire Line
	2300 4250 1400 4250
Wire Wire Line
	3000 3950 3000 4250
Connection ~ 3000 4250
Wire Wire Line
	3000 4250 2300 4250
Wire Wire Line
	3700 3950 3700 4250
Connection ~ 3700 4250
Wire Wire Line
	3700 4250 3000 4250
Wire Wire Line
	4400 3950 4400 4250
Connection ~ 4400 4250
Wire Wire Line
	4400 4250 3700 4250
Wire Wire Line
	5250 3600 5250 4250
Connection ~ 5250 4250
Wire Wire Line
	5250 4250 4400 4250
Wire Wire Line
	6050 3950 6050 4250
Connection ~ 6050 4250
Wire Wire Line
	6050 4250 5250 4250
Wire Wire Line
	6550 3950 6550 4250
Connection ~ 6550 4250
Wire Wire Line
	6550 4250 6050 4250
Wire Wire Line
	5100 2850 4800 2850
Wire Wire Line
	4800 2850 4800 3300
Connection ~ 4800 3300
Wire Wire Line
	4800 3300 4900 3300
Wire Wire Line
	5400 2850 5750 2850
Wire Wire Line
	5750 2850 5750 3300
Connection ~ 5750 3300
Wire Wire Line
	5750 3300 6050 3300
$Comp
L power:+12V #PWR01
U 1 1 5C8BFF06
P 1650 6200
F 0 "#PWR01" H 1650 6050 50  0001 C CNN
F 1 "+12V" V 1665 6328 50  0000 L CNN
F 2 "" H 1650 6200 50  0001 C CNN
F 3 "" H 1650 6200 50  0001 C CNN
	1    1650 6200
	0    1    1    0   
$EndComp
$Comp
L Regulator_Linear:L7805 U3
U 1 1 5C8E260C
P 9400 1500
F 0 "U3" H 9400 1742 50  0000 C CNN
F 1 "L7805" H 9400 1651 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 9425 1350 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 9400 1450 50  0001 C CNN
F 4 "Positive 1.5A 35V Linear Regulator, Fixed Output 5V" H 9400 1500 50  0001 C CNN "Description"
	1    9400 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5C8E27F0
P 8900 1700
F 0 "C11" H 9015 1746 50  0000 L CNN
F 1 "0.33" H 9015 1655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 8938 1550 50  0001 C CNN
F 3 "~" H 8900 1700 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC" H 8900 1700 50  0001 C CNN "Description"
	1    8900 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5C8E283A
P 9850 1700
F 0 "C12" H 9965 1746 50  0000 L CNN
F 1 "0.1" H 9965 1655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9888 1550 50  0001 C CNN
F 3 "~" H 9850 1700 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC" H 9850 1700 50  0001 C CNN "Description"
	1    9850 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1500 9050 1500
Wire Wire Line
	8900 1500 8900 1550
Wire Wire Line
	8900 1900 8900 1850
Wire Wire Line
	9850 1900 9850 1850
Wire Wire Line
	9850 1550 9850 1500
Wire Wire Line
	8650 1500 8900 1500
Connection ~ 8900 1500
Connection ~ 9850 1500
Wire Wire Line
	9400 2050 9400 1900
Wire Wire Line
	6550 3300 7100 3300
$Comp
L power:GND #PWR03
U 1 1 5C90D2CB
P 6900 2550
F 0 "#PWR03" H 6900 2300 50  0001 C CNN
F 1 "GND" H 6905 2377 50  0000 C CNN
F 2 "" H 6900 2550 50  0001 C CNN
F 3 "" H 6900 2550 50  0001 C CNN
	1    6900 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 1500 9850 1500
$Comp
L Regulator_Linear:L7815 U1
U 1 1 5C8C0BDB
P 5250 1400
F 0 "U1" H 5250 1642 50  0000 C CNN
F 1 "L7815" H 5250 1551 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5275 1250 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 5250 1350 50  0001 C CNN
F 4 "Positive 1.5A 35V Linear Regulator, Fixed Output 15V, TO-220" H 5250 1400 50  0001 C CNN "Description"
	1    5250 1400
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7915 U2
U 1 1 5C8C0D03
P 5250 3300
F 0 "U2" H 5250 3150 50  0000 C CNN
F 1 "L7915" H 5250 3059 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5250 3100 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/c9/16/86/41/c7/2b/45/f2/CD00000450.pdf/files/CD00000450.pdf/jcr:content/translations/en.CD00000450.pdf" H 5250 3300 50  0001 C CNN
F 4 "Negative 1.5A 35V Linear Regulator, Fixed Output -15V, TO-220" H 5250 3300 50  0001 C CNN "Description"
	1    5250 3300
	1    0    0    1   
$EndComp
Wire Wire Line
	6550 1400 7100 1400
Wire Wire Line
	6900 2250 6900 2550
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5C8FC0CD
P 1400 4250
F 0 "#FLG01" H 1400 4325 50  0001 C CNN
F 1 "PWR_FLAG" H 1400 4424 50  0000 C CNN
F 2 "" H 1400 4250 50  0001 C CNN
F 3 "~" H 1400 4250 50  0001 C CNN
	1    1400 4250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 5C8FCEE1
P 10050 1500
F 0 "#PWR016" H 10050 1350 50  0001 C CNN
F 1 "+5V" V 10065 1628 50  0000 L CNN
F 2 "" H 10050 1500 50  0001 C CNN
F 3 "" H 10050 1500 50  0001 C CNN
	1    10050 1500
	0    1    1    0   
$EndComp
Text Label 7100 1400 0    50   ~ 0
+15V
Text Label 7100 3300 0    50   ~ 0
-15V
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5C8E3AF5
P 4900 3300
F 0 "#FLG03" H 4900 3375 50  0001 C CNN
F 1 "PWR_FLAG" H 4900 3474 50  0000 C CNN
F 2 "" H 4900 3300 50  0001 C CNN
F 3 "~" H 4900 3300 50  0001 C CNN
	1    4900 3300
	-1   0    0    1   
$EndComp
Connection ~ 4900 3300
Wire Wire Line
	4900 3300 4950 3300
Text Notes 1500 950  0    94   ~ 0
+-15V Regulator
Text Notes 8850 1000 0    94   ~ 0
5V Regulator
Text Notes 1250 7300 0    55   ~ 0
Power IN
Wire Wire Line
	9700 1500 9850 1500
Wire Wire Line
	4900 1400 4750 1400
Wire Wire Line
	4950 1400 4900 1400
Connection ~ 4900 1400
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5C8E3C2B
P 4900 1400
F 0 "#FLG02" H 4900 1475 50  0001 C CNN
F 1 "PWR_FLAG" H 4900 1574 50  0000 C CNN
F 2 "" H 4900 1400 50  0001 C CNN
F 3 "~" H 4900 1400 50  0001 C CNN
	1    4900 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 1400 5550 1400
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5E1DE6FF
P 9050 1500
F 0 "#FLG04" H 9050 1575 50  0001 C CNN
F 1 "PWR_FLAG" H 9050 1674 50  0000 C CNN
F 2 "" H 9050 1500 50  0001 C CNN
F 3 "~" H 9050 1500 50  0001 C CNN
	1    9050 1500
	1    0    0    -1  
$EndComp
Connection ~ 9050 1500
Wire Wire Line
	9050 1500 9100 1500
Wire Wire Line
	8900 1900 9400 1900
Connection ~ 9400 1900
Wire Wire Line
	9400 1900 9400 1800
Wire Wire Line
	9400 1900 9850 1900
Text GLabel 1650 6800 2    50   Input ~ 0
15V_AC
Text GLabel 1650 7000 2    50   Input ~ 0
15V_N
Text GLabel 1400 4250 0    50   Input ~ 0
15V_N
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J15
U 1 1 6085F53E
P 7800 4950
F 0 "J15" H 7850 5367 50  0000 C CNN
F 1 "IDC Header" H 7850 5276 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 7800 4950 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/418/7/ENG_CD_1761682_A1-2019262.pdf" H 7800 4950 50  0001 C CNN
F 4 "Pin Header IDC, 10 Pos, 2.54mm" H 7800 4950 50  0001 C CNN "Description"
	1    7800 4950
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J13
U 1 1 6085FFF3
P 7300 4950
F 0 "J13" H 7350 5367 50  0000 C CNN
F 1 "IDC Header" H 7350 5276 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 7300 4950 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/418/7/ENG_CD_1761682_A1-2019262.pdf" H 7300 4950 50  0001 C CNN
F 4 "Pin Header IDC, 10 Pos, 2.54mm" H 7300 4950 50  0001 C CNN "Description"
	1    7300 4950
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J11
U 1 1 60860AD9
P 6800 4950
F 0 "J11" H 6850 5367 50  0000 C CNN
F 1 "IDC Header" H 6850 5276 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 6800 4950 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/418/7/ENG_CD_1761682_A1-2019262.pdf" H 6800 4950 50  0001 C CNN
F 4 "Pin Header IDC, 10 Pos, 2.54mm" H 6800 4950 50  0001 C CNN "Description"
	1    6800 4950
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J9
U 1 1 60861980
P 6300 4950
F 0 "J9" H 6350 5367 50  0000 C CNN
F 1 "IDC Header" H 6350 5276 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 6300 4950 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/418/7/ENG_CD_1761682_A1-2019262.pdf" H 6300 4950 50  0001 C CNN
F 4 "Pin Header IDC, 10 Pos, 2.54mm" H 6300 4950 50  0001 C CNN "Description"
	1    6300 4950
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J7
U 1 1 60862415
P 5800 4950
F 0 "J7" H 5850 5367 50  0000 C CNN
F 1 "IDC Header" H 5850 5276 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 5800 4950 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/418/7/ENG_CD_1761682_A1-2019262.pdf" H 5800 4950 50  0001 C CNN
F 4 "Pin Header IDC, 10 Pos, 2.54mm" H 5800 4950 50  0001 C CNN "Description"
	1    5800 4950
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J5
U 1 1 60863109
P 5300 4950
F 0 "J5" H 5350 5367 50  0000 C CNN
F 1 "IDC Header" H 5350 5276 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 5300 4950 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/418/7/ENG_CD_1761682_A1-2019262.pdf" H 5300 4950 50  0001 C CNN
F 4 "Pin Header IDC, 10 Pos, 2.54mm" H 5300 4950 50  0001 C CNN "Description"
	1    5300 4950
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J3
U 1 1 60863F66
P 4800 4950
F 0 "J3" H 4850 5367 50  0000 C CNN
F 1 "IDC Header" H 4850 5276 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 4800 4950 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/418/7/ENG_CD_1761682_A1-2019262.pdf" H 4800 4950 50  0001 C CNN
F 4 "Pin Header IDC, 10 Pos, 2.54mm" H 4800 4950 50  0001 C CNN "Description"
	1    4800 4950
	-1   0    0    1   
$EndComp
Connection ~ 5000 4750
Wire Wire Line
	5000 4750 4500 4750
Connection ~ 5500 4750
Wire Wire Line
	5500 4750 5000 4750
Connection ~ 6000 4750
Wire Wire Line
	6000 4750 5500 4750
Connection ~ 6500 4750
Wire Wire Line
	6500 4750 6000 4750
Connection ~ 7000 4750
Wire Wire Line
	7000 4750 6500 4750
Connection ~ 7500 4750
Wire Wire Line
	7500 4750 7000 4750
Connection ~ 8000 4750
Wire Wire Line
	8000 4750 7500 4750
$Comp
L power:-15V #PWR08
U 1 1 6086FDA1
P 8550 5150
F 0 "#PWR08" H 8550 5250 50  0001 C CNN
F 1 "-15V" V 8565 5278 50  0000 L CNN
F 2 "" H 8550 5150 50  0001 C CNN
F 3 "" H 8550 5150 50  0001 C CNN
	1    8550 5150
	0    1    1    0   
$EndComp
$Comp
L power:+15V #PWR07
U 1 1 6086ED52
P 8550 5050
F 0 "#PWR07" H 8550 4900 50  0001 C CNN
F 1 "+15V" V 8565 5178 50  0000 L CNN
F 2 "" H 8550 5050 50  0001 C CNN
F 3 "" H 8550 5050 50  0001 C CNN
	1    8550 5050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6086DF4D
P 8550 4950
F 0 "#PWR06" H 8550 4700 50  0001 C CNN
F 1 "GND" V 8555 4822 50  0000 R CNN
F 2 "" H 8550 4950 50  0001 C CNN
F 3 "" H 8550 4950 50  0001 C CNN
	1    8550 4950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6086D695
P 8550 4850
F 0 "#PWR05" H 8550 4600 50  0001 C CNN
F 1 "GND" V 8555 4722 50  0000 R CNN
F 2 "" H 8550 4850 50  0001 C CNN
F 3 "" H 8550 4850 50  0001 C CNN
	1    8550 4850
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 6086C98C
P 8550 4750
F 0 "#PWR04" H 8550 4600 50  0001 C CNN
F 1 "+5V" V 8565 4878 50  0000 L CNN
F 2 "" H 8550 4750 50  0001 C CNN
F 3 "" H 8550 4750 50  0001 C CNN
	1    8550 4750
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J17
U 1 1 60850682
P 8300 4950
F 0 "J17" H 8350 5367 50  0000 C CNN
F 1 "IDC Header" H 8350 5276 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 8300 4950 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/418/7/ENG_CD_1761682_A1-2019262.pdf" H 8300 4950 50  0001 C CNN
F 4 "Pin Header IDC, 10 Pos, 2.54mm" H 8300 4950 50  0001 C CNN "Description"
	1    8300 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	8000 4750 8500 4750
Connection ~ 8500 4750
Wire Wire Line
	8500 4750 8550 4750
Wire Wire Line
	8550 4850 8500 4850
Connection ~ 5000 4850
Wire Wire Line
	5000 4850 4500 4850
Connection ~ 5500 4850
Wire Wire Line
	5500 4850 5000 4850
Connection ~ 6000 4850
Wire Wire Line
	6000 4850 5500 4850
Connection ~ 6500 4850
Wire Wire Line
	6500 4850 6000 4850
Connection ~ 7000 4850
Wire Wire Line
	7000 4850 6500 4850
Connection ~ 7500 4850
Wire Wire Line
	7500 4850 7000 4850
Connection ~ 8000 4850
Wire Wire Line
	8000 4850 7500 4850
Connection ~ 8500 4850
Wire Wire Line
	8500 4850 8000 4850
Wire Wire Line
	8550 4950 8500 4950
Connection ~ 5000 4950
Wire Wire Line
	5000 4950 4500 4950
Connection ~ 5500 4950
Wire Wire Line
	5500 4950 5000 4950
Connection ~ 6000 4950
Wire Wire Line
	6000 4950 5500 4950
Connection ~ 6500 4950
Wire Wire Line
	6500 4950 6000 4950
Connection ~ 7000 4950
Wire Wire Line
	7000 4950 6500 4950
Connection ~ 7500 4950
Wire Wire Line
	7500 4950 7000 4950
Connection ~ 8000 4950
Wire Wire Line
	8000 4950 7500 4950
Connection ~ 8500 4950
Wire Wire Line
	8500 4950 8000 4950
Wire Wire Line
	4500 5050 5000 5050
Connection ~ 5000 5050
Wire Wire Line
	5000 5050 5500 5050
Connection ~ 5500 5050
Wire Wire Line
	5500 5050 6000 5050
Connection ~ 6000 5050
Wire Wire Line
	6000 5050 6500 5050
Connection ~ 6500 5050
Wire Wire Line
	6500 5050 7000 5050
Connection ~ 7000 5050
Wire Wire Line
	7000 5050 7500 5050
Connection ~ 7500 5050
Wire Wire Line
	7500 5050 8000 5050
Connection ~ 8000 5050
Wire Wire Line
	8000 5050 8500 5050
Connection ~ 8500 5050
Wire Wire Line
	8500 5050 8550 5050
Wire Wire Line
	8550 5150 8500 5150
Connection ~ 5000 5150
Wire Wire Line
	5000 5150 4500 5150
Connection ~ 5500 5150
Wire Wire Line
	5500 5150 5000 5150
Connection ~ 6000 5150
Wire Wire Line
	6000 5150 5500 5150
Connection ~ 6500 5150
Wire Wire Line
	6500 5150 6000 5150
Connection ~ 7000 5150
Wire Wire Line
	7000 5150 6500 5150
Connection ~ 7500 5150
Wire Wire Line
	7500 5150 7000 5150
Connection ~ 8000 5150
Wire Wire Line
	8000 5150 7500 5150
Connection ~ 8500 5150
Wire Wire Line
	8500 5150 8000 5150
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J16
U 1 1 608B3560
P 7800 5700
F 0 "J16" H 7850 6117 50  0000 C CNN
F 1 "IDC Header" H 7850 6026 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 7800 5700 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/418/7/ENG_CD_1761682_A1-2019262.pdf" H 7800 5700 50  0001 C CNN
F 4 "Pin Header IDC, 10 Pos, 2.54mm" H 7800 5700 50  0001 C CNN "Description"
	1    7800 5700
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J14
U 1 1 608B3566
P 7300 5700
F 0 "J14" H 7350 6117 50  0000 C CNN
F 1 "IDC Header" H 7350 6026 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 7300 5700 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/418/7/ENG_CD_1761682_A1-2019262.pdf" H 7300 5700 50  0001 C CNN
F 4 "Pin Header IDC, 10 Pos, 2.54mm" H 7300 5700 50  0001 C CNN "Description"
	1    7300 5700
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J12
U 1 1 608B356C
P 6800 5700
F 0 "J12" H 6850 6117 50  0000 C CNN
F 1 "IDC Header" H 6850 6026 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 6800 5700 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/418/7/ENG_CD_1761682_A1-2019262.pdf" H 6800 5700 50  0001 C CNN
F 4 "Pin Header IDC, 10 Pos, 2.54mm" H 6800 5700 50  0001 C CNN "Description"
	1    6800 5700
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J10
U 1 1 608B3572
P 6300 5700
F 0 "J10" H 6350 6117 50  0000 C CNN
F 1 "IDC Header" H 6350 6026 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 6300 5700 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/418/7/ENG_CD_1761682_A1-2019262.pdf" H 6300 5700 50  0001 C CNN
F 4 "Pin Header IDC, 10 Pos, 2.54mm" H 6300 5700 50  0001 C CNN "Description"
	1    6300 5700
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J8
U 1 1 608B3578
P 5800 5700
F 0 "J8" H 5850 6117 50  0000 C CNN
F 1 "IDC Header" H 5850 6026 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 5800 5700 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/418/7/ENG_CD_1761682_A1-2019262.pdf" H 5800 5700 50  0001 C CNN
F 4 "Pin Header IDC, 10 Pos, 2.54mm" H 5800 5700 50  0001 C CNN "Description"
	1    5800 5700
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J6
U 1 1 608B357E
P 5300 5700
F 0 "J6" H 5350 6117 50  0000 C CNN
F 1 "IDC Header" H 5350 6026 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 5300 5700 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/418/7/ENG_CD_1761682_A1-2019262.pdf" H 5300 5700 50  0001 C CNN
F 4 "Pin Header IDC, 10 Pos, 2.54mm" H 5300 5700 50  0001 C CNN "Description"
	1    5300 5700
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J4
U 1 1 608B3584
P 4800 5700
F 0 "J4" H 4850 6117 50  0000 C CNN
F 1 "IDC Header" H 4850 6026 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 4800 5700 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/418/7/ENG_CD_1761682_A1-2019262.pdf" H 4800 5700 50  0001 C CNN
F 4 "Pin Header IDC, 10 Pos, 2.54mm" H 4800 5700 50  0001 C CNN "Description"
	1    4800 5700
	-1   0    0    1   
$EndComp
Connection ~ 5000 5500
Wire Wire Line
	5000 5500 4500 5500
Connection ~ 5500 5500
Wire Wire Line
	5500 5500 5000 5500
Connection ~ 6000 5500
Wire Wire Line
	6000 5500 5500 5500
Connection ~ 6500 5500
Wire Wire Line
	6500 5500 6000 5500
Connection ~ 7000 5500
Wire Wire Line
	7000 5500 6500 5500
Connection ~ 7500 5500
Wire Wire Line
	7500 5500 7000 5500
Connection ~ 8000 5500
Wire Wire Line
	8000 5500 7500 5500
$Comp
L power:-15V #PWR013
U 1 1 608B3598
P 8550 5900
F 0 "#PWR013" H 8550 6000 50  0001 C CNN
F 1 "-15V" V 8565 6028 50  0000 L CNN
F 2 "" H 8550 5900 50  0001 C CNN
F 3 "" H 8550 5900 50  0001 C CNN
	1    8550 5900
	0    1    1    0   
$EndComp
$Comp
L power:+15V #PWR012
U 1 1 608B359E
P 8550 5800
F 0 "#PWR012" H 8550 5650 50  0001 C CNN
F 1 "+15V" V 8565 5928 50  0000 L CNN
F 2 "" H 8550 5800 50  0001 C CNN
F 3 "" H 8550 5800 50  0001 C CNN
	1    8550 5800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 608B35A4
P 8550 5700
F 0 "#PWR011" H 8550 5450 50  0001 C CNN
F 1 "GND" V 8555 5572 50  0000 R CNN
F 2 "" H 8550 5700 50  0001 C CNN
F 3 "" H 8550 5700 50  0001 C CNN
	1    8550 5700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 608B35AA
P 8550 5600
F 0 "#PWR010" H 8550 5350 50  0001 C CNN
F 1 "GND" V 8555 5472 50  0000 R CNN
F 2 "" H 8550 5600 50  0001 C CNN
F 3 "" H 8550 5600 50  0001 C CNN
	1    8550 5600
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 608B35B0
P 8550 5500
F 0 "#PWR09" H 8550 5350 50  0001 C CNN
F 1 "+5V" V 8565 5628 50  0000 L CNN
F 2 "" H 8550 5500 50  0001 C CNN
F 3 "" H 8550 5500 50  0001 C CNN
	1    8550 5500
	0    1    1    0   
$EndComp
Connection ~ 5000 5600
Wire Wire Line
	5000 5600 4500 5600
Connection ~ 5500 5600
Wire Wire Line
	5500 5600 5000 5600
Connection ~ 6000 5600
Wire Wire Line
	6000 5600 5500 5600
Connection ~ 6500 5600
Wire Wire Line
	6500 5600 6000 5600
Connection ~ 7000 5600
Wire Wire Line
	7000 5600 6500 5600
Connection ~ 7500 5600
Wire Wire Line
	7500 5600 7000 5600
Connection ~ 8000 5600
Wire Wire Line
	8000 5600 7500 5600
Connection ~ 5000 5700
Wire Wire Line
	5000 5700 4500 5700
Connection ~ 5500 5700
Wire Wire Line
	5500 5700 5000 5700
Connection ~ 6000 5700
Wire Wire Line
	6000 5700 5500 5700
Connection ~ 6500 5700
Wire Wire Line
	6500 5700 6000 5700
Connection ~ 7000 5700
Wire Wire Line
	7000 5700 6500 5700
Connection ~ 7500 5700
Wire Wire Line
	7500 5700 7000 5700
Connection ~ 8000 5700
Wire Wire Line
	8000 5700 7500 5700
Wire Wire Line
	4500 5800 5000 5800
Connection ~ 5000 5800
Wire Wire Line
	5000 5800 5500 5800
Connection ~ 5500 5800
Wire Wire Line
	5500 5800 6000 5800
Connection ~ 6000 5800
Wire Wire Line
	6000 5800 6500 5800
Connection ~ 6500 5800
Wire Wire Line
	6500 5800 7000 5800
Connection ~ 7000 5800
Wire Wire Line
	7000 5800 7500 5800
Connection ~ 7500 5800
Wire Wire Line
	7500 5800 8000 5800
Connection ~ 8000 5800
Connection ~ 5000 5900
Wire Wire Line
	5000 5900 4500 5900
Connection ~ 5500 5900
Wire Wire Line
	5500 5900 5000 5900
Connection ~ 6000 5900
Wire Wire Line
	6000 5900 5500 5900
Connection ~ 6500 5900
Wire Wire Line
	6500 5900 6000 5900
Connection ~ 7000 5900
Wire Wire Line
	7000 5900 6500 5900
Connection ~ 7500 5900
Wire Wire Line
	7500 5900 7000 5900
Connection ~ 8000 5900
Wire Wire Line
	8000 5900 7500 5900
Text GLabel 1350 1400 0    50   Input ~ 0
15V_AC
$Comp
L power:+12V #PWR014
U 1 1 60930A97
P 8650 1500
F 0 "#PWR014" H 8650 1350 50  0001 C CNN
F 1 "+12V" V 8665 1628 50  0000 L CNN
F 2 "" H 8650 1500 50  0001 C CNN
F 3 "" H 8650 1500 50  0001 C CNN
	1    8650 1500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 609357C6
P 9400 2050
F 0 "#PWR015" H 9400 1800 50  0001 C CNN
F 1 "GND" H 9405 1877 50  0000 C CNN
F 2 "" H 9400 2050 50  0001 C CNN
F 3 "" H 9400 2050 50  0001 C CNN
	1    9400 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6093B91C
P 1650 6400
F 0 "#PWR02" H 1650 6150 50  0001 C CNN
F 1 "GND" V 1650 6200 50  0000 C CNN
F 2 "" H 1650 6400 50  0001 C CNN
F 3 "" H 1650 6400 50  0001 C CNN
	1    1650 6400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8000 5900 8550 5900
Wire Wire Line
	8000 5800 8550 5800
Wire Wire Line
	8000 5700 8550 5700
Wire Wire Line
	8000 5600 8550 5600
Wire Wire Line
	8000 5500 8550 5500
$Comp
L Connector:Barrel_Jack_Switch J2
U 1 1 609F0595
P 1350 6900
F 0 "J2" H 1407 7217 50  0000 C CNN
F 1 "PJ-102AH" H 1407 7126 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_CUI_PJ-102AH_Horizontal" H 1400 6860 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/670/pj_102ah-1778518.pdf" H 1400 6860 50  0001 C CNN
F 4 "DC Power Connector" H 1350 6900 50  0001 C CNN "Description"
	1    1350 6900
	1    0    0    -1  
$EndComp
NoConn ~ 1650 6900
$Comp
L Connector:Barrel_Jack_Switch J1
U 1 1 60A17954
P 1350 6300
F 0 "J1" H 1407 6617 50  0000 C CNN
F 1 "PJ-102AH" H 1407 6526 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_CUI_PJ-102AH_Horizontal" H 1400 6260 50  0001 C CNN
F 3 "https://www.mouser.ch/datasheet/2/670/pj_102ah-1778518.pdf" H 1400 6260 50  0001 C CNN
F 4 "DC Power Connector" H 1350 6300 50  0001 C CNN "Description"
	1    1350 6300
	1    0    0    -1  
$EndComp
NoConn ~ 1650 6300
$Comp
L Mechanical:MountingHole H4
U 1 1 5D6C35D6
P 6050 7250
F 0 "H4" H 6150 7296 50  0000 L CNN
F 1 "MountingHole" H 6150 7205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6050 7250 50  0001 C CNN
F 3 "~" H 6050 7250 50  0001 C CNN
	1    6050 7250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5D6C3412
P 6050 7050
F 0 "H3" H 6150 7096 50  0000 L CNN
F 1 "MountingHole" H 6150 7005 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6050 7050 50  0001 C CNN
F 3 "~" H 6050 7050 50  0001 C CNN
	1    6050 7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5D6C3220
P 6050 6850
F 0 "H2" H 6150 6896 50  0000 L CNN
F 1 "MountingHole" H 6150 6805 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6050 6850 50  0001 C CNN
F 3 "~" H 6050 6850 50  0001 C CNN
	1    6050 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5D6C300D
P 6050 6650
F 0 "H1" H 6150 6696 50  0000 L CNN
F 1 "MountingHole" H 6150 6605 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6050 6650 50  0001 C CNN
F 3 "~" H 6050 6650 50  0001 C CNN
	1    6050 6650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink HS1
U 1 1 60A3E1FF
P 10000 4300
F 0 "HS1" H 10142 4421 50  0000 L CNN
F 1 "5772" H 10142 4330 50  0000 L CNN
F 2 "" H 10012 4300 50  0001 C CNN
F 3 "~" H 10012 4300 50  0001 C CNN
F 4 "Heatsink TO-220, No Solderable Tabs, Mounting Kit 4880SG" H 10000 4300 50  0001 C CNN "Description"
	1    10000 4300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink HS2
U 1 1 60A3E991
P 10000 4650
F 0 "HS2" H 10142 4771 50  0000 L CNN
F 1 "5772" H 10142 4680 50  0000 L CNN
F 2 "" H 10012 4650 50  0001 C CNN
F 3 "~" H 10012 4650 50  0001 C CNN
F 4 "Heatsink TO-220, No Solderable Tabs, Mounting Kit 4880SG" H 10000 4650 50  0001 C CNN "Description"
	1    10000 4650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink HS3
U 1 1 60A3F711
P 10000 5000
F 0 "HS3" H 10142 5121 50  0000 L CNN
F 1 "5772" H 10142 5030 50  0000 L CNN
F 2 "" H 10012 5000 50  0001 C CNN
F 3 "~" H 10012 5000 50  0001 C CNN
F 4 "Heatsink TO-220, No Solderable Tabs, Mounting Kit 4880SG" H 10000 5000 50  0001 C CNN "Description"
	1    10000 5000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
