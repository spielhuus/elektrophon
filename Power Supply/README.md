# Wall Wart Power Supply

<img src="https://raw.githubusercontent.com/spielhuus/elektrophon/master/Power%20Supply/schema.jpg" width="20%"></img>
<img src="https://raw.githubusercontent.com/spielhuus/elektrophon/master/Power%20Supply/pcb.png" width="20%"></img>

The power supply is one of the first thing to build. It is important to have a stable power and voltage when building modules. To fidlle with high 
voltage right at the beginning is not a good thing. The encloure and wiring would also have to be built with high volage in mind. The base of this
power supply is the MFOS[1] design, but added a 5V output. One wall wart is needed for each power. 

Input:
* 15VAC 
* 12VDC

Output:
* +-12V, +5V, Common Groumd 

# BOM

|Qty.|Ref| Value| Description|
|---|------|----------|----------|
|1|W1| 15VAC| Wall Wart Power Supply 15VAC/1A|
|1|W2| 12VDC| Wall Wart Power Supply 12VDC/1.5A|
|6|C1-C6| 3300uF| Electrolytic Capacitors (D10.0mm_P2.50mm_P5.00mm|
|4|C7-C10| 1uF| Electrolytic Capacitors|
|1|C11| 0.33uF| Ceramic Capacitor|
|1|C12| 0.1uF| Ceramic Capacitor|
|6|D1-D6| 1N4004| Rectifiers|
|1|U1| [LM7815](https://www.st.com/resource/en/datasheet/l78.pdf)| Positive voltage regulator +15V (TO220) |
|1|U2| [LM7815](https://www.st.com/resource/en/datasheet/cd00000450.pdf)| Negative voltage regulator -12V (TO220) |
|1|U3| [L7805](https://www.st.com/resource/en/datasheet/l78.pdf)| Positive voltage regulator +5V (TO220)|
|5| | 100| Resistors |
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
