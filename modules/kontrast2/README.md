![module](https://img.shields.io/badge/module-mischer-yellow)
![status](https://img.shields.io/badge/status-work%20in%20progress-orange)

# *kontrast*

<a href="https://photos.app.goo.gl/pg6iZUC32rTKX5LC7"><img src="https://spielhuus.github.io/elektrophon/images/kontrast-logo-tmb.jpg" height="300px" align="right"></a>

## *table of contents*

* [*about*](#about)
* [*construction*](#construction)
* [*calibration*](#calibration)
* [*usage*](#usage)
* [*reference*](#lreference)
* [*changelog*](#changelog)

<br/><br/>

## *about*

kontrast ist a simple mixer utility module. it can be used as a **mixer**, **attenuator** or **attenuverter** for ac or dc signals. the function depends on the patching and settings of the potentiometers. an attenuverter is used in different modules like the  Serge VCS, Maths and also in the polivoks filter. while this module can be used as a simple mixer you can also adjust cv signals. such a signal can be simply attenuated or inverted. when feeding in a positive singal slope (for example from an adsr). the signal will be turned to a neagative dc singal. if the inpout signal is ac coupled the signal will be inverted. the function is the setting on the potentiometer of the channel. when the potentiometer is at center position. the output signal is attenuated to zero. no output singal is present. when turning to the right. the signal will be stronger until the output signal is equal to the input signal. when turning the potentiomenter to the left, the output signal will be phase shifted by 180°. when you turn the potentiometer to full left the output signal will be the inverted input signal. all the inputs are mixed to the output signal; unless you connect the output of a channel. then this output does not accure on the mixed signal.




![svg](README_files/README_5_0.svg)






$\displaystyle Vout = \frac{R_{4} Vin_{2} \left(1 + \frac{R_{2}}{R_{1}}\right)}{R_{3} + R_{4}} - \frac{R_{2} Vin}{R_{1}}$



the circuit of the attenuverter is based on the opamp dfferential amplifer. the two resistors at the non-inverting inputs are replaced with a potentiometer. the potentiometer is configured as a voltage divider and replace R3 and R4 from the differential amplifier. when the position of the potentiometer is adjusted, the output voltage will change or invert. at the center position  the output is zero volrs. the response to the potentiometer is linear. we can make it an centered s-curve by adding two parallel resistors (R5,R6) to the potentiometer [[2][2]].


![svg](README_files/README_8_0.svg)


the rest of the circuit is straight forwarn an opamp mixer at the output followed by an inverting amplifier with a gain of 1.

## construction

because the channel is silent at potentometer center position, it would be nice to use a potentometer that has a center decent. such potientometers for panel mount are rare. 


<img src="main/main.svg"/>



![svg](README_files/README_11_0.svg)


    .title KiCad schematic
    .include /home/etienne/Documents/elektrophon/lib/spice/transistor/OPA2134.LIB
    .subckt XU1 OUT INVERTING NON_INVERTING POWER_NEGATIVE POWER_POSITIVE
    X1 NON_INVERTING INVERTING POWER_POSITIVE POWER_NEGATIVE OUT OPA2134
    .ends XU1
    
    .subckt voltage_divider n1 n2 n3
    R1 n1 n2 0.0kOhm
    R2 n2 n3 10.0kOhm
    .ends voltage_divider
    VJ1 Net-_J1-PadT_ 0 dc 5 ac 0 sin(0 5 1k)
    R3 Net-_R27-Pad2_ Net-_J2-PadT_ 1k
    XRV1 0 Net-_R4-Pad1_ Net-_J1-PadT_ voltage_divider
    R1 Net-_R1-Pad1_ Net-_J1-PadT_ 10k
    R2 /MIX_1 Net-_R1-Pad1_ 10k
    XU1 Net-_R4-Pad1_ Net-_R1-Pad1_ +15V -15V /MIX_1 OPA2134
    R4 Net-_R4-Pad1_ Net-_J1-PadT_ 2.2k
    R5 0 Net-_R4-Pad1_ 2.2k
    R21 /MIX_1 Net-_R21-Pad2_ 10k
    R25 Net-_R21-Pad2_ Net-_R25-Pad2_ 10k
    R26 Net-_R25-Pad2_ Net-_R26-Pad2_ 10k
    R27 Net-_R26-Pad2_ Net-_R27-Pad2_ 10k
    XU2 0 Net-_R21-Pad2_ +15V -15V Net-_R25-Pad2_ OPA2134
    XU3 0 Net-_R26-Pad2_ +15V -15V Net-_R27-Pad2_ OPA2134
    V1 +15V 0 15V
    V2 -15V 0 -15V
    



![svg](README_files/README_13_0.svg)



![svg](README_files/README_14_0.svg)


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


## *reference*

* Rod Elliott (ESP) [Beginners' Guide to Potentiometers][2] 

[1]: https://wikipedia.org
[2]: https://sound-au.com/pots.htm

## *history*



---
[![CC BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)
