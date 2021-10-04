![module](https://img.shields.io/badge/module-other-yellow)
![status](https://img.shields.io/badge/status-work%20in%20progress-orange)

## Voltage Controlled Slope (CGS75)

<a href="https://spielhuus.github.io/elektrophon/images/adsr-panel.jpg"><img width="200" align="right" src="https://spielhuus.github.io/elektrophon/images/adsr-titel_tmb.jpg"></a>
The Serge voltage controlled slope (VCS) is a versatile control voltage generator and audio source. The original module was released in conjunction with bananalogue.com. In the early 1970s, Serge Tcherepnin developed the Positive Slew and Negative Slew modules for the original Serge synthesizer. In time these merged into the classic Dual Universal Slope Generator. The Bananalogue VCS and CGS75 are an adaptation of Serge's original circuit with a few new features. The successor of this modules is the MATHS from Make Noise. The MATHS is a dual slope generator which contaons attenuverter and and OR output. The attenuverter is suggested on Ken Stones schema. Because of the size of the moudle i have not added this extras.

To begin with this module has two modes. The module can be triggered with a pulse signal. The pulse signal is then converted to a 

A voltage controlled slope (vcs) is possible the most versatile module of the serge synth. this module let you control the fall and rise rate of an existing slope or a trigger signal. 

the masterpeace of the serge synth. The most popular clone of the vcs is Native Instruments Math module. This is a very basic module that does not support any of the add ons like attenuator nor ringmodulator. 

The VCS is a unity gain voltage follower. The rising and falling slopes are independently and jointly voltage controllable over a wide range.

*VC Transient Envelope Generator* A pulse at the trigger input will start the envelope, or a gate input will sustain the level and the envelope will fall when the gate goes low. Rise and fall are independently and jointly voltage controllable, with variable linear and exponential wave shapes.

*VC Portamento* Voltage is slewed according to the rise and fall times.

*VC LFO* When the cycle switch is thrown, the trigger input is connected internally to the end trigger output, creating a VC clock with variable waveform and independent rise and fall times.

*VC Oscillator* While not as wide ranged, or accurate as a dedicated oscillator module, the VCS is still an excellent audio source. The Exp CV input is scaled approximately to the 1v/oct standard. The Output wave can be swept from triangle to saw with linear and non-linear waveforms. End Out also produces a pulse waveform.

*VC Non-Linear Audio Processor (Low-Pass Gate)* If an audio rate signal is slewed, the module responds like a VCF, and a rough VCA. The signal is low-pass filtered down to silence, similar to a low-pass gate.

*Envelope Follower* Positive and negative peak detection envelope follower.

*VC Pulse Delay* Trigger input starts the envelope and a trigger will be produced again at the End Out when the envelope completes its cycle.

*Sub-Harmonic Generator* If a series of triggers are applied to the VCS faster than the total rise and fall times, the module will divide the incoming signal by a whole number. In the audio range the output will be the sub-harmonic series.

## *build*

<a href="https://spielhuus.github.io/elektrophon/images/adsr-mount.jpg"><img width="200" align="left" src="https://spielhuus.github.io/elektrophon/images/adsr-mount_tmb.jpg"></a> Before you start assembly, check the board for etching faults. Look for any shorts between tracks, or open circuits due to over etching. Take this opportunity to sand the edges of the board if needed, removing any splinters or rough edges. (With the boards supplied by me, the edges are already milled, and etching faults are very rare.)

When you are happy with the printed circuit board, construction can proceed as normal, starting with the resistors first, followed by the IC socket if used, then moving onto the taller components.

Take particular care with the orientation of the polarized components such as electrolytics, diodes, transistors and ICs.

When inserting ICs into sockets, take care not to accidentally bend any of the pins under the chip. Also, make sure the notch on the chip is aligned with the notch marked on the PCB overlay.

A problem in the genuine Serge is that cycle locks up at various frequencies due to a charge inbalance in the trigger circuit. If you experience this problem, it can be solved by changing the 10n capacitor to 1n. These changes are marked on the circuit diagram.

## *calibrate*



## *use*

Connect a gate signal to the *IN* of the ADSR and the *OUT* to a VCA or VCF:

<a href="https://spielhuus.github.io/elektrophon/images/adsr-mount.jpg"><img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/ADSR_parameter.svg/320px-ADSR_parameter.svg.png"></a>

Bipolar out gives an inverted signal.

AC out gives the non-inverted signal, but centered around 0V.


**IN** a gate singal for the length of the ADS singal.

**OUT** the final envelope.

**Attack** is the time taken for initial run-up of level from nil to peak, beginning when the key is pressed.

**Decay** is the time taken for the subsequent run down from the attack level to the designated sustain level.

**Sustain** is the level during the main sequence of the sound's duration, until the key is released.

**Release** is the time taken for the level to decay from the sustain level to zero after the key is released.


## *links*



## building

<a href="https://spielhuus.github.io/elektrophon/images/4046-side.jpg"><img align="left" src="https://spielhuus.github.io/elektrophon/images/4046-side-tmb.jpg" height="300px"></img></a>


## calibration


 ## Links

* [Ken Stone: CGS75](https://www.elby-designs.com/webtek/cgs/serge/cgs75/cgs75_vcs.html) Voltage Controlled Slope.
* [Tim Stinchcombe: Serge VCS - How it Works](http://www.timstinchcombe.co.uk/index.php?pge=vcs)


---
[![CC BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)

