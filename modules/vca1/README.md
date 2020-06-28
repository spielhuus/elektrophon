![module](https://img.shields.io/badge/module-VCA-yellow)
![status](https://img.shields.io/badge/status-working-green)

# *vca*

A VCA is a fundamental thing for a modular synthesizer. This is the VCA <a href="https://spielhuus.github.io/elektrophon/images/vca-1-logo-tmb.jpg"><img align="right" src="https://spielhuus.github.io/elektrophon/images/vca-1-logo-tmb.jpg"></a> version from Thomas Henry \[[1][1]]\. This VCA is built around the CA3080 OTA chip. The CA3080 is not produced anymore. But like many other chip it can be bought on the chinese market. This verson has three inputs, which can also be used as a mixer, without the feeding an envelope.  If only the gate or velocity of the midi module is conncted the notes plays individually, with the velocity it can be controlled with low or high volume. with another VCO connected to the CV in a tremolo effect can be created.  The schematic is quite simple and easy to build. There are three stages. In the Input stage is an inverting summing aplifier. This mixes the three input signal. Each signal has a capacitor which can connected with a switch. The capacitor will decouple an DC signal and level it around 0V. This will help mixing AC and DC signals at the same time. Mixing a DC signal can also create a click at the begeinning og the trigger signal. the second stage uses a CA3080 as voltage controlled resistor.

## *building*
<a href="https://spielhuus.github.io/elektrophon/images/vca-1-logo-tmb.jpg"><img align="right" src="https://spielhuus.github.io/elektrophon/images/VCA-side_tmb.jpg"></a> The gerber files are part of the release. It should be possible to directly order them from your manufacturer. But check the result on the preview when you order them. The parts are in the [BOM](BOM.md), there are no special parts needed for this build. <br/><br/><br/><br/><br/><br/><br/><br/><br/>

## *calibration*

Run a square wave of about 100 Hz into the CV. turn all the potentiometer to minimum and the *initial* to 50% (or less if you run a strong signal). Connect the out to an amplifier. Now adjust the trimpot until the signal is silent. You may also want to further adjust the trimpot when an input signal and envelope is connected. 

## *use*

Connect a envelope signal to the **env** of the VCA and the **OUT** to a mixer or amplifier:

**#1,#2,#3** the input signal.

**ac/dc** remove a dc offset. if there is any.

**vol** control the volume of each signal

**atten** atenuation of the mixed signal

**initial** initial volume of the signal mix, if turned full of the module is a mixer

## *links*

1) [Thomas Henry: VCA1][1]

---
[![CC BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)

[1]: http://birthofasynth.com/Thomas_Henry/Pages/VCA-1.html
