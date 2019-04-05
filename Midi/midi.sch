EESchema Schematic File Version 4
LIBS:midi-cache
EELAYER 26 0
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
L power:GND #PWR?
U 1 1 5C84E0B1
P 1850 5450
F 0 "#PWR?" H 1850 5200 50  0001 C CNN
F 1 "GND" H 1855 5277 50  0000 C CNN
F 2 "" H 1850 5450 50  0001 C CNN
F 3 "" H 1850 5450 50  0001 C CNN
	1    1850 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C84E218
P 1850 2450
F 0 "#PWR?" H 1850 2300 50  0001 C CNN
F 1 "+5V" H 1865 2623 50  0000 C CNN
F 2 "" H 1850 2450 50  0001 C CNN
F 3 "" H 1850 2450 50  0001 C CNN
	1    1850 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5CA117D7
P 1250 2750
F 0 "#PWR?" H 1250 2600 50  0001 C CNN
F 1 "+5V" H 1265 2923 50  0000 C CNN
F 2 "" H 1250 2750 50  0001 C CNN
F 3 "" H 1250 2750 50  0001 C CNN
	1    1250 2750
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5CA117EC
P 1950 2450
F 0 "#PWR?" H 1950 2300 50  0001 C CNN
F 1 "+5V" H 1965 2623 50  0000 C CNN
F 2 "" H 1950 2450 50  0001 C CNN
F 3 "" H 1950 2450 50  0001 C CNN
	1    1950 2450
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328-PU U?
U 1 1 5C84166F
P 1850 3950
F 0 "U?" H 1209 3996 50  0000 R CNN
F 1 "ATmega328-PU" H 1209 3905 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 1850 3950 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 1850 3950 50  0001 C CNN
	1    1850 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 5CA11CB1
P 1250 900
F 0 "Y?" H 1250 1168 50  0000 C CNN
F 1 "16MHZ" H 1250 1077 50  0000 C CNN
F 2 "" H 1250 900 50  0001 C CNN
F 3 "~" H 1250 900 50  0001 C CNN
	1    1250 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5CA11DB8
P 1100 1050
F 0 "C?" H 800 1100 50  0000 L CNN
F 1 "22pF" H 800 1000 50  0000 L CNN
F 2 "" H 1138 900 50  0001 C CNN
F 3 "~" H 1100 1050 50  0001 C CNN
	1    1100 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5CA11E0E
P 1400 1050
F 0 "C?" H 1515 1096 50  0000 L CNN
F 1 "22pF" H 1515 1005 50  0000 L CNN
F 2 "" H 1438 900 50  0001 C CNN
F 3 "~" H 1400 1050 50  0001 C CNN
	1    1400 1050
	1    0    0    -1  
$EndComp
Text Notes 1050 1550 0    50   ~ 0
AVR Clock
Text Label 1100 650  2    50   ~ 0
XTAL1
Text Label 1400 650  0    50   ~ 0
XTAL2
Text Label 2450 3350 0    50   ~ 0
XTAL1
Text Label 2450 3450 0    50   ~ 0
XTAL2
$Comp
L power:GND #PWR?
U 1 1 5CA128F4
P 1100 1200
F 0 "#PWR?" H 1100 950 50  0001 C CNN
F 1 "GND" H 1105 1027 50  0000 C CNN
F 2 "" H 1100 1200 50  0001 C CNN
F 3 "" H 1100 1200 50  0001 C CNN
	1    1100 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CA1291D
P 1400 1200
F 0 "#PWR?" H 1400 950 50  0001 C CNN
F 1 "GND" H 1405 1027 50  0000 C CNN
F 2 "" H 1400 1200 50  0001 C CNN
F 3 "" H 1400 1200 50  0001 C CNN
	1    1400 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 900  1100 650 
Connection ~ 1100 900 
Wire Wire Line
	1400 900  1400 650 
Connection ~ 1400 900 
$Comp
L 74xx:74HC595 U?
U 1 1 5CA1335A
P 3850 3650
F 0 "U?" H 3650 4400 50  0000 C CNN
F 1 "74HC595" H 3500 4300 50  0000 C CNN
F 2 "" H 3850 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 3850 3650 50  0001 C CNN
	1    3850 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CA135E2
P 3850 4350
F 0 "#PWR?" H 3850 4100 50  0001 C CNN
F 1 "GND" H 3855 4177 50  0000 C CNN
F 2 "" H 3850 4350 50  0001 C CNN
F 3 "" H 3850 4350 50  0001 C CNN
	1    3850 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5CA1371F
P 3850 3050
F 0 "#PWR?" H 3850 2900 50  0001 C CNN
F 1 "+5V" H 3865 3223 50  0000 C CNN
F 2 "" H 3850 3050 50  0001 C CNN
F 3 "" H 3850 3050 50  0001 C CNN
	1    3850 3050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U?
U 1 1 5CA13931
P 3850 5600
F 0 "U?" H 3650 6350 50  0000 C CNN
F 1 "74HC595" H 3500 6250 50  0000 C CNN
F 2 "" H 3850 5600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 3850 5600 50  0001 C CNN
	1    3850 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CA13938
P 3850 6300
F 0 "#PWR?" H 3850 6050 50  0001 C CNN
F 1 "GND" H 3855 6127 50  0000 C CNN
F 2 "" H 3850 6300 50  0001 C CNN
F 3 "" H 3850 6300 50  0001 C CNN
	1    3850 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5CA1393E
P 3850 5000
F 0 "#PWR?" H 3850 4850 50  0001 C CNN
F 1 "+5V" H 3865 5173 50  0000 C CNN
F 2 "" H 3850 5000 50  0001 C CNN
F 3 "" H 3850 5000 50  0001 C CNN
	1    3850 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4150 4250 4650
Wire Wire Line
	4250 4650 3200 4650
Wire Wire Line
	3200 4650 3200 5200
Wire Wire Line
	3200 5200 3450 5200
Text GLabel 6300 1200 2    50   Input ~ 0
Note_1
Text GLabel 6300 2450 2    50   Input ~ 0
Note_2
Text GLabel 6300 3800 2    50   Input ~ 0
Note_3
Text GLabel 6300 5200 2    50   Input ~ 0
Note_4
Text GLabel 8050 1200 2    50   Input ~ 0
Note_5
Text GLabel 9350 1750 2    50   Input ~ 0
Note_6
Text GLabel 8050 3800 2    50   Input ~ 0
Note_7
Text GLabel 8050 5200 2    50   Input ~ 0
Note_8
Text GLabel 6300 1500 2    50   Input ~ 0
Velocity_1
Text GLabel 6300 2750 2    50   Input ~ 0
Velocity_2
Text GLabel 6300 4100 2    50   Input ~ 0
Velocity_3
Text GLabel 6300 5500 2    50   Input ~ 0
Velocity_4
Text GLabel 8050 1500 2    50   Input ~ 0
Velocity_5
Text GLabel 9350 2850 2    50   Input ~ 0
Velocity_6
Text GLabel 8050 4100 2    50   Input ~ 0
Velocity_7
Text GLabel 8050 5500 2    50   Input ~ 0
Velocity_8
Text GLabel 4250 3250 2    50   Input ~ 0
Trigger_1
Text GLabel 4250 3350 2    50   Input ~ 0
Trigger_2
Text GLabel 4250 3450 2    50   Input ~ 0
Trigger_3
Text GLabel 4250 3550 2    50   Input ~ 0
Trigger_4
Text GLabel 4250 3650 2    50   Input ~ 0
Trigger_5
Text GLabel 4250 3750 2    50   Input ~ 0
Trigger_6
Text GLabel 4250 3850 2    50   Input ~ 0
Trigger_7
Text GLabel 4250 3950 2    50   Input ~ 0
Trigger_8
Text GLabel 4250 5200 2    50   Input ~ 0
Pulse_1
Text GLabel 4250 5300 2    50   Input ~ 0
Pulse_2
Text GLabel 4250 5400 2    50   Input ~ 0
Pulse_3
Text GLabel 4250 5500 2    50   Input ~ 0
Pulse_4
Text GLabel 4250 5600 2    50   Input ~ 0
Pulse_5
Text GLabel 4250 5700 2    50   Input ~ 0
Pulse_6
Text GLabel 4250 5800 2    50   Input ~ 0
Pulse_7
Text GLabel 4250 5900 2    50   Input ~ 0
Pulse_8
$Comp
L Analog_DAC:MCP4822 U?
U 1 1 5CA231DD
P 5800 1300
F 0 "U?" H 5800 1878 50  0000 C CNN
F 1 "MCP4822" H 5800 1787 50  0000 C CNN
F 2 "" H 6600 1000 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 6600 1000 50  0001 C CNN
	1    5800 1300
	1    0    0    -1  
$EndComp
$Comp
L Analog_DAC:MCP4822 U?
U 1 1 5CA23298
P 5800 2550
F 0 "U?" H 5500 3050 50  0000 C CNN
F 1 "MCP4822" H 5500 2950 50  0000 C CNN
F 2 "" H 6600 2250 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 6600 2250 50  0001 C CNN
	1    5800 2550
	1    0    0    -1  
$EndComp
$Comp
L Analog_DAC:MCP4822 U?
U 1 1 5CA23322
P 5800 3900
F 0 "U?" H 5800 4478 50  0000 C CNN
F 1 "MCP4822" H 5800 4387 50  0000 C CNN
F 2 "" H 6600 3600 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 6600 3600 50  0001 C CNN
	1    5800 3900
	1    0    0    -1  
$EndComp
$Comp
L Analog_DAC:MCP4822 U?
U 1 1 5CA23856
P 5800 5300
F 0 "U?" H 5800 5878 50  0000 C CNN
F 1 "MCP4822" H 5800 5787 50  0000 C CNN
F 2 "" H 6600 5000 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 6600 5000 50  0001 C CNN
	1    5800 5300
	1    0    0    -1  
$EndComp
$Comp
L Analog_DAC:MCP4822 U?
U 1 1 5CA23BAF
P 7550 1300
F 0 "U?" H 7550 1878 50  0000 C CNN
F 1 "MCP4822" H 7550 1787 50  0000 C CNN
F 2 "" H 8350 1000 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 8350 1000 50  0001 C CNN
	1    7550 1300
	1    0    0    -1  
$EndComp
$Comp
L Analog_DAC:MCP4822 U?
U 1 1 5CA23BB6
P 7550 2550
F 0 "U?" H 7550 3128 50  0000 C CNN
F 1 "MCP4822" H 7550 3037 50  0000 C CNN
F 2 "" H 8350 2250 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 8350 2250 50  0001 C CNN
	1    7550 2550
	1    0    0    -1  
$EndComp
$Comp
L Analog_DAC:MCP4822 U?
U 1 1 5CA23BBD
P 7550 3900
F 0 "U?" H 7550 4478 50  0000 C CNN
F 1 "MCP4822" H 7550 4387 50  0000 C CNN
F 2 "" H 8350 3600 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 8350 3600 50  0001 C CNN
	1    7550 3900
	1    0    0    -1  
$EndComp
$Comp
L Analog_DAC:MCP4822 U?
U 1 1 5CA23BC4
P 7550 5300
F 0 "U?" H 7550 5878 50  0000 C CNN
F 1 "MCP4822" H 7550 5787 50  0000 C CNN
F 2 "" H 8350 5000 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 8350 5000 50  0001 C CNN
	1    7550 5300
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 1 1 5CA29BCD
P 8900 2850
F 0 "U?" H 8900 3217 50  0000 C CNN
F 1 "LM324" H 8900 3126 50  0000 C CNN
F 2 "" H 8850 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 8950 3050 50  0001 C CNN
	1    8900 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2850 9200 3250
Wire Wire Line
	9200 3250 8600 3250
Wire Wire Line
	8600 3250 8600 2950
Wire Wire Line
	8050 2750 8600 2750
Wire Wire Line
	9200 2850 9350 2850
Connection ~ 9200 2850
$Comp
L Amplifier_Operational:LM324 U?
U 2 1 5CA29E3F
P 8900 1750
F 0 "U?" H 8900 2117 50  0000 C CNN
F 1 "LM324" H 8900 2026 50  0000 C CNN
F 2 "" H 8850 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 8950 1950 50  0001 C CNN
	2    8900 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1750 9350 1750
$Comp
L Device:R R?
U 1 1 5CA2A144
P 8750 2250
F 0 "R?" V 8543 2250 50  0000 C CNN
F 1 "R" V 8634 2250 50  0000 C CNN
F 2 "" V 8680 2250 50  0001 C CNN
F 3 "~" H 8750 2250 50  0001 C CNN
	1    8750 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5CA2A1AA
P 9050 2250
F 0 "R?" V 8843 2250 50  0000 C CNN
F 1 "R" V 8934 2250 50  0000 C CNN
F 2 "" V 8980 2250 50  0001 C CNN
F 3 "~" H 9050 2250 50  0001 C CNN
	1    9050 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5CA2A1F6
P 8400 2400
F 0 "R?" H 8330 2354 50  0000 R CNN
F 1 "R" H 8330 2445 50  0000 R CNN
F 2 "" V 8330 2400 50  0001 C CNN
F 3 "~" H 8400 2400 50  0001 C CNN
	1    8400 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	9200 2250 9200 1750
Connection ~ 9200 1750
Wire Wire Line
	8600 2250 8600 1850
Wire Wire Line
	8600 2250 8400 2250
Connection ~ 8600 2250
Wire Wire Line
	8600 1650 8250 1650
Wire Wire Line
	8250 1650 8250 2450
Wire Wire Line
	8250 2450 8050 2450
Text Label 2450 3150 0    50   ~ 0
MISO
Text Label 2450 3050 0    50   ~ 0
MOSI
Text Label 2450 3250 0    50   ~ 0
SCK
Text Label 5300 2750 2    50   ~ 0
CS_2
Text Label 5300 2450 2    50   ~ 0
SCK
Text Label 5300 2650 2    50   ~ 0
MOSI
$Comp
L power:GND #PWR?
U 1 1 5CA2B2DC
P 4950 2550
F 0 "#PWR?" H 4950 2300 50  0001 C CNN
F 1 "GND" H 4955 2377 50  0000 C CNN
F 2 "" H 4950 2550 50  0001 C CNN
F 3 "" H 4950 2550 50  0001 C CNN
	1    4950 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2550 5300 2550
$Comp
L power:GND #PWR?
U 1 1 5CA2B478
P 5800 3050
F 0 "#PWR?" H 5800 2800 50  0001 C CNN
F 1 "GND" H 5805 2877 50  0000 C CNN
F 2 "" H 5800 3050 50  0001 C CNN
F 3 "" H 5800 3050 50  0001 C CNN
	1    5800 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5CA2B4A9
P 5800 2200
F 0 "#PWR?" H 5800 2050 50  0001 C CNN
F 1 "+5V" H 5815 2373 50  0000 C CNN
F 2 "" H 5800 2200 50  0001 C CNN
F 3 "" H 5800 2200 50  0001 C CNN
	1    5800 2200
	1    0    0    -1  
$EndComp
Text Label 2450 4650 0    50   ~ 0
CS_1
Text Label 2450 4750 0    50   ~ 0
CS_2
Text Label 2450 4450 0    50   ~ 0
RX
Text Label 2450 4550 0    50   ~ 0
TX
Text Label 2450 4250 0    50   ~ 0
Reset
Text Label 5300 3800 2    50   ~ 0
SCK
Text Label 5300 5200 2    50   ~ 0
SCK
Text Label 7050 2450 2    50   ~ 0
SCK
Text Label 7050 3800 2    50   ~ 0
SCK
Text Label 7050 5200 2    50   ~ 0
SCK
Text Label 5300 4100 2    50   ~ 0
CS_3
Text Label 5300 4000 2    50   ~ 0
MOSI
$Comp
L power:GND #PWR?
U 1 1 5CA2BBF9
P 4950 3900
F 0 "#PWR?" H 4950 3650 50  0001 C CNN
F 1 "GND" H 4955 3727 50  0000 C CNN
F 2 "" H 4950 3900 50  0001 C CNN
F 3 "" H 4950 3900 50  0001 C CNN
	1    4950 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3900 5300 3900
Text Label 5300 5500 2    50   ~ 0
CS_4
Text Label 5300 5400 2    50   ~ 0
MOSI
$Comp
L power:GND #PWR?
U 1 1 5CA2BDB1
P 4950 5300
F 0 "#PWR?" H 4950 5050 50  0001 C CNN
F 1 "GND" H 4955 5127 50  0000 C CNN
F 2 "" H 4950 5300 50  0001 C CNN
F 3 "" H 4950 5300 50  0001 C CNN
	1    4950 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 5300 5300 5300
Text Label 7050 2750 2    50   ~ 0
CS_6
Text Label 7050 2650 2    50   ~ 0
MOSI
$Comp
L power:GND #PWR?
U 1 1 5CA2BF9F
P 6700 2550
F 0 "#PWR?" H 6700 2300 50  0001 C CNN
F 1 "GND" H 6705 2377 50  0000 C CNN
F 2 "" H 6700 2550 50  0001 C CNN
F 3 "" H 6700 2550 50  0001 C CNN
	1    6700 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2550 7050 2550
Text Label 7050 4100 2    50   ~ 0
CS_7
Text Label 7050 4000 2    50   ~ 0
MOSI
$Comp
L power:GND #PWR?
U 1 1 5CA2C1C6
P 6700 3900
F 0 "#PWR?" H 6700 3650 50  0001 C CNN
F 1 "GND" H 6705 3727 50  0000 C CNN
F 2 "" H 6700 3900 50  0001 C CNN
F 3 "" H 6700 3900 50  0001 C CNN
	1    6700 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3900 7050 3900
Text Label 7050 5500 2    50   ~ 0
CS_8
Text Label 7050 5400 2    50   ~ 0
MOSI
$Comp
L power:GND #PWR?
U 1 1 5CA2C429
P 6700 5300
F 0 "#PWR?" H 6700 5050 50  0001 C CNN
F 1 "GND" H 6705 5127 50  0000 C CNN
F 2 "" H 6700 5300 50  0001 C CNN
F 3 "" H 6700 5300 50  0001 C CNN
	1    6700 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5300 7050 5300
Text Label 2450 4850 0    50   ~ 0
CS_3
Text Label 2450 4950 0    50   ~ 0
CS_4
Text Label 2450 5050 0    50   ~ 0
CS_5
Text Label 2450 5150 0    50   ~ 0
CS_6
Text Label 5300 1500 2    50   ~ 0
CS_1
Text Label 5300 1200 2    50   ~ 0
SCK
Text Label 5300 1400 2    50   ~ 0
MOSI
$Comp
L power:GND #PWR?
U 1 1 5CA2E37E
P 4950 1300
F 0 "#PWR?" H 4950 1050 50  0001 C CNN
F 1 "GND" H 4955 1127 50  0000 C CNN
F 2 "" H 4950 1300 50  0001 C CNN
F 3 "" H 4950 1300 50  0001 C CNN
	1    4950 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1300 5300 1300
Text Label 7050 1500 2    50   ~ 0
CS_5
Text Label 7050 1200 2    50   ~ 0
SCK
Text Label 7050 1400 2    50   ~ 0
MOSI
$Comp
L power:GND #PWR?
U 1 1 5CA2E675
P 6700 1300
F 0 "#PWR?" H 6700 1050 50  0001 C CNN
F 1 "GND" H 6705 1127 50  0000 C CNN
F 2 "" H 6700 1300 50  0001 C CNN
F 3 "" H 6700 1300 50  0001 C CNN
	1    6700 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1300 7050 1300
Text Label 2450 3650 0    50   ~ 0
CS_7
Text Label 2450 3750 0    50   ~ 0
CS_8
$EndSCHEMATC
