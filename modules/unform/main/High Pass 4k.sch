EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 4400 3800 0    50   Input ~ 0
IN
$Comp
L Device:C C?
U 1 1 5FA32B3B
P 4550 3800
AR Path="/5FA13C5B/5FA32B3B" Ref="C?"  Part="1" 
AR Path="/5FA2254D/5FA32B3B" Ref="C?"  Part="1" 
AR Path="/5FA2D703/5FA32B3B" Ref="C?"  Part="1" 
AR Path="/5FA2D8AA/5FA32B3B" Ref="C9"  Part="1" 
F 0 "C9" V 4298 3800 50  0000 C CNN
F 1 "2.2n" V 4389 3800 50  0000 C CNN
F 2 "" H 4588 3650 50  0001 C CNN
F 3 "~" H 4550 3800 50  0001 C CNN
	1    4550 3800
	0    1    1    0   
$EndComp
Text GLabel 6550 3950 2    50   Input ~ 0
OUT
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5FA32B6C
P 5850 3300
AR Path="/5FA13C5B/5FA32B6C" Ref="Q?"  Part="1" 
AR Path="/5FA2254D/5FA32B6C" Ref="Q?"  Part="1" 
AR Path="/5FA2D703/5FA32B6C" Ref="Q?"  Part="1" 
AR Path="/5FA2D8AA/5FA32B6C" Ref="Q7"  Part="1" 
F 0 "Q7" H 6041 3346 50  0000 L CNN
F 1 "BC550" H 6041 3255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6050 3225 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 5850 3300 50  0001 L CNN
F 4 "Q" H 5850 3300 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 5850 3300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5850 3300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 5850 3300 50  0001 C CNN "Spice_Lib_File"
	1    5850 3300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC560 Q?
U 1 1 5FA32B76
P 6250 3000
AR Path="/5FA13C5B/5FA32B76" Ref="Q?"  Part="1" 
AR Path="/5FA2254D/5FA32B76" Ref="Q?"  Part="1" 
AR Path="/5FA2D703/5FA32B76" Ref="Q?"  Part="1" 
AR Path="/5FA2D8AA/5FA32B76" Ref="Q8"  Part="1" 
F 0 "Q8" H 6441 2954 50  0000 L CNN
F 1 "BC560" H 6441 3045 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6450 2925 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC556BTA-D.pdf" H 6250 3000 50  0001 L CNN
F 4 "Q" H 6250 3000 50  0001 C CNN "Spice_Primitive"
F 5 "BC556B" H 6250 3000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6250 3000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/bc5x7.lib" H 6250 3000 50  0001 C CNN "Spice_Lib_File"
	1    6250 3000
	1    0    0    1   
$EndComp
Wire Wire Line
	6050 3000 5950 3000
Wire Wire Line
	5950 3000 5950 3100
Wire Wire Line
	6350 3200 6350 3950
$Comp
L power:+15V #PWR?
U 1 1 5FA32B7F
P 6350 2700
AR Path="/5FA13C5B/5FA32B7F" Ref="#PWR?"  Part="1" 
AR Path="/5FA2254D/5FA32B7F" Ref="#PWR?"  Part="1" 
AR Path="/5FA2D703/5FA32B7F" Ref="#PWR?"  Part="1" 
AR Path="/5FA2D8AA/5FA32B7F" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 6350 2550 50  0001 C CNN
F 1 "+15V" H 6365 2873 50  0000 C CNN
F 2 "" H 6350 2700 50  0001 C CNN
F 3 "" H 6350 2700 50  0001 C CNN
	1    6350 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FA32B85
P 5050 3800
AR Path="/5FA13C5B/5FA32B85" Ref="C?"  Part="1" 
AR Path="/5FA2254D/5FA32B85" Ref="C?"  Part="1" 
AR Path="/5FA2D703/5FA32B85" Ref="C?"  Part="1" 
AR Path="/5FA2D8AA/5FA32B85" Ref="C10"  Part="1" 
F 0 "C10" V 4798 3800 50  0000 C CNN
F 1 "2.2n" V 4889 3800 50  0000 C CNN
F 2 "" H 5088 3650 50  0001 C CNN
F 3 "~" H 5050 3800 50  0001 C CNN
	1    5050 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FA32B99
P 5300 4150
AR Path="/5FA13C5B/5FA32B99" Ref="R?"  Part="1" 
AR Path="/5FA2254D/5FA32B99" Ref="R?"  Part="1" 
AR Path="/5FA2D703/5FA32B99" Ref="R?"  Part="1" 
AR Path="/5FA2D8AA/5FA32B99" Ref="R20"  Part="1" 
F 0 "R20" H 5230 4104 50  0000 R CNN
F 1 "100k" H 5230 4195 50  0000 R CNN
F 2 "" V 5230 4150 50  0001 C CNN
F 3 "~" H 5300 4150 50  0001 C CNN
	1    5300 4150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FA32B9F
P 5300 4300
AR Path="/5FA13C5B/5FA32B9F" Ref="#PWR?"  Part="1" 
AR Path="/5FA2254D/5FA32B9F" Ref="#PWR?"  Part="1" 
AR Path="/5FA2D703/5FA32B9F" Ref="#PWR?"  Part="1" 
AR Path="/5FA2D8AA/5FA32B9F" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 5300 4050 50  0001 C CNN
F 1 "GND" H 5305 4127 50  0000 C CNN
F 2 "" H 5300 4300 50  0001 C CNN
F 3 "" H 5300 4300 50  0001 C CNN
	1    5300 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3800 4800 3800
Wire Wire Line
	5300 2700 5300 2800
$Comp
L power:+15V #PWR?
U 1 1 5FA32BA7
P 5300 2700
AR Path="/5FA13C5B/5FA32BA7" Ref="#PWR?"  Part="1" 
AR Path="/5FA2254D/5FA32BA7" Ref="#PWR?"  Part="1" 
AR Path="/5FA2D703/5FA32BA7" Ref="#PWR?"  Part="1" 
AR Path="/5FA2D8AA/5FA32BA7" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 5300 2550 50  0001 C CNN
F 1 "+15V" H 5315 2873 50  0000 C CNN
F 2 "" H 5300 2700 50  0001 C CNN
F 3 "" H 5300 2700 50  0001 C CNN
	1    5300 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FA32BAD
P 5300 2950
AR Path="/5FA13C5B/5FA32BAD" Ref="R?"  Part="1" 
AR Path="/5FA2254D/5FA32BAD" Ref="R?"  Part="1" 
AR Path="/5FA2D703/5FA32BAD" Ref="R?"  Part="1" 
AR Path="/5FA2D8AA/5FA32BAD" Ref="R19"  Part="1" 
F 0 "R19" H 5230 2904 50  0000 R CNN
F 1 "68k" H 5230 2995 50  0000 R CNN
F 2 "" V 5230 2950 50  0001 C CNN
F 3 "~" H 5300 2950 50  0001 C CNN
	1    5300 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 3100 5300 3300
Wire Wire Line
	5200 3800 5300 3800
Connection ~ 5300 3800
Wire Wire Line
	5300 3800 5300 4000
$Comp
L Device:R R?
U 1 1 5FA32BB8
P 5500 3300
AR Path="/5FA13C5B/5FA32BB8" Ref="R?"  Part="1" 
AR Path="/5FA2254D/5FA32BB8" Ref="R?"  Part="1" 
AR Path="/5FA2D703/5FA32BB8" Ref="R?"  Part="1" 
AR Path="/5FA2D8AA/5FA32BB8" Ref="R21"  Part="1" 
F 0 "R21" V 5293 3300 50  0000 C CNN
F 1 "10k" V 5384 3300 50  0000 C CNN
F 2 "" V 5430 3300 50  0001 C CNN
F 3 "~" H 5500 3300 50  0001 C CNN
	1    5500 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 3300 5300 3300
Connection ~ 5300 3300
Wire Wire Line
	5300 3300 5300 3800
$Comp
L Device:R R?
U 1 1 5FA32BC1
P 5650 3950
AR Path="/5FA13C5B/5FA32BC1" Ref="R?"  Part="1" 
AR Path="/5FA2254D/5FA32BC1" Ref="R?"  Part="1" 
AR Path="/5FA2D703/5FA32BC1" Ref="R?"  Part="1" 
AR Path="/5FA2D8AA/5FA32BC1" Ref="R22"  Part="1" 
F 0 "R22" V 5443 3950 50  0000 C CNN
F 1 "4.7k" V 5534 3950 50  0000 C CNN
F 2 "" V 5580 3950 50  0001 C CNN
F 3 "~" H 5650 3950 50  0001 C CNN
	1    5650 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 3950 4800 3950
Wire Wire Line
	4800 3950 4800 3800
Connection ~ 4800 3800
Wire Wire Line
	4800 3800 4900 3800
Wire Wire Line
	5800 3950 5950 3950
Wire Wire Line
	5950 3500 5950 3950
Connection ~ 5950 3950
Wire Wire Line
	5950 3950 6350 3950
$Comp
L Device:R R?
U 1 1 5FA32BCF
P 6350 4150
AR Path="/5FA13C5B/5FA32BCF" Ref="R?"  Part="1" 
AR Path="/5FA2254D/5FA32BCF" Ref="R?"  Part="1" 
AR Path="/5FA2D703/5FA32BCF" Ref="R?"  Part="1" 
AR Path="/5FA2D8AA/5FA32BCF" Ref="R23"  Part="1" 
F 0 "R23" H 6280 4104 50  0000 R CNN
F 1 "1.5k" H 6280 4195 50  0000 R CNN
F 2 "" V 6280 4150 50  0001 C CNN
F 3 "~" H 6350 4150 50  0001 C CNN
	1    6350 4150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FA32BD5
P 6350 4300
AR Path="/5FA13C5B/5FA32BD5" Ref="#PWR?"  Part="1" 
AR Path="/5FA2254D/5FA32BD5" Ref="#PWR?"  Part="1" 
AR Path="/5FA2D703/5FA32BD5" Ref="#PWR?"  Part="1" 
AR Path="/5FA2D8AA/5FA32BD5" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 6350 4050 50  0001 C CNN
F 1 "GND" H 6355 4127 50  0000 C CNN
F 2 "" H 6350 4300 50  0001 C CNN
F 3 "" H 6350 4300 50  0001 C CNN
	1    6350 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4000 6350 3950
Connection ~ 6350 3950
Wire Wire Line
	6550 3950 6350 3950
Wire Wire Line
	6350 2700 6350 2800
$EndSCHEMATC
