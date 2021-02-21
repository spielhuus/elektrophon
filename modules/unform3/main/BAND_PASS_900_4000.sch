EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 10
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
L Device:C C?
U 1 1 5FA9A403
P 4250 3650
AR Path="/5FA2D9EA/5FA9A403" Ref="C?"  Part="1" 
AR Path="/5FA985E0/5FA9A403" Ref="C?"  Part="1" 
AR Path="/5FA8C0FD/5FA9A403" Ref="C?"  Part="1" 
AR Path="/5FABA858/5FA9A403" Ref="C13"  Part="1" 
F 0 "C13" H 4365 3696 50  0000 L CNN
F 1 "910p" H 4365 3605 50  0000 L CNN
F 2 "" H 4288 3500 50  0001 C CNN
F 3 "~" H 4250 3650 50  0001 C CNN
	1    4250 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FA9A409
P 4700 4150
AR Path="/5FA2D9EA/5FA9A409" Ref="C?"  Part="1" 
AR Path="/5FA985E0/5FA9A409" Ref="C?"  Part="1" 
AR Path="/5FA8C0FD/5FA9A409" Ref="C?"  Part="1" 
AR Path="/5FABA858/5FA9A409" Ref="C14"  Part="1" 
F 0 "C14" V 4448 4150 50  0000 C CNN
F 1 "10n" V 4539 4150 50  0000 C CNN
F 2 "" H 4738 4000 50  0001 C CNN
F 3 "~" H 4700 4150 50  0001 C CNN
	1    4700 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 3400 4250 3500
$Comp
L power:GND #PWR?
U 1 1 5FA8C209
P 4250 3800
AR Path="/5FA2D9EA/5FA8C209" Ref="#PWR?"  Part="1" 
AR Path="/5FA985E0/5FA8C209" Ref="#PWR?"  Part="1" 
AR Path="/5FABA858/5FA8C209" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 4250 3550 50  0001 C CNN
F 1 "GND" H 4255 3627 50  0000 C CNN
F 2 "" H 4250 3800 50  0001 C CNN
F 3 "" H 4250 3800 50  0001 C CNN
	1    4250 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FABAC35
P 3550 3400
AR Path="/5FA2D9EA/5FABAC35" Ref="R?"  Part="1" 
AR Path="/5FA985E0/5FABAC35" Ref="R?"  Part="1" 
AR Path="/5FABA858/5FABAC35" Ref="R27"  Part="1" 
F 0 "R27" V 3343 3400 50  0000 C CNN
F 1 "15k" V 3434 3400 50  0000 C CNN
F 2 "" V 3480 3400 50  0001 C CNN
F 3 "~" H 3550 3400 50  0001 C CNN
	1    3550 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FA8C20B
P 3950 3400
AR Path="/5FA2D9EA/5FA8C20B" Ref="R?"  Part="1" 
AR Path="/5FA985E0/5FA8C20B" Ref="R?"  Part="1" 
AR Path="/5FABA858/5FA8C20B" Ref="R28"  Part="1" 
F 0 "R28" V 3743 3400 50  0000 C CNN
F 1 "15k" V 3834 3400 50  0000 C CNN
F 2 "" V 3880 3400 50  0001 C CNN
F 3 "~" H 3950 3400 50  0001 C CNN
	1    3950 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 3400 4100 3400
Wire Wire Line
	3750 3400 3800 3400
Wire Wire Line
	3750 3400 3700 3400
Connection ~ 3750 3400
$Comp
L Transistor_BJT:BC550 Q?
U 1 1 5FABAC37
P 5100 3400
AR Path="/5FA2D9EA/5FABAC37" Ref="Q?"  Part="1" 
AR Path="/5FA985E0/5FABAC37" Ref="Q?"  Part="1" 
AR Path="/5FABA858/5FABAC37" Ref="Q9"  Part="1" 
F 0 "Q9" H 5291 3446 50  0000 L CNN
F 1 "BC550" H 5291 3355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5300 3325 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 5100 3400 50  0001 L CNN
F 4 "Q" H 5100 3400 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 5100 3400 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5100 3400 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5100 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3150 5200 3200
$Comp
L Device:R R?
U 1 1 5FABAC44
P 4600 3400
AR Path="/5FA2D9EA/5FABAC44" Ref="R?"  Part="1" 
AR Path="/5FA985E0/5FABAC44" Ref="R?"  Part="1" 
AR Path="/5FABA858/5FABAC44" Ref="R29"  Part="1" 
F 0 "R29" V 4393 3400 50  0000 C CNN
F 1 "10k" V 4484 3400 50  0000 C CNN
F 2 "" V 4530 3400 50  0001 C CNN
F 3 "~" H 4600 3400 50  0001 C CNN
	1    4600 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 3400 4450 3400
Wire Wire Line
	4750 3400 4900 3400
Connection ~ 4250 3400
Wire Wire Line
	4850 4150 5200 4150
Wire Wire Line
	4550 4150 3750 4150
Wire Wire Line
	3750 4150 3750 3400
Text HLabel 3250 3400 0    50   Input ~ 0
IN
Wire Wire Line
	3400 3400 3250 3400
$Comp
L Device:C C?
U 1 1 5FABAC2E
P 5650 3850
AR Path="/5FA13C5B/5FABAC2E" Ref="C?"  Part="1" 
AR Path="/5FA2254D/5FABAC2E" Ref="C?"  Part="1" 
AR Path="/5FA2D703/5FABAC2E" Ref="C?"  Part="1" 
AR Path="/5FA2D8AA/5FABAC2E" Ref="C?"  Part="1" 
AR Path="/5FAA1B38/5FABAC2E" Ref="C?"  Part="1" 
AR Path="/5FA8C0FD/5FABAC2E" Ref="C?"  Part="1" 
AR Path="/5FABA858/5FABAC2E" Ref="C15"  Part="1" 
F 0 "C15" V 5398 3850 50  0000 C CNN
F 1 "10n" V 5489 3850 50  0000 C CNN
F 2 "" H 5688 3700 50  0001 C CNN
F 3 "~" H 5650 3850 50  0001 C CNN
	1    5650 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 3050 7050 3050
Wire Wire Line
	7050 3050 7050 3150
Wire Wire Line
	7450 3250 7450 4000
$Comp
L power:+15V #PWR?
U 1 1 5FABAC38
P 7450 2750
AR Path="/5FA13C5B/5FABAC38" Ref="#PWR?"  Part="1" 
AR Path="/5FA2254D/5FABAC38" Ref="#PWR?"  Part="1" 
AR Path="/5FA2D703/5FABAC38" Ref="#PWR?"  Part="1" 
AR Path="/5FA2D8AA/5FABAC38" Ref="#PWR?"  Part="1" 
AR Path="/5FAA1B38/5FABAC38" Ref="#PWR?"  Part="1" 
AR Path="/5FABA858/5FABAC38" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 7450 2600 50  0001 C CNN
F 1 "+15V" H 7465 2923 50  0000 C CNN
F 2 "" H 7450 2750 50  0001 C CNN
F 3 "" H 7450 2750 50  0001 C CNN
	1    7450 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FABAC39
P 6150 3850
AR Path="/5FA13C5B/5FABAC39" Ref="C?"  Part="1" 
AR Path="/5FA2254D/5FABAC39" Ref="C?"  Part="1" 
AR Path="/5FA2D703/5FABAC39" Ref="C?"  Part="1" 
AR Path="/5FA2D8AA/5FABAC39" Ref="C?"  Part="1" 
AR Path="/5FAA1B38/5FABAC39" Ref="C?"  Part="1" 
AR Path="/5FA8C0FD/5FABAC39" Ref="C?"  Part="1" 
AR Path="/5FABA858/5FABAC39" Ref="C16"  Part="1" 
F 0 "C16" V 5898 3850 50  0000 C CNN
F 1 "10n" V 5989 3850 50  0000 C CNN
F 2 "" H 6188 3700 50  0001 C CNN
F 3 "~" H 6150 3850 50  0001 C CNN
	1    6150 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FABAC2F
P 5200 4350
AR Path="/5FA13C5B/5FABAC2F" Ref="R?"  Part="1" 
AR Path="/5FA2254D/5FABAC2F" Ref="R?"  Part="1" 
AR Path="/5FA2D703/5FABAC2F" Ref="R?"  Part="1" 
AR Path="/5FA2D8AA/5FABAC2F" Ref="R?"  Part="1" 
AR Path="/5FAA1B38/5FABAC2F" Ref="R?"  Part="1" 
AR Path="/5FABA858/5FABAC2F" Ref="R30"  Part="1" 
F 0 "R30" H 5130 4304 50  0000 R CNN
F 1 "3.3k" H 5130 4395 50  0000 R CNN
F 2 "" V 5130 4350 50  0001 C CNN
F 3 "~" H 5200 4350 50  0001 C CNN
	1    5200 4350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FABAC3A
P 5200 4500
AR Path="/5FA13C5B/5FABAC3A" Ref="#PWR?"  Part="1" 
AR Path="/5FA2254D/5FABAC3A" Ref="#PWR?"  Part="1" 
AR Path="/5FA2D703/5FABAC3A" Ref="#PWR?"  Part="1" 
AR Path="/5FA2D8AA/5FABAC3A" Ref="#PWR?"  Part="1" 
AR Path="/5FAA1B38/5FABAC3A" Ref="#PWR?"  Part="1" 
AR Path="/5FABA858/5FABAC3A" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 5200 4250 50  0001 C CNN
F 1 "GND" H 5205 4327 50  0000 C CNN
F 2 "" H 5200 4500 50  0001 C CNN
F 3 "" H 5200 4500 50  0001 C CNN
	1    5200 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3850 5900 3850
Wire Wire Line
	6400 2750 6400 2850
$Comp
L power:+15V #PWR?
U 1 1 5FA8ED46
P 6400 2750
AR Path="/5FA13C5B/5FA8ED46" Ref="#PWR?"  Part="1" 
AR Path="/5FA2254D/5FA8ED46" Ref="#PWR?"  Part="1" 
AR Path="/5FA2D703/5FA8ED46" Ref="#PWR?"  Part="1" 
AR Path="/5FA2D8AA/5FA8ED46" Ref="#PWR?"  Part="1" 
AR Path="/5FAA1B38/5FA8ED46" Ref="#PWR?"  Part="1" 
AR Path="/5FA8C0FD/5FA8ED46" Ref="#PWR?"  Part="1" 
AR Path="/5FABA858/5FA8ED46" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 6400 2600 50  0001 C CNN
F 1 "+15V" H 6415 2923 50  0000 C CNN
F 2 "" H 6400 2750 50  0001 C CNN
F 3 "" H 6400 2750 50  0001 C CNN
	1    6400 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FA8ED47
P 6400 3000
AR Path="/5FA13C5B/5FA8ED47" Ref="R?"  Part="1" 
AR Path="/5FA2254D/5FA8ED47" Ref="R?"  Part="1" 
AR Path="/5FA2D703/5FA8ED47" Ref="R?"  Part="1" 
AR Path="/5FA2D8AA/5FA8ED47" Ref="R?"  Part="1" 
AR Path="/5FAA1B38/5FA8ED47" Ref="R?"  Part="1" 
AR Path="/5FABA858/5FA8ED47" Ref="R31"  Part="1" 
F 0 "R31" H 6330 2954 50  0000 R CNN
F 1 "68k" H 6330 3045 50  0000 R CNN
F 2 "" V 6330 3000 50  0001 C CNN
F 3 "~" H 6400 3000 50  0001 C CNN
	1    6400 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	6400 3150 6400 3350
Wire Wire Line
	6300 3850 6400 3850
Connection ~ 6400 3850
$Comp
L Device:R R?
U 1 1 5FA8ED48
P 6600 3350
AR Path="/5FA13C5B/5FA8ED48" Ref="R?"  Part="1" 
AR Path="/5FA2254D/5FA8ED48" Ref="R?"  Part="1" 
AR Path="/5FA2D703/5FA8ED48" Ref="R?"  Part="1" 
AR Path="/5FA2D8AA/5FA8ED48" Ref="R?"  Part="1" 
AR Path="/5FAA1B38/5FA8ED48" Ref="R?"  Part="1" 
AR Path="/5FABA858/5FA8ED48" Ref="R33"  Part="1" 
F 0 "R33" V 6393 3350 50  0000 C CNN
F 1 "10k" V 6484 3350 50  0000 C CNN
F 2 "" V 6530 3350 50  0001 C CNN
F 3 "~" H 6600 3350 50  0001 C CNN
	1    6600 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 3350 6400 3350
Connection ~ 6400 3350
Wire Wire Line
	6400 3350 6400 3850
$Comp
L Device:R R?
U 1 1 5FA8ED49
P 6750 4000
AR Path="/5FA13C5B/5FA8ED49" Ref="R?"  Part="1" 
AR Path="/5FA2254D/5FA8ED49" Ref="R?"  Part="1" 
AR Path="/5FA2D703/5FA8ED49" Ref="R?"  Part="1" 
AR Path="/5FA2D8AA/5FA8ED49" Ref="R?"  Part="1" 
AR Path="/5FAA1B38/5FA8ED49" Ref="R?"  Part="1" 
AR Path="/5FABA858/5FA8ED49" Ref="R34"  Part="1" 
F 0 "R34" V 6543 4000 50  0000 C CNN
F 1 "4.7k" V 6634 4000 50  0000 C CNN
F 2 "" V 6680 4000 50  0001 C CNN
F 3 "~" H 6750 4000 50  0001 C CNN
	1    6750 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 4000 5900 4000
Wire Wire Line
	5900 4000 5900 3850
Connection ~ 5900 3850
Wire Wire Line
	5900 3850 6000 3850
Wire Wire Line
	6900 4000 7050 4000
Wire Wire Line
	7050 3550 7050 4000
Connection ~ 7050 4000
Wire Wire Line
	7050 4000 7450 4000
$Comp
L Device:R R?
U 1 1 5FABAC30
P 7450 4350
AR Path="/5FA13C5B/5FABAC30" Ref="R?"  Part="1" 
AR Path="/5FA2254D/5FABAC30" Ref="R?"  Part="1" 
AR Path="/5FA2D703/5FABAC30" Ref="R?"  Part="1" 
AR Path="/5FA2D8AA/5FABAC30" Ref="R?"  Part="1" 
AR Path="/5FAA1B38/5FABAC30" Ref="R?"  Part="1" 
AR Path="/5FABA858/5FABAC30" Ref="R35"  Part="1" 
F 0 "R35" H 7380 4304 50  0000 R CNN
F 1 "1.5k" H 7380 4395 50  0000 R CNN
F 2 "" V 7380 4350 50  0001 C CNN
F 3 "~" H 7450 4350 50  0001 C CNN
	1    7450 4350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FABAC31
P 7450 4500
AR Path="/5FA13C5B/5FABAC31" Ref="#PWR?"  Part="1" 
AR Path="/5FA2254D/5FABAC31" Ref="#PWR?"  Part="1" 
AR Path="/5FA2D703/5FABAC31" Ref="#PWR?"  Part="1" 
AR Path="/5FA2D8AA/5FABAC31" Ref="#PWR?"  Part="1" 
AR Path="/5FAA1B38/5FABAC31" Ref="#PWR?"  Part="1" 
AR Path="/5FABA858/5FABAC31" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 7450 4250 50  0001 C CNN
F 1 "GND" H 7455 4327 50  0000 C CNN
F 2 "" H 7450 4500 50  0001 C CNN
F 3 "" H 7450 4500 50  0001 C CNN
	1    7450 4500
	1    0    0    -1  
$EndComp
Connection ~ 7450 4000
Wire Wire Line
	7450 2750 7450 2850
$Comp
L Transistor_BJT:BC550 Q10
U 1 1 5FABAC40
P 6950 3350
F 0 "Q10" H 7141 3396 50  0000 L CNN
F 1 "BC550" H 7141 3305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7150 3275 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 6950 3350 50  0001 L CNN
F 4 "Q" H 6950 3350 50  0001 C CNN "Spice_Primitive"
F 5 "BC846B" H 6950 3350 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6950 3350 50  0001 C CNN "Spice_Netlist_Enabled"
	1    6950 3350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC560 Q11
U 1 1 5FABAC41
P 7350 3050
F 0 "Q11" H 7541 3096 50  0000 L CNN
F 1 "BC560" H 7541 3005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7550 2975 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC556BTA-D.pdf" H 7350 3050 50  0001 L CNN
F 4 "Q" H 7350 3050 50  0001 C CNN "Spice_Primitive"
F 5 "BC556B" H 7350 3050 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7350 3050 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7350 3050
	1    0    0    1   
$EndComp
Text HLabel 8250 4000 2    50   Input ~ 0
OUT
$Comp
L Device:CP C?
U 1 1 5FABAC32
P 7900 4000
AR Path="/5FA985E0/5FABAC32" Ref="C?"  Part="1" 
AR Path="/5FAA1B38/5FABAC32" Ref="C?"  Part="1" 
AR Path="/5FABA858/5FABAC32" Ref="C17"  Part="1" 
F 0 "C17" V 8155 4000 50  0000 C CNN
F 1 "1u" V 8064 4000 50  0000 C CNN
F 2 "" H 7938 3850 50  0001 C CNN
F 3 "~" H 7900 4000 50  0001 C CNN
	1    7900 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FABAC3F
P 8150 4300
AR Path="/5FA2D9EA/5FABAC3F" Ref="R?"  Part="1" 
AR Path="/5FA985E0/5FABAC3F" Ref="R?"  Part="1" 
AR Path="/5FAA1B38/5FABAC3F" Ref="R?"  Part="1" 
AR Path="/5FABA858/5FABAC3F" Ref="R36"  Part="1" 
F 0 "R36" V 7943 4300 50  0000 C CNN
F 1 "10k" V 8034 4300 50  0000 C CNN
F 2 "" V 8080 4300 50  0001 C CNN
F 3 "~" H 8150 4300 50  0001 C CNN
	1    8150 4300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FABAC33
P 8150 4450
AR Path="/5FA2D9EA/5FABAC33" Ref="#PWR?"  Part="1" 
AR Path="/5FA985E0/5FABAC33" Ref="#PWR?"  Part="1" 
AR Path="/5FAA1B38/5FABAC33" Ref="#PWR?"  Part="1" 
AR Path="/5FABA858/5FABAC33" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 8150 4200 50  0001 C CNN
F 1 "GND" H 8155 4277 50  0000 C CNN
F 2 "" H 8150 4450 50  0001 C CNN
F 3 "" H 8150 4450 50  0001 C CNN
	1    8150 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4000 7750 4000
$Comp
L power:+15V #PWR?
U 1 1 5FABAC45
P 5200 3150
AR Path="/5FA13C5B/5FABAC45" Ref="#PWR?"  Part="1" 
AR Path="/5FA2254D/5FABAC45" Ref="#PWR?"  Part="1" 
AR Path="/5FA2D703/5FABAC45" Ref="#PWR?"  Part="1" 
AR Path="/5FA2D8AA/5FABAC45" Ref="#PWR?"  Part="1" 
AR Path="/5FAA1B38/5FABAC45" Ref="#PWR?"  Part="1" 
AR Path="/5FA8C0FD/5FABAC45" Ref="#PWR?"  Part="1" 
AR Path="/5FABA858/5FABAC45" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 5200 3000 50  0001 C CNN
F 1 "+15V" H 5215 3323 50  0000 C CNN
F 2 "" H 5200 3150 50  0001 C CNN
F 3 "" H 5200 3150 50  0001 C CNN
	1    5200 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3600 5200 3850
Wire Wire Line
	5200 3850 5500 3850
Connection ~ 5200 3850
Wire Wire Line
	5200 3850 5200 4150
Wire Wire Line
	5200 4200 5200 4150
Connection ~ 5200 4150
$Comp
L Device:R R?
U 1 1 5FAC3CAB
P 6400 4350
AR Path="/5FA13C5B/5FAC3CAB" Ref="R?"  Part="1" 
AR Path="/5FA2254D/5FAC3CAB" Ref="R?"  Part="1" 
AR Path="/5FA2D703/5FAC3CAB" Ref="R?"  Part="1" 
AR Path="/5FA2D8AA/5FAC3CAB" Ref="R?"  Part="1" 
AR Path="/5FAA1B38/5FAC3CAB" Ref="R?"  Part="1" 
AR Path="/5FABA858/5FAC3CAB" Ref="R32"  Part="1" 
F 0 "R32" H 6330 4304 50  0000 R CNN
F 1 "100k" H 6330 4395 50  0000 R CNN
F 2 "" V 6330 4350 50  0001 C CNN
F 3 "~" H 6400 4350 50  0001 C CNN
	1    6400 4350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FAC3CB1
P 6400 4500
AR Path="/5FA13C5B/5FAC3CB1" Ref="#PWR?"  Part="1" 
AR Path="/5FA2254D/5FAC3CB1" Ref="#PWR?"  Part="1" 
AR Path="/5FA2D703/5FAC3CB1" Ref="#PWR?"  Part="1" 
AR Path="/5FA2D8AA/5FAC3CB1" Ref="#PWR?"  Part="1" 
AR Path="/5FAA1B38/5FAC3CB1" Ref="#PWR?"  Part="1" 
AR Path="/5FABA858/5FAC3CB1" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 6400 4250 50  0001 C CNN
F 1 "GND" H 6405 4327 50  0000 C CNN
F 2 "" H 6400 4500 50  0001 C CNN
F 3 "" H 6400 4500 50  0001 C CNN
	1    6400 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3850 6400 4200
Wire Wire Line
	8050 4000 8150 4000
Wire Wire Line
	7450 4000 7450 4200
Wire Wire Line
	8150 4150 8150 4000
Connection ~ 8150 4000
Wire Wire Line
	8150 4000 8250 4000
$EndSCHEMATC