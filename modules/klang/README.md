![module](https://img.shields.io/badge/module-other-yellow)
![status](https://img.shields.io/badge/status-work%20in%20progress-orange)

## *klang*

klang is a digial polyphonic and additive oszillator.

### *direct digital synthesis (DDS)*  ###

the klang oszillator is using a wavetable to create the output waves. The content of a wavetable is one oszillation of the waveform (360°). When such a waveform is played back, the size of the wavetable and the frequencies in which the values are updated results in the frequency of the final signal. The update interval also defines the max frequency of the output signal. The maximum output frequency is half of the update fequency (Nyquist). 

calculate the playback frequency of a wavetable:

<img src="http://latex.codecogs.com/gif.latex?f%20%3D%20%5Cfrac%7B1%7D%7Bt_%7Bint%7D*size_%7Btable%7D%7D"/><br/>


with a wavetable size of 1024 items and the update frequency of 40kHz:

<img src="http://latex.codecogs.com/gif.latex?f%20%3D%20%5Cfrac%7B1%7D%7B%5Cfrac%7B1%7D%7B40%27000%7D*1024%7D%20%3D%20390.625%20Hz"/><br/>

With a table size of *1024* and *40kHz* update frequency the output frequency is *390.625Hz*. This is a middle *G* or the midi note *67*.

For changing the output frequency either the update frequency or the number of values in the table can be changed. because we want to output multiple voices, with different frequencies, we can not change the update frequency. We have to skip or repeat values in the wavetable. But wich values to skip or repeat? Here the concept of DDS comes in. We use an accumulator. The accumulator multiplies each step in the wavetable. If we step through the accumulator some steps in the wavetable will be skipped or repeated. I do not draw the circle here, there are already good explenations here [1][2].

calculate the accumulator increment for a specific pitch:

<img src="http://latex.codecogs.com/gif.latex?increment%20%3D%20%5Cfrac%7Bsize_%7Baccum%7D%20*%20f_%7Btone%7D%7D%7Bf_%7Bupdate%7D%7D"/><br/>

### *envelopes*  ###

### *polyphonie*  ###

### *additive synthesis*  ###





<a href="https://spielhuus.github.io/elektrophon/images/ADSR_panel.png"><img src="https://spielhuus.github.io/elektrophon/images/ADSR_panel_tmb.png" width="35px"></img></a>
frequencies or pitch. The output of the ADSR module can for example be patched to a VCA or VCF. The original schematic is
used by René Schmitz and Yves Usson. 
<a href="https://spielhuus.github.io/elektrophon/images/ADSR.svg"><img src="https://spielhuus.github.io/elektrophon/images/ADSR_tmb.jpg" width="125px"></img></a>

<a href="https://spielhuus.github.io/elektrophon/images/ADSR.png"><img src="https://spielhuus.github.io/elektrophon/images/ADSR_tmb.png" width="125px"></img></a>

## *build*

<a href="https://spielhuus.github.io/elektrophon/images/adsr-mount.jpg"><img width="200" align="left" src="https://spielhuus.github.io/elektrophon/images/adsr-mount_tmb.jpg"></a> Bulid this öslkdfjöalkdsfjöalkdsjf öasldkfj öalkdsf aölskdfj öalkdsfj aölsdkf jölksdj föalskd jföalkdjf öalkdsf jölakd jföalskdf jöalskdfj aölskdfj öalskdf jölskd jfölaksd jföalksdf jöalkdsjf öalksdjf aölksd jföalkdsf jöalskdfj öalskdf jöalksdf jöalksd jföalksdf jöalkdsfj öalskdf jöalskd fjöalksd jfölaksd jföalkds jföalksd jföalksd jfölaskdjf öalsdkf jöaldsk flkasdjflkadfj lakdjf lakdfj alkdf jlasdkfj alsdkf jalsdkfj alskdfj alsdkfj laskdf jlaskdfj lakdsf jalskdf jlaskdf jlakdf jlaskdf jlakd jflaskdfj laskdfj lakdfj laskdjf laskdjf laskdjf alskdf jalskdfj laskdfj lakdsfj alsdkf jlaksdfj lskadjf laksdjf laskdf jlakdsfj laskdfj laksdjf laskdf jlaskd jflaksdjf lasdkjf lakdsjf laskd

[simulation](https://www.falstad.com/circuit/circuitjs.html?cct=$+1+0.000005+10.20027730826997+50+5+43%0Aa+80+128+192+128+8+15+-15+1000000+1.6336739476078763+1.633663366336634+100000%0Aa+256+144+368+144+8+15+-15+1000000+-0.00003206316606787709+0+100000%0Ar+80+48+192+48+0+10000%0Ar+256+48+368+48+0+100000%0Ar+192+128+256+128+0+33000%0Ar+368+144+432+144+0+1000%0Ar+80+112+0+112+0+10000%0Ar+80+144+0+144+0+90000%0Ar+80+144+80+224+0+11000%0Ag+80+224+80+256+0%0Ag+256+160+256+192+0%0Aw+256+48+256+128+0%0Aw+368+48+368+144+0%0Aw+192+48+192+128+0%0Aw+80+48+80+112+0%0AR+0+144+-48+144+0+0+40+15+0+0+0.5%0AR+0+112+-64+112+0+1+40+3.2+3.2+0+0.5%0Ap+432+144+496+144+1+0%0Ao+17+64+0+4098+20+0.1+0+1%0Ao+16+64+0+4099+10+0.0015625+1+2+16+3%0A) of the output amplifier.



## *calibration*


## *use*

Connect a gate signal to the *IN* of the ADSR and the *OUT* to a VCA or VCF:

<a href="https://spielhuus.github.io/elektrophon/images/adsr-mount.jpg"><img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/ADSR_parameter.svg/320px-ADSR_parameter.svg.png"></a>

**IN** a gate singal for the length of the ADS singal.

**OUT** the final envelope.

**Attack** is the time taken for initial run-up of level from nil to peak, beginning when the key is pressed.

**Decay** is the time taken for the subsequent run down from the attack level to the designated sustain level.

**Sustain** is the level during the main sequence of the sound's duration, until the key is released.

**Release** is the time taken for the level to decay from the sustain level to zero after the key is released.


## *links*

1) [Fundamentals of Direct Digital Synthesis (DDS)](https://www.analog.com/media/en/training-seminars/tutorials/MT-085.pdf) from [Analog Devices](https://www.analog.com/)
1) Elliot Williams has an article about [DIRECT DIGITAL SYNTHESIS](https://hackaday.com/2016/02/12/embed-with-elliot-audio-playback-with-direct-digital-synthesis/) on [HACKADAY](https://hackaday.com).
1) [AN3126](https://www.st.com/content/ccc/resource/technical/document/application_note/05/fb/41/91/39/02/4d/1e/CD00259245.pdf/files/CD00259245.pdf/jcr:content/translations/en.CD00259245.pdf) Audio and waveform generation using the DAC in STM32 microcontrollers
1) [AN4566](https://www.st.com/content/ccc/resource/technical/document/application_note/6f/35/61/e9/8a/28/48/8c/DM00129215.pdf/files/DM00129215.pdf/jcr:content/translations/en.DM00129215.pdf) Extending the DAC performance of STM32 microcontrollers
1) all formulas are created with the latex converter at [codecogs](http://latex.codecogs.com/)
---
[![CC BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)
