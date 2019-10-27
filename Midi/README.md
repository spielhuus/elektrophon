# MIDI

When building modules for the synthesizer they also needs to be controller. For example the pitch of a VCO. In the modular world modules are controller with control volages (CV). There are various sources for a CV. For example a sequencer, ADSR but also an LFO or the DUSG. But when creating music the CV's might get complex for a sequencer and the series of voltages must be reproducable. For this purpose a [DAW](https://en.wikipedia.org/wiki/Digital_audio_workstation) on a computer can be used. The standard interface controlling audio is [MIDI](https://en.wikipedia.org/wiki/MIDI). This is a digital protocol, including note's notation, pitch, velocity. This digital information needs to be converted to CV's. The default connector for MIDI is a [180° five-pin DIN](https://en.wikipedia.org/wiki/DIN_connector) connector. Unless you kept your [Atari ST](https://en.wikipedia.org/wiki/Atari_ST) you most likely dont own a device with such an interface. for isolating the circuits from the computer and the synth a wireless protocol is preferend. It also seems the most practical way to connect the two. This module is build with a [blue pill]() [STM32]() module and connects with [bluetooth]() to the computer.

the CV Function Generator creates control voltages of different types. it can act as a standalone oscillator or create envelopes for controlling the pitch. but the channels are freely programmable and can also be used as a simple sequenver with variable cv output. this module should create sexteen individual controllable slopes or waveforms.instead of creating different dac and trigger channels, all channels slopes are created with a dac. every dac is freely assignable to a controll channel. the control channels are serial midi, envelope gerator, slope generator, cv sequenver. 



## develop with the STM32

the software is developed with the arduino IDE. before starting you must have installed the arduino software for you OS.

### prepare the arduino IDE

#### install the STM32 board manager

1) add the [STM32 for Arduino](http://dan.drown.org/stm32duino/package_STM32duino_index.json) url to the Additional Boards Manager list in the arduino IDE.
2) 

## midi drivers

the midi 2 vco module requires midi serial support on the controller. for this some extra drivers have to be installed. 


MIDI_CHANNEL_OMNI

https://github.com/FortySevenEffects/arduino_midi_library/wiki

### windows

* [The Hairless MIDI to serial bridge.](http://projectgus.github.io/hairless-midiserial/) connects serial devices (like Arduinos) to send and receive MIDI signals.
* [ttymidi](http://www.varal.org/ttymidi/) is a GPL-licensed program that allows external serial devices to interface with ALSA MIDI applications. 

### linux

## samples

## software

* [SuperLooper](http://www.essej.net/sooperlooper/index.html) Live looping sampler capable of immediate loop recording, overdubbing, multiplying, reversing and more.
* [OpenMPT] https://openmpt.org/) is a popular tracker software for Windows.
* [MusE](http://www.muse-sequencer.org/index.html) is a MIDI/Audio sequencer with recording and editing capabilities.

https://de.wikipedia.org/wiki/Tracker_(Musik)

## rotary encoder

https://www.best-microcontroller-projects.com/rotary-encoder.html
https://www.lelong.com.my/rotary-encoder-arduino-robotic-respberry-littlecraft-175999578-2020-04-Sale-P.htm

## links

* [Loop Midi](http://www.tobias-erichsen.de/software/loopmidi.html)
* [Arduino-BLE-MIDI](https://github.com/lathoub/Arduino-BLE-MIDI)
* [arduino_midi_library
](https://github.com/FortySevenEffects/arduino_midi_library)
* [STM32 Programming](https://www.onetransistor.eu/2018/09/stm32cube-code-init-bluepill.html) Programm the STM32 using STM32CubeMX and System Workbench for STM32
* []()
* []()


-
-
-
-



* [MIDI Module](http://www.experimentalistsanonymous.com/ve3wwg/doku.php?id=analog_synth_midi)
* [midi2cv](https://github.com/elkayem/midi2cv) - Simple midi to CV converter.
* [Little-Scale](http://little-scale.blogspot.com/2017/11/usb-midi-to-eight-gates-and-sixteen-cv.html) - Midi2CV converter based on the Teensy.
* [MCP4802 DAC Datasheet](http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf)
* [AVR® Microcontroller Hardware Design Considerations](http://ww1.microchip.com/downloads/en/AppNotes/AN2519-AVR-Microcontroller-Hardware-Design-Considerations-00002519B.pdf)
https://www.hackster.io/arjun/programming-attiny85-with-arduino-uno-afb829

## license

[License CC BY 4.0](http://creativecommons.org/licenses/by/4.0/) - Attribution 4.0 International
