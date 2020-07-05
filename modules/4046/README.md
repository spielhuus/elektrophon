![module](https://img.shields.io/badge/module-VCO-yellow)
![status](https://img.shields.io/badge/status-work%20in%20progress-orange)

 # *4046*
<a href="https://photos.app.goo.gl/NhE2TPGxzUfEHXZ19"><img align="right" src="https://spielhuus.github.io/elektrophon/images/4046-logo-tmb.jpg" height="200px"></img></a>
this is a very robust cmos vco from thomas henry [[1][1]]. the heart of this vco is the CD4046 phased locked loop chip. altough this module is build around the cmos 4046 phased locked loop chip, it is not comparable to other luneta vco's. the tracking is very stable and it has all the features you will expect from a standard vco. scott writes all the best about the sync function. i can not find it very special, but give it a try and decide yourself. the 4046 chip shall not be from texas instruments, because it is reported that this one is hard or impossible to tune. of course this is the easyiest to get these days. i used the phillips HEF4046. i like it to use a chip with the Phillips logo on it, i remember that logo from when i was a child. nevertheless, in my opinion it is worth the money and effort.

## *building*

<a href="https://spielhuus.github.io/elektrophon/schemas/4046.pdf"><img align="right" src="https://spielhuus.github.io/elektrophon/images/4046-schemas.png" height="100px"></img></a> the gerber files are part of the release. it should be possible to directly order them from your manufacturer. but check the result on the preview when you order them. The parts are in the [BOM](BOM.md). with the exception of the 4046 chip there are no special parts needed for this build.

## *calibration*

the different waveforms are combined out of different parts and you will have to combine those by calibrating the vco. i recommend doing that with an oszilloscope.

connect your scope to the triangle wave output. 
bring the oscillator to 1kHz with the coarse and fine adjustments. 
then you can calibrate the triangle wave. as you can see in the scope there is a falling and raising slope. use the two triangle connect trimpots (TC1/2) to bring them together.

 ## *links*

* [THOMAS HENRY: THE X-4046][1] the cmos vco design by Thomas Henry.


---
[![CC BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)



[1]:http://birthofasynth.com/Thomas_Henry/Pages/X-4046.html
