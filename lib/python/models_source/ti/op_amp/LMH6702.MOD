*//////////////////////////////////////////////////////////////////////
* (C) National Semiconductor, Corporation.
* Models developed and under copyright by:
* National Semiconductor, Corporation.  
*/////////////////////////////////////////////////////////////////////
* Legal Notice:  
* The model may be copied, and distributed without any modifications;
* however, reselling or licensing the material is illegal.
* We reserve the right to make changes to the model without prior notice. 
* Pspice Models are provided "AS IS, WITH NO WARRANTY OF ANY KIND" 
*////////////////////////////////////////////////////////////////////
* For more information, and our latest models,
* please visit the models section of our website at
*       http://www.national.com/models/
*////////////////////////////////////////////////////////////////////
* BEGIN MODEL LMH6702
* PINOUT ORDER +IN -IN +V -V OUT
* PINOUT ORDER  3   4   5  2  1
.SUBCKT LMH6702 3 4 5 2 1
*
******* IMPORTANT NOTE *******
* RESISTOR R42 BELOW MUST BE VARIED DEPENDING ON
* AMPLIFIER CONFIGURATION FOR ACCURATE BANDWIDTH.
* IF THE AMPLIFIER IS USED IN A NON-INVERTING
* CONFIGURATION R42 SHOULD BE 80 OHMS. IN AN
* INVERTING CONFIGURATION R42 SHOULD BE 33 OHMS.
* RESISTOR VALUE IS NOW SET FOR NON-INVERTING.
******************************
*
R42 39 41 80
*
******************************
R30 16 20 1E4
R31 17 21 1E4
R32 18 22 1E4
R33 0 20 1
R34 0 21 1
R35 0 22 1
E10 23 3 22 0 0.15
C6 16 20 15E-12
C7 17 21 15E-12
C8 18 22 0.1E-12
E11 24 23 21 0 4.3
E12 25 24 20 0 3
Q22 11 26 8 QDP
Q23 12 26 6 QDN
I12 5 2 11.74E-3
I13 12 8 0.8E-3
I14 6 11 0.8E-3
R38 0 27 10
R39 0 26 10
C9 27 0 10E-12
C10 26 0 4E-12
Q17 2 6 7 QOP
Q21 5 8 7 QON
D5 1 5 DD
D6 2 1 DD
D7 9 0 DIP
D8 10 0 DIP
I8 0 9 0.1E-3
I9 0 10 0.1E-3
E2 11 0 2 0 1
E3 12 0 5 0 1
D9 13 0 DVN
D10 14 0 DVN
I10 0 13 0.1M
I11 0 14 0.1M
E4 15 4 13 14 0.8
G2 3 0 9 10 1.45E-3
R22 2 5 200E3
E5 16 0 12 0 1
E6 17 0 11 0 1
E7 18 0 19 0 1
E15 28 29 30 0 1
E16 29 31 30 0 1
E17 32 0 29 0 1
D11 33 12 DD
D12 11 34 DD
V11 31 34 2
V12 33 28 2
I15 0 35 1M
D13 35 0 DD
V13 30 35 -0.71465
C11 29 0 2.5E-12
D14 36 37 DD
D15 37 38 DD
R40 37 29 92
R41 0 37 2E5
F1 37 0 V14 -2.6
E18 39 0 40 0 0.998
C12 15 0 0.4E-12
C13 25 0 1.6E-12
V14 41 42 0
R43 7 43 1.5
G3 27 0 29 0 0.1
G4 26 0 27 0 0.1
C14 7 0 2E-12
L1 43 1 2N
R45 43 1 100
E20 36 32 30 0 1
E21 38 32 30 0 -1
I16 15 0 -8E-6
I17 25 0 -6E-6
V15 40 25 1E-3
D16 44 0 DIN
D17 45 0 DIN
I18 0 44 0.1E-3
I19 0 45 0.1E-3
G5 4 0 44 45 9.7E-3
E22 46 0 15 0 1
E23 47 0 3 0 1
R46 46 19 1E3
R47 19 47 1E3
R48 19 0 1E6
R49 3 23 1E9
R50 23 24 1E9
R51 24 25 1E9
R52 48 29 1E9
R53 0 48 1E9
R54 0 29 1E9
R55 0 38 1E9
R56 0 36 1E9
R57 30 0 1E9
L4 15 42 1N
R63 15 42 100
C16 15 25 0.1E-12
V17 12 49 3.17
V18 50 11 3.17
J1 49 15 49 JI
J2 49 25 49 JI
J3 15 50 15 JI
J4 25 50 25 JI
RG1 40 0 1E9
.MODEL QDP PNP
.MODEL QDN NPN
.MODEL DD D
.MODEL JI NJF IS=1E-18 RD=100 RS=100
.MODEL DC D IS=5.002E-16
.MODEL DVN D KF=1.1E-15
.MODEL DIP D KF=4E-15
.MODEL DIN D KF=3.4E-15
.MODEL QON NPN VAF=150 BF=150 IKF=0.7 RE=2 RC=1
.MODEL QOP PNP VAF=150 BF=150 IKF=0.7 RE=2 RC=1
.ENDS
* END MODEL LMH6702
