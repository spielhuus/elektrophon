![module](https://img.shields.io/badge/module-other-yellow)
![status](https://img.shields.io/badge/status-work%20in%20progress-orange)

## *vco*

<a href="https://spielhuus.github.io/elektrophon/images/adsr-panel.jpg"><img width="200" align="right" src="https://spielhuus.github.io/elektrophon/images/adsr-titel_tmb.jpg"></a>
An ADSR creates an envelope for describing the change of audio over time. The envelope can be used for amplitude, filters or pitch. The origin of an 555  based ADSR is publishes in electronics by Kirschmann, Jacky et al. This version is directly taken from René Schmitz [5] 'The Fastest Envelope in the West'. For the Attack, Decay and Release the potentiometers are logarithmic. This gives better control over the values. 

## *build*

<a href="https://spielhuus.github.io/elektrophon/images/adsr-mount.jpg"><img width="200" align="left" src="https://spielhuus.github.io/elektrophon/images/adsr-mount_tmb.jpg"></a> Bulid this öslkdfjöalkdsfjöalkdsjf öasldkfj öalkdsf aölskdfj öalkdsfj aölsdkf jölksdj föalskd jföalkdjf öalkdsf jölakd jföalskdf jöalskdfj aölskdfj öalskdf jölskd jfölaksd jföalksdf jöalkdsjf öalksdjf aölksd jföalkdsf jöalskdfj öalskdf jöalksdf jöalksd jföalksdf jöalkdsfj öalskdf jöalskd fjöalksd jfölaksd jföalkds jföalksd jföalksd jfölaskdjf öalsdkf jöaldsk flkasdjflkadfj lakdjf lakdfj alkdf jlasdkfj alsdkf jalsdkfj alskdfj alsdkfj laskdf jlaskdfj lakdsf jalskdf jlaskdf jlakdf jlaskdf jlakd jflaskdfj laskdfj lakdfj laskdjf laskdjf laskdjf alskdf jalskdfj laskdfj lakdsfj alsdkf jlaksdfj lskadjf laksdjf laskdf jlakdsfj laskdfj laksdjf laskdf jlaskd jflaksdjf lasdkjf lakdsjf laskd

## *calibrate*

no calibration needed.

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

1) [CEM3340 Datasheet](https://github.com/spielhuus/elektrophon/raw/master/docs/datasheet/CEM_3340-3345_Long.pdf)
1) [AS3340 Datasheet](http://www.alfarzpp.lv/eng/sc/AS3340.pdf)
1) [CEM3340 Oszillator Designs](https://electricdruid.net/cem3340-vco-voltage-controlled-oscillator-designs/)
1) [LMNC Simple Oszillator](https://www.lookmumnocomputer.com/cem-3340-diy-simple)
1) []()
---
[![CC BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)


[1]: https://www.falstad.com/circuit/circuitjs.html?cct=$+1+0.000005+10.20027730826997+50+5+43%0Aa+272+192+384+192+8+15+-15+1000000+0.00007499887501687474+0+100000%0Ar+272+128+384+128+0+10000%0Ar+160+128+272+128+0+20000%0Aw+272+176+272+128+0%0Aw+384+128+384+192+0%0AR+192+208+160+208+0+2+40+5+5+0+0.5%0AR+160+128+112+128+0+0+40+15+0+0+0.5%0Ap+448+192+528+192+1+0%0Ar+192+208+272+208+0+10000%0Ar+192+320+272+320+0+10000%0Ap+448+304+528+304+1+0%0AR+160+240+112+240+0+0+40+15+0+0+0.5%0AR+192+320+160+320+0+2+40+2.5+2.5+0+0.5%0Aw+384+240+384+304+0%0Aw+272+288+272+240+0%0Ar+160+240+272+240+0+30000%0Ar+272+240+384+240+0+15000%0Aa+272+304+384+304+8+15+-15+1000000+0.0000749977500670913+-4.0668801659649036e-16+100000%0Ar+208+288+272+288+0+10000%0Ag+208+288+192+288+0%0Ag+448+512+448+528+0%0Ar+208+400+272+400+0+40000%0Aa+272+464+384+464+8+15+-15+1000000+0.00012374774160371575+0+100000%0Ar+272+400+384+400+0+33000%0Ar+384+464+448+464+0+2260%0Aw+272+448+272+400+0%0Aw+384+400+384+464+0%0AR+272+480+160+480+0+2+40+6.85+6.85+0+0.5%0AR+208+400+160+400+0+0+40+15+0+0+0.5%0Ap+448+464+528+464+1+0%0Ar+448+464+448+512+0+1500%0Ar+448+304+448+352+0+3000%0Ar+384+304+448+304+0+1500%0Ag+448+352+448+368+0%0Ar+448+192+448+240+0+3000%0Ar+384+192+448+192+0+1500%0Ag+448+240+448+256+0%0Ac+272+368+384+368+0+2.1999999999999998e-11+12.374897908113178%0Aw+272+368+272+400+0%0Aw+384+368+384+400+0%0Ao+5+64+0+4099+10+0.00009765625+0+2+5+3%0A