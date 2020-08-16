![module](https://img.shields.io/badge/module-vca-yellow)
![status](https://img.shields.io/badge/status-work%20in%20progress-orange)

## *pe|gel*

<a href="https://photos.app.goo.gl/pg6iZUC32rTKX5LC7"><img src="https://spielhuus.github.io/elektrophon/images/kontrast-logo-tmb.jpg" height="300px" align="right"></a>

***table of contents***

* [*about*](#about)
* [*construction*](#construction)
* [*calibration*](#calibration)
* [*usage*](#usage)
* [*credits*](#credits)
* [*links*](#links)
* [*changelog*](#changelog)
  
## *about*

pegel is a voltage controlled amplifier (vca). there are various designs to implement a vca. rod elliott (ESP) has an article on vca techniques [[1][1]]. diy synthesizer modules are usualy designed with an integrated vca chip [[2][2]]  or with a differential amplifier [[3][3]]. the integrated vca chips are either obsolete or rather expensive. the differential amplifier can be built with transistors only. the design has some downsides. even in the simulation the result is not symetryc and has a dc offset from the control voltage. this needs a lot of trimming to get an accurate result. but the biggest downside is, that this design can not do proper amplitude modulation (am). when the carrier signal goes below zero the base signal is completely muted. 

    [1;32m2020-08-16 12:00:15,925[0m - [1;34mPySpice.Spice.NgSpice.Shared.NgSpiceShared._send_char[0m - [1;31mERROR[0m - Error: bad type for debug var
    [1;32m2020-08-16 12:00:15,926[0m - [1;34mPySpice.Spice.NgSpice.Shared.NgSpiceShared._send_char[0m - [1;31mWARNING[0m - Warning: ngspice compiled without debug messages



![svg](README_files/README_4_1.svg)


more promising is it to use a four quadrant multiplier, also known as gilbert cell. the gilbert cell is designed around two differential amplifiers. the carrier signal switches between those. the result is a multiplication of the input voltages. the gilbert cell is mostly used for amplitude modulation in radio transmission. if you look at the integratd circuits like the 633 it can modulate signals up in the gigahertz range. the gilbert cell is not described in all details here, there is a good introduction from w2aew [[4][4]].





![svg](README_files/README_6_0.svg)


## *construction*

## *references*

- [VCA Techniques Investigated][1] Rod Elliott (ESP)
- [VCA-1][2] Thomas Henry CA3080 vca
- [VCA-3][3] René Schmitz differential pair vca
- [#223][]: Basics of the Gilbert Cell | Analog Multiplier | Mixer | Modulator

[1]: https://sound-au.com/articles/vca-techniques.html
[2]: https://www.birthofasynth.com/Thomas_Henry/Pages/VCA-1.html
[3]: https://www.schmitzbits.de/vca3.png
[4]: https://www.youtube.com/watch?v=7nmmb0pqTU0&t=2s
[5]: 


[9]: http://www.ecircuitcenter.com/Circuits/BJT_Diffamp1/BJT_Diffamp1.htm

