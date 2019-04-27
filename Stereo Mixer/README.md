# Stereo Mixer

<!-- img src="https://raw.githubusercontent.com/spielhuus/elektrophon/master/Power%20Supply/schema.jpg" width="20%"></img>
<img src="https://raw.githubusercontent.com/spielhuus/elektrophon/master/Power%20Supply/pcb.png" width="20%"></img -->

As soon as you have more then one module there comes the need for a mixer. At first a mixer seems simple. Combine the different
audio signals with resistors and you are done. Yes and no. You want to adjust the loudness of each voice and pan it the mono 
signal to the left and right channel. But building a proper mixer is more difficult that one might think. The naive approach of
combining the voices with potentiometers the channels influence each other. If you change one channel the others will change to.
This is because the resistance in the channels build a voltage divder where the resulting voltage changes with resistance and 
inpedance of the other channels. Even adding voltage buffers does not help very much, beside that a lot of components will be 
needed for that. The proper solution is a virtual ground mixer. Briefly this will merge the currents insteand of the voltages.



# BOM

|Qty.|Ref| Value| Description|
|---|------|----------|----------|
|1| | 200x160mm| Stripboard |
| | <td colspan=2> Wire, Sockets, Plugs, LEDs and Resistors |

# links

* [ESP:	Audio Signal Mixing)](http://sound.whsites.net/articles/audio-mixing.htm)

---
[![CC BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)
