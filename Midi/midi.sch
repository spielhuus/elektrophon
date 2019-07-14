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
Channel1
Text GLabel 4250 3350 2    50   Input ~ 0
Channel2
Text GLabel 4250 3450 2    50   Input ~ 0
Channel3
Text GLabel 4250 3550 2    50   Input ~ 0
Channel4
Text GLabel 4250 3650 2    50   Input ~ 0
Channel5
Text GLabel 4250 3750 2    50   Input ~ 0
Channel6
Text GLabel 4250 3850 2    50   Input ~ 0
Channel7
Text GLabel 4250 3950 2    50   Input ~ 0
Channel8
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
$Comp
L power:GND #PWR?
U 1 1 5CB44ED2
P 8400 2550
F 0 "#PWR?" H 8400 2300 50  0001 C CNN
F 1 "GND" H 8405 2377 50  0000 C CNN
F 2 "" H 8400 2550 50  0001 C CNN
F 3 "" H 8400 2550 50  0001 C CNN
	1    8400 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J?
U 1 1 5D297A10
P 1450 6850
F 0 "J?" H 1556 7328 50  0000 C CNN
F 1 "Conn_01x08_Male" H 1556 7237 50  0000 C CNN
F 2 "" H 1450 6850 50  0001 C CNN
F 3 "~" H 1450 6850 50  0001 C CNN
	1    1450 6850
	1    0    0    -1  
$EndComp
Text Notes 1450 7450 0    50   ~ 0
Display
$Comp
L Connector:Conn_01x15_Female J?
U 1 1 5D2AEF6F
P 1550 3950
F 0 "J?" H 1700 3200 50  0000 L CNN
F 1 "Conn_01x15_Female" H 1400 3100 50  0000 L CNN
F 2 "" H 1550 3950 50  0001 C CNN
F 3 "~" H 1550 3950 50  0001 C CNN
	1    1550 3950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x15_Female J?
U 1 1 5D2AF1CE
P 2000 3950
F 0 "J?" H 1894 3025 50  0000 C CNN
F 1 "Conn_01x15_Female" H 1894 3116 50  0000 C CNN
F 2 "" H 2000 3950 50  0001 C CNN
F 3 "~" H 2000 3950 50  0001 C CNN
	1    2000 3950
	-1   0    0    1   
$EndComp
Text Label 2200 3250 0    50   ~ 0
VSPI_MOSI
Text Label 2200 3650 0    50   ~ 0
GPIO21
Text Label 2200 3750 0    50   ~ 0
VSPI_MISO
Text Label 2200 3850 0    50   ~ 0
VSPI_CLK
Text Label 2200 3950 0    50   ~ 0
VSPI_CSD
Text Label 2200 4450 0    50   ~ 0
HSPI_CS0
Text Label 1350 4450 2    50   ~ 0
HSPI_MOSI
Text Label 1350 4250 2    50   ~ 0
HSPI_CLK
Text Label 1350 4350 2    50   ~ 0
HSPI_MISO
Text Label 1350 4150 2    50   ~ 0
GPIO27
Text Label 1350 4050 2    50   ~ 0
GPIO26
Text Notes 1300 6550 0    50   ~ 0
RST
Text Notes 1300 6650 0    50   ~ 0
CE
Text Notes 1300 6750 0    50   ~ 0
DC
Text Notes 1300 6850 0    50   ~ 0
DIN
Text Notes 1300 6950 0    50   ~ 0
CLK
Text Notes 1300 7050 0    50   ~ 0
VCC
Text Notes 1300 7150 0    50   ~ 0
BL
Text Notes 1300 7250 0    50   ~ 0
GND
Text Label 1650 6650 0    50   ~ 0
HSPI_CS0
Text Label 1650 6550 0    50   ~ 0
GPIO26
Text Label 1650 6750 0    50   ~ 0
GPIO27
Text Label 1650 6850 0    50   ~ 0
HSPI_MISO
Text Label 1650 6950 0    50   ~ 0
HSPI_CLK
$Comp
L power:GND #PWR?
U 1 1 5D2B0B2E
P 1650 7250
F 0 "#PWR?" H 1650 7000 50  0001 C CNN
F 1 "GND" V 1655 7122 50  0000 R CNN
F 2 "" H 1650 7250 50  0001 C CNN
F 3 "" H 1650 7250 50  0001 C CNN
	1    1650 7250
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D2B0C0B
P 1650 7050
F 0 "#PWR?" H 1650 6900 50  0001 C CNN
F 1 "+5V" V 1665 7178 50  0000 L CNN
F 2 "" H 1650 7050 50  0001 C CNN
F 3 "" H 1650 7050 50  0001 C CNN
	1    1650 7050
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D2B0C5F
P 1650 7150
F 0 "#PWR?" H 1650 7000 50  0001 C CNN
F 1 "+5V" V 1665 7278 50  0000 L CNN
F 2 "" H 1650 7150 50  0001 C CNN
F 3 "" H 1650 7150 50  0001 C CNN
	1    1650 7150
	0    1    1    0   
$EndComp
$Comp
L Device:Rotary_Encoder SW?
U 1 1 5D2B0FCF
P 3500 7100
F 0 "SW?" H 3729 7146 50  0000 L CNN
F 1 "Rotary_Encoder" H 3729 7055 50  0000 L CNN
F 2 "" H 3350 7260 50  0001 C CNN
F 3 "~" H 3500 7360 50  0001 C CNN
	1    3500 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D2B1ACF
P 1350 4550
F 0 "#PWR?" H 1350 4300 50  0001 C CNN
F 1 "GND" H 1355 4377 50  0000 C CNN
F 2 "" H 1350 4550 50  0001 C CNN
F 3 "" H 1350 4550 50  0001 C CNN
	1    1350 4550
	0    1    1    0   
$EndComp
$Comp
L power:VAA #PWR?
U 1 1 5D2B1DE6
P 1350 4650
F 0 "#PWR?" H 1350 4500 50  0001 C CNN
F 1 "VAA" V 1368 4777 50  0000 L CNN
F 2 "" H 1350 4650 50  0001 C CNN
F 3 "" H 1350 4650 50  0001 C CNN
	1    1350 4650
	0    -1   -1   0   
$EndComp
Text Notes 2550 3650 0    50   ~ 0
encoder
Wire Notes Line
	1050 4000 1050 4150
Text Notes 700  4100 0    50   ~ 0
display
Text Notes 1250 3250 0    50   ~ 0
en
Text Label 1350 3350 2    50   ~ 0
GPIO36
Text Label 1350 3450 2    50   ~ 0
GPIO39
Text Label 1350 3550 2    50   ~ 0
GPIO34
Text Label 1350 3650 2    50   ~ 0
GPIO35
Text Label 1350 3750 2    50   ~ 0
GPIO32
Text Label 1350 3850 2    50   ~ 0
GPIO33
Text Label 1350 3950 2    50   ~ 0
GPIO25
Wire Notes Line
	1050 3950 1050 3300
Text Notes 700  3750 0    50   ~ 0
channel \n   1-7
Text Label 2200 3350 0    50   ~ 0
GPIO22
Wire Notes Line
	2500 3300 2500 3350
Text Notes 2550 3350 0    50   ~ 0
channel cs
$Comp
L power:GND #PWR?
U 1 1 5D2B3513
P 2200 4550
F 0 "#PWR?" H 2200 4300 50  0001 C CNN
F 1 "GND" H 2205 4377 50  0000 C CNN
F 2 "" H 2200 4550 50  0001 C CNN
F 3 "" H 2200 4550 50  0001 C CNN
	1    2200 4550
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5D2B35E5
P 2200 4650
F 0 "#PWR?" H 2200 4500 50  0001 C CNN
F 1 "+3.3V" V 2215 4778 50  0000 L CNN
F 2 "" H 2200 4650 50  0001 C CNN
F 3 "" H 2200 4650 50  0001 C CNN
	1    2200 4650
	0    1    1    0   
$EndComp
Text Label 2200 4350 0    50   ~ 0
GPIO02
Text Label 2200 4250 0    50   ~ 0
GPIO04
Text Notes 2550 4250 0    50   ~ 0
encoder
Wire Notes Line
	2500 4350 2500 4200
Wire Notes Line
	2500 3650 2500 3600
Text Notes 2200 3450 0    50   ~ 0
UART 0 TX
Text Notes 2200 3550 0    50   ~ 0
UART 0 RX
Text Notes 2200 4050 0    50   ~ 0
UART 1 TX
Text Notes 2200 4150 0    50   ~ 0
UART 1 RX
Text Label 3450 3250 2    50   ~ 0
HSPI_MOSI
Text Label 3450 3450 2    50   ~ 0
HSPI_CLK
NoConn ~ 4250 4150
Text Label 3450 3750 2    50   ~ 0
GPIO22
$Comp
L power:+5V #PWR?
U 1 1 5D2B5171
P 3450 3550
F 0 "#PWR?" H 3450 3400 50  0001 C CNN
F 1 "+5V" H 3465 3723 50  0000 C CNN
F 2 "" H 3450 3550 50  0001 C CNN
F 3 "" H 3450 3550 50  0001 C CNN
	1    3450 3550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D2B51EE
P 3450 3850
F 0 "#PWR?" H 3450 3600 50  0001 C CNN
F 1 "GND" H 3455 3677 50  0000 C CNN
F 2 "" H 3450 3850 50  0001 C CNN
F 3 "" H 3450 3850 50  0001 C CNN
	1    3450 3850
	0    1    1    0   
$EndComp
$EndSCHEMATC
