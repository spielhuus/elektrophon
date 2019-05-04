# Wall Wart Power Supply

The power supply is one of the first thing to build. It is important to have a stable power and voltage when building modules. 5V and +-15V are creatued from two wall wart power supplies as power sources. The circuit for the split AC voltage is the MFOS[1] wall wart supply. For the 5V a simple voltage regulator circuit. The 3 voltages and ground are connected with IDC connectors and are wired with banana plugs on the panel.

<a href="https://spielhuus.github.io/elektrophon/Power_Supply_schema.svg"><img src="https://spielhuus.github.io/elektrophon/Power_Supply_schema_tmb.jpg" width="125px"></img></a>
<a href="https://spielhuus.github.io/elektrophon/power_supply_stripboard.png"><img src="https://spielhuus.github.io/elektrophon/power_supply_stripboard_tmb.jpg" width="125px"></img></a>

Input:
* 15VAC
* 12VDC

Output:
* +-12V/1A 
* +5V/1.5A
* Common Ground 

# BOM

|Qty.|Ref| Value| Description|
|---|------|----------|----------|
|1|W1| 15VAC| Wall Wart Power Supply 15VAC/1A|
|1|W2| 12VDC| Wall Wart Power Supply 12VDC/1.5A|
|6|C1-C6| 3300uF| Electrolytic Capacitors (D10.0mm_P2.50mm_P5.00mm)|
|4|C7-C10| 1uF| Electrolytic Capacitors|
|1|C11| 0.33uF| Ceramic Capacitor|
|1|C12| 0.1uF| Ceramic Capacitor|
|6|D1-D6| 1N4004| Rectifiers|
|1|U1| [LM7815](https://www.st.com/resource/en/datasheet/l78.pdf)| Positive voltage regulator +15V (TO220) |
|1|U2| [LM7815](https://www.st.com/resource/en/datasheet/cd00000450.pdf)| Negative voltage regulator -12V (TO220) |
|1|U3| [L7805](https://www.st.com/resource/en/datasheet/l78.pdf)| Positive voltage regulator +5V (TO220)|
|5|R1-R5| 100| Resistors |
|5|D7-11| red| LED's 3mm |
|3| U1-U3| | Heat Sinks for the Regulators (TO220) |
|1| | 200x160mm| Stripboard |
| | <td colspan=2> Wire, Sockets, Plugs, LEDs and Resistors |

# links

* [Wall Wart Power Supply (+/-9V to +/-15V)](http://musicfromouterspace.com/analogsynth_new/WALLWARTSUPPLY/WALLWARTSUPPLY.php)
* [The A-100 system bus](http://www.doepfer.de/a100_man/a100t_e.htm)
* [MFOS Power supply stripboard  on electro-music.com](http://electro-music.com/forum/topic-35373.html)

---
[![CC BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)
