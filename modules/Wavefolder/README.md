![module](https://img.shields.io/badge/module-other-yellow)
![status](https://img.shields.io/badge/status-work%20in%20progress-orange)

## *wavefolder*

A wavefolder is a device that creates complex waveforms from simple waveshapes. This is the yusynth wavefolder \[[1]\] from Yvess Usson, which itself is based on the design by Jürgen Haible \[[2]\]. The wavefolding is conrolled by a VCA.  

## *build*

The gerber files are part of the release. It should be possible to directly order them from your manufacturer. <a href="https://spielhuus.github.io/elektrophon/images/wavefolder-panel.jpg"><img width="200" align="right" src="wavefolder-logo_tmb.jpg"></a>But check the result on the preview when you order them. The parts are in the [BOM](BOM.md), there are no special parts needed for this build. <br/><br/><br/><br/><br/>

## *calibrate*

Set RV3 & Rv4 to mid-range.

Connect the sinewave generator (freq. 1KHz, 10Vpp) to input 1, RV2 (range) turned fully clockwise (maximum signal).

Connect the sinewave generator to the first input of your scope.

Connect CV1 to 0V and turn RV1 fully clockwise (maximum gain).

Connect the output of the VCA (pin 1 of U2a) to the second input of the scope.

Adjust the trimmer RV4 in order to have a perfectly symmetrical sine wave at the output (the best way is to superimpose the 
trace of the sinewave at input and the one at the output). You may have also to play slightly with A2 as well to reduce gain if you have saturation on both the positive and negative crests of the output sinewave.

Next, turn P1 fully counter-clockwise (no CV). Adjust A2 in order to completly mute the output signal.

## *use*

Connect a gate signal to the *IN* of the ADSR and the *OUT* to a VCA or VCF:

**IN** a gate singal for the length of the ADS singal.

**OUT** a gate singal for the length of the ADS singal.

**OUT** a gate singal for the length of the ADS singal.

**OUT** a gate singal for the length of the ADS singal.

## links

1) This is a tribute to the [wavefolder][1] from Yvess Usson, which is derived from various other [wavefolders][2].

---
[![CC BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)

[1]: http://www.yusynth.net/Modular/EN/WAVEFOLDER/index.html
[2]: http://jhaible.com/legacy/jh_wavefolder.html

