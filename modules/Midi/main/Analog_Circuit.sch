EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 7350 1000 2    50   Input ~ 0
Note_1
Text GLabel 7350 2100 2    50   Input ~ 0
Velocity_1
$Comp
L Analog_DAC:MCP4822 U?
U 1 1 5EABBCE3
P 2000 1200
AR Path="/5EABBCE3" Ref="U?"  Part="1" 
AR Path="/5EAB1F13/5EABBCE3" Ref="U4"  Part="1" 
F 0 "U4" H 1750 1700 50  0000 C CNN
F 1 "MCP4822" H 1750 1600 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2800 900 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 2800 900 50  0001 C CNN
	1    2000 1200
	1    0    0    -1  
$EndComp
$Comp
L Analog_DAC:MCP4822 U?
U 1 1 5EABBCE9
P 2000 2700
AR Path="/5EABBCE9" Ref="U?"  Part="1" 
AR Path="/5EAB1F13/5EABBCE9" Ref="U5"  Part="1" 
F 0 "U5" H 1700 3200 50  0000 C CNN
F 1 "MCP4822" H 1700 3100 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2800 2400 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 2800 2400 50  0001 C CNN
	1    2000 2700
	1    0    0    -1  
$EndComp
$Comp
L Analog_DAC:MCP4822 U?
U 1 1 5EABBCEF
P 2000 4250
AR Path="/5EABBCEF" Ref="U?"  Part="1" 
AR Path="/5EAB1F13/5EABBCEF" Ref="U6"  Part="1" 
F 0 "U6" H 1700 4850 50  0000 C CNN
F 1 "MCP4822" H 1700 4700 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2800 3950 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 2800 3950 50  0001 C CNN
	1    2000 4250
	1    0    0    -1  
$EndComp
$Comp
L Analog_DAC:MCP4822 U?
U 1 1 5EABBCF5
P 4000 1200
AR Path="/5EABBCF5" Ref="U?"  Part="1" 
AR Path="/5EAB1F13/5EABBCF5" Ref="U7"  Part="1" 
F 0 "U7" H 3750 1700 50  0000 C CNN
F 1 "MCP4822" H 3750 1600 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 4800 900 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 4800 900 50  0001 C CNN
	1    4000 1200
	1    0    0    -1  
$EndComp
$Comp
L Analog_DAC:MCP4822 U?
U 1 1 5EABBCFB
P 4000 2700
AR Path="/5EABBCFB" Ref="U?"  Part="1" 
AR Path="/5EAB1F13/5EABBCFB" Ref="U8"  Part="1" 
F 0 "U8" H 3650 3200 50  0000 C CNN
F 1 "MCP4822" H 3650 3100 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 4800 2400 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 4800 2400 50  0001 C CNN
	1    4000 2700
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 1 1 5EABBD01
P 6600 2100
AR Path="/5EABBD01" Ref="U?"  Part="1" 
AR Path="/5EAB1F13/5EABBD01" Ref="U9"  Part="1" 
F 0 "U9" H 6600 2467 50  0000 C CNN
F 1 "LM324" H 6600 2376 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 6550 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 6650 2300 50  0001 C CNN
	1    6600 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2100 6900 2500
Wire Wire Line
	6900 2500 6300 2500
Wire Wire Line
	6300 2500 6300 2200
Wire Wire Line
	5750 2000 6300 2000
Wire Wire Line
	6900 2100 7050 2100
Connection ~ 6900 2100
$Comp
L Amplifier_Operational:LM324 U?
U 2 1 5EABBD0D
P 6600 1000
AR Path="/5EABBD0D" Ref="U?"  Part="2" 
AR Path="/5EAB1F13/5EABBD0D" Ref="U9"  Part="2" 
F 0 "U9" H 6600 1367 50  0000 C CNN
F 1 "LM324" H 6600 1276 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 6550 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 6650 1200 50  0001 C CNN
	2    6600 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1000 7050 1000
$Comp
L Device:R R?
U 1 1 5EABBD14
P 6600 1500
AR Path="/5EABBD14" Ref="R?"  Part="1" 
AR Path="/5EAB1F13/5EABBD14" Ref="R10"  Part="1" 
F 0 "R10" V 6393 1500 50  0000 C CNN
F 1 "17k" V 6484 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6530 1500 50  0001 C CNN
F 3 "~" H 6600 1500 50  0001 C CNN
	1    6600 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EABBD1A
P 6100 1650
AR Path="/5EABBD1A" Ref="R?"  Part="1" 
AR Path="/5EAB1F13/5EABBD1A" Ref="R8"  Part="1" 
F 0 "R8" H 6030 1604 50  0000 R CNN
F 1 "22k" H 6030 1695 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6030 1650 50  0001 C CNN
F 3 "~" H 6100 1650 50  0001 C CNN
	1    6100 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6900 1500 6900 1000
Connection ~ 6900 1000
Wire Wire Line
	6300 1500 6300 1100
Wire Wire Line
	6300 1500 6100 1500
Wire Wire Line
	6300 900  5950 900 
$Comp
L power:GND #PWR?
U 1 1 5EABBD28
P 1150 2700
AR Path="/5EABBD28" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EABBD28" Ref="#PWR048"  Part="1" 
F 0 "#PWR048" H 1150 2450 50  0001 C CNN
F 1 "GND" H 1155 2527 50  0000 C CNN
F 2 "" H 1150 2700 50  0001 C CNN
F 3 "" H 1150 2700 50  0001 C CNN
	1    1150 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2700 1500 2700
$Comp
L power:GND #PWR?
U 1 1 5EABBD2F
P 2000 3200
AR Path="/5EABBD2F" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EABBD2F" Ref="#PWR055"  Part="1" 
F 0 "#PWR055" H 2000 2950 50  0001 C CNN
F 1 "GND" H 2005 3027 50  0000 C CNN
F 2 "" H 2000 3200 50  0001 C CNN
F 3 "" H 2000 3200 50  0001 C CNN
	1    2000 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EABBD35
P 2000 2300
AR Path="/5EABBD35" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EABBD35" Ref="#PWR054"  Part="1" 
F 0 "#PWR054" H 2000 2150 50  0001 C CNN
F 1 "+5V" H 2015 2473 50  0000 C CNN
F 2 "" H 2000 2300 50  0001 C CNN
F 3 "" H 2000 2300 50  0001 C CNN
	1    2000 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EABBD3F
P 1150 4250
AR Path="/5EABBD3F" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EABBD3F" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 1150 4000 50  0001 C CNN
F 1 "GND" H 1155 4077 50  0000 C CNN
F 2 "" H 1150 4250 50  0001 C CNN
F 3 "" H 1150 4250 50  0001 C CNN
	1    1150 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 4250 1500 4250
$Comp
L power:GND #PWR?
U 1 1 5EABBD48
P 3150 2700
AR Path="/5EABBD48" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EABBD48" Ref="#PWR059"  Part="1" 
F 0 "#PWR059" H 3150 2450 50  0001 C CNN
F 1 "GND" H 3155 2527 50  0000 C CNN
F 2 "" H 3150 2700 50  0001 C CNN
F 3 "" H 3150 2700 50  0001 C CNN
	1    3150 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2700 3500 2700
$Comp
L power:GND #PWR?
U 1 1 5EABBD52
P 1150 1200
AR Path="/5EABBD52" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EABBD52" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 1150 950 50  0001 C CNN
F 1 "GND" H 1155 1027 50  0000 C CNN
F 2 "" H 1150 1200 50  0001 C CNN
F 3 "" H 1150 1200 50  0001 C CNN
	1    1150 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1200 1500 1200
$Comp
L power:GND #PWR?
U 1 1 5EABBD5C
P 3150 1200
AR Path="/5EABBD5C" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EABBD5C" Ref="#PWR058"  Part="1" 
F 0 "#PWR058" H 3150 950 50  0001 C CNN
F 1 "GND" H 3155 1027 50  0000 C CNN
F 2 "" H 3150 1200 50  0001 C CNN
F 3 "" H 3150 1200 50  0001 C CNN
	1    3150 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1200 3500 1200
$Comp
L power:GND #PWR?
U 1 1 5EABBD63
P 6100 1800
AR Path="/5EABBD63" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EABBD63" Ref="#PWR071"  Part="1" 
F 0 "#PWR071" H 6100 1550 50  0001 C CNN
F 1 "GND" H 6105 1627 50  0000 C CNN
F 2 "" H 6100 1800 50  0001 C CNN
F 3 "" H 6100 1800 50  0001 C CNN
	1    6100 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1500 6900 1500
Wire Wire Line
	6450 1500 6300 1500
Connection ~ 6300 1500
$Comp
L power:GND #PWR?
U 1 1 5EABBD6C
P 2000 1700
AR Path="/5EABBD6C" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EABBD6C" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 2000 1450 50  0001 C CNN
F 1 "GND" H 2005 1527 50  0000 C CNN
F 2 "" H 2000 1700 50  0001 C CNN
F 3 "" H 2000 1700 50  0001 C CNN
	1    2000 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EABBD72
P 4000 1700
AR Path="/5EABBD72" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EABBD72" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 4000 1450 50  0001 C CNN
F 1 "GND" H 4005 1527 50  0000 C CNN
F 2 "" H 4000 1700 50  0001 C CNN
F 3 "" H 4000 1700 50  0001 C CNN
	1    4000 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EABBD78
P 4000 3200
AR Path="/5EABBD78" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EABBD78" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 4000 2950 50  0001 C CNN
F 1 "GND" H 4005 3027 50  0000 C CNN
F 2 "" H 4000 3200 50  0001 C CNN
F 3 "" H 4000 3200 50  0001 C CNN
	1    4000 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EABBD7E
P 2000 4750
AR Path="/5EABBD7E" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EABBD7E" Ref="#PWR057"  Part="1" 
F 0 "#PWR057" H 2000 4500 50  0001 C CNN
F 1 "GND" H 2005 4577 50  0000 C CNN
F 2 "" H 2000 4750 50  0001 C CNN
F 3 "" H 2000 4750 50  0001 C CNN
	1    2000 4750
	1    0    0    -1  
$EndComp
NoConn ~ 4500 2900
Text Label 2500 1100 0    50   ~ 0
SIG_NOTE_1
Text Label 2500 1400 0    50   ~ 0
SIG_VELOCITY_1
Text Label 5950 900  2    50   ~ 0
SIG_NOTE_1
Text Label 5750 2000 2    50   ~ 0
SIG_VELOCITY_1
Text Label 2500 2600 0    50   ~ 0
SIG_NOTE_2
Text Label 2500 2900 0    50   ~ 0
SIG_VELOCITY_2
Text Label 2500 4150 0    50   ~ 0
SIG_NOTE_3
Text Label 2500 4450 0    50   ~ 0
SIG_VELOCITY_3
Text Label 4500 1100 0    50   ~ 0
SIG_PITCH_BEND_1
Text Label 4500 1400 0    50   ~ 0
SIG_PITCH_BEND_2
Text Label 4500 2600 0    50   ~ 0
SIG_PITCH_BEND_3
$Comp
L 4xxx:40106 U?
U 1 1 5EABBD90
P 1900 6150
AR Path="/5EABBD90" Ref="U?"  Part="1" 
AR Path="/5EAB1F13/5EABBD90" Ref="U3"  Part="1" 
F 0 "U3" H 1900 6467 50  0000 C CNN
F 1 "40106" H 1900 6376 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 1900 6150 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/HEF40106B.pdf" H 1900 6150 50  0001 C CNN
	1    1900 6150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 3 1 5EABBD98
P 6550 3200
AR Path="/5EABBD98" Ref="U?"  Part="3" 
AR Path="/5EAB1F13/5EABBD98" Ref="U9"  Part="3" 
F 0 "U9" H 6550 3567 50  0000 C CNN
F 1 "LM324" H 6550 3476 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 6500 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 6600 3400 50  0001 C CNN
	3    6550 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EABBDA5
P 6050 3850
AR Path="/5EABBDA5" Ref="R?"  Part="1" 
AR Path="/5EAB1F13/5EABBDA5" Ref="R7"  Part="1" 
F 0 "R7" H 5980 3804 50  0000 R CNN
F 1 "22k" H 5980 3895 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5980 3850 50  0001 C CNN
F 3 "~" H 6050 3850 50  0001 C CNN
	1    6050 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 3100 5900 3100
$Comp
L power:GND #PWR?
U 1 1 5EABBDAC
P 6050 4000
AR Path="/5EABBDAC" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EABBDAC" Ref="#PWR070"  Part="1" 
F 0 "#PWR070" H 6050 3750 50  0001 C CNN
F 1 "GND" H 6055 3827 50  0000 C CNN
F 2 "" H 6050 4000 50  0001 C CNN
F 3 "" H 6050 4000 50  0001 C CNN
	1    6050 4000
	1    0    0    -1  
$EndComp
Text Label 5900 3100 2    50   ~ 0
SIG_NOTE_2
$Comp
L Device:R R?
U 1 1 5EABBDB4
P 6550 3700
AR Path="/5EABBDB4" Ref="R?"  Part="1" 
AR Path="/5EAB1F13/5EABBDB4" Ref="R9"  Part="1" 
F 0 "R9" V 6343 3700 50  0000 C CNN
F 1 "17k" V 6434 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6480 3700 50  0001 C CNN
F 3 "~" H 6550 3700 50  0001 C CNN
	1    6550 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 3700 6850 3200
Wire Wire Line
	6700 3700 6850 3700
Wire Wire Line
	6050 3700 6250 3700
Wire Wire Line
	6250 3300 6250 3700
Connection ~ 6250 3700
Wire Wire Line
	6250 3700 6400 3700
Text GLabel 7300 3200 2    50   Input ~ 0
Note_2
Wire Wire Line
	6850 3200 7000 3200
Text GLabel 10200 1050 2    50   Input ~ 0
Note_3
Text GLabel 10200 2150 2    50   Input ~ 0
Velocity_3
$Comp
L Amplifier_Operational:LM324 U?
U 1 1 5EABBDC8
P 9450 2150
AR Path="/5EABBDC8" Ref="U?"  Part="1" 
AR Path="/5EAB1F13/5EABBDC8" Ref="U10"  Part="1" 
F 0 "U10" H 9450 2517 50  0000 C CNN
F 1 "LM324" H 9450 2426 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 9400 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 9500 2350 50  0001 C CNN
	1    9450 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 2150 9750 2550
Wire Wire Line
	9750 2550 9150 2550
Wire Wire Line
	9150 2550 9150 2250
Wire Wire Line
	8600 2050 9150 2050
Wire Wire Line
	9750 2150 9900 2150
Connection ~ 9750 2150
$Comp
L Amplifier_Operational:LM324 U?
U 2 1 5EABBDD4
P 9450 1050
AR Path="/5EABBDD4" Ref="U?"  Part="2" 
AR Path="/5EAB1F13/5EABBDD4" Ref="U11"  Part="2" 
F 0 "U11" H 9450 1417 50  0000 C CNN
F 1 "LM324" H 9450 1326 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 9400 1150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 9500 1250 50  0001 C CNN
	2    9450 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 1050 9900 1050
$Comp
L Device:R R?
U 1 1 5EABBDDB
P 9450 1550
AR Path="/5EABBDDB" Ref="R?"  Part="1" 
AR Path="/5EAB1F13/5EABBDDB" Ref="R16"  Part="1" 
F 0 "R16" V 9243 1550 50  0000 C CNN
F 1 "17k" V 9334 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9380 1550 50  0001 C CNN
F 3 "~" H 9450 1550 50  0001 C CNN
	1    9450 1550
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EABBDE1
P 8950 1700
AR Path="/5EABBDE1" Ref="R?"  Part="1" 
AR Path="/5EAB1F13/5EABBDE1" Ref="R15"  Part="1" 
F 0 "R15" H 8880 1654 50  0000 R CNN
F 1 "22k" H 8880 1745 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8880 1700 50  0001 C CNN
F 3 "~" H 8950 1700 50  0001 C CNN
	1    8950 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	9750 1550 9750 1050
Connection ~ 9750 1050
Wire Wire Line
	9150 1550 9150 1150
Wire Wire Line
	9150 1550 8950 1550
Wire Wire Line
	9150 950  8800 950 
$Comp
L power:GND #PWR?
U 1 1 5EABBDEC
P 8950 1850
AR Path="/5EABBDEC" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EABBDEC" Ref="#PWR073"  Part="1" 
F 0 "#PWR073" H 8950 1600 50  0001 C CNN
F 1 "GND" H 8955 1677 50  0000 C CNN
F 2 "" H 8950 1850 50  0001 C CNN
F 3 "" H 8950 1850 50  0001 C CNN
	1    8950 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1550 9750 1550
Wire Wire Line
	9300 1550 9150 1550
Connection ~ 9150 1550
Text Label 8800 950  2    50   ~ 0
SIG_NOTE_3
Text Label 8600 2050 2    50   ~ 0
SIG_VELOCITY_3
Text GLabel 1600 6150 0    50   Input ~ 0
SIG_TRIGGER_1
Text GLabel 1500 1100 0    50   Input ~ 0
SCK
Text GLabel 1500 2600 0    50   Input ~ 0
SCK
Text GLabel 3500 2600 0    50   Input ~ 0
SCK
Text GLabel 3500 1100 0    50   Input ~ 0
SCK
Text GLabel 1500 1300 0    50   Input ~ 0
MOSI
Text GLabel 3500 1300 0    50   Input ~ 0
MOSI
Text GLabel 3500 2800 0    50   Input ~ 0
MOSI
Text GLabel 1500 2800 0    50   Input ~ 0
MOSI
Text GLabel 1500 1400 0    50   Input ~ 0
CS_1
Text GLabel 3500 1400 0    50   Input ~ 0
CS_4
Text GLabel 1500 2900 0    50   Input ~ 0
CS_2
Text GLabel 3500 2900 0    50   Input ~ 0
CS_5
Text GLabel 1500 4150 0    50   Input ~ 0
SCK
Text GLabel 1500 4350 0    50   Input ~ 0
MOSI
Text GLabel 1500 4450 0    50   Input ~ 0
CS_3
Wire Wire Line
	6250 4700 6850 4700
Wire Wire Line
	6850 4300 7000 4300
Text GLabel 7300 4300 2    50   Input ~ 0
Velocity_2
Wire Wire Line
	6250 4700 6250 4400
Wire Wire Line
	6850 4300 6850 4700
Text Label 5700 4200 2    50   ~ 0
SIG_VELOCITY_2
Wire Wire Line
	5700 4200 6250 4200
$Comp
L Amplifier_Operational:LM324 U?
U 4 1 5EABBD9E
P 6550 4300
AR Path="/5EABBD9E" Ref="U?"  Part="4" 
AR Path="/5EAB1F13/5EABBD9E" Ref="U9"  Part="4" 
F 0 "U9" H 6550 4667 50  0000 C CNN
F 1 "LM324" H 6550 4576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 6500 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 6600 4500 50  0001 C CNN
	4    6550 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3800 9700 3800
Text GLabel 10150 3400 2    50   Input ~ 0
PITCH_BEND_1
Wire Wire Line
	9100 3800 9100 3500
Wire Wire Line
	9700 3400 9700 3800
Wire Wire Line
	9100 4750 9700 4750
Wire Wire Line
	9700 4350 9850 4350
Text GLabel 10150 4350 2    50   Input ~ 0
PITCH_BEND_2
Wire Wire Line
	9100 4750 9100 4450
Wire Wire Line
	9700 4350 9700 4750
Wire Wire Line
	8550 4250 9100 4250
Text GLabel 10150 5350 2    50   Input ~ 0
PITCH_BEND_3
Wire Wire Line
	8550 5250 9100 5250
Text Label 8550 3300 2    50   ~ 0
SIG_PITCH_BEND_1
Text Label 8550 4250 2    50   ~ 0
SIG_PITCH_BEND_2
Text Label 8550 5250 2    50   ~ 0
SIG_PITCH_BEND_3
Text GLabel 1600 6700 0    50   Input ~ 0
SIG_TRIGGER_2
Text GLabel 1600 7250 0    50   Input ~ 0
SIG_TRIGGER_3
Text GLabel 3600 6100 0    50   Input ~ 0
SIG_CLOCK
$Comp
L 4xxx:40106 U3
U 2 1 5EA95911
P 1900 6700
F 0 "U3" H 1900 7017 50  0000 C CNN
F 1 "40106" H 1900 6926 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 1900 6700 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/HEF40106B.pdf" H 1900 6700 50  0001 C CNN
	2    1900 6700
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:40106 U3
U 3 1 5EA99AB7
P 1900 7250
F 0 "U3" H 1900 7567 50  0000 C CNN
F 1 "40106" H 1900 7476 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 1900 7250 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/HEF40106B.pdf" H 1900 7250 50  0001 C CNN
	3    1900 7250
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:40106 U3
U 4 1 5EA9A6F6
P 3900 6100
F 0 "U3" H 3900 6417 50  0000 C CNN
F 1 "40106" H 3900 6326 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3900 6100 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/HEF40106B.pdf" H 3900 6100 50  0001 C CNN
	4    3900 6100
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:40106 U3
U 5 1 5EA9B056
P 3900 6650
F 0 "U3" H 3900 6967 50  0000 C CNN
F 1 "40106" H 3900 6876 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3900 6650 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/HEF40106B.pdf" H 3900 6650 50  0001 C CNN
	5    3900 6650
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:40106 U3
U 6 1 5EA9BC2B
P 3900 7200
F 0 "U3" H 3900 7517 50  0000 C CNN
F 1 "40106" H 3900 7426 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3900 7200 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/HEF40106B.pdf" H 3900 7200 50  0001 C CNN
	6    3900 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA9F68B
P 3550 6700
AR Path="/5EA9F68B" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EA9F68B" Ref="#PWR060"  Part="1" 
F 0 "#PWR060" H 3550 6450 50  0001 C CNN
F 1 "GND" H 3555 6527 50  0000 C CNN
F 2 "" H 3550 6700 50  0001 C CNN
F 3 "" H 3550 6700 50  0001 C CNN
	1    3550 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA9FBA1
P 3550 7250
AR Path="/5EA9FBA1" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EA9FBA1" Ref="#PWR061"  Part="1" 
F 0 "#PWR061" H 3550 7000 50  0001 C CNN
F 1 "GND" H 3555 7077 50  0000 C CNN
F 2 "" H 3550 7250 50  0001 C CNN
F 3 "" H 3550 7250 50  0001 C CNN
	1    3550 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 7200 3550 7200
Wire Wire Line
	3550 7200 3550 7250
Wire Wire Line
	3600 6650 3550 6650
Wire Wire Line
	3550 6650 3550 6700
NoConn ~ 4200 6650
NoConn ~ 4200 7200
$Comp
L Device:R R?
U 1 1 5EABDACD
P 7200 1000
AR Path="/5EABDACD" Ref="R?"  Part="1" 
AR Path="/5EAB1F13/5EABDACD" Ref="R13"  Part="1" 
F 0 "R13" V 6993 1000 50  0000 C CNN
F 1 "1k" V 7084 1000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7130 1000 50  0001 C CNN
F 3 "~" H 7200 1000 50  0001 C CNN
	1    7200 1000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EABE88E
P 7200 2100
AR Path="/5EABE88E" Ref="R?"  Part="1" 
AR Path="/5EAB1F13/5EABE88E" Ref="R14"  Part="1" 
F 0 "R14" V 6993 2100 50  0000 C CNN
F 1 "1k" V 7084 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7130 2100 50  0001 C CNN
F 3 "~" H 7200 2100 50  0001 C CNN
	1    7200 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EABF7FE
P 7150 3200
AR Path="/5EABF7FE" Ref="R?"  Part="1" 
AR Path="/5EAB1F13/5EABF7FE" Ref="R11"  Part="1" 
F 0 "R11" V 6943 3200 50  0000 C CNN
F 1 "1k" V 7034 3200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7080 3200 50  0001 C CNN
F 3 "~" H 7150 3200 50  0001 C CNN
	1    7150 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EABFED5
P 7150 4300
AR Path="/5EABFED5" Ref="R?"  Part="1" 
AR Path="/5EAB1F13/5EABFED5" Ref="R12"  Part="1" 
F 0 "R12" V 6943 4300 50  0000 C CNN
F 1 "1k" V 7034 4300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7080 4300 50  0001 C CNN
F 3 "~" H 7150 4300 50  0001 C CNN
	1    7150 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EAD8DE1
P 10050 1050
AR Path="/5EAD8DE1" Ref="R?"  Part="1" 
AR Path="/5EAB1F13/5EAD8DE1" Ref="R20"  Part="1" 
F 0 "R20" V 9843 1050 50  0000 C CNN
F 1 "1k" V 9934 1050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9980 1050 50  0001 C CNN
F 3 "~" H 10050 1050 50  0001 C CNN
	1    10050 1050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EAD98D4
P 10050 2150
AR Path="/5EAD98D4" Ref="R?"  Part="1" 
AR Path="/5EAB1F13/5EAD98D4" Ref="R21"  Part="1" 
F 0 "R21" V 9843 2150 50  0000 C CNN
F 1 "1k" V 9934 2150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9980 2150 50  0001 C CNN
F 3 "~" H 10050 2150 50  0001 C CNN
	1    10050 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EADFF6D
P 10000 3400
AR Path="/5EADFF6D" Ref="R?"  Part="1" 
AR Path="/5EAB1F13/5EADFF6D" Ref="R17"  Part="1" 
F 0 "R17" V 9793 3400 50  0000 C CNN
F 1 "1k" V 9884 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9930 3400 50  0001 C CNN
F 3 "~" H 10000 3400 50  0001 C CNN
	1    10000 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EAE21CD
P 10000 4350
AR Path="/5EAE21CD" Ref="R?"  Part="1" 
AR Path="/5EAB1F13/5EAE21CD" Ref="R18"  Part="1" 
F 0 "R18" V 9793 4350 50  0000 C CNN
F 1 "1k" V 9884 4350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9930 4350 50  0001 C CNN
F 3 "~" H 10000 4350 50  0001 C CNN
	1    10000 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EAE4434
P 10000 5350
AR Path="/5EAE4434" Ref="R?"  Part="1" 
AR Path="/5EAB1F13/5EAE4434" Ref="R19"  Part="1" 
F 0 "R19" V 9793 5350 50  0000 C CNN
F 1 "1k" V 9884 5350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9930 5350 50  0001 C CNN
F 3 "~" H 10000 5350 50  0001 C CNN
	1    10000 5350
	0    1    1    0   
$EndComp
Connection ~ 6850 3200
Connection ~ 6850 4300
$Comp
L power:+15V #PWR?
U 1 1 5EB135E1
P 4750 4950
AR Path="/5EB135E1" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EB135E1" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 4750 4800 50  0001 C CNN
F 1 "+15V" V 4765 5078 50  0000 L CNN
F 2 "" H 4750 4950 50  0001 C CNN
F 3 "" H 4750 4950 50  0001 C CNN
	1    4750 4950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EB135ED
P 4700 5550
AR Path="/5EB135ED" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EB135ED" Ref="#PWR066"  Part="1" 
F 0 "#PWR066" H 4700 5300 50  0001 C CNN
F 1 "GND" H 4705 5377 50  0000 C CNN
F 2 "" H 4700 5550 50  0001 C CNN
F 3 "" H 4700 5550 50  0001 C CNN
	1    4700 5550
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EB20548
P 2000 800
AR Path="/5EB20548" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EB20548" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 2000 650 50  0001 C CNN
F 1 "+5V" H 2015 973 50  0000 C CNN
F 2 "" H 2000 800 50  0001 C CNN
F 3 "" H 2000 800 50  0001 C CNN
	1    2000 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EB2133A
P 4000 800
AR Path="/5EB2133A" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EB2133A" Ref="#PWR062"  Part="1" 
F 0 "#PWR062" H 4000 650 50  0001 C CNN
F 1 "+5V" H 4015 973 50  0000 C CNN
F 2 "" H 4000 800 50  0001 C CNN
F 3 "" H 4000 800 50  0001 C CNN
	1    4000 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EB22D50
P 4000 2300
AR Path="/5EB22D50" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EB22D50" Ref="#PWR064"  Part="1" 
F 0 "#PWR064" H 4000 2150 50  0001 C CNN
F 1 "+5V" H 4015 2473 50  0000 C CNN
F 2 "" H 4000 2300 50  0001 C CNN
F 3 "" H 4000 2300 50  0001 C CNN
	1    4000 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EB23BD3
P 2000 3850
AR Path="/5EB23BD3" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EB23BD3" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 2000 3700 50  0001 C CNN
F 1 "+5V" H 2015 4023 50  0000 C CNN
F 2 "" H 2000 3850 50  0001 C CNN
F 3 "" H 2000 3850 50  0001 C CNN
	1    2000 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EB293CA
P 5400 5250
AR Path="/5EB293CA" Ref="C?"  Part="1" 
AR Path="/5EAB1F13/5EB293CA" Ref="C22"  Part="1" 
F 0 "C22" H 5515 5296 50  0000 L CNN
F 1 "0.1u" H 5515 5205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 5438 5100 50  0001 C CNN
F 3 "~" H 5400 5250 50  0001 C CNN
	1    5400 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5550 5000 5550
$Comp
L Device:C C?
U 1 1 5EB318A7
P 7000 5250
AR Path="/5EB318A7" Ref="C?"  Part="1" 
AR Path="/5EAB1F13/5EB318A7" Ref="C24"  Part="1" 
F 0 "C24" H 7115 5296 50  0000 L CNN
F 1 "0.1u" H 7115 5205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 7038 5100 50  0001 C CNN
F 3 "~" H 7000 5250 50  0001 C CNN
	1    7000 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EB38E8D
P 1800 5400
AR Path="/5EB38E8D" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EB38E8D" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 1800 5150 50  0001 C CNN
F 1 "GND" V 1800 5200 50  0000 C CNN
F 2 "" H 1800 5400 50  0001 C CNN
F 3 "" H 1800 5400 50  0001 C CNN
	1    1800 5400
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5EB38E93
P 2500 5250
AR Path="/5EB38E93" Ref="C?"  Part="1" 
AR Path="/5EAB1F13/5EB38E93" Ref="C17"  Part="1" 
F 0 "C17" H 2615 5296 50  0000 L CNN
F 1 "0.1u" H 2615 5205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2538 5100 50  0001 C CNN
F 3 "~" H 2500 5250 50  0001 C CNN
	1    2500 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EB38E99
P 3350 5250
AR Path="/5EB38E99" Ref="C?"  Part="1" 
AR Path="/5EAB1F13/5EB38E99" Ref="C19"  Part="1" 
F 0 "C19" H 3465 5296 50  0000 L CNN
F 1 "0.1u" H 3465 5205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3388 5100 50  0001 C CNN
F 3 "~" H 3350 5250 50  0001 C CNN
	1    3350 5250
	1    0    0    -1  
$EndComp
Connection ~ 2500 5400
Connection ~ 3350 5400
Connection ~ 2500 5100
Connection ~ 3350 5100
Wire Wire Line
	2500 5400 2900 5400
Wire Wire Line
	3350 5400 3750 5400
Wire Wire Line
	3350 5100 3750 5100
Wire Wire Line
	2500 5100 2900 5100
Wire Wire Line
	1800 5100 2100 5100
Wire Wire Line
	1800 5400 2100 5400
$Comp
L Device:C C?
U 1 1 5EB38EA9
P 2900 5250
AR Path="/5EB38EA9" Ref="C?"  Part="1" 
AR Path="/5EAB1F13/5EB38EA9" Ref="C18"  Part="1" 
F 0 "C18" H 3015 5296 50  0000 L CNN
F 1 "0.1u" H 3015 5205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2938 5100 50  0001 C CNN
F 3 "~" H 2900 5250 50  0001 C CNN
	1    2900 5250
	1    0    0    -1  
$EndComp
Connection ~ 2900 5100
Wire Wire Line
	2900 5100 3350 5100
Connection ~ 2900 5400
Wire Wire Line
	2900 5400 3350 5400
$Comp
L Device:C C?
U 1 1 5EB38EB3
P 2100 5250
AR Path="/5EB38EB3" Ref="C?"  Part="1" 
AR Path="/5EAB1F13/5EB38EB3" Ref="C16"  Part="1" 
F 0 "C16" H 2215 5296 50  0000 L CNN
F 1 "0.1u" H 2215 5205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2138 5100 50  0001 C CNN
F 3 "~" H 2100 5250 50  0001 C CNN
	1    2100 5250
	1    0    0    -1  
$EndComp
Connection ~ 2100 5100
Wire Wire Line
	2100 5100 2500 5100
Connection ~ 2100 5400
Wire Wire Line
	2100 5400 2500 5400
$Comp
L Device:C C?
U 1 1 5EB38EBD
P 3750 5250
AR Path="/5EB38EBD" Ref="C?"  Part="1" 
AR Path="/5EAB1F13/5EB38EBD" Ref="C20"  Part="1" 
F 0 "C20" H 3865 5296 50  0000 L CNN
F 1 "0.1u" H 3865 5205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3788 5100 50  0001 C CNN
F 3 "~" H 3750 5250 50  0001 C CNN
	1    3750 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EB66810
P 1800 5100
AR Path="/5EB66810" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EB66810" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 1800 4950 50  0001 C CNN
F 1 "+5V" V 1800 5300 50  0000 C CNN
F 2 "" H 1800 5100 50  0001 C CNN
F 3 "" H 1800 5100 50  0001 C CNN
	1    1800 5100
	0    -1   -1   0   
$EndComp
$Comp
L 4xxx:40106 U?
U 7 1 5EB6E92A
P 5000 6950
AR Path="/5EB6E92A" Ref="U?"  Part="7" 
AR Path="/5EAB1F13/5EB6E92A" Ref="U3"  Part="7" 
F 0 "U3" H 5230 6996 50  0000 L CNN
F 1 "40106" H 5230 6905 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5000 6950 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/HEF40106B.pdf" H 5000 6950 50  0001 C CNN
	7    5000 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EBA3DED
P 4450 6900
AR Path="/5EBA3DED" Ref="C?"  Part="1" 
AR Path="/5EAB1F13/5EBA3DED" Ref="C21"  Part="1" 
F 0 "C21" H 4565 6946 50  0000 L CNN
F 1 "0.1u" H 4565 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4488 6750 50  0001 C CNN
F 3 "~" H 4450 6900 50  0001 C CNN
	1    4450 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBA451F
P 5000 7450
AR Path="/5EBA451F" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EBA451F" Ref="#PWR069"  Part="1" 
F 0 "#PWR069" H 5000 7200 50  0001 C CNN
F 1 "GND" H 5005 7277 50  0000 C CNN
F 2 "" H 5000 7450 50  0001 C CNN
F 3 "" H 5000 7450 50  0001 C CNN
	1    5000 7450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EBA6C0E
P 5000 6450
AR Path="/5EBA6C0E" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EBA6C0E" Ref="#PWR068"  Part="1" 
F 0 "#PWR068" H 5000 6300 50  0001 C CNN
F 1 "+5V" H 5015 6623 50  0000 C CNN
F 2 "" H 5000 6450 50  0001 C CNN
F 3 "" H 5000 6450 50  0001 C CNN
	1    5000 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 6450 4450 6450
Wire Wire Line
	4450 6450 4450 6750
Connection ~ 5000 6450
Wire Wire Line
	5000 7450 4450 7450
Wire Wire Line
	4450 7450 4450 7050
Connection ~ 5000 7450
Text GLabel 2200 6150 2    50   Input ~ 0
OUT_TRIGGER_1
Text GLabel 2200 6700 2    50   Input ~ 0
OUT_TRIGGER_2
Text GLabel 2200 7250 2    50   Input ~ 0
OUT_TRIGGER_3
Text GLabel 4200 6100 2    50   Input ~ 0
OUT_CLOCK
$Comp
L Amplifier_Operational:LM324 U?
U 5 1 5EBF664D
P 5100 5250
AR Path="/5EBF664D" Ref="U?"  Part="5" 
AR Path="/5EAB1F13/5EBF664D" Ref="U9"  Part="5" 
F 0 "U9" H 5058 5296 50  0000 L CNN
F 1 "LM324" H 5058 5205 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5050 5350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 5150 5450 50  0001 C CNN
	5    5100 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4950 5000 4950
Connection ~ 5000 5550
Wire Wire Line
	5000 5550 5400 5550
Connection ~ 5000 4950
Wire Wire Line
	5000 4950 5400 4950
Connection ~ 5400 4950
Wire Wire Line
	5400 4950 5400 5100
Wire Wire Line
	5400 5400 5400 5550
Connection ~ 5400 5550
$Comp
L Device:C C?
U 1 1 5EC1A111
P 6150 5250
AR Path="/5EC1A111" Ref="C?"  Part="1" 
AR Path="/5EAB1F13/5EC1A111" Ref="C23"  Part="1" 
F 0 "C23" H 6265 5296 50  0000 L CNN
F 1 "0.1u" H 6265 5205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 6188 5100 50  0001 C CNN
F 3 "~" H 6150 5250 50  0001 C CNN
	1    6150 5250
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 5 1 5EC1A117
P 5850 5250
AR Path="/5EC1A117" Ref="U?"  Part="5" 
AR Path="/5EAB1F13/5EC1A117" Ref="U10"  Part="5" 
F 0 "U10" H 5808 5296 50  0000 L CNN
F 1 "LM324" H 5808 5205 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5800 5350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 5900 5450 50  0001 C CNN
	5    5850 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4950 6150 5100
Wire Wire Line
	6150 5400 6150 5550
Wire Wire Line
	5400 5550 5750 5550
Wire Wire Line
	7000 5400 7000 5550
Wire Wire Line
	5400 4950 5750 4950
Connection ~ 5750 4950
Wire Wire Line
	5750 4950 6150 4950
Connection ~ 5750 5550
Wire Wire Line
	5750 5550 6150 5550
Connection ~ 6150 4950
Wire Wire Line
	6150 4950 6550 4950
Connection ~ 6150 5550
Wire Wire Line
	6150 5550 6550 5550
Wire Wire Line
	9100 5950 9700 5950
Wire Wire Line
	9100 5450 9100 5950
Wire Wire Line
	9700 5350 9700 5950
$Comp
L Amplifier_Operational:LM324 U?
U 5 1 5EAA0EF1
P 6650 5250
AR Path="/5EAA0EF1" Ref="U?"  Part="5" 
AR Path="/5EAB1F13/5EAA0EF1" Ref="U11"  Part="5" 
F 0 "U11" H 6608 5296 50  0000 L CNN
F 1 "LM324" H 6608 5205 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 6600 5350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 6700 5450 50  0001 C CNN
	5    6650 5250
	1    0    0    -1  
$EndComp
Connection ~ 6550 5550
Connection ~ 6550 4950
Wire Wire Line
	7000 4950 7000 5100
Wire Wire Line
	6550 4950 7000 4950
Wire Wire Line
	6550 5550 7000 5550
$Comp
L Amplifier_Operational:LM324 U?
U 1 1 5EAAED51
P 10250 2800
AR Path="/5EAAED51" Ref="U?"  Part="1" 
AR Path="/5EAB1F13/5EAAED51" Ref="U11"  Part="1" 
F 0 "U11" H 10250 3167 50  0000 C CNN
F 1 "LM324" H 10250 3076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 10200 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 10300 3000 50  0001 C CNN
	1    10250 2800
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 2 1 5EAB0947
P 9400 4350
AR Path="/5EAB0947" Ref="U?"  Part="2" 
AR Path="/5EAB1F13/5EAB0947" Ref="U10"  Part="2" 
F 0 "U10" H 9400 4717 50  0000 C CNN
F 1 "LM324" H 9400 4626 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 9350 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 9450 4550 50  0001 C CNN
	2    9400 4350
	1    0    0    -1  
$EndComp
Connection ~ 9700 4350
$Comp
L Amplifier_Operational:LM324 U?
U 3 1 5EAB361B
P 8500 2800
AR Path="/5EAB361B" Ref="U?"  Part="3" 
AR Path="/5EAB1F13/5EAB361B" Ref="U11"  Part="3" 
F 0 "U11" H 8500 3167 50  0000 C CNN
F 1 "LM324" H 8500 3076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 8450 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 8550 3000 50  0001 C CNN
	3    8500 2800
	1    0    0    -1  
$EndComp
Connection ~ 9700 5350
$Comp
L Amplifier_Operational:LM324 U?
U 4 1 5EAF535E
P 9400 3400
AR Path="/5EAF535E" Ref="U?"  Part="4" 
AR Path="/5EAB1F13/5EAF535E" Ref="U10"  Part="4" 
F 0 "U10" H 9400 3767 50  0000 C CNN
F 1 "LM324" H 9400 3676 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 9350 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 9450 3600 50  0001 C CNN
	4    9400 3400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 4 1 5EAF8185
P 10350 6050
AR Path="/5EAF8185" Ref="U?"  Part="4" 
AR Path="/5EAB1F13/5EAF8185" Ref="U11"  Part="4" 
F 0 "U11" H 10350 6417 50  0000 C CNN
F 1 "LM324" H 10350 6326 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 10300 6150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 10400 6250 50  0001 C CNN
	4    10350 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EAFC1CD
P 8050 2700
AR Path="/5EAFC1CD" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EAFC1CD" Ref="#PWR072"  Part="1" 
F 0 "#PWR072" H 8050 2450 50  0001 C CNN
F 1 "GND" H 8055 2527 50  0000 C CNN
F 2 "" H 8050 2700 50  0001 C CNN
F 3 "" H 8050 2700 50  0001 C CNN
	1    8050 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2700 8200 2700
$Comp
L power:GND #PWR?
U 1 1 5EB03E65
P 9800 2700
AR Path="/5EB03E65" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EB03E65" Ref="#PWR074"  Part="1" 
F 0 "#PWR074" H 9800 2450 50  0001 C CNN
F 1 "GND" H 9805 2527 50  0000 C CNN
F 2 "" H 9800 2700 50  0001 C CNN
F 3 "" H 9800 2700 50  0001 C CNN
	1    9800 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 2700 9950 2700
Wire Wire Line
	9950 2900 9950 3050
Wire Wire Line
	9950 3050 10550 3050
Wire Wire Line
	10550 3050 10550 2800
Wire Wire Line
	8200 2900 8200 3050
Wire Wire Line
	8200 3050 8800 3050
Wire Wire Line
	8800 3050 8800 2800
$Comp
L power:GND #PWR?
U 1 1 5EB14467
P 9900 5950
AR Path="/5EB14467" Ref="#PWR?"  Part="1" 
AR Path="/5EAB1F13/5EB14467" Ref="#PWR075"  Part="1" 
F 0 "#PWR075" H 9900 5700 50  0001 C CNN
F 1 "GND" H 9905 5777 50  0000 C CNN
F 2 "" H 9900 5950 50  0001 C CNN
F 3 "" H 9900 5950 50  0001 C CNN
	1    9900 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 5950 10050 5950
Wire Wire Line
	10050 6150 10050 6300
Wire Wire Line
	10050 6300 10650 6300
Wire Wire Line
	10650 6300 10650 6050
Wire Wire Line
	8550 3300 9100 3300
Connection ~ 9700 3400
Wire Wire Line
	9700 3400 9850 3400
Wire Wire Line
	9700 5350 9850 5350
$Comp
L Amplifier_Operational:LM324 U?
U 3 1 5EAF4947
P 9400 5350
AR Path="/5EAF4947" Ref="U?"  Part="3" 
AR Path="/5EAB1F13/5EAF4947" Ref="U10"  Part="3" 
F 0 "U10" H 9400 5717 50  0000 C CNN
F 1 "LM324" H 9400 5626 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 9350 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 9450 5550 50  0001 C CNN
	3    9400 5350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
