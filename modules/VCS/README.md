## voltage vontrolled slope (CGS75)

<a href="https://spielhuus.github.io/elektrophon/images/adsr-panel.jpg"><img width="200" align="right" src="https://spielhuus.github.io/elektrophon/images/adsr-titel_tmb.jpg"></a>
The voltage controlled slope (vcs) is the masterpeace of the serge synth. The most popular clone of the vcs is Native Instruments Math module. This is a very basic module that does not support any of the add ons like attenuator nor ringmodulator. 

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

