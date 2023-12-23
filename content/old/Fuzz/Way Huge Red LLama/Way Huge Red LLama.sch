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
L power:+5V #PWR03
U 1 1 5FAFD46B
P 4500 5200
F 0 "#PWR03" H 4500 5050 50  0001 C CNN
F 1 "+5V" H 4515 5373 50  0000 C CNN
F 2 "" H 4500 5200 50  0001 C CNN
F 3 "" H 4500 5200 50  0001 C CNN
	1    4500 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5FB023DA
P 4100 2800
F 0 "C2" V 3848 2800 50  0000 C CNN
F 1 "81p" V 3939 2800 50  0000 C CNN
F 2 "" H 4138 2650 50  0001 C CNN
F 3 "~" H 4100 2800 50  0001 C CNN
	1    4100 2800
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5FB0284B
P 5250 2800
F 0 "C4" V 4998 2800 50  0000 C CNN
F 1 "100p" V 5089 2800 50  0000 C CNN
F 2 "" H 5288 2650 50  0001 C CNN
F 3 "~" H 5250 2800 50  0001 C CNN
	1    5250 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5FB03260
P 5250 2400
F 0 "R4" V 5043 2400 50  0000 C CNN
F 1 "1Meg" V 5134 2400 50  0000 C CNN
F 2 "" V 5180 2400 50  0001 C CNN
F 3 "~" H 5250 2400 50  0001 C CNN
	1    5250 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5FB04B84
P 4250 2400
F 0 "RV1" V 4043 2400 50  0000 C CNN
F 1 "1Meg" V 4134 2400 50  0000 C CNN
F 2 "" H 4250 2400 50  0001 C CNN
F 3 "~" H 4250 2400 50  0001 C CNN
F 4 "X" H 4250 2400 50  0001 C CNN "Spice_Primitive"
F 5 "voltage_divider" H 4250 2400 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4250 2400 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4250 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5FB053A2
P 3950 2400
F 0 "R3" V 3743 2400 50  0000 C CNN
F 1 "100k" V 3834 2400 50  0000 C CNN
F 2 "" V 3880 2400 50  0001 C CNN
F 3 "~" H 3950 2400 50  0001 C CNN
	1    3950 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 2400 4500 2400
Wire Wire Line
	4500 2400 4500 2550
Wire Wire Line
	4500 3350 4400 3350
Wire Wire Line
	3800 3350 3700 3350
Wire Wire Line
	3700 3350 3700 2800
Wire Wire Line
	3700 2400 3800 2400
Wire Wire Line
	3700 2800 3950 2800
Wire Wire Line
	4250 2800 4500 2800
Connection ~ 3700 2800
Wire Wire Line
	3700 2800 3700 2400
Connection ~ 4500 2800
Wire Wire Line
	4500 2800 4500 3350
Wire Wire Line
	5000 3350 4950 3350
Wire Wire Line
	4950 3350 4950 2800
Wire Wire Line
	4950 2400 5100 2400
Wire Wire Line
	5400 2400 5650 2400
Wire Wire Line
	5650 2400 5650 2800
Wire Wire Line
	5650 3350 5600 3350
Wire Wire Line
	5650 2800 5400 2800
Wire Wire Line
	5100 2800 4950 2800
Connection ~ 5650 2800
Wire Wire Line
	5650 2800 5650 3350
Connection ~ 4950 2800
Wire Wire Line
	4950 2800 4950 2400
$Comp
L Device:R R1
U 1 1 5FB0AB1E
P 2950 3550
F 0 "R1" H 2880 3504 50  0000 R CNN
F 1 "1Meg" H 2880 3595 50  0000 R CNN
F 2 "" V 2880 3550 50  0001 C CNN
F 3 "~" H 2950 3550 50  0001 C CNN
	1    2950 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5FB0B2B6
P 3250 3350
F 0 "R2" V 3457 3350 50  0000 C CNN
F 1 "100k" V 3366 3350 50  0000 C CNN
F 2 "" V 3180 3350 50  0001 C CNN
F 3 "~" H 3250 3350 50  0001 C CNN
	1    3250 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 5FB0BA67
P 3550 3350
F 0 "C1" V 3298 3350 50  0000 C CNN
F 1 "68n" V 3389 3350 50  0000 C CNN
F 2 "" H 3588 3200 50  0001 C CNN
F 3 "~" H 3550 3350 50  0001 C CNN
	1    3550 3350
	0    1    1    0   
$EndComp
Connection ~ 3700 3350
Text GLabel 2800 3350 0    50   Input ~ 0
IN
Wire Wire Line
	2800 3350 2950 3350
Wire Wire Line
	2950 3400 2950 3350
Connection ~ 2950 3350
Wire Wire Line
	2950 3350 3100 3350
$Comp
L power:GND #PWR01
U 1 1 5FB0DF49
P 2950 3700
F 0 "#PWR01" H 2950 3450 50  0001 C CNN
F 1 "GND" H 2955 3527 50  0000 C CNN
F 2 "" H 2950 3700 50  0001 C CNN
F 3 "" H 2950 3700 50  0001 C CNN
	1    2950 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5FB0E5D5
P 4700 3350
F 0 "C3" V 4448 3350 50  0000 C CNN
F 1 "33n" V 4539 3350 50  0000 C CNN
F 2 "" H 4738 3200 50  0001 C CNN
F 3 "~" H 4700 3350 50  0001 C CNN
	1    4700 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 3350 4850 3350
Wire Wire Line
	4550 3350 4500 3350
Connection ~ 4950 3350
Connection ~ 4500 3350
Text GLabel 6250 3350 2    50   Input ~ 0
OUT
Wire Wire Line
	5750 3350 5650 3350
Connection ~ 5650 3350
Wire Wire Line
	4250 2550 4500 2550
Connection ~ 4500 2550
Wire Wire Line
	4500 2550 4500 2800
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 5FB13B77
P 7850 3000
F 0 "J1" H 7878 2976 50  0000 L CNN
F 1 "Conn_01x02_Female" H 7878 2885 50  0000 L CNN
F 2 "" H 7850 3000 50  0001 C CNN
F 3 "~" H 7850 3000 50  0001 C CNN
F 4 "J" H 7850 3000 50  0001 C CNN "Spice_Primitive"
F 5 "Conn_01x02_Female" H 7850 3000 50  0001 C CNN "Spice_Model"
F 6 "N" H 7850 3000 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7850 3000
	1    0    0    -1  
$EndComp
Text GLabel 7650 3000 0    50   Input ~ 0
IN
Text GLabel 7650 3100 0    50   Input ~ 0
OUT
$Comp
L power:GND #PWR04
U 1 1 5FB17CCE
P 4500 6200
F 0 "#PWR04" H 4500 5950 50  0001 C CNN
F 1 "GND" H 4505 6027 50  0000 C CNN
F 2 "" H 4500 6200 50  0001 C CNN
F 3 "" H 4500 6200 50  0001 C CNN
	1    4500 6200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5FAFDA0C
P 3600 4300
F 0 "#PWR02" H 3600 4150 50  0001 C CNN
F 1 "+5V" H 3615 4473 50  0000 C CNN
F 2 "" H 3600 4300 50  0001 C CNN
F 3 "" H 3600 4300 50  0001 C CNN
	1    3600 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4300 3600 4350
Wire Wire Line
	5900 4350 5900 4650
Connection ~ 3600 4350
Wire Wire Line
	3600 4350 3600 4650
Wire Wire Line
	5150 4650 5150 4350
Connection ~ 5150 4350
Wire Wire Line
	5150 4350 5900 4350
Wire Wire Line
	4400 4350 5150 4350
Wire Wire Line
	3600 4350 4400 4350
Connection ~ 4400 4350
Wire Wire Line
	4400 4650 4400 4350
NoConn ~ 4250 4650
NoConn ~ 5000 4650
NoConn ~ 5750 4650
NoConn ~ 6500 4650
Wire Wire Line
	3600 4650 3650 4650
$Comp
L 4xxx:4069 U1
U 7 1 5FB2FD74
P 4500 5700
F 0 "U1" H 4730 5746 50  0000 L CNN
F 1 "4069" H 4730 5655 50  0000 L CNN
F 2 "" H 4500 5700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 4500 5700 50  0001 C CNN
F 4 "X" H 4500 5700 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 4500 5700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4500 5700 50  0001 C CNN "Spice_Netlist_Enabled"
	7    4500 5700
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U1
U 1 1 5FB350C8
P 4100 3350
F 0 "U1" H 4100 3667 50  0000 C CNN
F 1 "4069" H 4100 3576 50  0000 C CNN
F 2 "" H 4100 3350 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 4100 3350 50  0001 C CNN
F 4 "X" H 4100 3350 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 4100 3350 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4100 3350 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4100 3350
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U1
U 2 1 5FB377E2
P 5300 3350
F 0 "U1" H 5300 3667 50  0000 C CNN
F 1 "4069" H 5300 3576 50  0000 C CNN
F 2 "" H 5300 3350 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 5300 3350 50  0001 C CNN
F 4 "X" H 5300 3350 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 5300 3350 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5300 3350 50  0001 C CNN "Spice_Netlist_Enabled"
	2    5300 3350
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U1
U 3 1 5FB38630
P 3950 4650
F 0 "U1" H 3950 4967 50  0000 C CNN
F 1 "4069" H 3950 4876 50  0000 C CNN
F 2 "" H 3950 4650 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 3950 4650 50  0001 C CNN
F 4 "X" H 3950 4650 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 3950 4650 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3950 4650 50  0001 C CNN "Spice_Netlist_Enabled"
	3    3950 4650
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U1
U 4 1 5FB395FB
P 4700 4650
F 0 "U1" H 4700 4967 50  0000 C CNN
F 1 "4069" H 4700 4876 50  0000 C CNN
F 2 "" H 4700 4650 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 4700 4650 50  0001 C CNN
F 4 "X" H 4700 4650 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 4700 4650 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4700 4650 50  0001 C CNN "Spice_Netlist_Enabled"
	4    4700 4650
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U1
U 5 1 5FB3A1BE
P 5450 4650
F 0 "U1" H 5450 4967 50  0000 C CNN
F 1 "4069" H 5450 4876 50  0000 C CNN
F 2 "" H 5450 4650 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 5450 4650 50  0001 C CNN
F 4 "X" H 5450 4650 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 5450 4650 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5450 4650 50  0001 C CNN "Spice_Netlist_Enabled"
	5    5450 4650
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U1
U 6 1 5FB3B54C
P 6200 4650
F 0 "U1" H 6200 4967 50  0000 C CNN
F 1 "4069" H 6200 4876 50  0000 C CNN
F 2 "" H 6200 4650 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 6200 4650 50  0001 C CNN
F 4 "X" H 6200 4650 50  0001 C CNN "Spice_Primitive"
F 5 "CD4069UBhex" H 6200 4650 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6200 4650 50  0001 C CNN "Spice_Netlist_Enabled"
	6    6200 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 5FB3E4CD
P 5900 3350
F 0 "C5" V 6155 3350 50  0000 C CNN
F 1 "10u" V 6064 3350 50  0000 C CIN
F 2 "" H 5938 3200 50  0001 C CNN
F 3 "~" H 5900 3350 50  0001 C CNN
	1    5900 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 5FB3F028
P 6150 3550
F 0 "R5" V 5943 3550 50  0000 C CNN
F 1 "100k" V 6034 3550 50  0000 C CNN
F 2 "" V 6080 3550 50  0001 C CNN
F 3 "~" H 6150 3550 50  0001 C CNN
	1    6150 3550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5FB3F7EF
P 6150 3700
F 0 "#PWR05" H 6150 3450 50  0001 C CNN
F 1 "GND" H 6155 3527 50  0000 C CNN
F 2 "" H 6150 3700 50  0001 C CNN
F 3 "" H 6150 3700 50  0001 C CNN
	1    6150 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3350 6150 3350
Wire Wire Line
	6150 3400 6150 3350
Connection ~ 6150 3350
Wire Wire Line
	6150 3350 6050 3350
$EndSCHEMATC
