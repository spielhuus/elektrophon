*//////////////////////////////////////////////////////////////////////
* (C) National Semiconductor, Inc.
* Models developed and under copyright by:
* National Semiconductor, Inc.  

*/////////////////////////////////////////////////////////////////////
* Legal Notice: This material is intended for free software support.
* The file may be copied, and distributed; however, reselling the 
*  material is illegal

*////////////////////////////////////////////////////////////////////
* For ordering or technical information on these models, contact:
* National Semiconductor's Customer Response Center
*                 7:00 A.M.--7:00 P.M.  U.S. Central Time
*                                (800) 272-9959
* For Applications support, contact the Internet address:
*  amps-apps@galaxy.nsc.com
* ///////////////////////////////////////////////////////////////////
* User Notes:
*
* 1. Input resistance (Rin) for these JFET op amps is 1TOhm.  Rin is
*    modeled by assuming the option GMIN=1TOhm.  If a different (non-
*    default) GMIN value is needed, users may recalculate as follows:
*    Rin=(R1||GMIN+R2||GMIN), where R1=R2,
*    to maintain a consistent Rin model.

*//////////////////////////////////////////////////////////
*LF356 Monolithic JFET-Input OP-AMP MACRO-MODEL
*//////////////////////////////////////////////////////////
*
* connections:    non-inverting input
*                 |   inverting input
*                 |   |   positive power supply
*                 |   |   |   negative power supply
*                 |   |   |   |   output
*                 |   |   |   |   |
*                 |   |   |   |   |
.SUBCKT LF356/NS  1   2  99  50  28
*
*Features:
*Low input bias current =             30pA
*Low input offset current =            3pA
*High input impedance =              1Tohm
*Low input offset voltage =            1mV
*
****************INPUT STAGE************** 
*
IOS 2 1 3P
*^Input offset current
R1 1 3 1E12
R2 3 2 1E12
I1 99 4 100U
J1 5 2 4 JX
J2 6 7 4 JX
R3 5 50 20K
R4 6 50 20K
*Fp2=20 MHz
C4 5 6 1.9894E-13
*
***********COMMON MODE EFFECT***********
*
I2 99 50 4.65MA
*^Quiescent supply current
EOS 7 1 POLY(1) 16 49 3E-3 1
*Input offset voltage.^
R8 99 49 50K
R9 49 50 50K
*
*********OUTPUT VOLTAGE LIMITING********
V2 99 8 2.63
D1 9 8 DX
D2 10 9 DX
V3 10 50 2.63
*
**************SECOND STAGE**************
*
EH 99 98 99 49 1
F1 9 98 POLY(1) VA3 0 0 0 1.5944E7
G1 98 9 5 6 2E-3
R5 98 9 100MEG
VA3 9 11 0
*Fp1=31.96 HZ
C3 98 11 49.9798P
*
*********COMMON-MODE ZERO STAGE*********
*
G4 98 16 3 49 1E-8
L2 98 17 530.52M
R13 17 16 1K
*
**************OUTPUT STAGE**************
*
F6  99 50 VA7 1
F5  99 23 VA8 1
D5  21 23 DX
VA7 99 21 0
D6  23 99 DX
E1  99 26 99 9 1
VA8 26 27 0
R16 27 28 20
V5  28 25 -.25V
D4  25  9 DX
V4  24 28 -.25V
D3   9 24 DX
*
***************MODELS USED**************
*
.MODEL DX D(IS=1E-15)
.MODEL JX PJF(BETA=1.25E-5 VTO=-2.00 IS=30E-12)
*
.ENDS
*$
