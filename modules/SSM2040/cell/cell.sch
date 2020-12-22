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
L Transistor_BJT:BC550 Q?
U 1 1 5F719966
P 2150 2850
F 0 "Q?" H 2050 3100 50  0000 L CNN
F 1 "BC550" H 1900 3000 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2350 2775 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 2150 2850 50  0001 L CNN
F 4 "Q" H 2150 2850 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 2150 2850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2150 2850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 2150 2850 50  0001 C CNN "Spice_Lib_File"
	1    2150 2850
	-1   0    0    -1  
$EndComp
$Comp
L elektrophon:BC560 Q?
U 1 1 5F719E39
P 1950 2150
F 0 "Q?" H 2141 2104 50  0000 L CNN
F 1 "BC560" H 2141 2195 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2150 2075 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 1950 2150 50  0001 L CNN
F 4 "Q" H 1950 2150 50  0001 C CNN "Spice_Primitive"
F 5 "BC556B" H 1950 2150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1950 2150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 1950 2150 50  0001 C CNN "Spice_Lib_File"
	1    1950 2150
	1    0    0    1   
$EndComp
$Comp
L elektrophon:BC560 Q?
U 1 1 5F71AE79
P 1550 2150
F 0 "Q?" H 1741 2104 50  0000 L CNN
F 1 "BC560" H 1741 2195 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1750 2075 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 1550 2150 50  0001 L CNN
F 4 "Q" H 1550 2150 50  0001 C CNN "Spice_Primitive"
F 5 "BC556B" H 1550 2150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1550 2150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 1550 2150 50  0001 C CNN "Spice_Lib_File"
	1    1550 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 2150 1750 2350
Wire Wire Line
	1750 2350 1450 2350
Connection ~ 1750 2150
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F71C5C3
P 1350 2850
F 0 "Q?" H 1150 3050 50  0000 L CNN
F 1 "BC550" H 1000 2950 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1550 2775 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 1350 2850 50  0001 L CNN
F 4 "Q" H 1350 2850 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 1350 2850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1350 2850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 1350 2850 50  0001 C CNN "Spice_Lib_File"
	1    1350 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3050 1450 3100
Wire Wire Line
	1450 3100 1750 3100
Wire Wire Line
	2050 3100 2050 3050
Connection ~ 1450 2350
$Comp
L Device:R R?
U 1 1 5F71F9E7
P 1150 3100
F 0 "R?" H 1220 3146 50  0000 L CNN
F 1 "220" H 1220 3055 50  0000 L CNN
F 2 "" V 1080 3100 50  0001 C CNN
F 3 "~" H 1150 3100 50  0001 C CNN
	1    1150 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F71FC9B
P 2350 3100
F 0 "R?" H 2200 3150 50  0000 L CNN
F 1 "220" H 2150 3050 50  0000 L CNN
F 2 "" V 2280 3100 50  0001 C CNN
F 3 "~" H 2350 3100 50  0001 C CNN
	1    2350 3100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F72005F
P 2750 2350
F 0 "Q?" H 2650 2600 50  0000 L CNN
F 1 "BC550" H 2500 2500 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2950 2275 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 2750 2350 50  0001 L CNN
F 4 "Q" H 2750 2350 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 2750 2350 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2750 2350 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 2750 2350 50  0001 C CNN "Spice_Lib_File"
	1    2750 2350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F72107B
P 3050 2550
F 0 "Q?" H 3241 2596 50  0000 L CNN
F 1 "BC550" H 3241 2505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3250 2475 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 3050 2550 50  0001 L CNN
F 4 "Q" H 3050 2550 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 3050 2550 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3050 2550 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 3050 2550 50  0001 C CNN "Spice_Lib_File"
	1    3050 2550
	1    0    0    -1  
$EndComp
Connection ~ 2050 2350
Wire Wire Line
	3150 2350 3150 2000
Wire Wire Line
	1450 1750 1450 1950
Wire Wire Line
	2050 1950 2050 1750
Connection ~ 2050 1750
Wire Wire Line
	2050 1750 1450 1750
Wire Wire Line
	2850 2150 2850 2000
Wire Wire Line
	2850 2000 3150 2000
Wire Wire Line
	1450 2350 1450 2650
Wire Wire Line
	2050 2350 2050 2650
Wire Wire Line
	3150 2000 3150 1750
Connection ~ 3150 2000
Wire Wire Line
	3150 2850 3150 2750
$Comp
L Device:R R?
U 1 1 5F72614C
P 3150 3100
F 0 "R?" H 3220 3146 50  0000 L CNN
F 1 "10k" H 3220 3055 50  0000 L CNN
F 2 "" V 3080 3100 50  0001 C CNN
F 3 "~" H 3150 3100 50  0001 C CNN
	1    3150 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F7265B5
P 2550 2600
F 0 "C?" H 2665 2646 50  0000 L CNN
F 1 "1n" H 2665 2555 50  0000 L CNN
F 2 "" H 2588 2450 50  0001 C CNN
F 3 "~" H 2550 2600 50  0001 C CNN
	1    2550 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F728C3D
P 2850 2850
F 0 "R?" V 2643 2850 50  0000 C CNN
F 1 "10k" V 2734 2850 50  0000 C CNN
F 2 "" V 2780 2850 50  0001 C CNN
F 3 "~" H 2850 2850 50  0001 C CNN
	1    2850 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 2850 3150 2850
$Comp
L power:+5V #PWR?
U 1 1 5F7295D4
P 1150 3250
F 0 "#PWR?" H 1150 3100 50  0001 C CNN
F 1 "+5V" H 1165 3423 50  0000 C CNN
F 2 "" H 1150 3250 50  0001 C CNN
F 3 "" H 1150 3250 50  0001 C CNN
	1    1150 3250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F729B66
P 2350 3250
F 0 "#PWR?" H 2350 3100 50  0001 C CNN
F 1 "+5V" H 2365 3423 50  0000 C CNN
F 2 "" H 2350 3250 50  0001 C CNN
F 3 "" H 2350 3250 50  0001 C CNN
	1    2350 3250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F729FCC
P 2550 3250
F 0 "#PWR?" H 2550 3100 50  0001 C CNN
F 1 "+5V" H 2565 3423 50  0000 C CNN
F 2 "" H 2550 3250 50  0001 C CNN
F 3 "" H 2550 3250 50  0001 C CNN
	1    2550 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 3250 2550 2750
Wire Wire Line
	2550 2450 2550 2350
$Comp
L power:-15V #PWR?
U 1 1 5F72AE3C
P 3150 3250
F 0 "#PWR?" H 3150 3350 50  0001 C CNN
F 1 "-15V" H 3165 3423 50  0000 C CNN
F 2 "" H 3150 3250 50  0001 C CNN
F 3 "" H 3150 3250 50  0001 C CNN
	1    3150 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 2950 3150 2850
Connection ~ 3150 2850
$Comp
L power:+15V #PWR?
U 1 1 5F72BF8D
P 2250 1750
F 0 "#PWR?" H 2250 1600 50  0001 C CNN
F 1 "+15V" H 2265 1923 50  0000 C CNN
F 2 "" H 2250 1750 50  0001 C CNN
F 3 "" H 2250 1750 50  0001 C CNN
	1    2250 1750
	1    0    0    -1  
$EndComp
NoConn ~ 1200 2550
Wire Wire Line
	1200 2550 2350 2550
$Comp
L Device:R R?
U 1 1 5F7303B7
P 1750 3250
F 0 "R?" H 1820 3296 50  0000 L CNN
F 1 "1k" H 1820 3205 50  0000 L CNN
F 2 "" V 1680 3250 50  0001 C CNN
F 3 "~" H 1750 3250 50  0001 C CNN
	1    1750 3250
	1    0    0    -1  
$EndComp
Connection ~ 1750 3100
Wire Wire Line
	1750 3100 2050 3100
Wire Wire Line
	2350 2950 2350 2850
Connection ~ 2350 2850
Wire Wire Line
	2350 2850 2350 2550
Wire Wire Line
	2350 2850 2700 2850
Connection ~ 2550 2350
Wire Wire Line
	2550 2350 2050 2350
Wire Wire Line
	2050 1750 2250 1750
Connection ~ 2250 1750
Wire Wire Line
	2250 1750 3150 1750
Wire Wire Line
	1150 2950 1150 2850
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F7ECB05
P 4500 2850
F 0 "Q?" H 4400 3100 50  0000 L CNN
F 1 "BC550" H 4250 3000 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4700 2775 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4500 2850 50  0001 L CNN
F 4 "Q" H 4500 2850 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 4500 2850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4500 2850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 4500 2850 50  0001 C CNN "Spice_Lib_File"
	1    4500 2850
	-1   0    0    -1  
$EndComp
$Comp
L elektrophon:BC560 Q?
U 1 1 5F7ECB0F
P 4300 2150
F 0 "Q?" H 4491 2104 50  0000 L CNN
F 1 "BC560" H 4491 2195 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4500 2075 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 4300 2150 50  0001 L CNN
F 4 "Q" H 4300 2150 50  0001 C CNN "Spice_Primitive"
F 5 "BC556B" H 4300 2150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4300 2150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 4300 2150 50  0001 C CNN "Spice_Lib_File"
	1    4300 2150
	1    0    0    1   
$EndComp
$Comp
L elektrophon:BC560 Q?
U 1 1 5F7ECB19
P 3900 2150
F 0 "Q?" H 4091 2104 50  0000 L CNN
F 1 "BC560" H 4091 2195 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4100 2075 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 3900 2150 50  0001 L CNN
F 4 "Q" H 3900 2150 50  0001 C CNN "Spice_Primitive"
F 5 "BC556B" H 3900 2150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3900 2150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 3900 2150 50  0001 C CNN "Spice_Lib_File"
	1    3900 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 2150 4100 2350
Wire Wire Line
	4100 2350 3800 2350
Connection ~ 4100 2150
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F7ECB26
P 3700 2850
F 0 "Q?" H 3500 3050 50  0000 L CNN
F 1 "BC550" H 3350 2950 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3900 2775 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 3700 2850 50  0001 L CNN
F 4 "Q" H 3700 2850 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 3700 2850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3700 2850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 3700 2850 50  0001 C CNN "Spice_Lib_File"
	1    3700 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3050 3800 3100
Wire Wire Line
	3800 3100 4100 3100
Wire Wire Line
	4400 3100 4400 3050
Connection ~ 3800 2350
$Comp
L Device:R R?
U 1 1 5F7ECB30
P 3500 3100
F 0 "R?" H 3570 3146 50  0000 L CNN
F 1 "220" H 3570 3055 50  0000 L CNN
F 2 "" V 3430 3100 50  0001 C CNN
F 3 "~" H 3500 3100 50  0001 C CNN
	1    3500 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F7ECB36
P 4700 3100
F 0 "R?" H 4550 3150 50  0000 L CNN
F 1 "220" H 4500 3050 50  0000 L CNN
F 2 "" V 4630 3100 50  0001 C CNN
F 3 "~" H 4700 3100 50  0001 C CNN
	1    4700 3100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F7ECB40
P 5100 2350
F 0 "Q?" H 5000 2600 50  0000 L CNN
F 1 "BC550" H 4850 2500 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5300 2275 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 5100 2350 50  0001 L CNN
F 4 "Q" H 5100 2350 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 5100 2350 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5100 2350 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 5100 2350 50  0001 C CNN "Spice_Lib_File"
	1    5100 2350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F7ECB4A
P 5400 2550
F 0 "Q?" H 5591 2596 50  0000 L CNN
F 1 "BC550" H 5591 2505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5600 2475 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 5400 2550 50  0001 L CNN
F 4 "Q" H 5400 2550 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 5400 2550 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5400 2550 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 5400 2550 50  0001 C CNN "Spice_Lib_File"
	1    5400 2550
	1    0    0    -1  
$EndComp
Connection ~ 4400 2350
Wire Wire Line
	5500 2350 5500 2000
Wire Wire Line
	3800 1750 3800 1950
Wire Wire Line
	4400 1950 4400 1750
Connection ~ 4400 1750
Wire Wire Line
	4400 1750 3800 1750
Wire Wire Line
	5200 2150 5200 2000
Wire Wire Line
	5200 2000 5500 2000
Wire Wire Line
	3800 2350 3800 2650
Wire Wire Line
	4400 2350 4400 2650
Wire Wire Line
	5500 2000 5500 1750
Connection ~ 5500 2000
Wire Wire Line
	5500 2850 5500 2750
$Comp
L Device:R R?
U 1 1 5F7ECB5D
P 5500 3100
F 0 "R?" H 5570 3146 50  0000 L CNN
F 1 "10k" H 5570 3055 50  0000 L CNN
F 2 "" V 5430 3100 50  0001 C CNN
F 3 "~" H 5500 3100 50  0001 C CNN
	1    5500 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F7ECB63
P 4900 2600
F 0 "C?" H 5015 2646 50  0000 L CNN
F 1 "1n" H 5015 2555 50  0000 L CNN
F 2 "" H 4938 2450 50  0001 C CNN
F 3 "~" H 4900 2600 50  0001 C CNN
	1    4900 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F7ECB69
P 5200 2850
F 0 "R?" V 4993 2850 50  0000 C CNN
F 1 "10k" V 5084 2850 50  0000 C CNN
F 2 "" V 5130 2850 50  0001 C CNN
F 3 "~" H 5200 2850 50  0001 C CNN
	1    5200 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 2850 5500 2850
$Comp
L power:+5V #PWR?
U 1 1 5F7ECB70
P 3500 3250
F 0 "#PWR?" H 3500 3100 50  0001 C CNN
F 1 "+5V" H 3515 3423 50  0000 C CNN
F 2 "" H 3500 3250 50  0001 C CNN
F 3 "" H 3500 3250 50  0001 C CNN
	1    3500 3250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F7ECB76
P 4700 3250
F 0 "#PWR?" H 4700 3100 50  0001 C CNN
F 1 "+5V" H 4715 3423 50  0000 C CNN
F 2 "" H 4700 3250 50  0001 C CNN
F 3 "" H 4700 3250 50  0001 C CNN
	1    4700 3250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F7ECB7C
P 4900 3250
F 0 "#PWR?" H 4900 3100 50  0001 C CNN
F 1 "+5V" H 4915 3423 50  0000 C CNN
F 2 "" H 4900 3250 50  0001 C CNN
F 3 "" H 4900 3250 50  0001 C CNN
	1    4900 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 3250 4900 2750
Wire Wire Line
	4900 2450 4900 2350
$Comp
L power:-15V #PWR?
U 1 1 5F7ECB84
P 5500 3250
F 0 "#PWR?" H 5500 3350 50  0001 C CNN
F 1 "-15V" H 5515 3423 50  0000 C CNN
F 2 "" H 5500 3250 50  0001 C CNN
F 3 "" H 5500 3250 50  0001 C CNN
	1    5500 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 2950 5500 2850
Connection ~ 5500 2850
$Comp
L power:+15V #PWR?
U 1 1 5F7ECB8C
P 4600 1750
F 0 "#PWR?" H 4600 1600 50  0001 C CNN
F 1 "+15V" H 4615 1923 50  0000 C CNN
F 2 "" H 4600 1750 50  0001 C CNN
F 3 "" H 4600 1750 50  0001 C CNN
	1    4600 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F7ECB94
P 4100 3250
F 0 "R?" H 4170 3296 50  0000 L CNN
F 1 "1k" H 4170 3205 50  0000 L CNN
F 2 "" V 4030 3250 50  0001 C CNN
F 3 "~" H 4100 3250 50  0001 C CNN
	1    4100 3250
	1    0    0    -1  
$EndComp
Connection ~ 4100 3100
Wire Wire Line
	4100 3100 4400 3100
Wire Wire Line
	4700 2950 4700 2850
Connection ~ 4700 2850
Wire Wire Line
	4700 2850 4700 2550
Wire Wire Line
	4700 2850 5050 2850
Connection ~ 4900 2350
Wire Wire Line
	4900 2350 4400 2350
Wire Wire Line
	4400 1750 4600 1750
Connection ~ 4600 1750
Wire Wire Line
	4600 1750 5500 1750
Wire Wire Line
	3500 2950 3500 2850
$Comp
L Device:R R?
U 1 1 5F7EE853
P 3600 2550
F 0 "R?" V 3393 2550 50  0000 C CNN
F 1 "10k" V 3484 2550 50  0000 C CNN
F 2 "" V 3530 2550 50  0001 C CNN
F 3 "~" H 3600 2550 50  0001 C CNN
	1    3600 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 2550 4700 2550
Wire Wire Line
	3450 2550 3300 2550
Wire Wire Line
	3300 2550 3300 2850
Wire Wire Line
	3300 2850 3150 2850
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F80021B
P 6850 2850
F 0 "Q?" H 6750 3100 50  0000 L CNN
F 1 "BC550" H 6600 3000 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7050 2775 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6850 2850 50  0001 L CNN
F 4 "Q" H 6850 2850 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 6850 2850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6850 2850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 6850 2850 50  0001 C CNN "Spice_Lib_File"
	1    6850 2850
	-1   0    0    -1  
$EndComp
$Comp
L elektrophon:BC560 Q?
U 1 1 5F800225
P 6650 2150
F 0 "Q?" H 6841 2104 50  0000 L CNN
F 1 "BC560" H 6841 2195 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6850 2075 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 6650 2150 50  0001 L CNN
F 4 "Q" H 6650 2150 50  0001 C CNN "Spice_Primitive"
F 5 "BC556B" H 6650 2150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6650 2150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 6650 2150 50  0001 C CNN "Spice_Lib_File"
	1    6650 2150
	1    0    0    1   
$EndComp
$Comp
L elektrophon:BC560 Q?
U 1 1 5F80022F
P 6250 2150
F 0 "Q?" H 6441 2104 50  0000 L CNN
F 1 "BC560" H 6441 2195 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6450 2075 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 6250 2150 50  0001 L CNN
F 4 "Q" H 6250 2150 50  0001 C CNN "Spice_Primitive"
F 5 "BC556B" H 6250 2150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6250 2150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 6250 2150 50  0001 C CNN "Spice_Lib_File"
	1    6250 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6450 2150 6450 2350
Wire Wire Line
	6450 2350 6150 2350
Connection ~ 6450 2150
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F80023C
P 6050 2850
F 0 "Q?" H 5850 3050 50  0000 L CNN
F 1 "BC550" H 5700 2950 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6250 2775 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6050 2850 50  0001 L CNN
F 4 "Q" H 6050 2850 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 6050 2850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6050 2850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 6050 2850 50  0001 C CNN "Spice_Lib_File"
	1    6050 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3050 6150 3100
Wire Wire Line
	6150 3100 6450 3100
Wire Wire Line
	6750 3100 6750 3050
Connection ~ 6150 2350
$Comp
L Device:R R?
U 1 1 5F800246
P 5850 3100
F 0 "R?" H 5920 3146 50  0000 L CNN
F 1 "220" H 5920 3055 50  0000 L CNN
F 2 "" V 5780 3100 50  0001 C CNN
F 3 "~" H 5850 3100 50  0001 C CNN
	1    5850 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F80024C
P 7050 3100
F 0 "R?" H 6900 3150 50  0000 L CNN
F 1 "220" H 6850 3050 50  0000 L CNN
F 2 "" V 6980 3100 50  0001 C CNN
F 3 "~" H 7050 3100 50  0001 C CNN
	1    7050 3100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F800256
P 7450 2350
F 0 "Q?" H 7350 2600 50  0000 L CNN
F 1 "BC550" H 7200 2500 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7650 2275 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 7450 2350 50  0001 L CNN
F 4 "Q" H 7450 2350 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 7450 2350 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7450 2350 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 7450 2350 50  0001 C CNN "Spice_Lib_File"
	1    7450 2350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F800260
P 7750 2550
F 0 "Q?" H 7941 2596 50  0000 L CNN
F 1 "BC550" H 7941 2505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7950 2475 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 7750 2550 50  0001 L CNN
F 4 "Q" H 7750 2550 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 7750 2550 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7750 2550 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 7750 2550 50  0001 C CNN "Spice_Lib_File"
	1    7750 2550
	1    0    0    -1  
$EndComp
Connection ~ 6750 2350
Wire Wire Line
	7850 2350 7850 2000
Wire Wire Line
	6150 1750 6150 1950
Wire Wire Line
	6750 1950 6750 1750
Connection ~ 6750 1750
Wire Wire Line
	6750 1750 6150 1750
Wire Wire Line
	7550 2150 7550 2000
Wire Wire Line
	7550 2000 7850 2000
Wire Wire Line
	6150 2350 6150 2650
Wire Wire Line
	6750 2350 6750 2650
Wire Wire Line
	7850 2000 7850 1750
Connection ~ 7850 2000
Wire Wire Line
	7850 2850 7850 2750
$Comp
L Device:R R?
U 1 1 5F800273
P 7850 3100
F 0 "R?" H 7920 3146 50  0000 L CNN
F 1 "10k" H 7920 3055 50  0000 L CNN
F 2 "" V 7780 3100 50  0001 C CNN
F 3 "~" H 7850 3100 50  0001 C CNN
	1    7850 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F800279
P 7250 2600
F 0 "C?" H 7365 2646 50  0000 L CNN
F 1 "1n" H 7365 2555 50  0000 L CNN
F 2 "" H 7288 2450 50  0001 C CNN
F 3 "~" H 7250 2600 50  0001 C CNN
	1    7250 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F80027F
P 7550 2850
F 0 "R?" V 7343 2850 50  0000 C CNN
F 1 "10k" V 7434 2850 50  0000 C CNN
F 2 "" V 7480 2850 50  0001 C CNN
F 3 "~" H 7550 2850 50  0001 C CNN
	1    7550 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 2850 7850 2850
$Comp
L power:+5V #PWR?
U 1 1 5F800286
P 5850 3250
F 0 "#PWR?" H 5850 3100 50  0001 C CNN
F 1 "+5V" H 5865 3423 50  0000 C CNN
F 2 "" H 5850 3250 50  0001 C CNN
F 3 "" H 5850 3250 50  0001 C CNN
	1    5850 3250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F80028C
P 7050 3250
F 0 "#PWR?" H 7050 3100 50  0001 C CNN
F 1 "+5V" H 7065 3423 50  0000 C CNN
F 2 "" H 7050 3250 50  0001 C CNN
F 3 "" H 7050 3250 50  0001 C CNN
	1    7050 3250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F800292
P 7250 3250
F 0 "#PWR?" H 7250 3100 50  0001 C CNN
F 1 "+5V" H 7265 3423 50  0000 C CNN
F 2 "" H 7250 3250 50  0001 C CNN
F 3 "" H 7250 3250 50  0001 C CNN
	1    7250 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	7250 3250 7250 2750
Wire Wire Line
	7250 2450 7250 2350
$Comp
L power:-15V #PWR?
U 1 1 5F80029A
P 7850 3250
F 0 "#PWR?" H 7850 3350 50  0001 C CNN
F 1 "-15V" H 7865 3423 50  0000 C CNN
F 2 "" H 7850 3250 50  0001 C CNN
F 3 "" H 7850 3250 50  0001 C CNN
	1    7850 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	7850 2950 7850 2850
Connection ~ 7850 2850
$Comp
L power:+15V #PWR?
U 1 1 5F8002A2
P 6950 1750
F 0 "#PWR?" H 6950 1600 50  0001 C CNN
F 1 "+15V" H 6965 1923 50  0000 C CNN
F 2 "" H 6950 1750 50  0001 C CNN
F 3 "" H 6950 1750 50  0001 C CNN
	1    6950 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F8002A8
P 6450 3250
F 0 "R?" H 6520 3296 50  0000 L CNN
F 1 "1k" H 6520 3205 50  0000 L CNN
F 2 "" V 6380 3250 50  0001 C CNN
F 3 "~" H 6450 3250 50  0001 C CNN
	1    6450 3250
	1    0    0    -1  
$EndComp
Connection ~ 6450 3100
Wire Wire Line
	6450 3100 6750 3100
Wire Wire Line
	7050 2950 7050 2850
Connection ~ 7050 2850
Wire Wire Line
	7050 2850 7050 2550
Wire Wire Line
	7050 2850 7400 2850
Connection ~ 7250 2350
Wire Wire Line
	7250 2350 6750 2350
Wire Wire Line
	6750 1750 6950 1750
Connection ~ 6950 1750
Wire Wire Line
	6950 1750 7850 1750
Wire Wire Line
	5850 2950 5850 2850
$Comp
L Device:R R?
U 1 1 5F8002BB
P 5950 2550
F 0 "R?" V 5743 2550 50  0000 C CNN
F 1 "10k" V 5834 2550 50  0000 C CNN
F 2 "" V 5880 2550 50  0001 C CNN
F 3 "~" H 5950 2550 50  0001 C CNN
	1    5950 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 2550 7050 2550
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F80B223
P 9200 2850
F 0 "Q?" H 9100 3100 50  0000 L CNN
F 1 "BC550" H 8950 3000 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9400 2775 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 9200 2850 50  0001 L CNN
F 4 "Q" H 9200 2850 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 9200 2850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 9200 2850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 9200 2850 50  0001 C CNN "Spice_Lib_File"
	1    9200 2850
	-1   0    0    -1  
$EndComp
$Comp
L elektrophon:BC560 Q?
U 1 1 5F80B22D
P 9000 2150
F 0 "Q?" H 9191 2104 50  0000 L CNN
F 1 "BC560" H 9191 2195 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9200 2075 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 9000 2150 50  0001 L CNN
F 4 "Q" H 9000 2150 50  0001 C CNN "Spice_Primitive"
F 5 "BC556B" H 9000 2150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 9000 2150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 9000 2150 50  0001 C CNN "Spice_Lib_File"
	1    9000 2150
	1    0    0    1   
$EndComp
$Comp
L elektrophon:BC560 Q?
U 1 1 5F80B237
P 8600 2150
F 0 "Q?" H 8791 2104 50  0000 L CNN
F 1 "BC560" H 8791 2195 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8800 2075 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 8600 2150 50  0001 L CNN
F 4 "Q" H 8600 2150 50  0001 C CNN "Spice_Primitive"
F 5 "BC556B" H 8600 2150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 8600 2150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 8600 2150 50  0001 C CNN "Spice_Lib_File"
	1    8600 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8800 2150 8800 2350
Wire Wire Line
	8800 2350 8500 2350
Connection ~ 8800 2150
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F80B244
P 8400 2850
F 0 "Q?" H 8200 3050 50  0000 L CNN
F 1 "BC550" H 8050 2950 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8600 2775 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8400 2850 50  0001 L CNN
F 4 "Q" H 8400 2850 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 8400 2850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 8400 2850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 8400 2850 50  0001 C CNN "Spice_Lib_File"
	1    8400 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3050 8500 3100
Wire Wire Line
	8500 3100 8800 3100
Wire Wire Line
	9100 3100 9100 3050
Connection ~ 8500 2350
$Comp
L Device:R R?
U 1 1 5F80B24E
P 8200 3100
F 0 "R?" H 8270 3146 50  0000 L CNN
F 1 "220" H 8270 3055 50  0000 L CNN
F 2 "" V 8130 3100 50  0001 C CNN
F 3 "~" H 8200 3100 50  0001 C CNN
	1    8200 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F80B254
P 9400 3100
F 0 "R?" H 9250 3150 50  0000 L CNN
F 1 "220" H 9200 3050 50  0000 L CNN
F 2 "" V 9330 3100 50  0001 C CNN
F 3 "~" H 9400 3100 50  0001 C CNN
	1    9400 3100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F80B25E
P 9800 2350
F 0 "Q?" H 9700 2600 50  0000 L CNN
F 1 "BC550" H 9550 2500 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10000 2275 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 9800 2350 50  0001 L CNN
F 4 "Q" H 9800 2350 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 9800 2350 50  0001 C CNN "Spice_Model"
F 6 "Y" H 9800 2350 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 9800 2350 50  0001 C CNN "Spice_Lib_File"
	1    9800 2350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F80B268
P 10100 2550
F 0 "Q?" H 10291 2596 50  0000 L CNN
F 1 "BC550" H 10291 2505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10300 2475 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 10100 2550 50  0001 L CNN
F 4 "Q" H 10100 2550 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 10100 2550 50  0001 C CNN "Spice_Model"
F 6 "Y" H 10100 2550 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 10100 2550 50  0001 C CNN "Spice_Lib_File"
	1    10100 2550
	1    0    0    -1  
$EndComp
Connection ~ 9100 2350
Wire Wire Line
	10200 2350 10200 2000
Wire Wire Line
	8500 1750 8500 1950
Wire Wire Line
	9100 1950 9100 1750
Connection ~ 9100 1750
Wire Wire Line
	9100 1750 8500 1750
Wire Wire Line
	9900 2150 9900 2000
Wire Wire Line
	9900 2000 10200 2000
Wire Wire Line
	8500 2350 8500 2650
Wire Wire Line
	9100 2350 9100 2650
Wire Wire Line
	10200 2000 10200 1750
Connection ~ 10200 2000
Wire Wire Line
	10200 2850 10200 2750
$Comp
L Device:R R?
U 1 1 5F80B27B
P 10200 3100
F 0 "R?" H 10270 3146 50  0000 L CNN
F 1 "10k" H 10270 3055 50  0000 L CNN
F 2 "" V 10130 3100 50  0001 C CNN
F 3 "~" H 10200 3100 50  0001 C CNN
	1    10200 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F80B281
P 9600 2600
F 0 "C?" H 9715 2646 50  0000 L CNN
F 1 "1n" H 9715 2555 50  0000 L CNN
F 2 "" H 9638 2450 50  0001 C CNN
F 3 "~" H 9600 2600 50  0001 C CNN
	1    9600 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F80B287
P 9900 2850
F 0 "R?" V 9693 2850 50  0000 C CNN
F 1 "10k" V 9784 2850 50  0000 C CNN
F 2 "" V 9830 2850 50  0001 C CNN
F 3 "~" H 9900 2850 50  0001 C CNN
	1    9900 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	10050 2850 10200 2850
$Comp
L power:+5V #PWR?
U 1 1 5F80B28E
P 8200 3250
F 0 "#PWR?" H 8200 3100 50  0001 C CNN
F 1 "+5V" H 8215 3423 50  0000 C CNN
F 2 "" H 8200 3250 50  0001 C CNN
F 3 "" H 8200 3250 50  0001 C CNN
	1    8200 3250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F80B294
P 9400 3250
F 0 "#PWR?" H 9400 3100 50  0001 C CNN
F 1 "+5V" H 9415 3423 50  0000 C CNN
F 2 "" H 9400 3250 50  0001 C CNN
F 3 "" H 9400 3250 50  0001 C CNN
	1    9400 3250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F80B29A
P 9600 3250
F 0 "#PWR?" H 9600 3100 50  0001 C CNN
F 1 "+5V" H 9615 3423 50  0000 C CNN
F 2 "" H 9600 3250 50  0001 C CNN
F 3 "" H 9600 3250 50  0001 C CNN
	1    9600 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	9600 3250 9600 2750
Wire Wire Line
	9600 2450 9600 2350
$Comp
L power:-15V #PWR?
U 1 1 5F80B2A2
P 10200 3250
F 0 "#PWR?" H 10200 3350 50  0001 C CNN
F 1 "-15V" H 10215 3423 50  0000 C CNN
F 2 "" H 10200 3250 50  0001 C CNN
F 3 "" H 10200 3250 50  0001 C CNN
	1    10200 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	10200 2950 10200 2850
Connection ~ 10200 2850
$Comp
L power:+15V #PWR?
U 1 1 5F80B2AA
P 9300 1750
F 0 "#PWR?" H 9300 1600 50  0001 C CNN
F 1 "+15V" H 9315 1923 50  0000 C CNN
F 2 "" H 9300 1750 50  0001 C CNN
F 3 "" H 9300 1750 50  0001 C CNN
	1    9300 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F80B2B0
P 8800 3250
F 0 "R?" H 8870 3296 50  0000 L CNN
F 1 "1k" H 8870 3205 50  0000 L CNN
F 2 "" V 8730 3250 50  0001 C CNN
F 3 "~" H 8800 3250 50  0001 C CNN
	1    8800 3250
	1    0    0    -1  
$EndComp
Connection ~ 8800 3100
Wire Wire Line
	8800 3100 9100 3100
Wire Wire Line
	10550 2850 10200 2850
Wire Wire Line
	9400 2950 9400 2850
Connection ~ 9400 2850
Wire Wire Line
	9400 2850 9400 2550
Wire Wire Line
	9400 2850 9750 2850
Connection ~ 9600 2350
Wire Wire Line
	9600 2350 9100 2350
Wire Wire Line
	9100 1750 9300 1750
Connection ~ 9300 1750
Wire Wire Line
	9300 1750 10200 1750
Wire Wire Line
	8200 2950 8200 2850
$Comp
L Device:R R?
U 1 1 5F80B2C3
P 8300 2550
F 0 "R?" V 8093 2550 50  0000 C CNN
F 1 "10k" V 8184 2550 50  0000 C CNN
F 2 "" V 8230 2550 50  0001 C CNN
F 3 "~" H 8300 2550 50  0001 C CNN
	1    8300 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	8450 2550 9400 2550
Wire Wire Line
	5800 2550 5700 2550
Wire Wire Line
	5700 2550 5700 2850
Wire Wire Line
	5700 2850 5500 2850
Wire Wire Line
	8150 2550 8050 2550
Wire Wire Line
	8050 2550 8050 2850
Wire Wire Line
	8050 2850 7850 2850
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F838C0D
P 5150 4250
F 0 "Q?" H 5050 4500 50  0000 L CNN
F 1 "BC550" H 4900 4400 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5350 4175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 5150 4250 50  0001 L CNN
F 4 "Q" H 5150 4250 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 5150 4250 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5150 4250 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 5150 4250 50  0001 C CNN "Spice_Lib_File"
	1    5150 4250
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F839D39
P 5700 4250
F 0 "Q?" H 5600 4500 50  0000 L CNN
F 1 "BC550" H 5450 4400 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5900 4175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 5700 4250 50  0001 L CNN
F 4 "Q" H 5700 4250 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 5700 4250 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5700 4250 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 5700 4250 50  0001 C CNN "Spice_Lib_File"
	1    5700 4250
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F83A727
P 6250 4250
F 0 "Q?" H 6150 4500 50  0000 L CNN
F 1 "BC550" H 6000 4400 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6450 4175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6250 4250 50  0001 L CNN
F 4 "Q" H 6250 4250 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 6250 4250 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6250 4250 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 6250 4250 50  0001 C CNN "Spice_Lib_File"
	1    6250 4250
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5F83B00A
P 6800 4250
F 0 "Q?" H 6700 4500 50  0000 L CNN
F 1 "BC550" H 6550 4400 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7000 4175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6800 4250 50  0001 L CNN
F 4 "Q" H 6800 4250 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 6800 4250 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6800 4250 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 6800 4250 50  0001 C CNN "Spice_Lib_File"
	1    6800 4250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1750 3400 1750 3800
Wire Wire Line
	1750 3800 5050 3800
Wire Wire Line
	5050 3800 5050 4050
Wire Wire Line
	4100 3400 4100 3700
Wire Wire Line
	4100 3700 5600 3700
Wire Wire Line
	5600 3700 5600 4050
Wire Wire Line
	8800 3400 8800 3850
Wire Wire Line
	8800 3850 6700 3850
Wire Wire Line
	6700 3850 6700 4050
Wire Wire Line
	6450 3400 6450 3750
Wire Wire Line
	6450 3750 6150 3750
Wire Wire Line
	6150 3750 6150 4050
$Comp
L power:GND #PWR?
U 1 1 5F84F76C
P 7050 4350
F 0 "#PWR?" H 7050 4100 50  0001 C CNN
F 1 "GND" H 7055 4177 50  0000 C CNN
F 2 "" H 7050 4350 50  0001 C CNN
F 3 "" H 7050 4350 50  0001 C CNN
	1    7050 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4350 7050 4250
Wire Wire Line
	7050 4250 7000 4250
Wire Wire Line
	7000 4250 6450 4250
Connection ~ 7000 4250
Wire Wire Line
	6450 4250 5900 4250
Connection ~ 6450 4250
Wire Wire Line
	5900 4250 5350 4250
Connection ~ 5900 4250
$EndSCHEMATC
