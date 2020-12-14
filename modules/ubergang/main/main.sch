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
Text GLabel 9050 3800 0    50   Input ~ 0
CV_IN
$Comp
L power:+15V #PWR0101
U 1 1 5FCEBF27
P 6150 6750
F 0 "#PWR0101" H 6150 6600 50  0001 C CNN
F 1 "+15V" H 6165 6923 50  0000 C CNN
F 2 "" H 6150 6750 50  0001 C CNN
F 3 "" H 6150 6750 50  0001 C CNN
	1    6150 6750
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR0102
U 1 1 5FCECAF5
P 6400 6750
F 0 "#PWR0102" H 6400 6850 50  0001 C CNN
F 1 "-15V" H 6415 6923 50  0000 C CNN
F 2 "" H 6400 6750 50  0001 C CNN
F 3 "" H 6400 6750 50  0001 C CNN
	1    6400 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FCED8A0
P 6450 7300
F 0 "#PWR0103" H 6450 7050 50  0001 C CNN
F 1 "GND" H 6455 7127 50  0000 C CNN
F 2 "" H 6450 7300 50  0001 C CNN
F 3 "" H 6450 7300 50  0001 C CNN
	1    6450 7300
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FCEE71C
P 6450 7300
F 0 "#FLG0101" H 6450 7375 50  0001 C CNN
F 1 "PWR_FLAG" H 6450 7473 50  0000 C CNN
F 2 "" H 6450 7300 50  0001 C CNN
F 3 "~" H 6450 7300 50  0001 C CNN
	1    6450 7300
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5FCEF3FF
P 6150 6750
F 0 "#FLG0102" H 6150 6825 50  0001 C CNN
F 1 "PWR_FLAG" H 6150 6923 50  0000 C CNN
F 2 "" H 6150 6750 50  0001 C CNN
F 3 "~" H 6150 6750 50  0001 C CNN
	1    6150 6750
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5FCF001D
P 6400 6750
F 0 "#FLG0103" H 6400 6825 50  0001 C CNN
F 1 "PWR_FLAG" H 6400 6923 50  0000 C CNN
F 2 "" H 6400 6750 50  0001 C CNN
F 3 "~" H 6400 6750 50  0001 C CNN
	1    6400 6750
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x06_Female J1
U 1 1 5FEC4523
P 9250 4000
F 0 "J1" H 9278 3976 50  0000 L CNN
F 1 "Conn_01x06_Female" H 9278 3885 50  0000 L CNN
F 2 "" H 9250 4000 50  0001 C CNN
F 3 "~" H 9250 4000 50  0001 C CNN
F 4 "J" H 9250 4000 50  0001 C CNN "Spice_Primitive"
F 5 "Conn_01x06_Female" H 9250 4000 50  0001 C CNN "Spice_Model"
F 6 "N" H 9250 4000 50  0001 C CNN "Spice_Netlist_Enabled"
	1    9250 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 5300 2250 5200
Wire Wire Line
	2250 950  2250 900 
$Comp
L Device:R R6
U 1 1 5FD2041C
P 2250 5050
F 0 "R6" H 2320 5096 50  0000 L CNN
F 1 "15k" H 2320 5005 50  0000 L CNN
F 2 "" V 2180 5050 50  0001 C CNN
F 3 "~" H 2250 5050 50  0001 C CNN
	1    2250 5050
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR01
U 1 1 5FD06562
P 2250 900
F 0 "#PWR01" H 2250 750 50  0001 C CNN
F 1 "+15V" H 2265 1073 50  0000 C CNN
F 2 "" H 2250 900 50  0001 C CNN
F 3 "" H 2250 900 50  0001 C CNN
	1    2250 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5FD05CB4
P 2250 4050
F 0 "R4" H 2320 4096 50  0000 L CNN
F 1 "47k" H 2320 4005 50  0000 L CNN
F 2 "" V 2180 4050 50  0001 C CNN
F 3 "~" H 2250 4050 50  0001 C CNN
	1    2250 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5FD0570A
P 2250 3050
F 0 "R3" H 2320 3096 50  0000 L CNN
F 1 "47k" H 2320 3005 50  0000 L CNN
F 2 "" V 2180 3050 50  0001 C CNN
F 3 "~" H 2250 3050 50  0001 C CNN
	1    2250 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FCE1B0D
P 2250 2000
F 0 "R2" H 2320 2046 50  0000 L CNN
F 1 "47k" H 2320 1955 50  0000 L CNN
F 2 "" V 2180 2000 50  0001 C CNN
F 3 "~" H 2250 2000 50  0001 C CNN
	1    2250 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FCE18EE
P 2250 1100
F 0 "R1" H 2320 1146 50  0000 L CNN
F 1 "330k" H 2320 1055 50  0000 L CNN
F 2 "" V 2180 1100 50  0001 C CNN
F 3 "~" H 2250 1100 50  0001 C CNN
	1    2250 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5FCEB135
P 2950 1450
F 0 "R7" V 2743 1450 50  0000 C CNN
F 1 "47k" V 2834 1450 50  0000 C CNN
F 2 "" V 2880 1450 50  0001 C CNN
F 3 "~" H 2950 1450 50  0001 C CNN
	1    2950 1450
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5FCF0C66
P 2950 2450
F 0 "R8" V 2743 2450 50  0000 C CNN
F 1 "47k" V 2834 2450 50  0000 C CNN
F 2 "" V 2880 2450 50  0001 C CNN
F 3 "~" H 2950 2450 50  0001 C CNN
	1    2950 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5FCF68BE
P 2950 3450
F 0 "R9" V 2743 3450 50  0000 C CNN
F 1 "47k" V 2834 3450 50  0000 C CNN
F 2 "" V 2880 3450 50  0001 C CNN
F 3 "~" H 2950 3450 50  0001 C CNN
	1    2950 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5FCFDA87
P 2950 4450
F 0 "R10" V 2743 4450 50  0000 C CNN
F 1 "47k" V 2834 4450 50  0000 C CNN
F 2 "" V 2880 4450 50  0001 C CNN
F 3 "~" H 2950 4450 50  0001 C CNN
	1    2950 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 1250 2250 1650
Wire Wire Line
	2250 1650 2250 1850
Connection ~ 2250 1650
Wire Wire Line
	3300 1650 2250 1650
Wire Wire Line
	2250 2900 2250 2650
Wire Wire Line
	2250 2650 2250 2150
Connection ~ 2250 2650
Wire Wire Line
	3300 2650 2250 2650
Wire Wire Line
	2250 3900 2250 3650
Wire Wire Line
	2250 3650 2250 3200
Connection ~ 2250 3650
Wire Wire Line
	3300 3650 2250 3650
Wire Wire Line
	2250 4200 2250 4650
Wire Wire Line
	2250 4650 2250 4900
Connection ~ 2250 4650
Wire Wire Line
	3300 4650 2250 4650
Text GLabel 2600 4450 3    50   Input ~ 0
CV_S
Wire Wire Line
	2600 1450 2800 1450
Wire Wire Line
	2800 2450 2600 2450
Connection ~ 2600 2450
Wire Wire Line
	2600 2450 2600 1450
Wire Wire Line
	2800 3450 2600 3450
Wire Wire Line
	2600 3450 2600 2450
Connection ~ 2600 3450
Wire Wire Line
	2800 4450 2600 4450
Wire Wire Line
	2600 4450 2600 3450
$Comp
L Device:R R13
U 1 1 5FCEE76A
P 3550 2000
F 0 "R13" V 3343 2000 50  0000 C CNN
F 1 "750k" V 3434 2000 50  0000 C CNN
F 2 "" V 3480 2000 50  0001 C CNN
F 3 "~" H 3550 2000 50  0001 C CNN
	1    3550 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 2000 3200 2000
Wire Wire Line
	3200 2000 3200 2450
Wire Wire Line
	3200 2450 3100 2450
Connection ~ 3200 2450
Wire Wire Line
	3300 2450 3200 2450
Wire Wire Line
	3700 2000 3950 2000
Wire Wire Line
	3950 2000 3950 2550
Wire Wire Line
	3950 2550 3900 2550
$Comp
L Device:R R14
U 1 1 5FCF495A
P 3550 3000
F 0 "R14" V 3343 3000 50  0000 C CNN
F 1 "750k" V 3434 3000 50  0000 C CNN
F 2 "" V 3480 3000 50  0001 C CNN
F 3 "~" H 3550 3000 50  0001 C CNN
	1    3550 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 3000 3200 3000
Wire Wire Line
	3200 3000 3200 3450
Wire Wire Line
	3200 3450 3100 3450
Connection ~ 3200 3450
Wire Wire Line
	3300 3450 3200 3450
Wire Wire Line
	3700 3000 3950 3000
Wire Wire Line
	3950 3000 3950 3550
Wire Wire Line
	3950 3550 3900 3550
$Comp
L Device:R R15
U 1 1 5FCFAE4E
P 3550 4000
F 0 "R15" V 3343 4000 50  0000 C CNN
F 1 "750k" V 3434 4000 50  0000 C CNN
F 2 "" V 3480 4000 50  0001 C CNN
F 3 "~" H 3550 4000 50  0001 C CNN
	1    3550 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 4000 3200 4000
Wire Wire Line
	3200 4000 3200 4450
Wire Wire Line
	3200 4450 3100 4450
Connection ~ 3200 4450
Wire Wire Line
	3300 4450 3200 4450
Wire Wire Line
	3700 4000 3950 4000
Wire Wire Line
	3950 4000 3950 4550
Wire Wire Line
	3950 4550 3900 4550
Wire Wire Line
	3950 1550 3900 1550
Wire Wire Line
	3950 1000 3950 1550
Wire Wire Line
	3700 1000 3950 1000
Wire Wire Line
	3200 1450 3100 1450
Wire Wire Line
	3200 1450 3300 1450
Connection ~ 3200 1450
Wire Wire Line
	3200 1000 3200 1450
Wire Wire Line
	3400 1000 3200 1000
$Comp
L Device:R R12
U 1 1 5FCE8FA0
P 3550 1000
F 0 "R12" V 3343 1000 50  0000 C CNN
F 1 "750k" V 3434 1000 50  0000 C CNN
F 2 "" V 3480 1000 50  0001 C CNN
F 3 "~" H 3550 1000 50  0001 C CNN
	1    3550 1000
	0    1    1    0   
$EndComp
$Comp
L power:+15V #PWR05
U 1 1 5FE245E8
P 2200 6750
F 0 "#PWR05" H 2200 6600 50  0001 C CNN
F 1 "+15V" H 2215 6923 50  0000 C CNN
F 2 "" H 2200 6750 50  0001 C CNN
F 3 "" H 2200 6750 50  0001 C CNN
	1    2200 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5FD73032
P 2200 7350
F 0 "#PWR0107" H 2200 7100 50  0001 C CNN
F 1 "GND" H 2205 7177 50  0000 C CNN
F 2 "" H 2200 7350 50  0001 C CNN
F 3 "" H 2200 7350 50  0001 C CNN
	1    2200 7350
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0105
U 1 1 5FF3828A
P 4900 6800
F 0 "#PWR0105" H 4900 6650 50  0001 C CNN
F 1 "+15V" H 4915 6973 50  0000 C CNN
F 2 "" H 4900 6800 50  0001 C CNN
F 3 "" H 4900 6800 50  0001 C CNN
	1    4900 6800
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR013
U 1 1 5FF3C3DE
P 5550 6800
F 0 "#PWR013" H 5550 6650 50  0001 C CNN
F 1 "+15V" H 5565 6973 50  0000 C CNN
F 2 "" H 5550 6800 50  0001 C CNN
F 3 "" H 5550 6800 50  0001 C CNN
	1    5550 6800
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR0104
U 1 1 5FF44766
P 4900 7400
F 0 "#PWR0104" H 4900 7500 50  0001 C CNN
F 1 "-15V" H 4915 7573 50  0000 C CNN
F 2 "" H 4900 7400 50  0001 C CNN
F 3 "" H 4900 7400 50  0001 C CNN
	1    4900 7400
	-1   0    0    1   
$EndComp
$Comp
L power:-15V #PWR014
U 1 1 5FF488ED
P 5550 7400
F 0 "#PWR014" H 5550 7500 50  0001 C CNN
F 1 "-15V" H 5565 7573 50  0000 C CNN
F 2 "" H 5550 7400 50  0001 C CNN
F 3 "" H 5550 7400 50  0001 C CNN
	1    5550 7400
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM13700 U5
U 5 1 5FF76CF2
P 5000 7100
F 0 "U5" H 4958 7146 50  0000 L CNN
F 1 "LM13700" H 4958 7055 50  0000 L CNN
F 2 "" H 4700 7125 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 4700 7125 50  0001 C CNN
F 4 "X" H 5000 7100 50  0001 C CNN "Spice_Primitive"
F 5 "LM13700d" H 5000 7100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5000 7100 50  0001 C CNN "Spice_Netlist_Enabled"
	5    5000 7100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM13700 U6
U 5 1 5FF7880C
P 5650 7100
F 0 "U6" H 5608 7146 50  0000 L CNN
F 1 "LM13700" H 5608 7055 50  0000 L CNN
F 2 "" H 5350 7125 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 5350 7125 50  0001 C CNN
F 4 "X" H 5650 7100 50  0001 C CNN "Spice_Primitive"
F 5 "LM13700d" H 5650 7100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5650 7100 50  0001 C CNN "Spice_Netlist_Enabled"
	5    5650 7100
	1    0    0    -1  
$EndComp
NoConn ~ 9850 2700
NoConn ~ 10250 2800
NoConn ~ 10250 2000
NoConn ~ 9850 1900
$Comp
L Amplifier_Operational:LM13700 U6
U 4 1 5FD137FD
P 10150 2700
F 0 "U6" H 10050 3048 50  0000 C CNN
F 1 "LM13700" H 10050 2957 50  0000 C CNN
F 2 "" H 9850 2725 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 9850 2725 50  0001 C CNN
F 4 "X" H 10150 2700 50  0001 C CNN "Spice_Primitive"
F 5 "LM13700d" H 10150 2700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 10150 2700 50  0001 C CNN "Spice_Netlist_Enabled"
	4    10150 2700
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM13700 U6
U 2 1 5FD137F4
P 10150 1900
F 0 "U6" H 10050 2248 50  0000 C CNN
F 1 "LM13700" H 10050 2157 50  0000 C CNN
F 2 "" H 9850 1925 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 9850 1925 50  0001 C CNN
F 4 "X" H 10150 1900 50  0001 C CNN "Spice_Primitive"
F 5 "LM13700d" H 10150 1900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 10150 1900 50  0001 C CNN "Spice_Netlist_Enabled"
	2    10150 1900
	1    0    0    -1  
$EndComp
NoConn ~ 9000 2800
NoConn ~ 9400 2900
NoConn ~ 9400 2100
NoConn ~ 9000 2000
$Comp
L Amplifier_Operational:LM13700 U5
U 4 1 5FDB96A5
P 9300 2800
F 0 "U5" H 9200 3148 50  0000 C CNN
F 1 "LM13700" H 9200 3057 50  0000 C CNN
F 2 "" H 9000 2825 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 9000 2825 50  0001 C CNN
F 4 "X" H 9300 2800 50  0001 C CNN "Spice_Primitive"
F 5 "LM13700d" H 9300 2800 50  0001 C CNN "Spice_Model"
F 6 "Y" H 9300 2800 50  0001 C CNN "Spice_Netlist_Enabled"
	4    9300 2800
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM13700 U5
U 2 1 5FDB4895
P 9300 2000
F 0 "U5" H 9200 2348 50  0000 C CNN
F 1 "LM13700" H 9200 2257 50  0000 C CNN
F 2 "" H 9000 2025 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 9000 2025 50  0001 C CNN
F 4 "X" H 9300 2000 50  0001 C CNN "Spice_Primitive"
F 5 "LM13700d" H 9300 2000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 9300 2000 50  0001 C CNN "Spice_Netlist_Enabled"
	2    9300 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4850 6000 4850
Wire Wire Line
	4650 4850 4650 4750
Wire Wire Line
	4650 3850 6000 3850
Wire Wire Line
	4650 3850 4650 3750
Wire Wire Line
	4200 3550 4350 3550
Wire Wire Line
	4200 3700 4200 3550
Wire Wire Line
	4200 4100 4200 4000
Wire Wire Line
	4650 4100 4200 4100
Wire Wire Line
	4650 4350 4650 4100
Wire Wire Line
	4200 2550 4350 2550
Wire Wire Line
	4200 2750 4200 2550
Wire Wire Line
	4200 3200 4200 3050
Wire Wire Line
	4650 3200 4200 3200
Wire Wire Line
	4650 3350 4650 3200
Wire Wire Line
	4650 2850 6000 2850
Wire Wire Line
	4650 2850 4650 2750
Wire Wire Line
	4200 1550 4350 1550
Wire Wire Line
	4200 1650 4200 1550
Wire Wire Line
	4200 2100 4200 1950
Wire Wire Line
	4650 2100 4200 2100
Wire Wire Line
	4650 2350 4650 2100
Wire Wire Line
	4650 1850 6000 1850
Wire Wire Line
	4650 1850 4650 1750
$Comp
L elektrophon:BC560 Q4
U 1 1 5FDE7D68
P 4550 2550
F 0 "Q4" H 4741 2596 50  0000 L CNN
F 1 "BC560" H 4741 2505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4750 2475 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 4550 2550 50  0001 L CNN
F 4 "Q" H 4550 2550 50  0001 C CNN "Spice_Primitive"
F 5 "BC556B" H 4550 2550 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4550 2550 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3 2 1" H 4550 2550 50  0001 C CNN "Spice_Node_Sequence"
	1    4550 2550
	1    0    0    1   
$EndComp
$Comp
L power:+15V #PWR0108
U 1 1 5FDCA56F
P 4650 1050
F 0 "#PWR0108" H 4650 900 50  0001 C CNN
F 1 "+15V" H 4665 1223 50  0000 C CNN
F 2 "" H 4650 1050 50  0001 C CNN
F 3 "" H 4650 1050 50  0001 C CNN
	1    4650 1050
	1    0    0    -1  
$EndComp
$Comp
L elektrophon:BC560 Q3
U 1 1 5FDB2A64
P 4550 4550
F 0 "Q3" H 4741 4596 50  0000 L CNN
F 1 "BC560" H 4741 4505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4750 4475 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 4550 4550 50  0001 L CNN
F 4 "Q" H 4550 4550 50  0001 C CNN "Spice_Primitive"
F 5 "BC556B" H 4550 4550 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4550 4550 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3 2 1" H 4550 4550 50  0001 C CNN "Spice_Node_Sequence"
	1    4550 4550
	1    0    0    1   
$EndComp
$Comp
L elektrophon:BC560 Q2
U 1 1 5FD8670F
P 4550 3550
F 0 "Q2" H 4741 3596 50  0000 L CNN
F 1 "BC560" H 4741 3505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4750 3475 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 4550 3550 50  0001 L CNN
F 4 "Q" H 4550 3550 50  0001 C CNN "Spice_Primitive"
F 5 "BC556B" H 4550 3550 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4550 3550 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3 2 1" H 4550 3550 50  0001 C CNN "Spice_Node_Sequence"
	1    4550 3550
	1    0    0    1   
$EndComp
Wire Wire Line
	6000 4450 6050 4450
$Comp
L Device:R R27
U 1 1 5FE4AC42
P 6200 4450
F 0 "R27" V 5993 4450 50  0000 C CNN
F 1 "100k" V 6084 4450 50  0000 C CNN
F 2 "" V 6130 4450 50  0001 C CNN
F 3 "~" H 6200 4450 50  0001 C CNN
	1    6200 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 4550 5400 4550
Wire Wire Line
	5350 4600 5350 4550
$Comp
L power:GND #PWR011
U 1 1 5FE3621D
P 5350 4600
F 0 "#PWR011" H 5350 4350 50  0001 C CNN
F 1 "GND" H 5355 4427 50  0000 C CNN
F 2 "" H 5350 4600 50  0001 C CNN
F 3 "" H 5350 4600 50  0001 C CNN
	1    5350 4600
	1    0    0    -1  
$EndComp
NoConn ~ 5400 4450
Wire Wire Line
	6050 3450 6000 3450
Wire Wire Line
	6000 2450 6050 2450
$Comp
L Device:R R26
U 1 1 5FE49D07
P 6200 3450
F 0 "R26" V 5993 3450 50  0000 C CNN
F 1 "100k" V 6084 3450 50  0000 C CNN
F 2 "" V 6130 3450 50  0001 C CNN
F 3 "~" H 6200 3450 50  0001 C CNN
	1    6200 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R25
U 1 1 5FE48D9B
P 6200 2450
F 0 "R25" V 5993 2450 50  0000 C CNN
F 1 "100k" V 6084 2450 50  0000 C CNN
F 2 "" V 6130 2450 50  0001 C CNN
F 3 "~" H 6200 2450 50  0001 C CNN
	1    6200 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 3850 6000 4350
$Comp
L Amplifier_Operational:LM13700 U6
U 1 1 5FE36207
P 5700 4450
F 0 "U6" H 5700 4083 50  0000 C CNN
F 1 "LM13700" H 5700 4174 50  0000 C CNN
F 2 "" H 5400 4475 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 5400 4475 50  0001 C CNN
F 4 "X" H 5700 4450 50  0001 C CNN "Spice_Primitive"
F 5 "LM13700d" H 5700 4450 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5700 4450 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5700 4450
	1    0    0    1   
$EndComp
Wire Wire Line
	6000 2850 6000 3350
Wire Wire Line
	5350 3550 5400 3550
Wire Wire Line
	5350 3600 5350 3550
$Comp
L power:GND #PWR010
U 1 1 5FDF7054
P 5350 3600
F 0 "#PWR010" H 5350 3350 50  0001 C CNN
F 1 "GND" H 5355 3427 50  0000 C CNN
F 2 "" H 5350 3600 50  0001 C CNN
F 3 "" H 5350 3600 50  0001 C CNN
	1    5350 3600
	1    0    0    -1  
$EndComp
NoConn ~ 5400 3450
Wire Wire Line
	5350 2550 5400 2550
Wire Wire Line
	5350 2600 5350 2550
$Comp
L power:GND #PWR09
U 1 1 5FDECDC9
P 5350 2600
F 0 "#PWR09" H 5350 2350 50  0001 C CNN
F 1 "GND" H 5355 2427 50  0000 C CNN
F 2 "" H 5350 2600 50  0001 C CNN
F 3 "" H 5350 2600 50  0001 C CNN
	1    5350 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1850 6000 2350
NoConn ~ 5400 2450
$Comp
L Amplifier_Operational:LM13700 U5
U 3 1 5FDB74B1
P 5700 3450
F 0 "U5" H 5700 3083 50  0000 C CNN
F 1 "LM13700" H 5700 3174 50  0000 C CNN
F 2 "" H 5400 3475 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 5400 3475 50  0001 C CNN
F 4 "X" H 5700 3450 50  0001 C CNN "Spice_Primitive"
F 5 "LM13700d" H 5700 3450 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5700 3450 50  0001 C CNN "Spice_Netlist_Enabled"
	3    5700 3450
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM13700 U5
U 1 1 5FDB1841
P 5700 2450
F 0 "U5" H 5700 2083 50  0000 C CNN
F 1 "LM13700" H 5700 2174 50  0000 C CNN
F 2 "" H 5400 2475 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 5400 2475 50  0001 C CNN
F 4 "X" H 5700 2450 50  0001 C CNN "Spice_Primitive"
F 5 "LM13700d" H 5700 2450 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5700 2450 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5700 2450
	1    0    0    1   
$EndComp
Wire Wire Line
	6050 5450 6000 5450
$Comp
L Device:R R28
U 1 1 5FE4BBD4
P 6200 5450
F 0 "R28" V 5993 5450 50  0000 C CNN
F 1 "100k" V 6084 5450 50  0000 C CNN
F 2 "" V 6130 5450 50  0001 C CNN
F 3 "~" H 6200 5450 50  0001 C CNN
	1    6200 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 4850 6000 5350
Wire Wire Line
	5350 5550 5400 5550
Wire Wire Line
	5350 5600 5350 5550
$Comp
L power:GND #PWR012
U 1 1 5FE3622E
P 5350 5600
F 0 "#PWR012" H 5350 5350 50  0001 C CNN
F 1 "GND" H 5355 5427 50  0000 C CNN
F 2 "" H 5350 5600 50  0001 C CNN
F 3 "" H 5350 5600 50  0001 C CNN
	1    5350 5600
	1    0    0    -1  
$EndComp
NoConn ~ 5400 5450
$Comp
L Amplifier_Operational:LM13700 U6
U 3 1 5FE3620D
P 5700 5450
F 0 "U6" H 5700 5083 50  0000 C CNN
F 1 "LM13700" H 5700 5174 50  0000 C CNN
F 2 "" H 5400 5475 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 5400 5475 50  0001 C CNN
F 4 "X" H 5700 5450 50  0001 C CNN "Spice_Primitive"
F 5 "LM13700d" H 5700 5450 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5700 5450 50  0001 C CNN "Spice_Netlist_Enabled"
	3    5700 5450
	1    0    0    1   
$EndComp
Wire Wire Line
	3950 4550 4350 4550
Connection ~ 4200 2550
Connection ~ 3950 2550
Wire Wire Line
	3950 2550 4200 2550
Connection ~ 4200 3550
Wire Wire Line
	3950 3550 4200 3550
Connection ~ 4200 1550
Connection ~ 3950 1550
Wire Wire Line
	3950 1550 4200 1550
$Comp
L Amplifier_Operational:LM324 U1
U 1 1 5FEB9C9D
P 3600 1550
F 0 "U1" H 3600 1183 50  0000 C CNN
F 1 "LM324" H 3600 1274 50  0000 C CNN
F 2 "" H 3550 1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 3650 1750 50  0001 C CNN
F 4 "X" H 3600 1550 50  0001 C CNN "Spice_Primitive"
F 5 "LT1014x_30V" H 3600 1550 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3600 1550 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3 2 4 11 1" H 3600 1550 50  0001 C CNN "Spice_Node_Sequence"
	1    3600 1550
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 5 1 5FEC4946
P 2300 7050
F 0 "U1" H 2258 7096 50  0000 L CNN
F 1 "LM324" H 2258 7005 50  0000 L CNN
F 2 "" H 2250 7150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 2350 7250 50  0001 C CNN
	5    2300 7050
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U2
U 1 1 5FF59A4F
P 3600 2550
F 0 "U2" H 3600 2183 50  0000 C CNN
F 1 "LM324" H 3600 2274 50  0000 C CNN
F 2 "" H 3550 2650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 3650 2750 50  0001 C CNN
F 4 "X" H 3600 2550 50  0001 C CNN "Spice_Primitive"
F 5 "LT1014x_30V" H 3600 2550 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3600 2550 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3 2 4 11 1" H 3600 2550 50  0001 C CNN "Spice_Node_Sequence"
	1    3600 2550
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U3
U 1 1 5FF5AEDD
P 3600 3550
F 0 "U3" H 3600 3183 50  0000 C CNN
F 1 "LM324" H 3600 3274 50  0000 C CNN
F 2 "" H 3550 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 3650 3750 50  0001 C CNN
F 4 "X" H 3600 3550 50  0001 C CNN "Spice_Primitive"
F 5 "LT1014x_30V" H 3600 3550 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3600 3550 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3 2 4 11 1" H 3600 3550 50  0001 C CNN "Spice_Node_Sequence"
	1    3600 3550
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U4
U 1 1 5FF5C275
P 3600 4550
F 0 "U4" H 3600 4183 50  0000 C CNN
F 1 "LM324" H 3600 4274 50  0000 C CNN
F 2 "" H 3550 4650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 3650 4750 50  0001 C CNN
F 4 "X" H 3600 4550 50  0001 C CNN "Spice_Primitive"
F 5 "LT1014x_30V" H 3600 4550 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3600 4550 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3 2 4 11 1" H 3600 4550 50  0001 C CNN "Spice_Node_Sequence"
	1    3600 4550
	1    0    0    1   
$EndComp
$Comp
L power:+15V #PWR03
U 1 1 5FF63835
P 2800 6750
F 0 "#PWR03" H 2800 6600 50  0001 C CNN
F 1 "+15V" H 2815 6923 50  0000 C CNN
F 2 "" H 2800 6750 50  0001 C CNN
F 3 "" H 2800 6750 50  0001 C CNN
	1    2800 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FF6383B
P 2800 7350
F 0 "#PWR04" H 2800 7100 50  0001 C CNN
F 1 "GND" H 2805 7177 50  0000 C CNN
F 2 "" H 2800 7350 50  0001 C CNN
F 3 "" H 2800 7350 50  0001 C CNN
	1    2800 7350
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U2
U 5 1 5FF63841
P 2900 7050
F 0 "U2" H 2858 7096 50  0000 L CNN
F 1 "LM324" H 2858 7005 50  0000 L CNN
F 2 "" H 2850 7150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 2950 7250 50  0001 C CNN
	5    2900 7050
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR06
U 1 1 5FF66783
P 3400 6700
F 0 "#PWR06" H 3400 6550 50  0001 C CNN
F 1 "+15V" H 3415 6873 50  0000 C CNN
F 2 "" H 3400 6700 50  0001 C CNN
F 3 "" H 3400 6700 50  0001 C CNN
	1    3400 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5FF66789
P 3400 7300
F 0 "#PWR07" H 3400 7050 50  0001 C CNN
F 1 "GND" H 3405 7127 50  0000 C CNN
F 2 "" H 3400 7300 50  0001 C CNN
F 3 "" H 3400 7300 50  0001 C CNN
	1    3400 7300
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U3
U 5 1 5FF6678F
P 3500 7000
F 0 "U3" H 3458 7046 50  0000 L CNN
F 1 "LM324" H 3458 6955 50  0000 L CNN
F 2 "" H 3450 7100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 3550 7200 50  0001 C CNN
	5    3500 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR08
U 1 1 5FF69B7A
P 3900 6750
F 0 "#PWR08" H 3900 6600 50  0001 C CNN
F 1 "+15V" H 3915 6923 50  0000 C CNN
F 2 "" H 3900 6750 50  0001 C CNN
F 3 "" H 3900 6750 50  0001 C CNN
	1    3900 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5FF69B80
P 3900 7350
F 0 "#PWR015" H 3900 7100 50  0001 C CNN
F 1 "GND" H 3905 7177 50  0000 C CNN
F 2 "" H 3900 7350 50  0001 C CNN
F 3 "" H 3900 7350 50  0001 C CNN
	1    3900 7350
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U4
U 5 1 5FF69B86
P 4000 7050
F 0 "U4" H 3958 7096 50  0000 L CNN
F 1 "LM324" H 3958 7005 50  0000 L CNN
F 2 "" H 3950 7150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 4050 7250 50  0001 C CNN
	5    4000 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5FF781F3
P 2250 5300
F 0 "#PWR0106" H 2250 5050 50  0001 C CNN
F 1 "GND" H 2255 5127 50  0000 C CNN
F 2 "" H 2250 5300 50  0001 C CNN
F 3 "" H 2250 5300 50  0001 C CNN
	1    2250 5300
	1    0    0    -1  
$EndComp
$Comp
L elektrophon:BC560 Q1
U 1 1 5FEBC44A
P 4550 1550
F 0 "Q1" H 4741 1596 50  0000 L CNN
F 1 "BC560" H 4741 1505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4750 1475 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 4550 1550 50  0001 L CNN
F 4 "Q" H 4550 1550 50  0001 C CNN "Spice_Primitive"
F 5 "BC556B" H 4550 1550 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4550 1550 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3 2 1" H 4550 1550 50  0001 C CNN "Spice_Node_Sequence"
	1    4550 1550
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U11
U 1 1 5FD5765C
P 700 4600
F 0 "U11" H 700 4233 50  0000 C CNN
F 1 "TL072" H 700 4324 50  0000 C CNN
F 2 "" H 700 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 700 4600 50  0001 C CNN
F 4 "X" H 700 4600 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 700 4600 50  0001 C CNN "Spice_Model"
F 6 "Y" H 700 4600 50  0001 C CNN "Spice_Netlist_Enabled"
	1    700  4600
	1    0    0    1   
$EndComp
Wire Wire Line
	1000 4600 1050 4600
Wire Wire Line
	1050 4600 1050 4100
Wire Wire Line
	1050 4100 350  4100
Wire Wire Line
	350  4100 350  4500
Wire Wire Line
	350  4500 400  4500
Text GLabel 400  4700 0    50   Input ~ 0
CV_IN
Text GLabel 1050 4600 2    50   Input ~ 0
CV_S
$Comp
L Amplifier_Operational:TL072 U7
U 1 1 5FD80E6F
P 650 1350
F 0 "U7" H 650 983 50  0000 C CNN
F 1 "TL072" H 650 1074 50  0000 C CNN
F 2 "" H 650 1350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 650 1350 50  0001 C CNN
F 4 "X" H 650 1350 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 650 1350 50  0001 C CNN "Spice_Model"
F 6 "Y" H 650 1350 50  0001 C CNN "Spice_Netlist_Enabled"
	1    650  1350
	1    0    0    1   
$EndComp
Wire Wire Line
	950  1350 1000 1350
Wire Wire Line
	1000 1350 1000 850 
Wire Wire Line
	1000 850  300  850 
Wire Wire Line
	300  850  300  1250
Wire Wire Line
	300  1250 350  1250
Text GLabel -200 1450 0    50   Input ~ 0
IN_1
Text GLabel 1550 1350 2    50   Input ~ 0
IN_1_S
Wire Wire Line
	950  2200 1000 2200
Wire Wire Line
	1000 2200 1000 1700
Wire Wire Line
	1000 1700 300  1700
Wire Wire Line
	300  1700 300  2100
Wire Wire Line
	300  2100 350  2100
Text GLabel 350  2300 0    50   Input ~ 0
IN_2
Text GLabel 1550 2200 2    50   Input ~ 0
IN_2_S
$Comp
L Amplifier_Operational:TL072 U9
U 1 1 5FD94C79
P 700 3000
F 0 "U9" H 700 2633 50  0000 C CNN
F 1 "TL072" H 700 2724 50  0000 C CNN
F 2 "" H 700 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 700 3000 50  0001 C CNN
F 4 "X" H 700 3000 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 700 3000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 700 3000 50  0001 C CNN "Spice_Netlist_Enabled"
	1    700  3000
	1    0    0    1   
$EndComp
Wire Wire Line
	1000 3000 1050 3000
Wire Wire Line
	1050 3000 1050 2500
Wire Wire Line
	1050 2500 350  2500
Wire Wire Line
	350  2500 350  2900
Wire Wire Line
	350  2900 400  2900
Text GLabel 400  3100 0    50   Input ~ 0
IN_3
Text GLabel 1600 3000 2    50   Input ~ 0
IN_3_S
Wire Wire Line
	1000 3850 1050 3850
Wire Wire Line
	1050 3850 1050 3350
Wire Wire Line
	1050 3350 350  3350
Wire Wire Line
	350  3350 350  3750
Wire Wire Line
	350  3750 400  3750
Text GLabel 400  3950 0    50   Input ~ 0
IN_4
Text GLabel 1600 3850 2    50   Input ~ 0
IN_4_S
$Comp
L Device:R R11
U 1 1 5FDB1DF4
P 1150 1350
F 0 "R11" V 943 1350 50  0000 C CNN
F 1 "100k" V 1034 1350 50  0000 C CNN
F 2 "" V 1080 1350 50  0001 C CNN
F 3 "~" H 1150 1350 50  0001 C CNN
	1    1150 1350
	0    1    1    0   
$EndComp
Connection ~ 1000 1350
$Comp
L Device:R R22
U 1 1 5FDB507A
P 1400 1550
F 0 "R22" H 1470 1596 50  0000 L CNN
F 1 "220" H 1470 1505 50  0000 L CNN
F 2 "" V 1330 1550 50  0001 C CNN
F 3 "~" H 1400 1550 50  0001 C CNN
	1    1400 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1350 1400 1350
Wire Wire Line
	1400 1400 1400 1350
Connection ~ 1400 1350
Wire Wire Line
	1400 1350 1550 1350
$Comp
L power:GND #PWR02
U 1 1 5FDC593E
P 1400 1700
F 0 "#PWR02" H 1400 1450 50  0001 C CNN
F 1 "GND" H 1405 1527 50  0000 C CNN
F 2 "" H 1400 1700 50  0001 C CNN
F 3 "" H 1400 1700 50  0001 C CNN
	1    1400 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5FD68A85
P 1150 2200
F 0 "R16" V 943 2200 50  0000 C CNN
F 1 "100k" V 1034 2200 50  0000 C CNN
F 2 "" V 1080 2200 50  0001 C CNN
F 3 "~" H 1150 2200 50  0001 C CNN
	1    1150 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R R23
U 1 1 5FD68A8B
P 1400 2400
F 0 "R23" H 1470 2446 50  0000 L CNN
F 1 "220" H 1470 2355 50  0000 L CNN
F 2 "" V 1330 2400 50  0001 C CNN
F 3 "~" H 1400 2400 50  0001 C CNN
	1    1400 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2200 1400 2200
Wire Wire Line
	1400 2250 1400 2200
Connection ~ 1400 2200
Wire Wire Line
	1400 2200 1550 2200
$Comp
L power:GND #PWR016
U 1 1 5FD68A95
P 1400 2550
F 0 "#PWR016" H 1400 2300 50  0001 C CNN
F 1 "GND" H 1405 2377 50  0000 C CNN
F 2 "" H 1400 2550 50  0001 C CNN
F 3 "" H 1400 2550 50  0001 C CNN
	1    1400 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5FD6DC5E
P 1200 3000
F 0 "R20" V 993 3000 50  0000 C CNN
F 1 "100k" V 1084 3000 50  0000 C CNN
F 2 "" V 1130 3000 50  0001 C CNN
F 3 "~" H 1200 3000 50  0001 C CNN
	1    1200 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R R24
U 1 1 5FD6DC64
P 1450 3200
F 0 "R24" H 1520 3246 50  0000 L CNN
F 1 "220" H 1520 3155 50  0000 L CNN
F 2 "" V 1380 3200 50  0001 C CNN
F 3 "~" H 1450 3200 50  0001 C CNN
	1    1450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3000 1450 3000
Wire Wire Line
	1450 3050 1450 3000
Connection ~ 1450 3000
Wire Wire Line
	1450 3000 1600 3000
$Comp
L power:GND #PWR017
U 1 1 5FD6DC6E
P 1450 3350
F 0 "#PWR017" H 1450 3100 50  0001 C CNN
F 1 "GND" H 1455 3177 50  0000 C CNN
F 2 "" H 1450 3350 50  0001 C CNN
F 3 "" H 1450 3350 50  0001 C CNN
	1    1450 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 5FD74684
P 1200 3850
F 0 "R21" V 993 3850 50  0000 C CNN
F 1 "100k" V 1084 3850 50  0000 C CNN
F 2 "" V 1130 3850 50  0001 C CNN
F 3 "~" H 1200 3850 50  0001 C CNN
	1    1200 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R29
U 1 1 5FD7468A
P 1450 4050
F 0 "R29" H 1520 4096 50  0000 L CNN
F 1 "220" H 1520 4005 50  0000 L CNN
F 2 "" V 1380 4050 50  0001 C CNN
F 3 "~" H 1450 4050 50  0001 C CNN
	1    1450 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3850 1450 3850
Wire Wire Line
	1450 3900 1450 3850
Connection ~ 1450 3850
Wire Wire Line
	1450 3850 1600 3850
$Comp
L power:GND #PWR018
U 1 1 5FD74694
P 1450 4200
F 0 "#PWR018" H 1450 3950 50  0001 C CNN
F 1 "GND" H 1455 4027 50  0000 C CNN
F 2 "" H 1450 4200 50  0001 C CNN
F 3 "" H 1450 4200 50  0001 C CNN
	1    1450 4200
	1    0    0    -1  
$EndComp
Connection ~ 1050 3850
Connection ~ 1050 3000
Connection ~ 1000 2200
Text GLabel 5400 2350 0    50   Input ~ 0
IN_1_S
Text GLabel 5400 3350 0    50   Input ~ 0
IN_2_S
Text GLabel 5400 4350 0    50   Input ~ 0
IN_3_S
Text GLabel 5400 5350 0    50   Input ~ 0
IN_4_S
$Comp
L Device:C C1
U 1 1 5FDAF264
P 100 1450
F 0 "C1" V -152 1450 50  0000 C CNN
F 1 "470n" V -61 1450 50  0000 C CNN
F 2 "" H 138 1300 50  0001 C CNN
F 3 "~" H 100 1450 50  0001 C CNN
	1    100  1450
	0    1    1    0   
$EndComp
Wire Wire Line
	-200 1450 -50  1450
Wire Wire Line
	250  1450 350  1450
$Comp
L Amplifier_Operational:TL072 U7
U 2 1 5FD81366
P 650 2200
F 0 "U7" H 650 1833 50  0000 C CNN
F 1 "TL072" H 650 1924 50  0000 C CNN
F 2 "" H 650 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 650 2200 50  0001 C CNN
F 4 "X" H 650 2200 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 650 2200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 650 2200 50  0001 C CNN "Spice_Netlist_Enabled"
	2    650  2200
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U9
U 2 1 5FD82D97
P 700 3850
F 0 "U9" H 700 3483 50  0000 C CNN
F 1 "TL072" H 700 3574 50  0000 C CNN
F 2 "" H 700 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 700 3850 50  0001 C CNN
F 4 "X" H 700 3850 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 700 3850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 700 3850 50  0001 C CNN "Spice_Netlist_Enabled"
	2    700  3850
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U11
U 2 1 5FD85105
P 7150 3800
F 0 "U11" H 7150 3433 50  0000 C CNN
F 1 "TL072" H 7150 3524 50  0000 C CNN
F 2 "" H 7150 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7150 3800 50  0001 C CNN
F 4 "X" H 7150 3800 50  0001 C CNN "Spice_Primitive"
F 5 "TL072c" H 7150 3800 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7150 3800 50  0001 C CNN "Spice_Netlist_Enabled"
	2    7150 3800
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U7
U 3 1 5FD927D5
P 900 7000
F 0 "U7" H 858 7046 50  0000 L CNN
F 1 "TL072" H 858 6955 50  0000 L CNN
F 2 "" H 900 7000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 900 7000 50  0001 C CNN
	3    900  7000
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR019
U 1 1 5FD95B00
P 800 6700
F 0 "#PWR019" H 800 6550 50  0001 C CNN
F 1 "+15V" H 815 6873 50  0000 C CNN
F 2 "" H 800 6700 50  0001 C CNN
F 3 "" H 800 6700 50  0001 C CNN
	1    800  6700
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR020
U 1 1 5FD970D5
P 800 7300
F 0 "#PWR020" H 800 7400 50  0001 C CNN
F 1 "-15V" H 815 7473 50  0000 C CNN
F 2 "" H 800 7300 50  0001 C CNN
F 3 "" H 800 7300 50  0001 C CNN
	1    800  7300
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U9
U 3 1 5FD9B090
P 1350 7000
F 0 "U9" H 1308 7046 50  0000 L CNN
F 1 "TL072" H 1308 6955 50  0000 L CNN
F 2 "" H 1350 7000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1350 7000 50  0001 C CNN
	3    1350 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR021
U 1 1 5FD9B096
P 1250 6700
F 0 "#PWR021" H 1250 6550 50  0001 C CNN
F 1 "+15V" H 1265 6873 50  0000 C CNN
F 2 "" H 1250 6700 50  0001 C CNN
F 3 "" H 1250 6700 50  0001 C CNN
	1    1250 6700
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR022
U 1 1 5FD9B09C
P 1250 7300
F 0 "#PWR022" H 1250 7400 50  0001 C CNN
F 1 "-15V" H 1265 7473 50  0000 C CNN
F 2 "" H 1250 7300 50  0001 C CNN
F 3 "" H 1250 7300 50  0001 C CNN
	1    1250 7300
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U11
U 3 1 5FDA2228
P 1750 7000
F 0 "U11" H 1708 7046 50  0000 L CNN
F 1 "TL072" H 1708 6955 50  0000 L CNN
F 2 "" H 1750 7000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1750 7000 50  0001 C CNN
	3    1750 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR023
U 1 1 5FDA222E
P 1650 6700
F 0 "#PWR023" H 1650 6550 50  0001 C CNN
F 1 "+15V" H 1665 6873 50  0000 C CNN
F 2 "" H 1650 6700 50  0001 C CNN
F 3 "" H 1650 6700 50  0001 C CNN
	1    1650 6700
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR024
U 1 1 5FDA2234
P 1650 7300
F 0 "#PWR024" H 1650 7400 50  0001 C CNN
F 1 "-15V" H 1665 7473 50  0000 C CNN
F 2 "" H 1650 7300 50  0001 C CNN
F 3 "" H 1650 7300 50  0001 C CNN
	1    1650 7300
	-1   0    0    1   
$EndComp
Text GLabel 9050 3900 0    50   Input ~ 0
IN_1
Text GLabel 9050 4000 0    50   Input ~ 0
IN_2
Text GLabel 9050 4100 0    50   Input ~ 0
IN_3
Text GLabel 9050 4200 0    50   Input ~ 0
IN_4
$Comp
L Device:R R30
U 1 1 5FEC04C0
P 7150 3200
F 0 "R30" V 6943 3200 50  0000 C CNN
F 1 "100k" V 7034 3200 50  0000 C CNN
F 2 "" V 7080 3200 50  0001 C CNN
F 3 "~" H 7150 3200 50  0001 C CNN
	1    7150 3200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5FEC71CA
P 6800 3950
F 0 "#PWR0109" H 6800 3700 50  0001 C CNN
F 1 "GND" H 6805 3777 50  0000 C CNN
F 2 "" H 6800 3950 50  0001 C CNN
F 3 "" H 6800 3950 50  0001 C CNN
	1    6800 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3950 6800 3900
Wire Wire Line
	6800 3900 6850 3900
Wire Wire Line
	7300 3200 7550 3200
Wire Wire Line
	7550 3200 7550 3800
Wire Wire Line
	7550 3800 7450 3800
Wire Wire Line
	7000 3200 6800 3200
Wire Wire Line
	6800 3200 6800 3700
Wire Wire Line
	6800 3700 6850 3700
Wire Wire Line
	6800 3700 6550 3700
Wire Wire Line
	6550 3700 6550 4450
Wire Wire Line
	6550 5450 6350 5450
Connection ~ 6800 3700
Wire Wire Line
	6350 4450 6550 4450
Connection ~ 6550 4450
Wire Wire Line
	6550 4450 6550 5450
Wire Wire Line
	6550 3700 6550 3450
Wire Wire Line
	6550 2450 6350 2450
Connection ~ 6550 3700
Wire Wire Line
	6350 3450 6550 3450
Connection ~ 6550 3450
Wire Wire Line
	6550 3450 6550 2450
Text GLabel 9050 4300 0    50   Input ~ 0
OUT
Text GLabel 7550 3800 2    50   Input ~ 0
OUT
$Comp
L Device:R R19
U 1 1 5FD91A0D
P 4200 3850
F 0 "R19" H 4270 3896 50  0000 L CNN
F 1 "33k" H 4270 3805 50  0000 L CNN
F 2 "" V 4130 3850 50  0001 C CNN
F 3 "~" H 4200 3850 50  0001 C CNN
	1    4200 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 5FD850A2
P 4200 2900
F 0 "R18" H 4270 2946 50  0000 L CNN
F 1 "33k" H 4270 2855 50  0000 L CNN
F 2 "" V 4130 2900 50  0001 C CNN
F 3 "~" H 4200 2900 50  0001 C CNN
	1    4200 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5FD70892
P 4200 1800
F 0 "R17" H 4270 1846 50  0000 L CNN
F 1 "33k" H 4270 1755 50  0000 L CNN
F 2 "" V 4130 1800 50  0001 C CNN
F 3 "~" H 4200 1800 50  0001 C CNN
	1    4200 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5FDC4D73
P 4650 1200
F 0 "R5" H 4720 1246 50  0000 L CNN
F 1 "33k" H 4720 1155 50  0000 L CNN
F 2 "" V 4580 1200 50  0001 C CNN
F 3 "~" H 4650 1200 50  0001 C CNN
	1    4650 1200
	1    0    0    -1  
$EndComp
Text Notes 3150 7950 0    50   ~ 0
.option savecurrents
$EndSCHEMATC
