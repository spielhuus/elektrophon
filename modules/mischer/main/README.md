# Mixer

When you start building your modular synthesizer you could mix the audio signals with some resistors 
<a href="https://spielhuus.github.io/elektrophon/images/Mixerpanel.png"><img src="https://spielhuus.github.io/elektrophon/images/Mixerpanel_tmb.png" height="200px"></img></a>
as a passive mixer. but soon you will need a mixer for your modules. This is a very simple mixer with 4 channels.
The mixer is build with TL072 OPAMP. Both stages of the opamp are setup as an inverting amplifier. There is 
also a LED driver for disaplying the activity on the fromt panel.

A mixer can be AC or DC coupled. AC coupled means that the incput signal is leveled around zero. This is done
with a capacitaor at the input signal. AC coupling has the drawback of canceling low frequency signals 
such as a LFO or drum signal. This mixer is DC coupled. This means that the signals are mixed the way 
they are. If you combine AC and DC signals with this mixer you will get clipping and distortion. 

## links

1) [yusynth: 2U panel mixer](http://www.yusynth.net/Modular/index_en.html)
2) [MFOS Quad 3 Input Audio Mixer](http://musicfromouterspace.com/analogsynth_new/QUAD_AUDSUBMIX/QUAD_AUDSUBMIX.php)
3) [Elliott Sound Products: Audio Signal Mixing](http://sound.whsites.net/articles/audio-mixing.htm)

---
[![CC BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)
