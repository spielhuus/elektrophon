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
L Transistor_BJT:BC547 Q1
U 1 1 5F2E6438
P 3250 3350
F 0 "Q1" H 3441 3396 50  0000 L CNN
F 1 "BC547" H 3441 3305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3450 3275 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 3250 3350 50  0001 L CNN
F 4 "Q" H 3250 3350 50  0001 C CNN "Spice_Primitive"
F 5 "BC547B" H 3250 3350 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3250 3350 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/BC547.mod" H 3250 3350 50  0001 C CNN "Spice_Lib_File"
	1    3250 3350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q3
U 1 1 5F2E6936
P 4200 3350
F 0 "Q3" H 4391 3396 50  0000 L CNN
F 1 "BC547" H 4391 3305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4400 3275 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4200 3350 50  0001 L CNN
F 4 "Q" H 4200 3350 50  0001 C CNN "Spice_Primitive"
F 5 "BC547B" H 4200 3350 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4200 3350 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/BC547.mod" H 4200 3350 50  0001 C CNN "Spice_Lib_File"
	1    4200 3350
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q4
U 1 1 5F2E85AA
P 5550 3350
F 0 "Q4" H 5741 3396 50  0000 L CNN
F 1 "BC547" H 5741 3305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5750 3275 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 5550 3350 50  0001 L CNN
F 4 "Q" H 5550 3350 50  0001 C CNN "Spice_Primitive"
F 5 "BC547B" H 5550 3350 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5550 3350 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/BC547.mod" H 5550 3350 50  0001 C CNN "Spice_Lib_File"
	1    5550 3350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q6
U 1 1 5F2E85B0
P 6500 3350
F 0 "Q6" H 6691 3396 50  0000 L CNN
F 1 "BC547" H 6691 3305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6700 3275 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6500 3350 50  0001 L CNN
F 4 "Q" H 6500 3350 50  0001 C CNN "Spice_Primitive"
F 5 "BC547B" H 6500 3350 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6500 3350 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/BC547.mod" H 6500 3350 50  0001 C CNN "Spice_Lib_File"
	1    6500 3350
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F2E872B
P 3350 2150
F 0 "R1" H 3420 2196 50  0000 L CNN
F 1 "2.2k" H 3420 2105 50  0000 L CNN
F 2 "" V 3280 2150 50  0001 C CNN
F 3 "~" H 3350 2150 50  0001 C CNN
	1    3350 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F2E904F
P 6400 2150
F 0 "R3" H 6470 2196 50  0000 L CNN
F 1 "2.2k" H 6470 2105 50  0000 L CNN
F 2 "" V 6330 2150 50  0001 C CNN
F 3 "~" H 6400 2150 50  0001 C CNN
	1    6400 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2000 3350 1750
Wire Wire Line
	6400 1750 6400 2000
$Comp
L Transistor_BJT:BC547 Q2
U 1 1 5F2EE9EB
P 3650 4300
F 0 "Q2" H 3841 4346 50  0000 L CNN
F 1 "BC547" H 3841 4255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3850 4225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 3650 4300 50  0001 L CNN
F 4 "Q" H 3650 4300 50  0001 C CNN "Spice_Primitive"
F 5 "BC547B" H 3650 4300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3650 4300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/BC547.mod" H 3650 4300 50  0001 C CNN "Spice_Lib_File"
	1    3650 4300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q5
U 1 1 5F2EFC02
P 6150 4300
F 0 "Q5" H 6341 4346 50  0000 L CNN
F 1 "BC547" H 6341 4255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6350 4225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6150 4300 50  0001 L CNN
F 4 "Q" H 6150 4300 50  0001 C CNN "Spice_Primitive"
F 5 "BC547B" H 6150 4300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6150 4300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/BC547.mod" H 6150 4300 50  0001 C CNN "Spice_Lib_File"
	1    6150 4300
	-1   0    0    -1  
$EndComp
$Comp
L power:+15V #PWR07
U 1 1 5F2EFAA3
P 4850 1600
F 0 "#PWR07" H 4850 1450 50  0001 C CNN
F 1 "+15V" H 4865 1773 50  0000 C CNN
F 2 "" H 4850 1600 50  0001 C CNN
F 3 "" H 4850 1600 50  0001 C CNN
	1    4850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1600 4850 1750
Connection ~ 4850 1750
Text GLabel 2400 3350 0    50   Input ~ 0
AUDIO_IN
$Comp
L pspice:VSOURCE V4
U 1 1 5F379424
P 3650 7100
F 0 "V4" H 3878 7146 50  0000 L CNN
F 1 "VSOURCE" H 3878 7055 50  0000 L CNN
F 2 "" H 3650 7100 50  0001 C CNN
F 3 "~" H 3650 7100 50  0001 C CNN
F 4 "V" H 3650 7100 50  0001 C CNN "Spice_Primitive"
F 5 "dc 5 ac 5 sin(4 100m 1k)" H 3650 7100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3650 7100 50  0001 C CNN "Spice_Netlist_Enabled"
	1    3650 7100
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V5
U 1 1 5F379C72
P 4650 7100
F 0 "V5" H 4878 7146 50  0000 L CNN
F 1 "VSOURCE" H 4878 7055 50  0000 L CNN
F 2 "" H 4650 7100 50  0001 C CNN
F 3 "~" H 4650 7100 50  0001 C CNN
F 4 "V" H 4650 7100 50  0001 C CNN "Spice_Primitive"
F 5 "dc 12" H 4650 7100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4650 7100 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4650 7100
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V6
U 1 1 5F37A3F7
P 5600 7050
F 0 "V6" H 5828 7096 50  0000 L CNN
F 1 "VSOURCE" H 5828 7005 50  0000 L CNN
F 2 "" H 5600 7050 50  0001 C CNN
F 3 "~" H 5600 7050 50  0001 C CNN
F 4 "V" H 5600 7050 50  0001 C CNN "Spice_Primitive"
F 5 "dc -12" H 5600 7050 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5600 7050 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5600 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5F37AAD8
P 3650 7400
F 0 "#PWR04" H 3650 7150 50  0001 C CNN
F 1 "GND" H 3655 7227 50  0000 C CNN
F 2 "" H 3650 7400 50  0001 C CNN
F 3 "" H 3650 7400 50  0001 C CNN
	1    3650 7400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5F37B679
P 4650 7400
F 0 "#PWR06" H 4650 7150 50  0001 C CNN
F 1 "GND" H 4655 7227 50  0000 C CNN
F 2 "" H 4650 7400 50  0001 C CNN
F 3 "" H 4650 7400 50  0001 C CNN
	1    4650 7400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5F37B9C8
P 5600 7350
F 0 "#PWR010" H 5600 7100 50  0001 C CNN
F 1 "GND" H 5605 7177 50  0000 C CNN
F 2 "" H 5600 7350 50  0001 C CNN
F 3 "" H 5600 7350 50  0001 C CNN
	1    5600 7350
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR05
U 1 1 5F37C8F4
P 4650 6800
F 0 "#PWR05" H 4650 6650 50  0001 C CNN
F 1 "+15V" H 4665 6973 50  0000 C CNN
F 2 "" H 4650 6800 50  0001 C CNN
F 3 "" H 4650 6800 50  0001 C CNN
	1    4650 6800
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR09
U 1 1 5F37D116
P 5600 6750
F 0 "#PWR09" H 5600 6850 50  0001 C CNN
F 1 "-15V" H 5615 6923 50  0000 C CNN
F 2 "" H 5600 6750 50  0001 C CNN
F 3 "" H 5600 6750 50  0001 C CNN
	1    5600 6750
	1    0    0    -1  
$EndComp
Text GLabel 3650 6800 1    50   Input ~ 0
AUDIO_IN
$Comp
L pspice:VSOURCE V3
U 1 1 5F383046
P 3000 7050
F 0 "V3" H 3228 7096 50  0000 L CNN
F 1 "VSOURCE" H 3228 7005 50  0000 L CNN
F 2 "" H 3000 7050 50  0001 C CNN
F 3 "~" H 3000 7050 50  0001 C CNN
F 4 "V" H 3000 7050 50  0001 C CNN "Spice_Primitive"
F 5 "dc 5 ac 5 sin(2 100m 10)" H 3000 7050 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3000 7050 50  0001 C CNN "Spice_Netlist_Enabled"
	1    3000 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5F38304C
P 3000 7350
F 0 "#PWR03" H 3000 7100 50  0001 C CNN
F 1 "GND" H 3005 7177 50  0000 C CNN
F 2 "" H 3000 7350 50  0001 C CNN
F 3 "" H 3000 7350 50  0001 C CNN
	1    3000 7350
	1    0    0    -1  
$EndComp
Text GLabel 3000 6750 1    50   Input ~ 0
CV
Text Notes 850  6250 0    50   ~ 0
.tran 1u 100m
Wire Wire Line
	3350 1750 4850 1750
Wire Wire Line
	4850 1750 6400 1750
Wire Wire Line
	3350 3100 5650 3100
Wire Wire Line
	5650 3100 5650 3150
Connection ~ 3350 3100
Wire Wire Line
	3350 3100 3350 3150
Wire Wire Line
	6400 2950 4100 2950
Wire Wire Line
	4100 2950 4100 3150
Connection ~ 6400 2950
Wire Wire Line
	6400 2950 6400 3150
Wire Wire Line
	3750 4500 3750 4750
Wire Wire Line
	6050 4500 6050 4750
Wire Wire Line
	2400 3350 2700 3350
Wire Wire Line
	2700 3350 2700 3850
Wire Wire Line
	2700 3850 6850 3850
Wire Wire Line
	6850 3850 6850 3350
Wire Wire Line
	6850 3350 6700 3350
Connection ~ 2700 3350
Wire Wire Line
	2700 3350 3050 3350
$Comp
L Device:R R2
U 1 1 5F383F0E
P 4850 5750
F 0 "R2" H 4920 5796 50  0000 L CNN
F 1 "51" H 4920 5705 50  0000 L CNN
F 2 "" V 4780 5750 50  0001 C CNN
F 3 "~" H 4850 5750 50  0001 C CNN
	1    4850 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4300 3450 4300
Text GLabel 3150 4300 0    50   Input ~ 0
CV
$Comp
L power:GND #PWR08
U 1 1 5F43F1F9
P 4850 5900
F 0 "#PWR08" H 4850 5650 50  0001 C CNN
F 1 "GND" H 4855 5727 50  0000 C CNN
F 2 "" H 4850 5900 50  0001 C CNN
F 3 "" H 4850 5900 50  0001 C CNN
	1    4850 5900
	1    0    0    -1  
$EndComp
Text GLabel 6600 2500 2    50   Input ~ 0
OUT_A
Text GLabel 6600 2700 2    50   Input ~ 0
OUT_B
Wire Wire Line
	6600 2700 6400 2700
Wire Wire Line
	3350 2300 3350 2500
Connection ~ 3350 2500
Wire Wire Line
	3350 2500 3350 3100
Connection ~ 6400 2700
Wire Wire Line
	6400 2700 6400 2950
Wire Wire Line
	6400 2300 6400 2700
Wire Wire Line
	3350 2500 6600 2500
Wire Wire Line
	3350 3550 3750 3550
Wire Wire Line
	5650 3550 6050 3550
Wire Wire Line
	3750 3550 3750 4100
Connection ~ 3750 3550
Wire Wire Line
	3750 3550 4100 3550
Wire Wire Line
	6050 4100 6050 3550
Connection ~ 6050 3550
Wire Wire Line
	6050 3550 6400 3550
Wire Wire Line
	4400 3350 5350 3350
Text GLabel 4850 3350 3    50   Input ~ 0
4V
Text GLabel 6350 4300 2    50   Input ~ 0
2V
$Comp
L pspice:VSOURCE V2
U 1 1 5F3B3263
P 2000 7100
F 0 "V2" H 2228 7146 50  0000 L CNN
F 1 "VSOURCE" H 2228 7055 50  0000 L CNN
F 2 "" H 2000 7100 50  0001 C CNN
F 3 "~" H 2000 7100 50  0001 C CNN
F 4 "V" H 2000 7100 50  0001 C CNN "Spice_Primitive"
F 5 "dc 4" H 2000 7100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2000 7100 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2000 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F3B3269
P 2000 7400
F 0 "#PWR02" H 2000 7150 50  0001 C CNN
F 1 "GND" H 2005 7227 50  0000 C CNN
F 2 "" H 2000 7400 50  0001 C CNN
F 3 "" H 2000 7400 50  0001 C CNN
	1    2000 7400
	1    0    0    -1  
$EndComp
Text GLabel 2000 6800 1    50   Input ~ 0
4V
$Comp
L pspice:VSOURCE V1
U 1 1 5F3B3273
P 1350 7050
F 0 "V1" H 1578 7096 50  0000 L CNN
F 1 "VSOURCE" H 1578 7005 50  0000 L CNN
F 2 "" H 1350 7050 50  0001 C CNN
F 3 "~" H 1350 7050 50  0001 C CNN
F 4 "V" H 1350 7050 50  0001 C CNN "Spice_Primitive"
F 5 "dc 2 ac 5" H 1350 7050 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1350 7050 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1350 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5F3B3279
P 1350 7350
F 0 "#PWR01" H 1350 7100 50  0001 C CNN
F 1 "GND" H 1355 7177 50  0000 C CNN
F 2 "" H 1350 7350 50  0001 C CNN
F 3 "" H 1350 7350 50  0001 C CNN
	1    1350 7350
	1    0    0    -1  
$EndComp
Text GLabel 1350 6750 1    50   Input ~ 0
2V
$Comp
L Transistor_BJT:BC547 Q8
U 1 1 5F394714
P 4750 5400
F 0 "Q8" H 4941 5446 50  0000 L CNN
F 1 "BC547" H 4941 5355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4950 5325 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4750 5400 50  0001 L CNN
F 4 "Q" H 4750 5400 50  0001 C CNN "Spice_Primitive"
F 5 "BC547B" H 4750 5400 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4750 5400 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/BC547.mod" H 4750 5400 50  0001 C CNN "Spice_Lib_File"
	1    4750 5400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q7
U 1 1 5F395CC5
P 4350 5400
F 0 "Q7" H 4541 5446 50  0000 L CNN
F 1 "BC547" H 4541 5355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4550 5325 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4350 5400 50  0001 L CNN
F 4 "Q" H 4350 5400 50  0001 C CNN "Spice_Primitive"
F 5 "BC547B" H 4350 5400 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4350 5400 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/etienne/Documents/elektrophon/lib/spice/transistor/BC547.mod" H 4350 5400 50  0001 C CNN "Spice_Lib_File"
	1    4350 5400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4250 5200 4550 5200
Wire Wire Line
	4550 5200 4550 5400
Connection ~ 4550 5400
$Comp
L Device:R R5
U 1 1 5F39BDEB
P 4250 5750
F 0 "R5" H 4320 5796 50  0000 L CNN
F 1 "100" H 4320 5705 50  0000 L CNN
F 2 "" V 4180 5750 50  0001 C CNN
F 3 "~" H 4250 5750 50  0001 C CNN
	1    4250 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5F39BDF1
P 4250 5900
F 0 "#PWR011" H 4250 5650 50  0001 C CNN
F 1 "GND" H 4255 5727 50  0000 C CNN
F 2 "" H 4250 5900 50  0001 C CNN
F 3 "" H 4250 5900 50  0001 C CNN
	1    4250 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5F39C6C6
P 3700 5200
F 0 "R4" H 3770 5246 50  0000 L CNN
F 1 "3.9k" H 3770 5155 50  0000 L CNN
F 2 "" V 3630 5200 50  0001 C CNN
F 3 "~" H 3700 5200 50  0001 C CNN
	1    3700 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 4750 4850 4750
Wire Wire Line
	4850 4750 4850 5200
Connection ~ 4850 4750
Wire Wire Line
	4850 4750 6050 4750
Wire Wire Line
	4250 5200 3850 5200
Connection ~ 4250 5200
$Comp
L pspice:VSOURCE V7
U 1 1 5F3A6840
P 6600 7050
F 0 "V7" H 6828 7096 50  0000 L CNN
F 1 "VSOURCE" H 6828 7005 50  0000 L CNN
F 2 "" H 6600 7050 50  0001 C CNN
F 3 "~" H 6600 7050 50  0001 C CNN
F 4 "V" H 6600 7050 50  0001 C CNN "Spice_Primitive"
F 5 "dc 5" H 6600 7050 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6600 7050 50  0001 C CNN "Spice_Netlist_Enabled"
	1    6600 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5F3A6846
P 6600 7350
F 0 "#PWR012" H 6600 7100 50  0001 C CNN
F 1 "GND" H 6605 7177 50  0000 C CNN
F 2 "" H 6600 7350 50  0001 C CNN
F 3 "" H 6600 7350 50  0001 C CNN
	1    6600 7350
	1    0    0    -1  
$EndComp
Text GLabel 6600 6750 1    50   Input ~ 0
5V
Text GLabel 3550 5200 0    50   Input ~ 0
5V
$EndSCHEMATC
