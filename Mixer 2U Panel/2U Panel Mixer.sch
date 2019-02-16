EESchema Schematic File Version 4
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
L Device:R R?
U 1 1 5C6092A4
P 1800 1650
F 0 "R?" V 1593 1650 50  0000 C CNN
F 1 "120k" V 1684 1650 50  0000 C CNN
F 2 "" V 1730 1650 50  0001 C CNN
F 3 "~" H 1800 1650 50  0001 C CNN
	1    1800 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C609313
P 1800 2150
F 0 "R?" V 1593 2150 50  0000 C CNN
F 1 "120k" V 1684 2150 50  0000 C CNN
F 2 "" V 1730 2150 50  0001 C CNN
F 3 "~" H 1800 2150 50  0001 C CNN
	1    1800 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C609372
P 1800 2650
F 0 "R?" V 1593 2650 50  0000 C CNN
F 1 "120k" V 1684 2650 50  0000 C CNN
F 2 "" V 1730 2650 50  0001 C CNN
F 3 "~" H 1800 2650 50  0001 C CNN
	1    1800 2650
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5C6094EF
P 3000 2250
F 0 "U?" H 3000 2617 50  0000 C CNN
F 1 "TL072" H 3000 2526 50  0000 C CNN
F 2 "" H 3000 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3000 2250 50  0001 C CNN
	1    3000 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C609594
P 2450 2350
F 0 "#PWR?" H 2450 2100 50  0001 C CNN
F 1 "GND" H 2455 2177 50  0000 C CNN
F 2 "" H 2450 2350 50  0001 C CNN
F 3 "" H 2450 2350 50  0001 C CNN
	1    2450 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2350 2450 2350
$EndSCHEMATC
