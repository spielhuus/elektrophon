![module](https://img.shields.io/badge/module-ADSR-yellow)
![status](https://img.shields.io/badge/status-final-green)

## *adsr*

<a href="https://spielhuus.github.io/elektrophon/images/adsr-panel.jpg"><img width="200" align="right" src="https://spielhuus.github.io/elektrophon/images/adsr-titel_tmb.jpg"></a>
An ADSR creates an envelope for describing the change of audio over time. The envelope can be used for amplitude, filters or pitch. The origin of an 555  based ADSR is published in electronics by Kirschmann, Jacky et al \[[2][2],[3][3],[4][4]\]. This version is directly taken from René Schmitz \[[5][5]\] 'The Fastest Envelope in the West'. For the Attack, Decay and Release the potentiometers are logarithmic. This gives better control over the values. 

## *build*

<a href="https://spielhuus.github.io/elektrophon/images/adsr-mount.jpg"><img width="200" align="left" src="https://spielhuus.github.io/elektrophon/images/adsr-mount_tmb.jpg"></a> The gerber files are part of the release. It should be possible to directly order them from your manufacture. But check the result on the preview when you order them. The parts are in the [BOM](BOM.md), there are no special parts for this build. <br/><br/><br/><br/><br/>

## *calibrate*

No calibration needed.

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

1) Wikipedia: ADSR [1]:()
1) [Randall Kirschman, Electronics, Jul.1980][2]
1) [Jonathan Jacky, Electronics, Sept.1980][3]
1) [Örley Gàbor, Electronic Design, Aug. 1980][4]
1) [René Schmitz: The Fastest Envelope in the West][5]
1) [Falstad: Circuit simulation](https://www.falstad.com/circuit/circuitjs.html?cct=$+1+0.000005+382.76258214399064+66+5+43%0A165+288+80+384+80+6+1.7143479604572416e-7%0Ag+-192+208+-192+240+0%0AR+352+48+352+0+0+0+40+15+0+0+0.5%0At+-160+144+-128+144+0+1+0.5716675283568278+0.6312434387200588+100%0Ar+-224+144+-288+144+0+10000%0Ad+-192+208+-192+144+2+default%0Ag+384+240+384+272+0%0Aw+-224+144+-192+144+0%0Aw+-192+144+-160+144+0%0Ar+-128+128+-128+64+0+4700%0Ar+-32+112+-32+48+0+4700%0At+-64+160+-32+160+0+1+-14.940424082116808+0.059575912365064716+100%0Ar+96+160+96+96+0+4700%0At+64+176+96+176+0+1+-14.999999945763738+5.3296261943213006e-8+100%0AR+-128+64+-128+16+0+0+40+15+0+0+0.5%0AR+-32+48+-32+0+0+0+40+15+0+0+0.5%0AR+96+96+96+48+0+0+40+15+0+0+0.5%0Ar+-64+128+-128+128+0+22000%0Ad+16+208+16+144+2+default%0Ag+16+208+16+240+0%0Ar+64+144+16+144+0+10000%0Ac+-32+144+16+144+0+1e-8+14.99999994218561%0Ag+96+192+96+240+0%0Ac+352+272+352+240+0+1e-8+-10.000000000000005%0Ag+352+272+352+320+0%0Aw+96+160+288+176+0%0AR+-288+144+-336+144+0+2+5+5+0+0+0.4%0Aa+592+192+688+192+8+15+-15+1000000+3.502764258031722+3.5027992856743024+100000%0Aw+592+176+592+128+0%0Aw+592+128+688+128+0%0Aw+688+128+688+192+0%0Ap+752+192+832+192+1+0%0Ac+592+288+592+208+0+0.0000022+-3.5027992856743024%0Ag+592+288+592+320+0%0Ad+512+176+560+176+2+default%0A174+432+32+496+64+1+1000000+0.005+release%0Ad+528+112+480+112+2+default%0Aw+288+208+528+208+0%0Aa+288+416+384+416+8+15+-15+1000000+0.06118225697416717+0.06118286879673691+100000%0Aw+288+112+192+112+0%0Aw+192+112+192+400+0%0A174+192+400+256+400+1+10000+0.005+Sustain%0Aw+224+384+288+432+0%0Aw+288+400+288+368+0%0Aw+288+368+384+368+0%0Aw+384+368+384+416+0%0AR+256+336+256+288+0+0+40+15+0+0+0.5%0Ar+256+400+256+336+0+4700%0A174+384+416+448+416+1+1000000+0.024800000000000003+Decay%0Aw+416+320+560+320+0%0Ad+560+208+560+288+2+default%0Ar+416+48+416+112+0+100%0Ar+416+144+416+176+0+100%0Aw+432+32+416+32+0%0Aw+416+32+416+48+0%0Aw+464+64+464+112+0%0Aw+464+112+480+112+0%0A174+416+176+512+144+1+1000000+0.005+Attack%0Ar+560+288+560+320+0+100%0Aw+-64+128+-64+160+0%0Ag+-128+160+-128+208+0%0Aw+64+144+64+176+0%0Ag+-32+176+-32+224+0%0Aw+-32+144+-32+112+0%0Aw+416+112+288+80+0%0Aw+288+80+-32+112+0%0Ar+688+192+752+192+0+1000%0Aw+416+400+416+320+0%0Aw+560+208+592+208+0%0Aw+560+208+528+208+0%0Aw+464+144+464+128+0%0Aw+464+128+512+128+0%0Aw+512+128+512+176+0%0Aw+560+176+560+208+0%0At+784+256+784+304+0+1+-11.557778292162581+0.582583963648529+100%0Ac+800+368+800+336+0+1e-8+-15%0Ag+800+368+800+400+0%0AR+800+304+832+304+0+0+40+15+0+0+0.5%0Aw+800+336+800+304+0%0Ar+720+256+784+256+0+10000%0Aw+688+192+688+256+0%0Aw+720+256+688+256+0%0Ar+752+384+752+320+0+2200%0Aw+752+320+752+304+0%0Aw+752+304+768+304+0%0A162+752+384+752+432+2+default-led+1+0+0+0.01%0Ag+752+432+752+464+0%0Ao+26+64+0+4099+5+0.00078125+0+2+26+3%0Ao+31+64+0+4098+20+0.1+1+1%0A)
---
[![CC BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)

[1]: https://en.wikipedia.org/wiki/Envelope_(music)
[2]: https://www.yusynth.net/archives/Electronics/R-Kirschman-ADSR-1980.pdf
[3]: https://www.yusynth.net/archives/Electronics/J-Jacky-ADSR-1980.pdf
[4]: https://www.yusynth.net/archives/ElectronicDesign/O-Gabor-ADSR-1980.pdf
[5]: https://www.schmitzbits.de/adsr.html
