![module](https://img.shields.io/badge/module-mischer-yellow)
![status](https://img.shields.io/badge/status-work%20in%20progress-orange)

# *kontrast*

<a href="https://photos.app.goo.gl/pg6iZUC32rTKX5LC7"><img src="https://spielhuus.github.io/elektrophon/images/kontrast-logo-tmb.jpg" height="300px" align="right"></a>

***table of contents***

* [*about*](#about)
* [*construction*](#construction)
* [*calibration*](#calibration)
* [*usage*](#usage)
* [*references*](#lreferences)
* [*changelog*](#changelog)

<br/><br/>

## *about*

kontrast ist a simple mixer utility module. it can be used as a **mixer**, **attenuator** or **attenuverter** for ac or dc signals. the function depends on the patching and settings of the potentiometers. an attenuverter is used in different modules like the  Serge VCS, Maths and also in the polivoks filter. while this module can be used as a simple mixer you can also adjust cv signals. such a signal can be simply attenuated or inverted. when feeding in a positive singal slope (for example from an adsr). the signal will be turned to a neagative dc singal. if the inpout signal is ac coupled the signal will be inverted. the function is the setting on the potentiometer of the channel. when the potentiometer is at center position. the output signal is attenuated to zero. no output singal is present. when turning to the right. the signal will be stronger until the output signal is equal to the input signal. when turning the potentiomenter to the left, the output signal will be phase shifted by 180°. when you turn the potentiometer to full left the output signal will be the inverted input signal. all the inputs are mixed to the output signal; unless you connect the output of a channel. then this output does not accure on the mixed signal.

the attenuverter is build around a differential amplifier with an opamp. 




![svg](README_files/README_7_0.svg)






$\displaystyle Vout = \frac{R_{4} Vin_{2} \left(1 + \frac{R_{2}}{R_{1}}\right)}{R_{3} + R_{4}} - \frac{R_{2} Vin}{R_{1}}$



the circuit of the attenuverter is based on the opamp dfferential amplifer. the two resistors at the non-inverting inputs are replaced with a potentiometer. the potentiometer is configured as a voltage divider and replace R3 and R4 from the differential amplifier. when the position of the potentiometer is adjusted, the output voltage will change or invert. at the center position  the output is zero volrs. the response to the potentiometer is linear. we can make it an centered s-curve by adding two parallel resistors (R5,R6) to the potentiometer [[2][2]].




![svg](README_files/README_10_0.svg)



a simulation with the resistance at RV 1 changed from 0-100%. first run is the linear result. the second run is done with the resistors R5 and R6 added. This results in a s curve. the shape of the curve can be changed with the values of the resistors.


![svg](README_files/README_12_0.svg)


## construction

because the channel is silent at potentometer center position, it would be nice to use a potentometer that has a center decent. such potientometers are not easy to find. some examples are [[10][10]]


<img src="main/main.svg"/>


Kicad Schema!


    .title KiCad schematic
    .include /home/etienne/Documents/elektrophon/lib/spice/diode/led.lib
    .include /home/etienne/Documents/elektrophon/lib/spice/diode/1N4148.mod
    .include /home/etienne/Documents/elektrophon/lib/spice/transistor/BC547.mod
    .include /home/etienne/Documents/elektrophon/lib/spice/opamp/OPA2134.LIB
    .include /home/etienne/Documents/elektrophon/lib/spice/opamp/OPA2134-dual.lib
    .subckt XU1 OUT INVERTING NON_INVERTING POWER_NEGATIVE POWER_POSITIVE
    X1 NON_INVERTING INVERTING POWER_POSITIVE POWER_NEGATIVE OUT OPA2134
    .ends XU1
    
    .subckt voltage_divider_1 n1 n2 n3
    R1 n1 n2 0.0kOhm
    R2 n2 n3 100.0kOhm
    .ends voltage_divider_1
    
    .subckt voltage_divider_2 n1 n2 n3
    R1 n1 n2 50.0kOhm
    R2 n2 n3 50.0kOhm
    .ends voltage_divider_2
    
    .subckt voltage_divider_3 n1 n2 n3
    R1 n1 n2 50.0kOhm
    R2 n2 n3 50.0kOhm
    .ends voltage_divider_3
    
    .subckt voltage_divider_4 n1 n2 n3
    R1 n1 n2 50.0kOhm
    R2 n2 n3 50.0kOhm
    .ends voltage_divider_4
    
    .subckt jack_out n1 n2 n3
    R1 n1 n3 1Ohm
    .ends jack_out
    VJ1 Net-_J1-PadT_ 0 dc 5 sin(0 5 1k)
    R28 Net-_R27-Pad2_ Net-_J10-PadT_ 1k
    XRV1 0 Net-_R1-Pad1_ Net-_J1-PadT_ voltage_divider_1
    R9 Net-_R13-Pad2_ Net-_J1-PadT_ 100k
    R13 Net-_R13-Pad1_ Net-_R13-Pad2_ 100k
    XU1 Net-_R13-Pad1_ Net-_R13-Pad2_ Net-_R1-Pad1_ -15V Net-_R3-Pad1_ Net-_R10-Pad1_ Net-_R14-Pad1_ +15V OPA2134d
    R1 Net-_R1-Pad1_ Net-_J1-PadT_ 33k
    R2 0 Net-_R1-Pad1_ 33k
    R21 /MIX_1 Net-_R21-Pad2_ 100k
    R25 Net-_R21-Pad2_ Net-_R25-Pad2_ 100k
    R26 Net-_R25-Pad2_ Net-_R26-Pad2_ 100k
    R27 Net-_R26-Pad2_ Net-_R27-Pad2_ 100k
    XU2 Net-_R15-Pad1_ Net-_R11-Pad1_ Net-_R5-Pad1_ -15V Net-_R7-Pad1_ Net-_R12-Pad1_ Net-_R16-Pad1_ +15V OPA2134d
    VJ2 Net-_J2-PadT_ 0 dc 5 sin(0 5 2k)
    XRV2 0 Net-_R3-Pad1_ Net-_J2-PadT_ voltage_divider_2
    R10 Net-_R10-Pad1_ Net-_J2-PadT_ 100k
    R14 Net-_R14-Pad1_ Net-_R10-Pad1_ 100k
    R3 Net-_R3-Pad1_ Net-_J2-PadT_ 33k
    R4 0 Net-_R3-Pad1_ 33k
    R22 /MIX_2 Net-_R21-Pad2_ 100k
    XU3 Net-_R25-Pad2_ Net-_R21-Pad2_ 0 -15V 0 Net-_R26-Pad2_ Net-_R27-Pad2_ +15V OPA2134d
    VJ3 Net-_J3-PadT_ 0 dc 5 sin(0 5 4k)
    XRV3 0 Net-_R5-Pad1_ Net-_J3-PadT_ voltage_divider_3
    R11 Net-_R11-Pad1_ Net-_J3-PadT_ 100k
    R15 Net-_R15-Pad1_ Net-_R11-Pad1_ 100k
    R5 Net-_R5-Pad1_ Net-_J3-PadT_ 33k
    R6 0 Net-_R5-Pad1_ 33k
    R23 /MIX_3 Net-_R21-Pad2_ 100k
    VJ4 Net-_J4-PadT_ 0 dc 5 sin(0 5 8k)
    XRV4 0 Net-_R7-Pad1_ Net-_J4-PadT_ voltage_divider_4
    R12 Net-_R12-Pad1_ Net-_J4-PadT_ 100k
    R16 Net-_R16-Pad1_ Net-_R12-Pad1_ 100k
    R7 Net-_R7-Pad1_ Net-_J4-PadT_ 33k
    R8 0 Net-_R7-Pad1_ 33k
    R24 /MIX_4 Net-_R21-Pad2_ 100k
    XJ5 Net-_J5-PadT_ 0 /MIX_1 jack_out
    R17 Net-_R13-Pad1_ Net-_J5-PadT_ 1k
    XJ6 Net-_J6-PadT_ 0 /MIX_2 jack_out
    R18 Net-_R14-Pad1_ Net-_J6-PadT_ 1k
    XJ7 Net-_J7-PadT_ 0 /MIX_3 jack_out
    R19 Net-_R15-Pad1_ Net-_J7-PadT_ 1k
    XJ8 Net-_J8-PadT_ 0 /MIX_4 jack_out
    R20 Net-_R16-Pad1_ Net-_J8-PadT_ 1k
    R29 Net-_D1-Pad2_ /MIX_1 12k
    D1 Net-_C9-Pad2_ Net-_D1-Pad2_ D1N4148
    Q1 +15V Net-_C9-Pad2_ Net-_D2-Pad2_ BC547B
    C10 +15V 0 100n
    D2 Net-_D2-Pad1_ Net-_D2-Pad2_ LED2
    R30 0 Net-_D2-Pad1_ 470
    C9 0 Net-_C9-Pad2_ 100n
    V1 +15V 0 15V
    V2 -15V 0 -15V
    


simulation to check the attenuation function. 


![svg](README_files/README_17_0.svg)



![svg](README_files/README_18_0.svg)


test the led voltage


![svg](README_files/README_20_0.svg)


tests

    test_add (__main__.TestKontrast) ... 

    
    
    MIX1: -4.950430, MIX2: 4.950384, MIX3: -0.000024, MIX4: -0.000024, OUT: -0.000109


    ok
    
    ----------------------------------------------------------------------
    Ran 1 test in 0.019s
    
    OK





    <unittest.main.TestProgram at 0x7f7ad5072b50>



## *calibration*

there is no calibration needed. but the potentiomenter knobs have to be aliged to center position.

## *usage*

the input jacks are wired to 5 volts when nothing is connected.

all channels are mixed to the out jack. when something is connected to the channel out, this channel is removed from the overall mix.

_mixer_
* connect the different channels from audio or cv sources to the in jacks.
* connect the out jack to something
* turn the pots clockwise to adjust the volume.

_attenuverter_
* connect all or a single channel. 
* when you turn the pot knob counter clockwise the signal is inverted.


## *references*

- [Op Amp Differential Amplifier][1] eCircuit  Center
- [Beginners' Guide to Potentiometers][2]  Rod Elliott (ESP)

[1]: http://www.ecircuitcenter.com/Circuits/opdif/opdif.htm
[2]: https://sound-au.com/pots.htm
[10]: https://www.mouser.ch/ProductDetail/ALPS/RK09L114001T?qs=Xb8IjHhkxj78e5CYccfZWg%3D%3D


## *changelog*



---
[![CC BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)
