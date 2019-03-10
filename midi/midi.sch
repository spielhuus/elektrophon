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
L Analog_DAC:MCP4822 U?
U 1 1 5C8423AA
P 4650 1750
F 0 "U?" H 4300 2250 50  0000 C CNN
F 1 "MCP4822" H 4300 2150 50  0000 C CNN
F 2 "" H 5450 1450 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 5450 1450 50  0001 C CNN
	1    4650 1750
	1    0    0    -1  
$EndComp
Text Label 4150 1950 2    50   ~ 0
CS1
Text Label 4150 1650 2    50   ~ 0
SCK
Text Label 4150 1850 2    50   ~ 0
MOSI
$Comp
L power:+5V #PWR?
U 1 1 5C84CDDB
P 4650 1350
F 0 "#PWR?" H 4650 1200 50  0001 C CNN
F 1 "+5V" H 4665 1523 50  0000 C CNN
F 2 "" H 4650 1350 50  0001 C CNN
F 3 "" H 4650 1350 50  0001 C CNN
	1    4650 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C84CE72
P 4650 2250
F 0 "#PWR?" H 4650 2000 50  0001 C CNN
F 1 "GND" H 4655 2077 50  0000 C CNN
F 2 "" H 4650 2250 50  0001 C CNN
F 3 "" H 4650 2250 50  0001 C CNN
	1    4650 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C84CEB3
P 3800 1750
F 0 "#PWR?" H 3800 1500 50  0001 C CNN
F 1 "GND" H 3805 1577 50  0000 C CNN
F 2 "" H 3800 1750 50  0001 C CNN
F 3 "" H 3800 1750 50  0001 C CNN
	1    3800 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1750 4150 1750
$Comp
L 4xxx:4069 U?
U 1 1 5C84CFB4
P 5650 1650
F 0 "U?" H 5650 1967 50  0000 C CNN
F 1 "4069" H 5650 1876 50  0000 C CNN
F 2 "" H 5650 1650 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 5650 1650 50  0001 C CNN
	1    5650 1650
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U?
U 2 1 5C84CFF4
P 6250 1650
F 0 "U?" H 6250 1967 50  0000 C CNN
F 1 "4069" H 6250 1876 50  0000 C CNN
F 2 "" H 6250 1650 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 6250 1650 50  0001 C CNN
	2    6250 1650
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U?
U 3 1 5C84D045
P 5650 2250
F 0 "U?" H 5650 2567 50  0000 C CNN
F 1 "4069" H 5650 2476 50  0000 C CNN
F 2 "" H 5650 2250 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 5650 2250 50  0001 C CNN
	3    5650 2250
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U?
U 4 1 5C84D091
P 6250 2250
F 0 "U?" H 6250 2567 50  0000 C CNN
F 1 "4069" H 6250 2476 50  0000 C CNN
F 2 "" H 6250 2250 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 6250 2250 50  0001 C CNN
	4    6250 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1650 5350 1650
Wire Wire Line
	5150 1950 5300 1950
Wire Wire Line
	5300 1950 5300 2250
Wire Wire Line
	5300 2250 5350 2250
Text GLabel 6550 1650 2    50   Input ~ 0
VELOCITY1
Text GLabel 6550 2250 2    50   Input ~ 0
NOTE1
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
$EndSCHEMATC
