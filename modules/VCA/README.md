![module](https://img.shields.io/badge/module-VCA-yellow)
![status](https://img.shields.io/badge/status-working-green)

# VCA

A VCA is a fundamental thing for a modular synthesizer. This is the VCA version from Thomas <a href="https://spielhuus.github.io/elektrophon/images/VCA-panel.jpg"><img align="right" src="https://spielhuus.github.io/elektrophon/images/VCA-title.jpg"></a> Henry. This VCA is built around the CA3080 OTA chip. The CA3080 is not produced anymore. But like many other chip it can be bought on the chinese market. I did not at the line out from the original module. This verson has three inputs, which can also be used as a mixer, without the feeding an envelope.  If only the gate or velocity of the midi module is conncted the notes plays individually, with the velocity it can be controlled with low or high volume. with another VCO connected to the CV in a tremolo effect can be created.  The schematic is quite simple and easy to build. There are three stages. In the Input stage is an inverting summing aplifier. This mixes the three input signal. Each signal has a capacitor which can connected with a switch. The capacitor will decouple an DC signal and level it around 0V. This will help mixing AC and DC signals at the same time. Mixing a DC signal can also create a click at the begeinning og the trigger signal. the second stage uses a CA3080 as voltage controlled resistor. The signal is  

## building
<a href="https://spielhuus.github.io/elektrophon/images/VCA-side.jpg"><img align="right" src="https://spielhuus.github.io/elektrophon/images/VCA-side.jpg"></a>

## calibration

With the offset trimmer (RV6) the control voltage feedthrough can be adjusted. here is the original description from Thomas Henry:

<pre>
Here's how I adjust the offset:  Run a square wave of say 100 Hz into the Variable CV.  This is probably +/-5V, so set the Atten pot to 50%.  You now have +/-2.5V.  Dial the Initial control to shift this up to 0 to +5V.  The point is, you now have a 0 to +5V square wave modulating the thing.  Don't connect anything to the Audio inputs, and connect the Line Out to an amplifier.
 
Now just listen and adjust the offset trim for minimal feedthrough.
 
In short, I find my ears to be much better than test equipment for adjusting this thing. 
</pre>


## links

1) [Thomas Henry: VCA1](http://birthofasynth.com/Thomas_Henry/Pages/VCA-1.html)

---
[![CC BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)
