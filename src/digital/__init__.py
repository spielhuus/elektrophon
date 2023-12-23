from elektron import Draw, Element, Label, Line, Dot, R, C, Power, Gnd
import os
import sys
sys.path.append("../../lib/python")

from elektrophon import decouple_tl072, input_jack, input_regulated, output_jack, DaisyAnalogIn, DaisyAnalogRef, power, power_flags

def integrator(draw):
    u1 = draw.next("U")
    u2 = draw.next("U")

    return(draw
        + Label("CV").rotate(180)
        + Element(draw.next("R"), "Device:R", value="270k").rotate(90)
        + Line().right().length(2.54) + (cv_in := Dot())
        + Element(u1, "Amplifier_Operational:TL072", value="TL072", unit=1, Spice_Primitive="X", Spice_Model="TL072c").anchor(2).mirror('x')
        + Element("GND", "power:GND", value="GND").at(u1, "3")

        + Dot().at(u1, "1")
        + Line().up().length(6*2.54)
        + (int1 := Dot())
        + Element(draw.next("C"), "Device:C", value="1n").rotate(270).tox(u1, "2")
        + (int2 := Dot())
        + Line().toy(u1, "2")

        + Line().at(int1).up().length(6*2.54)
        + Element("J1", "elektrophon:2N5457", value="2N5457", unit=1, 
                Spice_Netlist_Enabled="Y", 
                Spice_Primitive="J", 
                Spice_Model="J2N5459", 
                Spice_Node_Sequence="1 3 2").rotate(90).mirror('x')
        + Line().at("J1", "2").toy(int2)

        + Line().length(2.54).at("U1", "1") 
        + Element(draw.next("R"), "Device:R", value="10k").rotate(90)
        + Line().length(2.54) + (sum := Dot()) + Line().length(2.54)
        + Element(u1, "Amplifier_Operational:TL072", value="TL072", unit=2, Spice_Primitive="X", Spice_Model="TL072c").anchor(5).mirror('x')

        + Line().at(sum).down().length(4*2.54)
        + Line().left().length(2.54)
        + Element(draw.next("R"), "Device:R", value="137.6k").rotate(270)
        + Element("+15V", "power:+5V", "+15V").rotate(90)

        + Dot().at(u1, "7") + Line().up().length(6*2.54)
        + Element(draw.next("R"), "Device:R", value="100k").rotate(270).tox(u1, "6")
        + (u1b_f := Dot())
        + Line().toy(u1, "6")
        + Element(draw.next("R"), "Device:R", value="27k").rotate(270).at(u1b_f)
        + Element("GND", "power:GND", value="GND")

        + Line().at(u1, "7").length(2.54)
        + Label("SAW")

        + Line().at("J1", "3").left().length(2.54)
        + Element(draw.next("R"), "Device:R", value="22k").rotate(270)
        + Element(u2, "Amplifier_Operational:TL072", value="TL072", unit=1, Spice_Primitive="X", Spice_Model="TL072c").anchor(1)
        + Label("Vref").at("U2", "3").rotate(180)

        + Line().at(u2, "2").left().length(2*2.54)
        + (pulse := Dot())
        + Element(draw.next("C"), "Device:C", value="270p").rotate(270)
        + Label("Pulse").rotate(180)

        + Element(draw.next("R"), "Device:R", value="4.7k").rotate(0).at(pulse)
        + Element("GND", "power:GND", value="GND")
    ) 

def triangle(draw):
    u3 = draw.next("U")
    u4 = draw.next("U")

    return(draw
        + Label("SAW").rotate(180)
        + Element(draw.next("R"), "Device:R", value="100k").rotate(90)
        + Dot()
        + Element(u3, "Amplifier_Operational:TL072", value="TL072", unit=1, Spice_Primitive="X", Spice_Model="TL072c").anchor(2).mirror('x')
        + (u1a_out := Dot())
        + Element(draw.next("D"),"Diode:1N4148", value="1n4148", Spice_Primitive="D", Spice_Model="D1N4148", Spice_Node_Sequence="2 1")
        + (out_dot := Dot())
 
        + Line().up().length(5*2.54).at(u1a_out)
        + Element(draw.next("D"),"Diode:1N4148", value="1n4148", Spice_Primitive="D", Spice_Model="D1N4148", Spice_Node_Sequence="2 1").tox(u3, "2")
        + (ddot := Dot())
        + Line().toy(u3, "2")

        + Line().up().length(10*2.54).at(out_dot)
        + Element(draw.next("R"),"Device:R", value="100k").rotate(270).tox(ddot)
        + Line().toy(ddot)


        + Element(draw.next("R"),"Device:R", value="50k").at(out_dot).rotate(90)
        + (sumdot := Dot())
        + Line().right().length(2*2.54)


        + Element(u3, "Amplifier_Operational:TL072", value="TL072", unit=2, Spice_Primitive="X", Spice_Model="TL072c").anchor(6).mirror('x')
        + Dot()
        + Line().at(u3, "7").right().length(2.54)
        + Label("TRIANGLE").rotate(90)

        + Line().at(u3, "7").up().length(5*2.54)
        + (fb1 := Dot())
        + Element(draw.next("R"),"Device:R", value="210k").tox(u3, "6").rotate(270)
        + (fb2 := Dot())
        + Line().toy(u3, "6")
        + Dot()

        + Line().up().at(fb1).length(5*2.54)
        + Element(draw.next("C"),"Device:C", value="47p").tox(fb2).rotate(270)
        + Line().toy(fb2)

        + Line().at(sumdot).down().length(4*2.54)
        + (bias := Dot())
        + Element(draw.next("R"),"Device:R", value="220k").rotate(270)
        + Label("vBias").rotate(180)
        + Line().at(bias).down().length(4*2.54)
        + Element(draw.next("R"),"Device:R", value="100k").rotate(270)
        + Label("SAW").rotate(180)

        + Element("GND", "power:GND", value="GND").at(u3, "3")
        + Element("GND", "power:GND", value="GND").at(u3, "5")

        # Sine shaper
        + Line().at(u3, "7").right().length(2*2.54)
        + Element("RV1", "Device:R_Potentiometer", value="100k",
                     Spice_Netlist_Enabled="Y",
                     Spice_Primitive="X",
                     Spice_Model="Potentiometer1").anchor(1).rotate(90)
        + Line().right().length(4*2.54)
        + (in_dot := Dot())
        + Line().right().length(2.54)
        + Element(draw.next("Q"), "Transistor_BJT:BC547", unit=1, value="BC547",
                  Spice_Netlist_Enabled="Y",
                  Spice_Primitive="Q",
                  Spice_Model="BC547B").anchor(2)
        + Element(draw.next("R"),"Device:R", value="2.2k").at(in_dot)
        + Element("GND", "power:GND", value="GND")

        + Line().at(draw.last("Q"), "1").up().length(3*2.54)
        + (ldot := Dot())
        + Line().up().length(2.54)
        + Element(draw.next("R"),"Device:R", value="10k").rotate(180)
        + Line().up().length(2.54)
        + Line().right().length(3.5*2.54)
        + (head := Dot())
        + Element("+15V", "power:+15V", value="+15V")

        + Line().at(draw.last("Q"), "3").down().length(3*2.54)
        + (ldot2 := Dot())
        + Line().down().length(4*2.54)
        + Line().right().length(2*2.54)
        + Element("RV2", "Device:R_Potentiometer", value="100k",
                     Spice_Netlist_Enabled="Y",
                     Spice_Primitive="X",
                     Spice_Model="Potentiometer2").anchor(1).rotate(90).mirror('x')

        + Line().right().length(2*2.54).at("RV2", "3")
        + Line().up().length(4*2.54)
        + (rdot2 := Dot())
        + Line().up().length(3*2.54)
        + Element(draw.next("Q"), "Transistor_BJT:BC547", unit=1, value="BC547",
                  Spice_Netlist_Enabled="Y",
                  Spice_Primitive="Q",
                  Spice_Model="BC547B").anchor(3).mirror('y')
    
        + Line().at(draw.last("Q"), "1").up().length(2.54)
        + (rdot := Dot())
        + Line().up().length(3*2.54)
        + Element(draw.next("R"),"Device:R", value="10k").rotate(180)
        + Line().up().length(2.54)
        + Line().left().tox(head)

        + Element(draw.next("R"),"Device:R", value="18k").at("RV2", "2")
        + Element("-15V", "power:-15V", value="-15V").rotate(180)

        + Element(draw.next("R"),"Device:R", value="390").at(rdot2).tox(ldot2).rotate(270)

        + Line().at(draw.last("Q"), "2").right().length(2.54)
        + Element(draw.next("R"),"Device:R", value="2.2k")
        + Element("GND", "power:GND", value="GND")

        + Line().at(ldot).right().length(14*2.54)
        
        + Element(u4, "Amplifier_Operational:TL072", value="TL072", unit=1, Spice_Primitive="X", Spice_Model="TL072c").anchor(2).mirror('x')
        + Line().at(u4, "1").length(2.54)
        + Label("SINE")

        + Dot().at(u4, "1")
        + Line().up().length(6*2.54)
        + Element(draw.next("R"),"Device:R", value="15k").tox(u4, "2").rotate(270)
        + Line().toy(u4, "2")
        + Dot()
        
        + Line().at(rdot).tox(u4, "3")
        + Dot()
        + Line().down().length(2.54)
        + Element(draw.next("R"),"Device:R", value="15k")
        + Element("GND", "power:GND", value="GND")
    )


def dac(draw):
    dac = "U30"
    opamp = "U31"
    return(draw
        + Element(dac, "Analog_DAC:MCP4822", "MCP4822", unit=1)
        + R(draw.next("R"), "100k").rotate(90).at(dac, "8")
        + Line().down().toy(dac, "6") + Dot().push()
        + R(draw.next("R"), "100k").rotate(270)
        + Line().at(draw.pop())
        + Element(opamp, "Amplifier_Operational:TL072", value="TL072", unit=1, Spice_Primitive="X", Spice_Model="TL072c").anchor(2).mirror('x')
        + Gnd().at(opamp, "3")

        + Line().up().length(5*2.54).at(opamp, "1").dot("start")
        + R(draw.next("R"), "100k").rotate(270).tox(opamp, "2") + Line().toy(opamp, "2").dot("end")

        + R(draw.next("R"), "100k").rotate(90).at(opamp, "1")
        + Element(opamp, "Amplifier_Operational:TL072", value="TL072", unit=2, Spice_Primitive="X", Spice_Model="TL072c").anchor(6).mirror('x')
        + Gnd().at(opamp, "5")

        + Line().up().length(5*2.54).at(opamp, "7").dot("start")
        + R(draw.next("R"), "100k").rotate(270).tox(opamp, "6") + Line().toy(opamp, "6").dot("end")
        + Line().at(opamp, "7") + Label("CV")

        + Power("+5V").at(dac, "1")
        + Gnd().at(dac, "7")

        + Label("SCK_1").at(dac, "3").rotate(180)
        + Label("LDAC").at(dac, "5").rotate(180)
        + Label("SDI_1").at(dac, "4").rotate(180)
        + Label("CS_1").at(dac, "2").rotate(180)
    )

def bluepill(draw):
    return(draw
        + Element("U20", "elektrophon:STM32_BluePill", "BluePill", unit=1)
        + Label("SCK_1").at("U20", "31")
        + Label("SDI_1").at("U20", "29")
        + Label("CS_1").at("U20", "25")
        + Label("MIDI").at("U20", "26")
        + Label("CONNECT").at("U20", "27")
        + Label("CS_2").at("U20", "32")
        + Label("PULSE").at("U20", "28")
        + Label("SCK_2").at("U20", "2").rotate(180)
        + Label("SDI_2").at("U20", "4").rotate(180)
    )

def schema():
    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"], 
                title="digital", 
                rev="1", 
                date="2023-08-07", 
                comment1="main circuit", 
                comment2="digital controlled oscillator", 
                comment4="License CC BY 4.0 - Attribution 4.0 International")

    draw.pos((20*2.54, 25*2.54))
    draw = integrator(draw)

    draw.pos((10*2.54, 46*2.54))
    draw = triangle(draw)
    
    draw.pos((100*2.54, 40*2.54))
    draw = bluepill(draw)

    draw.pos((70*2.54, 50*2.54))
    draw = dac(draw)

    DaisyAnalogIn(draw, "U5", "CV", "ADC_1", None, 1, (50*2.54, 20*2.54))
    DaisyAnalogIn(draw, "U5", "FM", "ADC_2", "FM_ATTEN", 2, (70*2.54, 20*2.54))
    DaisyAnalogRef(draw, "U6", (90*2.54, 12*2.54))

    power(draw, "J7", ((8*2.54, 69*2.54)))
    power_flags(draw)

    decouple_tl072(draw, "U1", ((30*2.54,72*2.54)), True)
    decouple_tl072(draw, "U2", ((40*2.54,72*2.54)), True)
    decouple_tl072(draw, "U3", ((50*2.54,72*2.54)), True)

    path = 'main'
    if not os.path.exists(path):
        os.mkdir(path)
    draw.write(f"{path}/main.kicad_sch")

def schema_mount():
    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"], 
                title="digital", 
                rev="1", 
                date="2023-08-07", 
                comment1="panel circuit", 
                comment2="digital controlled oscillator", 
                comment4="License CC BY 4.0 - Attribution 4.0 International")

    input_jack(draw, "J1", "CV", (15*2.54, 10*2.54))
    input_regulated(draw, "J2", "RV1", "100k", "FM", (15*2.54, 20*2.54))
    input_regulated(draw, "J3", "RV2", "100k", "PWM", (15*2.54, 30*2.54))
    (draw
        + Element("RV3", "Device:RotaryEncoder_Switch", value="Encoder").at((50*2.54, 20*2.54))
        + Line().left().length(2.54).at("RV3", "C") + Line().down().length(2*2.54) + Gnd()
        + Line().left().length(2*2.54).at("RV3", "A") + Dot().push() + Line().up().length(1*2.54) + R("R4", "10k").rotate(180) + Power("+3.3V") + Line().left().length(4*2.54).at(draw.pop()) + R("R1", "10k").rotate(270) + Line().left().length(4*2.54) + Dot().push() + Line().down().length(2*2.54) + C("C2", "100n") + Gnd() + Line().left().length(1*2.54).at(draw.pop()) + Label("ROT_A").rotate(180)

        + Line().left().length(4*2.54).at("RV3", "B") + Dot().push() + Line().up().length(3*2.54) + R("R3", "10k").rotate(180).label("west") + Power("+3.3V") + Line().left().length(2*2.54).at(draw.pop()) + R("R2", "10k").rotate(270).label("south") + Line().left().length(2*2.54) + Dot().push() + C("C1", "100n").label("west") + Gnd() + Line().left().length(3*2.54).at(draw.pop()) + Label("ROT_B").rotate(180)
        + Gnd().at("RV3", "S2")
        + Line().at("RV3", "S1") + Dot().push() + Line() + Label("ROT_SW") + Line().up().length(1*2.54).at(draw.pop()) + R("R5", "10k").rotate(180) + Power("+3.3V")

        + Element("RV4", "Device:R_Potentiometer", value="100k").mirror('x').at((15*2.54, 40*2.54))
        + Label("PULSE_WIDTH").at("RV4", "2")
        + Power("+15V").at("RV4", "3")
        + Power("-15V").at("RV4", "1").rotate(180)
    )
    output_jack(draw, "J5", "SAW", (15*2.54, 50*2.54))
    output_jack(draw, "J6", "SINE", (15*2.54, 60*2.54))
    output_jack(draw, "J7", "TRIANGLE", (25*2.54, 50*2.54))
    output_jack(draw, "J8", "PULSE", (25*2.54, 60*2.54))

    # draw.pos((30*2.54, 20*2.54))
    # (draw + Label("REVERB").rotate(180) + Line())
    # baxandal(draw)

    # draw.pos((65*2.54, 50*2.54))
    # (draw 
    #  + Element(draw.next("D"), "Device:LED", "LED (Red)")
    #  + Label("LED1").at(draw.last("D"), "1").rotate(180)
    #  + Label("LED2").at(draw.last("D"), "2")
    # )

    draw = (draw
     + Element("P1", "power:PWR_FLAG", value="power").at((104*2.54, 63*2.54))
     + Element("+15V", "power:+15V", value="+15V").rotate(180)
     + Element("P2", "power:PWR_FLAG", value="power").at((106*2.54, 63*2.54))
     + Element("-15V", "power:-15V", value="-15V").rotate(180)
     + Element("P3", "power:PWR_FLAG", value="power").at((108*2.54, 63*2.54))
     + Element("+5V", "power:+5V", value="+5V").rotate(180)
     + Element("P4", "power:PWR_FLAG", value="power").at((110*2.54, 63*2.54))
     + Element("GND", "power:GND", value="GND")
    )

    #add the header
    # draw += Element("J1", "Connector:Conn_01x04_Pin", value="01x04 Male").at((45*2.54, 70*2.54))
    # for i, label in enumerate(["GND", "+15V", "-15V", "+5V"]):
    #     draw += Label(label).at("J1", str(i+1))

    # draw += Element("J2", "Connector:Conn_01x02_Pin", value="01x02 Male").at((55*2.54, 70*2.54))
    # for i, label in enumerate(["LED1", "LED2"]):
    #     draw += Label(label).at("J2", str(i+1))

    # draw += Element("J3", "Connector:Conn_01x03_Pin", value="01x03 Male").at((65*2.54, 70*2.54))
    # for i, label in enumerate(["FB2", "IN", "REVERB"]):
    #     draw += Label(label).at("J3", str(i+1))

    # (draw 
    #  + Element("U6", "Amplifier_Operational:TL072", unit=2, 
    #       value="TL072", Spice_Primitive="X", Spice_Model="TL072c").at((35*2.54, 75*2.54)).mirror('x')
    #  + Gnd().at("U6", "5")
    #  + Line().up().length(5*2.54).at("U6", "7")
    #  + Line().tox("U6", "6")
    #  + Line().toy("U6", "6")
    # )

    # decouple_tl072(draw, "U5", ((15*2.54, 72*2.54)), "yes")
    # decouple_tl072(draw, "U6", ((25*2.54, 72*2.54)), "yes")

    (draw
     + Element("H1", "Mechanical:MountingHole", "H1").at((94*2.54, 61*2.54))
     + Element("H2", "Mechanical:MountingHole", "H2").at((96*2.54, 61*2.54))
     + Element("H3", "Mechanical:MountingHole", "H3").at((94*2.54, 63*2.54))
     + Element("H4", "Mechanical:MountingHole", "H4").at((96*2.54, 63*2.54))
    )

    #assign footprints
    # draw.property("J1", "Footprint", "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical", 2); 
    # draw.property("J2", "Footprint", "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical", 2); 
    # draw.property("J3", "Footprint", "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical", 2); 
    # draw.property("J[4..]", "Footprint", "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical", 2); 
    # draw.property("R[1..]", "Footprint", "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder", 2); 
    # draw.property("C[1..]", "Footprint", "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder", 2); 
    # draw.property("RV[1..]", "Footprint", "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical", 2); 
    # draw.property("U[1..]", "Footprint", "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm", 2); 
    # draw.property("D1", "Footprint", "LED_THT:LED_D5.0mm", 2); 
    # draw.property("D[2..]", "Footprint", "LED_THT:LED_D3.0mm", 2); 
    # draw.property("D3", "Footprint", "Diode_SMD:D_SOD-123", 2); 
    # draw.property("D5", "Footprint", "Diode_SMD:D_SOD-123", 2); 
    # draw.property("D7", "Footprint", "Diode_SMD:D_SOD-123", 2); 
    # draw.property("D9", "Footprint", "Diode_SMD:D_SOD-123", 2); 
    # draw.property("Q[1..]", "Footprint", "Package_TO_SOT_SMD:SOT-23", 2); 
    # draw.property("H[1..]", "Footprint", "MountingHole:MountingHole_2.2mm_M2", 2); 

    #write the kicad schema
    path = 'mount'
    if not os.path.exists(path):
        os.mkdir(path)
    draw.write(f"{path}/mount.kicad_sch")

def schema_panel():
    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"], 
                title="digital", 
                rev="1", 
                date="2023-08-07", 
                comment1="panel circuit", 
                comment2="digital controlled oscillator", 
                comment4="License CC BY 4.0 - Attribution 4.0 International")


    (draw
     + Element("H2", "Mechanical:MountingHole", value="CV").at((20*2.54, 25*2.54))
     + Element("H3", "Mechanical:MountingHole", value="FM").at((20*2.54, 30*2.54))
     + Element("H4", "Mechanical:MountingHole", value="PWM").at((20*2.54, 35*2.54))
     + Element("H5", "Mechanical:MountingHole", value="SINE").at((20*2.54, 40*2.54))
     + Element("H13", "Mechanical:MountingHole", value="TRIANGLE").at((20*2.54, 45*2.54))
     + Element("H14", "Mechanical:MountingHole", value="SAW").at((20*2.54, 50*2.54))
     + Element("H15", "Mechanical:MountingHole", value="PULSE").at((20*2.54, 50*2.54))

     + Element("H6", "Mechanical:MountingHole", value="TUNE").at((40*2.54, 20*2.54))
     + Element("H7", "Mechanical:MountingHole", value="PWM_ATTEN").at((40*2.54, 25*2.54))
     + Element("H8", "Mechanical:MountingHole", value="PWM_INITIAL").at((40*2.54, 30*2.54))
     + Element("H9", "Mechanical:MountingHole", value="FM_ATTEN").at((40*2.54, 35*2.54))


     + Element("H16", "Mechanical:MountingHole", value="").at((50*2.54, 40*2.54))
     + Element("H17", "Mechanical:MountingHole", value="").at((50*2.54, 45*2.54))
     + Element("H18", "Mechanical:MountingHole", value="").at((50*2.54, 50*2.54))
     + Element("H19", "Mechanical:MountingHole", value="").at((50*2.54, 55*2.54))
    )

    #assign footprints
    draw.property("H[1..5]", "Footprint", "elektrophon:panel_jack"); 
    draw.property("H[13..15]", "Footprint", "elektrophon:panel_jack"); 
    draw.property("H[6..12]", "Footprint", "elektrophon:panel_potentiometer"); 
    draw.property("H[16..19]", "Footprint", "elektrophon:MountingHole_Panel_3.2mm_M3"); 

    #write the kicad schema
    path = 'panel'
    if not os.path.exists(path):
        os.mkdir(path)
    draw.write(f"{path}/panel.kicad_sch")


if __name__ == '__main__':
    schema()
    schema_mount()
    schema_panel()

