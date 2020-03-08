EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Echo"
Date "2020-03-08"
Rev "01"
Comp ""
Comment1 "Echo circuit using the PT2399"
Comment2 "Schema for panel"
Comment3 ""
Comment4 "License CC BY 4.0 - Attribution 4.0 International"
$EndDescr
$Comp
L Mechanical:MountingHole H1
U 1 1 5D6B047C
P 4250 2950
F 0 "H1" H 4350 2996 50  0000 L CNN
F 1 "MIX" H 4350 2905 50  0000 L CNN
F 2 "elektrophon:panel_potentiometer" H 4250 2950 50  0001 C CNN
F 3 "~" H 4250 2950 50  0001 C CNN
	1    4250 2950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5D6B07F8
P 4250 2300
F 0 "H2" H 4350 2346 50  0000 L CNN
F 1 "delay cv" H 4350 2255 50  0000 L CNN
F 2 "elektrophon:panel_jack" H 4250 2300 50  0001 C CNN
F 3 "~" H 4250 2300 50  0001 C CNN
	1    4250 2300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5DAC225A
P 5250 2250
F 0 "H3" H 5350 2296 50  0000 L CNN
F 1 "delay atten" H 5350 2205 50  0000 L CNN
F 2 "elektrophon:panel_potentiometer" H 5250 2250 50  0001 C CNN
F 3 "~" H 5250 2250 50  0001 C CNN
	1    5250 2250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H7
U 1 1 5E64C030
P 5250 1700
F 0 "H7" H 5350 1746 50  0000 L CNN
F 1 "recirc atten" H 5350 1655 50  0000 L CNN
F 2 "elektrophon:panel_potentiometer" H 5250 1700 50  0001 C CNN
F 3 "~" H 5250 1700 50  0001 C CNN
	1    5250 1700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H8
U 1 1 5E64C036
P 5250 2900
F 0 "H8" H 5350 2946 50  0000 L CNN
F 1 "delay" H 5350 2855 50  0000 L CNN
F 2 "elektrophon:panel_potentiometer" H 5250 2900 50  0001 C CNN
F 3 "~" H 5250 2900 50  0001 C CNN
	1    5250 2900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H10
U 1 1 5E64C03C
P 5250 4050
F 0 "H10" H 5350 4096 50  0000 L CNN
F 1 "OUT" H 5350 4005 50  0000 L CNN
F 2 "elektrophon:panel_jack" H 5250 4050 50  0001 C CNN
F 3 "~" H 5250 4050 50  0001 C CNN
	1    5250 4050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5E64C2FE
P 4250 1700
F 0 "H4" H 4350 1746 50  0000 L CNN
F 1 "recirc" H 4350 1655 50  0000 L CNN
F 2 "elektrophon:panel_jack" H 4250 1700 50  0001 C CNN
F 3 "~" H 4250 1700 50  0001 C CNN
	1    4250 1700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 5E64C60D
P 4250 3500
F 0 "H5" H 4350 3546 50  0000 L CNN
F 1 "IN1" H 4350 3455 50  0000 L CNN
F 2 "elektrophon:panel_jack" H 4250 3500 50  0001 C CNN
F 3 "~" H 4250 3500 50  0001 C CNN
	1    4250 3500
	1    0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole H9
U 1 1 5E64C8D3
P 5250 3500
F 0 "H9" H 5350 3546 50  0000 L CNN
F 1 "IN2" H 5350 3455 50  0000 L CNN
F 2 "elektrophon:panel_jack" H 5250 3500 50  0001 C CNN
F 3 "~" H 5250 3500 50  0001 C CNN
	1    5250 3500
	1    0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 5E64F2E8
P 4250 4050
F 0 "H6" H 4350 4096 50  0000 L CNN
F 1 "delay OUT" H 4350 4005 50  0000 L CNN
F 2 "elektrophon:panel_jack" H 4250 4050 50  0001 C CNN
F 3 "~" H 4250 4050 50  0001 C CNN
	1    4250 4050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
