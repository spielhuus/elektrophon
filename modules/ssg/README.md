![module](https://img.shields.io/badge/module-other-yellow)
![status](https://img.shields.io/badge/status-not%20working-red)

## *smooth and stepped generator*

the serge **s**mooth and **s**tepped **g**enerator is a versatile module. <a href="https://spielhuus.github.io/elektrophon/images/ssg-panel.jpg"><img align="right" src="https://spielhuus.github.io/elektrophon/images/ssg-panel-tmb.jpg" height="300px"></img></a>it can be used as a sample and hold module, a portamento or a simple triangle voltage conrolled lfo and many more applications. but the module wont do anything until you patch the application you want to use it for. this makes this module difficult to use. see the patch section for examples on how to use it. like many of the modules from ken stone it is built around the norton amplifier (LM3900). but all the parts are still active and available from the standard distributors.

## *building*

patch the cycle output of the smooth section into the input. you should get a oscillating signal on the smooth output. adjust it with the rate potentiometer.

## *calibration*

### *calibrate the smooth section*

* patch the cycle output of the smooth section into the input. 
* connect the smooth output to a scope. 
* turn the rate potentiometer to minimum.
* adjust RV1 until you get an oscillating signal in the suboudio range

## *usage*

here are some examples patches, all of there are taken from [serge-fans][2]

### *linear glide*

* patch the output of a CV source into the smooth input
* patch the smooth output to an oscillator
* turn the rate potentiometer to control the speed of the glide

### *exponential glide*

* same patch as above
* patch between smooth out to cv
* comtrol the glide with the level potentiometer

### *vc lfo (triangle) or vco*

* patch the cycle output of the smooth section into the input. 

Run a short patch cord from IN to CYCLE.  You should see the LED go from dim to bright to dim in a nice smooth progression.
Patch SMOOTH OUT into a PCO or NTO and hear the pitch rise and fall.
Vary Rate to make it faster or slower. 
Use VC Rate jack & knob to make the frequency voltage controlled.
Patch SMOOTH OUT into your audio output path, whatever it is. 
You can use SMOOTH as a low-end audio VCO.  Note that tracking & stability are NOT as good as PCO, NTO or DSG in this application, but it does give you an extra audio oscillator in a pinch.  This is a triangle wave.

4. VC LFO (square) or CLOCK or VCO
Same basic patch as #3.  Instead of taking the signal from SMOOTH OUT, mult a banana plug into the patch cord connecting IN and CYCLE. 
This is a square wave that jumps from +10VDC to -10VDC approximately.  As in #3 you can use this as an LFO for control voltage applications or as an audio square wave.  Additionally it can be used to clock a sequencer or other module that needs a trigger or clock source. Note: if you use it as a trigger for the Stepped module it creates two triggers for every cycle.  I don't know why exactly but this is what I've observed.  As in #3 you can vary the frequency with a control voltage.

5. Lowpass Filter/Lowpass Gate
Same patch as #1.  Instead of patching a DC control voltage into the input, patch an audio source in, say, any PCO waveform. 
Send SMOOTH OUT to your audio output path.  Notice that the sound is more or less intact at 100% rotation of the Rate knob, and as you turn Rate counterclockwise the harmonics and harshness get filtered and Smoothed out.  Keep turning Rate counterclockwise, the sound will disappear altogether. 

So you can use this to filter harsh harmonics out of audio, or to create an unusual filtered effect.  Use the VC rate knob and jack to make this filtering effect voltage controllable. You can employ this effect to create an audio Gate. 

What's a Gate?  A gate is a general name for a device that lets you either permit or close off an audio signal.  That's usually what you use a VCA for, and VCA's are very high quality examples of gates.  You can use this patch, especially under Voltage Control, as an unusual substitute VCA:
First, set the Rate knob at around 10 o'clock to 12 o'clock, just so your audio is no longer audible at the output. 
Now send a note envelope from DSG, DTG, or Envelope Generator to the VC rate jack, with the VC rate knob turned sufficiently high.  You are creating low quality unusual envelopes where the harmonics are varying with amplitude.  Using harmonic rich input, you have an unusual effect.  Using purer input such as sine or triangle wave yields a more usual or typical result.

### *sample and hold*

* send varying signal from LFO or random source to smooth in
* 

Using a DSG or DTG create a rectangular clock pulse with a 99% duty cycle, that is, mostly 'on,' with a tiny 'off' part. 
Send that pulse into Smooth HOLD.  Turn Smooth Rate fully clockwise. 
Send Smooth Out to a VCO or some other module that needs a control voltage.  Play with the DSG rise/fall times and Smooth Rate. While HOLD is low the Smooth section takes a 'sample', when HOLD is high that sample is held. This should be enough to get you going for a while! More will follow later. John P.

## *Links*

* [ken stone: CGS92][1] Smooth and Stepped Generator.
* get some patch ideas from [serge wizardry][2].

---
[![CC BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)

[1] https://www.elby-designs.com/webtek/cgs/serge/cgs92/cgs92_ssg.html
[1] http://www.serge-fans.com/wizardry.htm
