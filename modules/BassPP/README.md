![module](https://img.shields.io/badge/module-other-yellow)
![status](https://img.shields.io/badge/status-final-green)

# bass++

This is a precussion module designed by Thomas Henry. [1][1]<a href="https://spielhuus.github.io/elektrophon/images/BassPPpanel.png"><img align="right" src="https://spielhuus.github.io/elektrophon/images/BassPPpanel_tmb.png"></a>
The bass voice has a very wide range and can produce very low and long bass sounds but also high pitch bass voices. the pitch is voltage controller, but the tracking is not comparable to a vco. 

## *build*

<a href="https://spielhuus.github.io/elektrophon/images/adsr-mount.jpg"><img width="200" align="left" src="https://spielhuus.github.io/elektrophon/images/adsr-mount_tmb.jpg"></a> The gerber files are part of the release. It should be possible to directly order them from your manufacturer. But check the result on the preview when you order them. The parts are in the [BOM](BOM.md), there are no special parts needed for this build. If you want to adjust the pitch range you can change the value of the capacitor C10, as suggested in the schema.<br/><br/><br/><br/><br/>

## *calibrate*

No calibration needed.

## *use*

Connect a trigger signal to the **IN** of the bass and the **OUT** to mixer or any other output module:

**Trigger Input/Envelope Generator**

**Sensitivity** adjustment of the trigger input
**Status LED**	visual feedback of operation.
**Decay** length of the drum voice envelope


**Shell VCO Control**

**Pitch** Control	Sets the initial pitch of the Shell VCO.
**Sweep** Control	Sets how much effect the envelope generator will have on the pitch of the Shell VCO.
**CV Jack** Accepts control voltages used to modulate the pitch of the Shell VCO.
**Range Control**	Sets the level of effect the applied control voltage will have on the pitch of the VCO


**Impact Section**

**Impact Tone Control**	Sets tone of the impact signal from bass to treble.


**Signal Mix Section**

**Shell Volume**	Adjusts the amount of Shell signal present in the final output signal.
**Impact Volume**	Adjusts the amount of Impact signal present in the final output signal.

## links

1) [Thomas Henry: Bass++][1]

---
[![CC BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)

[1]: http://birthofasynth.com/Thomas_Henry/Pages/Bass_Plus.html
