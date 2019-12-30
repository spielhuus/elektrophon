## *voltage controlled filter*

The ADSR creates an envelope for describing the change of the sound over time. The envelope can be used for amplitude, 
<a href="https://spielhuus.github.io/elektrophon/images/ADSR_panel.png"><img src="https://spielhuus.github.io/elektrophon/images/ADSR_panel_tmb.png" width="35px"></img></a>
frequencies or pitch. The output of the ADSR module can for example be patched to a VCA or VCF. The original schematic is
used by René Schmitz and Yves Usson. 
<a href="https://spielhuus.github.io/elektrophon/images/ADSR.svg"><img src="https://spielhuus.github.io/elektrophon/images/ADSR_tmb.jpg" width="125px"></img></a>

<a href="https://spielhuus.github.io/elektrophon/images/ADSR.png"><img src="https://spielhuus.github.io/elektrophon/images/ADSR_tmb.png" width="125px"></img></a>

## *build*

<a href="https://spielhuus.github.io/elektrophon/images/adsr-mount.jpg"><img width="200" align="left" src="https://spielhuus.github.io/elektrophon/images/adsr-mount_tmb.jpg"></a> Bulid this öslkdfjöalkdsfjöalkdsjf öasldkfj öalkdsf aölskdfj öalkdsfj aölsdkf jölksdj föalskd jföalkdjf öalkdsf jölakd jföalskdf jöalskdfj aölskdfj öalskdf jölskd jfölaksd jföalksdf jöalkdsjf öalksdjf aölksd jföalkdsf jöalskdfj öalskdf jöalksdf jöalksd jföalksdf jöalkdsfj öalskdf jöalskd fjöalksd jfölaksd jföalkds jföalksd jföalksd jfölaskdjf öalsdkf jöaldsk flkasdjflkadfj lakdjf lakdfj alkdf jlasdkfj alsdkf jalsdkfj alskdfj alsdkfj laskdf jlaskdfj lakdsf jalskdf jlaskdf jlakdf jlaskdf jlakd jflaskdfj laskdfj lakdfj laskdjf laskdjf laskdjf alskdf jalskdfj laskdfj lakdsfj alsdkf jlaksdfj lskadjf laksdjf laskdf jlakdsfj laskdfj laksdjf laskdf jlaskd jflaksdjf lasdkjf lakdsjf laskd

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

1) [SSM2040 Datasheet](https://github.com/spielhuus/elektrophon/blob/master/docs/datasheet/SSM2040.pdf)
1) The [Electronic Music Circuits: The Reprints](https://web.archive.org/web/20190907204304/https://static.miraheze.org/sdiywiki/5/5d/The_Reprint_Collection_by_Thomas_Henry_CC_BY_NC.pdf) from Thomas Henry.

---
[![CC BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)
