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
* BEGIN MODEL LMH6624
* PINOUT ORDER +IN -IN +V -V OUT
* PINOUT ORDER  1   2   3  4  5
.SUBCKT LMH6624 1 2 3 4 5
* BEGIN MODEL PROGRAMMING
* R40 SETS SLEW FOR +- 6.0 VOLT OPERATION
R40 39 31 164
* R40 SETS SLEW FOR +- 2.5 VOLT OPERATION
*R40 39 31 183
* TO PROGRAM FOR OTHER TOTAL SUPPLY VOLTAGES,
* PROPORTION THE VALUE OF R40 BETWEEN THE
* VALUES ABOVE
* END MODEL PROGRAMMING
Q17 4 6 7 QOP
Q21 3 8 7 QON
D5 5 3 DD
D6 4 5 DD
D7 9 0 DIN
D8 10 0 DIN
I8 0 9 0.1E-3
I9 0 10 0.1E-3
E2 11 0 4 0 1
E3 12 0 3 0 1
D9 13 0 DVN
D10 14 0 DVN
I10 0 13 2E-3
I11 0 14 2E-3
E4 15 2 13 14 0.4
G2 1 15 9 10 1.05E-4
R22 4 3 11.67E3
E5 16 0 12 0 1
E6 17 0 11 0 1
E7 18 0 19 0 1
R30 16 20 1E5
R31 17 21 1E5
R32 18 22 1E5
R33 0 20 10
R34 0 21 10
R35 0 22 10
E10 23 1 22 0 0.5
R36 24 19 1E3
R37 19 25 1E3
C6 16 20 100E-12
C7 17 21 2E-12
C8 18 22 0.7E-12
E11 26 23 21 0 0.095
E12 27 26 20 0 0.02
Q22 11 28 8 QDP
Q23 12 28 6 QDN
I12 3 4 10.37E-3
I13 12 8 0.6E-3
I14 6 11 0.6E-3
R38 0 29 10
R39 0 28 10
C9 29 0 36E-12
C10 28 0 12E-12
E15 30 31 32 0 1
E16 31 33 32 0 1
E17 34 0 31 0 1
D11 35 12 DD
D12 11 36 DD
V11 33 36 1.397
V12 35 30 1.417
I15 0 37 1E-3
D13 37 0 DD
V13 32 37 -0.6551
C11 31 0 8.5E-12
D14 38 39 DD
D15 39 40 DD
R41 0 39 225E3
C12 15 0 1.8E-12
C13 27 0 1.8E-12
R43 7 41 3.5
G3 29 0 31 0 0.1
G4 28 0 29 0 0.1
L1 41 5 4E-9
R45 41 5 100
E20 38 34 32 0 1
E21 40 34 32 0 -1
C15 15 27 2E-12
G5 39 0 42 43 -7.5E-3
R49 44 45 0.1
R50 44 46 0.1
I16 12 47 2E-3
R51 42 48 333
R52 43 48 333
V14 44 49 0.65
V15 12 48 -0.2
C17 42 43 0.2E-12
D18 50 51 DIC
D19 27 51 DIC
E25 25 0 1 0 1
E26 24 0 15 0 1
C18 5 0 0.1E-12
R58 31 30 1E9
R59 33 31 1E9
R60 2 15 1E9
R61 1 23 1E9
R62 23 26 1E9
R63 26 27 1E9
V16 15 50 0.04E-3
R64 34 40 1E9
R65 34 38 1E9
Q28 42 50 45 QIN
Q29 43 27 46 QIN
Q30 49 47 11 QIN
Q31 47 47 11 QIN
D20 11 50 DIC
D21 11 27 DIC
V17 12 51 1.0
RN1 32 0 1E9
.MODEL DD D
.MODEL DVN D KF=1E-14
.MODEL DIN D KF=26E-14
.MODEL DIC D RS=50
.MODEL QDP PNP
.MODEL QDN NPN
.MODEL QON NPN VAF=150 BF=250 IKF=1 RE=1 RC=9
.MODEL QOP PNP VAF=150 BF=250 IKF=1 RE=1 RC=9
.MODEL QIN NPN VAF=150 BF=90 IKF=0.005 RE=1 RC=1
.ENDS
* END MODEL LMH6624
