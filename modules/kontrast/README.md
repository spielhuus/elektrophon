![module](https://img.shields.io/badge/module-mischer-yellow)
![status](https://img.shields.io/badge/status-work%20in%20progress-orange)

## *kontrast*

<a href="https://photos.app.goo.gl/pg6iZUC32rTKX5LC7"><img src="https://spielhuus.github.io/elektrophon/images/kontrast-logo-tmb.jpg" height="200px" align="right"></a>kontrast ist a simple mixer utility module. it can be used as a **fixed voltage source**, **mixer**, **attenuator**, **attenuverter** or **phase shifter**. the function depends on the patching and settings of the potentiometers. kontrast does not do any ac or dc coupling. the output signal will correspond to the phase of the input signal. 

this is my first smd build. i created this one to try smd soldering with a hot air soldering station. i was able to place the whole circuit on the mount panel. this saves a complete pcb for this build. give your first smd build a try...

## *build*

<a href="https://spielhuus.github.io/elektrophon/schemas/kontrast.pdf"><img src="https://spielhuus.github.io/elektrophon/images/kontrast-schema-tmb.png" height="150px" align="right"></img></a> The gerber files are part of the release. It should be possible to directly order them from your manufacturer. But check the result on the preview when you order them. The parts are in the [BOM](BOM.md), there are no special parts needed for this build.<br/><br/>

## *calibrate*

there is no calibration needed. but the potentiomenter knobs have to be aliged to center position. 

* connect the channel out to a scope.
* turn the potentiometer until you measure zero voltage on the scope
* mount the knob in center position.
* repeat for all channels

## *use*

the input jacks are wired to 5 volts when nothing is connected.

all channels are mixed to the out jack. when something is connected to the channel out, this channel is removed from the overall mix.

_static voltage source_
* connect out of a channel to the cv of a vco.
* turn the potentiometer of the channel.
* the pitch of the vco will change.

_mixer_
* connect the different channels from audio or cv sources to the in jacks.
* connect the out jack to something
* turn the pots clockwise to adjust the volume.

_attenuverter_
* connect all or a single channel. 
* when you turn the pot knob counter clockwise the signal is inverted.

_phase shifter_
* connect the signal to one one channel.
* adjust the pot of an unconnected channel to change the center position.
<br/><br/>

---
[![CC BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)

[1]: https://en.wikipedia.org/wiki/Envelope_(music)
