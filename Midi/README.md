# cv function gerator

a buncg of modules dont necessarily make music. the modules have to be conrolled with control voltages of different kind. the CV Function Generator creates control voltages of different types. it can act as a standalone oscillator or create envelopes for controlling the pitch. but the channels are freely programmable and can also be used as a simple sequenver with variable cv output. this module should create sexteen individual controllable slopes or waveforms.instead of creating different dac and trigger channels, all channels slopes are created with a dac. every dac is freely assignable to a controll channel. the control channels are serial midi, envelope gerator, slope generator, cv sequenver. 


## burn bootloader to chip

1) 

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

## links


* [ATmega168/328P-Arduino Pin Mapping](https://www.arduino.cc/en/Hacking/PinMapping168)
* [MIDI Module](http://www.experimentalistsanonymous.com/ve3wwg/doku.php?id=analog_synth_midi)
* [midi2cv](https://github.com/elkayem/midi2cv) - Simple midi to CV converter.
* [Little-Scale](http://little-scale.blogspot.com/2017/11/usb-midi-to-eight-gates-and-sixteen-cv.html) - Midi2CV converter based on the Teensy.
* [MCP4802 DAC Datasheet](http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf)
* [AVR® Microcontroller Hardware Design Considerations](http://ww1.microchip.com/downloads/en/AppNotes/AN2519-AVR-Microcontroller-Hardware-Design-Considerations-00002519B.pdf)
https://www.hackster.io/arjun/programming-attiny85-with-arduino-uno-afb829

## license

[License CC BY 4.0](http://creativecommons.org/licenses/by/4.0/) - Attribution 4.0 International
