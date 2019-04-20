# VCA1

A VCA is a fundamental thing to a modular synthesizer. When you build your first VCO and control it, for example with the midi module, it sounds nothing good. This is because the VCO makes a constant noise. This does not sound like music. One of the most importent aspects of sound is the dynamic in the loudness. With a VCA the dynamic can be controlled. If only the gate or velocity of the midi module is conncted the notes plays individually, with the velocity it can be controlled with low or high volume. with another VCO connected to the CV in a tremolo effect can be created. ![VCO-1 Schema](https://spielhuus.github.io/elektrophon/vca1_shema_tmb.png). The schematic is quite simple and easy to build. There are three stages. In the Input stage is an inverting summing aplifier. This mixes the three input signal. Each signal has a capacitor which can connected with a switch. The capacitor will decouple an DC signal and level it around 0V. This will help mixing AC and DC signals at the same time. Mixing a DC signal can also create a click at the begeinning og the trigger signal. the second stage uses a CA3080 as voltage controlled resistor. The signal is  


The VCA1 is a basic VCA designed by Thomas Henry 

## building

## sample


## BOM

The only parts that are hard to get are the OpAmps and the CA3080 OTA. At the time of writing both are available for very little money at the big chinese market. 

|Ref|Value|Name|
|:---|:---|:---|
|C1|10u|Electrolytic capacitor|
|C2|10u|Electrolytic capacitor|
|C3|0.22u|Ceramic capacitor|
|C4|0.22u|Ceramic capacitor|
|C5|0.22u|Ceramic capacitor|
|C6|10p|Ceramic capacitor|
|C7|22p|Ceramic capacitor|
|C8|0.01u|Ceramic capacitor|
|C9|0.01u|Ceramic capacitor|
|C10|0.01u|Ceramic capacitor|
|C11|0.01u|Ceramic capacitor|
|C12|0.01u|Ceramic capacitor|
|C13|0.01u|Ceramic capacitor|
|D1|1N4148|Diode|
|Q1|2N3906|[Package_TO_SOT_THT:TO-92_Inline}https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf)
|R1|100k|Resistor|
|R2|100k|Resistor|
|R3|330k|Resistor|
|R4|100k|Resistor|
|R5|100k|Resistor|
|R6|100k|Resistor|
|R7|100k|Resistor|
|R8|11k|Resistor|
|R9|100k|Resistor|
|R10|11k|Resistor|
|R11|22|Resistor|
|R12|100k|Resistor|
|R13|22|Resistor|
|R14|51k|Resistor|
|R15|1k|Resistor|
|RV1|100k|Resistor|
|RV2|100k|Resistor|
|RV3|100k|Resistor|
|RV4|100k|Resistor|
|RV5|100k|Resistor|
|RV6|100k|Resistor|
|SW1|SDPST|Switch|
|SW2|SDPST|Switch|
|SW3|SDPST|Switch|
|U1|TL072|[Opamp](http://www.ti.com/lit/ds/symlink/tl071.pdf)|
|U2|TL072|[Opamp](http://www.ti.com/lit/ds/symlink/tl071.pdf)|
|U3|CA3080|[OTA](http://www.intersil.com/content/dam/Intersil/documents/ca30/ca3080-a.pdf)|
|-|39x24||Stripboard|
|-||Wire and Bolts....|

## links

1) [Thomas Henry: VCA1](http://birthofasynth.com/Thomas_Henry/Pages/VCA-1.html)
2) []()

---
[![CC BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)
