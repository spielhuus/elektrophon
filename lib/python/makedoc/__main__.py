import sys
sys.path.append("lib/python")

from elektron import Draw, Element, Label, Line, Nc, Dot, C, R, Gnd, Feedback, Power

from elektrophon import (decouple_tl072, decouple, power, Attenuverter, light, DaisyAudioOut, DaisyAnalogIn, DaisyAnalogRef, input_jack, input_regulated, output_jack, power_flags)


def main() -> int:
    # draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"])
    # decouple_tl072(draw, "U1", (0,0), True)
    # draw.plot(filename="decouple_tl072.svg", border=False)

    prefix = "static/pdoc"
    scale = 2

    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"])
    input_jack(draw, "J1", "INPUT", (0,0))
    draw.plot(filename=f"{prefix}/input_jack.svg", border=False, scale=scale)

    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"])
    input_regulated(draw, "J1", "RV1", "100k", "INPUT", (0,0), "INPUT")
    draw.plot(filename=f"{prefix}/input_regulated.svg", border=False, scale=scale)
    
    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"])
    output_jack(draw, "J1", "OUTPUT", (0,0))
    draw.plot(filename=f"{prefix}/output_jack.svg", border=False, scale=scale)

    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"])
    power(draw, "J1", (0,0))
    draw.plot(filename=f"{prefix}/power.svg", border=False, scale=scale)

    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"])
    DaisyAudioOut(draw, (0,0))
    draw.plot(filename=f"{prefix}/daisy_audio_out.svg", border=False, scale=scale)

    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"])
    DaisyAnalogIn(draw, "U1", "Input_1", "Output", "Input_2", 1)
    draw.plot(filename=f"{prefix}/daisy_analog_in.svg", border=False, scale=scale)

    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"])
    DaisyAnalogRef(draw, "U1")
    draw.plot(filename=f"{prefix}/daisy_analog_ref.svg", border=False, scale=scale)

    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"])
    Attenuverter(draw, "LabelIn", "LabelOut", "U", "RV")
    draw.plot(filename=f"{prefix}/attenuverter.svg", border=False, scale=scale)

    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"])
    light(draw, "LABEL", "RED", (0, 0))
    draw.plot(filename=f"{prefix}/light.svg", border=False, scale=scale)

    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"])
    power_flags(draw)
    draw.plot(filename=f"{prefix}/power_flags.svg", border=False, scale=scale)
    return 0

if __name__ == '__main__':
    sys.exit(main())  

