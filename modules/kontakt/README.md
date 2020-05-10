![module](https://img.shields.io/badge/module-other-yellow)
![status](https://img.shields.io/badge/status-work%20in%20progress-orange)

# MIDI

When building modules for the synthesizer they also needs to be controller. For example the pitch of a VCO. In the modular world modules are controller with control volages (CV). There are various sources for a CV. For example a sequencer, ADSR but also an LFO or the DUSG. But when creating music the CV's might get complex for a sequencer and the series of voltages must be reproducable. For this purpose a [DAW](https://en.wikipedia.org/wiki/Digital_audio_workstation) on a computer can be used. The standard interface controlling audio is [MIDI](https://en.wikipedia.org/wiki/MIDI). This is a digital protocol, including note's notation, pitch, velocity. This digital information needs to be converted to CV's. The default connector for MIDI is a [180° five-pin DIN](https://en.wikipedia.org/wiki/DIN_connector) connector. Unless you kept your [Atari ST](https://en.wikipedia.org/wiki/Atari_ST) you most likely dont own a device with such an interface. for isolating the circuits from the computer and the synth a wireless protocol is preferend. It also seems the most practical way to connect the two. This module is build with a [blue pill]() [STM32]() module and connects with [bluetooth]() to the computer.

the CV Function Generator creates control voltages of different types. it can act as a standalone oscillator or create envelopes for controlling the pitch. but the channels are freely programmable and can also be used as a simple sequenver with variable cv output. this module should create sexteen individual controllable slopes or waveforms.instead of creating different dac and trigger channels, all channels slopes are created with a dac. every dac is freely assignable to a controll channel. the control channels are serial midi, envelope gerator, slope generator, cv sequenver. 


## STM32 libraries

* The USB-MIDI Class Driver is based on [mimuz-tuch](https://github.com/mimuz/mimuz-tuch) project (c) [D.F.Mac. @TripArts Music](https://github.com/tadfmac).
* [Simple library for STM32 to work with the PCD8544 LCD display \(a.k.a. Nokia 5110\)](https://github.com/evovch/STM32-LCD_PCD8544)

## MIDI specification

* [MIDI 1.0 Specification](https://www.midi.org/specifications-old/item/the-midi-1-0-specification) (Subscription required)
* [Universal Serial Bus Device Class Definition for MIDI Devices](https://usb.org/sites/default/files/midi10.pdf)

## software

* [SuperLooper](http://www.essej.net/sooperlooper/index.html) Live looping sampler capable of immediate loop recording, overdubbing, multiplying, reversing and more.
* [OpenMPT](https://openmpt.org/) is a popular tracker software for Windows.
* [MusE](http://www.muse-sequencer.org/index.html) is a MIDI/Audio sequencer with recording and editing capabilities.

## STM32 drivers
* [Nokia-LCD5110-HAL](https://github.com/Zeldax64/Nokia-LCD5110-HAL)
* [mi:muz midi driver](https://github.com/mimuz/mimuz-tuch/tree/master/STM32)

## MIDI to CV projects

* [MIDI Module](http://www.experimentalistsanonymous.com/ve3wwg/doku.php?id=analog_synth_midi)
* [midi2cv](https://github.com/elkayem/midi2cv) - Simple midi to CV converter.
* [Little-Scale](http://little-scale.blogspot.com/2017/11/usb-midi-to-eight-gates-and-sixteen-cv.html) - Midi2CV converter based on the Teensy.

---
[![CC BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)
