from elektron import Draw, Element, Label, Line, Nc, Dot, C, R, Gnd, Feedback, Power
import os
import sys
sys.path.append("../../lib/python")

from elektrophon import (decouple_tl072, decouple, power, Attenuverter, light, power_flags)

def input(draw):
    return (draw
        + Label("IN").rotate(180)
        + C(draw.next("C"), "100n").rotate(90) + Dot().push() 
        + R(draw.next("R"), "100k") + Gnd()

        + Line().at(draw.pop()) + R(draw.next("R"), "10k").rotate(90) + Dot().push() + Line()
        + Element("U1", "Amplifier_Operational:NE5532", unit=1, 
              value="NE5532", Spice_Primitive="X", Spice_Model="TL072c").anchor(3)
        + Line().up().length(4*2.54).at(draw.pop())
        + R(draw.next("R"), "10k").rotate(270) + Label("FB2").rotate(180)

        + Line().down().length(5*2.54).at("U1", "1").dot("start")
        + R(draw.next("R"), "10k").rotate(270).tox("U1", "2")
        + Dot().push()
        + Line().toy("U1", "2")
        + R(draw.next("R"), "100k").at(draw.pop()) + Gnd()
        + R(draw.next("R"), "10k").at("U1", "1").rotate(90)
    )

def compressor(draw):
    return (draw
        + Dot().push() + Line()
        + Element("U1", "Amplifier_Operational:NE5532", unit=2, 
              value="NE5532", Spice_Primitive="X", Spice_Model="TL072c").anchor(6).mirror('x')
        + Gnd().at("U1", "5")
        + Line().up().length(2*2.54).at("U1", "7").dot("start")
        + R(draw.next("R"), "1k").rotate(180)
        + Line().left().length(2*2.54)
        + Element("RV3", "Device:R_Potentiometer_Trim", value="100k", Spice_Primitive="X", Spice_Model="Potentiometer").rotate(90).mirror('y').anchor(1).label("north")
        + Line().at("RV3", "2").tox("RV3", "1") + Line().toy("RV3", "1").dot("end")
        + Line().at("RV3", "3").tox(draw.peek())
        + Line().toy(draw.peek())
        + Line().down().length(7*2.54).at(draw.pop())
        + Line().tox("U1", "7")
        + Element("U2", "elektrophon:LCR-0202", value="LCR-0202", Spice_Primitive="X").rotate(180).anchor(3)

        + Line().right().length(12*2.54).at("U1", "7") + Dot().push()
        + Line().down().length(2.54) + Element(draw.next("D"), "Diode:1N4148", "1N4148", Spice_Primitive="D", Spice_Model="D1N4148", Spice_Node_Sequence="2 1").anchor(2).rotate(90).label("west") + Line().toy("U2", "1") + Dot().push()
        + Element(draw.next("D"), "Diode:1N4148", "1N4148", Spice_Primitive="D", Spice_Model="D1N4148", Spice_Node_Sequence="2 1").rotate(270).label("west") + Line() + Dot().push() + Line()
        + Element(draw.next("D"), "Diode:1N4148", "1N4148", Spice_Primitive="D", Spice_Model="D1N4148", Spice_Node_Sequence="2 1").rotate(90).anchor(1)
        + Line().toy("U2", "2") + Dot().push()
        + Line().toy("D1", "1")
        + Element(draw.next("D"), "Diode:1N4148", "1N4148", Spice_Primitive="D", Spice_Model="D1N4148", Spice_Node_Sequence="2 1").anchor(2).rotate(270) + Line().toy("U1", "7") + Dot()

        + Line().at(draw.pop()).left().length(6*2.54) + Element(draw.next("D"), "Device:LED", "LED", on_board="no", Spice_Primitive="D", Spice_Model="LED2", Spice_Node_Sequence="2 1").rotate(180) + Line().tox("U2", "2")
        + R(draw.next("R"), "100").at(draw.pop()) + Gnd()
        + Line().at(draw.pop()).tox("U2", "2")
        + Line().at("U1", "7").toy("U2", "4")
        + Line().at(draw.pop()).tox("D4", "1")
        + Line().right().length(2.54)

    )

def drive(draw):
    return (draw
        + C(draw.next("C"), "100n").rotate(90) + Dot().push()
        + R(draw.next("R"), "10k") + Gnd()
        + Line().at(draw.pop()).right().length(3*2.54)
        + Element("U3", "Amplifier_Operational:NE5532", unit=1, 
              value="NE5532", Spice_Primitive="X", Spice_Model="TL072c").anchor(3)

        + Dot().at("U3", "1") + Line().up().length(3*2.54)
        + Element("U3", "Amplifier_Operational:NE5532", unit=2, 
              value="NE5532", Spice_Primitive="X", Spice_Model="TL072c").anchor(3).mirror('x')
        + Feedback().start("U3", "7").end("U3", "6").dot("start")
        + R(draw.next("R"), "10").at("U3", "7").rotate(90)
        + Line().toy("U3", "1") + (OUT := Dot())
        + R(draw.next("R"), "10").rotate(270)
        + Line().tox("U3", "1")


        + Line().down().length(3*2.54).at("U3", "2")
        + Dot().push()
        + Element(draw.next("C"), "Device:C", "10u (NP)")
        + Element("RV4", "Device:R_Potentiometer_Trim", value="10k", Spice_Primitive="X", Spice_Model="Potentiometer1").anchor(1).label("west")
        + Gnd().at("RV4", "3")
        + Line().at("RV4", "2").toy("RV4", "3")
        + Line().tox("RV4", "3").dot("end")

        + Line().right().length(3*2.54).at(OUT) + Element("J2", "Connector:Conn_Coaxial", value="RCJ-021")
        
        + Line().at(draw.pop()).tox(OUT)
        + Dot().push()
        + Line().tox("J2", "2") + Line().toy("J2", "2")


        + R(draw.next("R"), "12k").at(draw.pop()).toy(OUT).rotate(180)
    )

def recover(draw):
    return (draw
        + Element("J3", "Connector:Conn_Coaxial", value="RCJ-022").mirror('y')
        + Gnd().at("J3", "2")
        + Line().at("J3", "1").right().length(2*2.54)
        + Dot().push()
        + R(draw.next("R"), "10k") + C(draw.next("C"), "10n") + Gnd()
        + Line().at(draw.pop()).right().length(4*2.54)
        + Dot().push()
        + R(draw.next("R"), "220k") + Gnd()
        + Line().at(draw.pop()).right().length(2*2.54)
        + Element("U4", "Amplifier_Operational:NE5532", unit=1, 
              value="NE5532", Spice_Primitive="X", Spice_Model="TL072c").anchor(3).mirror('x')
        + Line().at("U4", "2").up().length(5*2.54) + Dot().push()
        + R(draw.next("R"), "100").rotate(270) + Gnd()
        + R(draw.next("R"), "22k").rotate(90).at(draw.peek()).tox("U4", "1") + Dot() + Line().toy("U4", "1") + (D := Dot())
        + Line().up().length(4*2.54).at(draw.pop())
        + C(draw.next("C"), "1n").rotate(90).tox("U4", "1") + Line().toy(D)
        + Line().length(2.54).at("U4", "1") + Element(draw.next("C"), "Device:C", value="10u (NP)").rotate(90) + Line().length(2.54)

        + Element("U4", "Amplifier_Operational:NE5532", unit=2, 
              value="NE5532", Spice_Primitive="X", Spice_Model="TL072c").anchor(5).mirror('x')
        + Line().at("U4", "6").up().length(5*2.54) + Dot().push()
        + R(draw.next("R"), "2.2k").rotate(270) + Gnd()
        + R(draw.next("R"), "4.7k").rotate(90).at(draw.peek()).tox("U4", "7") + Line().toy("U4", "7") + (D := Dot())
            + Line().length(2.54).at("U4", "7") + Element(draw.next("C"), "Device:C", value="10u (NP)").rotate(90) + Line().length(2.54)
    )

def baxandal(draw):
    return (draw
        + Dot().push() + R(draw.next("R"), "22k").rotate(90) + (IN_DOT := Dot())
        + Element("RV1", "Device:R_Potentiometer", value="100k",
                 Spice_Netlist_Enabled="Y",
                 Spice_Primitive="X",
                 Spice_Model="Potentiometer").anchor(1).rotate(90).mirror('x')
        + Dot().at("RV1", "3") + Line().up().length(4*2.54)
        + C(draw.next("C"), "47n (C0G)").rotate(270).tox("RV1", "1") + Line().at(draw.last("C"), "2").toy(IN_DOT)
        + R(draw.next("R"), "22k").rotate(90).at("RV1", "3") + Dot().push()

        + R(draw.next("R"), "22k").at("RV1", "2") + (D_CENTER := Dot())
        + C(draw.next("C"), "560p (C0G)")
        + Element("RV2", "Device:R_Potentiometer", value="100k",
                 Spice_Netlist_Enabled="Y",
                 Spice_Primitive="X",
                 Spice_Model="Potentiometer1").anchor(2).rotate(90)
        + R(draw.next("R"), "10k").at("RV2", "1").rotate(270).label("south")
        + Line().toy(IN_DOT)
        + R(draw.next("R"), "10k").at("RV2", "3").rotate(90).label("south")
        + Line().toy(draw.peek())

        + Line().right().length(6*2.54).at(D_CENTER)
        + Element("U5", "Amplifier_Operational:TL072", unit=1, 
              value="TL072", Spice_Primitive="X", Spice_Model="TL072c").anchor(2).mirror('x')
        + Gnd().at("U5", "3")
        + Dot().at("U5", "1") + Line().toy(draw.peek()) + Line().tox(draw.pop())
        + Line().at("U5", "1") + Label("TONE")
    )

def out(draw):
    return(draw
        + Label("IN").rotate(180) + R(draw.next("R"), "10k").rotate(90) + Line().right().length(2*2.54)
        + Element("RV5", "Device:R_Potentiometer", value="100k",
                 Spice_Netlist_Enabled="Y",
                 Spice_Primitive="X",
                 Spice_Model="Potentiometer1").rotate(180).mirror('y').anchor(1)
        + Line().left().length(2*2.54).at("RV5", "3") + R(draw.next("R"), "10k").rotate(270) + Label("TONE").rotate(180)
        + R(draw.next("R"), "100k").at("RV5", "2").rotate(90)
        + Element("U5", "Amplifier_Operational:TL072", unit=2, 
              value="TL072", Spice_Primitive="X", Spice_Model="TL072c").anchor(6).mirror('x')
        + Gnd().at("U5", "5")

        + Line().up().at("U5", "7").length(5*2.54).dot("start")
        + R(draw.next("R"), "100k").rotate(270).tox("U5", "6")
        + Line().toy("U5", "6") + Dot() 
        + Line().at("U5", "7") + Label("OUT")

    )

def feedback(draw):
    return(draw
        + Label("FB1").rotate(180) + R(draw.next("R"), "100k").rotate(90)
        + Element("U6", "Amplifier_Operational:TL072", unit=1, 
              value="TL072", Spice_Primitive="X", Spice_Model="TL072c").anchor(2).mirror('x')
        + Gnd().at("U6", "3")
        + Line().up().at("U6", "1").length(5*2.54) + R(draw.next("R"), "100k").rotate(270).tox("U6", "2") + Line().toy("U6", "2").dot("end")
        + Line().at("U6", "1").dot("start") + Label("FB2")
    )

def wire(draw):
    (draw

        #input
        + Element("J4", "Connector_Audio:AudioJack2_SwitchT", value="PJ398SM").at((10*2.54, 20*2.54)).anchor("T")
        + Gnd().rotate(90).at("J4", "S")
        + Label("IN").at("J4", "T")
        + Nc().at("J4", "TN")

        #feeedback
        + Element("J5", "Connector_Audio:AudioJack2_SwitchT", value="PJ398SM").at((10*2.54, 30*2.54)).anchor("T")
        + Gnd().rotate(90).at("J5", "S")
        + Line().at("J5", "T") + Line().right().length(2*2.54)
        + Element("RV3", "Device:R_Potentiometer", value="100k", Spice_Primitive="X", Spice_Model="Potentiometer").rotate(90).mirror('y').anchor(3)
        + Line().at("RV3", "2") + Label("FB1")
        + Gnd().at("RV3", "1")
        + Line().at("J5", "TN").right().length(2*2.54) + R(draw.next("R"), "1k") + Label("TONE").rotate(270)

        #reverb out
        + Element("J6", "Connector_Audio:AudioJack2_SwitchT", value="PJ398SM").at((10*2.54, 40*2.54)).anchor("T")
        + Gnd().rotate(90).at("J6", "S")
        + Line().at("J6", "T") + R(draw.next("R"), "1k") + Label("TONE")
        + Nc().at("J6", "TN")
    )

    #OUT
    draw.pos((8*2.54, 50*2.54))
    (draw
        + Label("OUT").rotate(180) + R(draw.next("R"), "1k").rotate(90) + Line().length(2*2.54)
        + Element("J7", "Connector_Audio:AudioJack2_SwitchT", value="PJ398SM").mirror('y').anchor("T")
        + Gnd().rotate(270).at("J7", "S")
        + Nc().at("J7", "TN")
    )

def schema_main():
    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"], 
                title="hall", 
                rev="1", 
                date="04-03-2023", 
                comment1="main circuit", 
                comment2="module for a spring reverb tank.", 
                comment4="License CC BY 4.0 - Attribution 4.0 International")

    draw.pos((10*2.54, 18*2.54))
    input(draw)
    compressor(draw)
    drive(draw)

    draw.pos((20*2.54, 50*2.54))
    recover(draw)
    draw + Label("REVERB")
    #baxandal(draw)

    (draw
        + Label("LED1").rotate(270).at("D5", "1")
        + Label("LED2").rotate(270).at("D5", "2")
    )

    #add the header
    draw += Element("J4", "Connector:Conn_01x04_Pin", value="01x04 Female").at((70*2.54, 50*2.54))
    for i, label in enumerate(["GND", "+15V", "-15V", "+5V"]):
        draw += Label(label).at("J4", str(i+1))

    draw += Element("J5", "Connector:Conn_01x02_Pin", value="01x02 Female").at((60*2.54, 50*2.54))
    for i, label in enumerate(["LED1", "LED2"]):
        draw += Label(label).at("J5", str(i+1))

    draw += Element("J6", "Connector:Conn_01x03_Pin", value="01x03 Female").at((80*2.54, 50*2.54))
    for i, label in enumerate(["FB2", "IN", "REVERB"]):
        draw += Label(label).at("J6", str(i+1))

    #add power
    power(draw, "J1", ((8*2.54, 69*2.54)))

    decouple(draw, "U1", "Amplifier_Operational:NE5532", "NE5532", ((36*2.54, 72*2.54)), "yes")
    decouple(draw, "U3", "Amplifier_Operational:NE5532", "NE5532", ((45*2.54, 72*2.54)), "yes")
    decouple(draw, "U4", "Amplifier_Operational:NE5532", "NE5532", ((54*2.54, 72*2.54)), "yes")

    power_flags(draw)

    (draw
     + Element("H1", "Mechanical:MountingHole", "H1").at((94*2.54, 61*2.54))
     + Element("H2", "Mechanical:MountingHole", "H2").at((96*2.54, 61*2.54))
     + Element("H3", "Mechanical:MountingHole", "H3").at((94*2.54, 63*2.54))
     + Element("H4", "Mechanical:MountingHole", "H4").at((96*2.54, 63*2.54))
    )

    #assign footprints
    draw.property("J1", "Footprint", "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical"); 
    draw.property("J[2..3]", "Footprint", "elektrophon:CUI_RCJ-026"); 
    draw.property("J4", "Footprint", "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical"); 
    draw.property("J5", "Footprint", "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical"); 
    draw.property("J6", "Footprint", "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical"); 
    draw.property("R[1..]", "Footprint", "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal"); 
    draw.property("C[1..2]", "Footprint", "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm"); 
    draw.property("C[4..5]", "Footprint", "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm"); 
    draw.property("C[10..]", "Footprint", "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm"); 
    draw.property("C[8..9]", "Footprint", "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm"); 
    draw.property("C[6..7]", "Footprint", "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm"); 
    draw.property("C3", "Footprint", "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm"); 
    draw.property("RV[1..]", "Footprint", "Potentiometer_THT:Potentiometer_Bourns_3299W_Vertical"); 
    draw.property("U1", "Footprint", "Package_DIP:DIP-8_W7.62mm_Socket"); 
    draw.property("U2", "Footprint", "DIP-4_W10.16mm"); 
    draw.property("U[3..]", "Footprint", "Package_DIP:DIP-8_W7.62mm_Socket"); 
    draw.property("D[1..]", "Footprint", "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal"); 
    draw.property("D5", "Footprint", "LED_THT:LED_D5.0mm"); 
    draw.property("H[1..]", "Footprint", "MountingHole:MountingHole_2.2mm_M2"); 

    #write the kicad schema
    path = 'main'
    if not os.path.exists(path):
        os.mkdir(path)
    draw.write(f"{path}/main.kicad_sch")

def bipolar_light(draw):
    (draw
        + Element("U6", "Amplifier_Operational:TL072", unit=2, 
              value="TL072", Spice_Primitive="X", Spice_Model="TL072c").anchor(6).mirror('x')
        + Label("FB2").at("U6", "5").rotate(180)
        + Line().at("U6", "7").up().length(5*2.54) + Line().tox("U6", "6") + Line().toy("U6", "6")
        + Dot().at("U6", "7") + R(draw.next("R"), "510").rotate(90) + Element(draw.next("D"), "Device:LED", value="LED").mirror('y').anchor(2) + Gnd().at(draw.last("D"), "1") 
    )

def schema_mount():
    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"], 
                title="hall", 
                rev="1", 
                date="04-03-2023", 
                comment1="mount circuit", 
                comment2="module for a spring reverb tank.", 
                comment4="License CC BY 4.0 - Attribution 4.0 International")

    wire(draw)

    draw.pos((30*2.54, 20*2.54))
    (draw + Label("REVERB").rotate(180) + Line())
    baxandal(draw)

    draw.pos((65*2.54, 50*2.54))
    (draw 
     + Element(draw.next("D"), "Device:LED", "LED (Red)")
     + Label("LED1").at(draw.last("D"), "1").rotate(180)
     + Label("LED2").at(draw.last("D"), "2")
    )


    draw.pos((30*2.54, 50*2.54))
    feedback(draw)

    draw.pos((30*2.54, 40*2.54))
    out(draw)

    light(draw, "IN", "Green", (60*2.54, 20*2.54))
    light(draw, "OUT", "Red", (75*2.54, 20*2.54))
    light(draw, "FB2", "Green", (60*2.54, 40*2.54))
    light(draw, "TONE", "Red", (75*2.54, 40*2.54))

    #add the header
    draw += Element("J1", "Connector:Conn_01x04_Pin", value="01x04 Male").at((45*2.54, 70*2.54))
    for i, label in enumerate(["GND", "+15V", "-15V", "+5V"]):
        draw += Label(label).at("J1", str(i+1))

    draw += Element("J2", "Connector:Conn_01x02_Pin", value="01x02 Male").at((55*2.54, 70*2.54))
    for i, label in enumerate(["LED1", "LED2"]):
        draw += Label(label).at("J2", str(i+1))

    draw += Element("J3", "Connector:Conn_01x03_Pin", value="01x03 Male").at((65*2.54, 70*2.54))
    for i, label in enumerate(["FB2", "IN", "REVERB"]):
        draw += Label(label).at("J3", str(i+1))

    (draw 
     + Element("U6", "Amplifier_Operational:TL072", unit=2, 
          value="TL072", Spice_Primitive="X", Spice_Model="TL072c").at((35*2.54, 75*2.54)).mirror('x')
     + Gnd().at("U6", "5")
     + Line().up().length(5*2.54).at("U6", "7")
     + Line().tox("U6", "6")
     + Line().toy("U6", "6")
    )

    decouple_tl072(draw, "U5", ((15*2.54, 72*2.54)), "yes")
    decouple_tl072(draw, "U6", ((25*2.54, 72*2.54)), "yes")

    power_flags(draw)

    (draw
     + Element("H1", "Mechanical:MountingHole", "H1").at((94*2.54, 61*2.54))
     + Element("H2", "Mechanical:MountingHole", "H2").at((96*2.54, 61*2.54))
     + Element("H3", "Mechanical:MountingHole", "H3").at((94*2.54, 63*2.54))
     + Element("H4", "Mechanical:MountingHole", "H4").at((96*2.54, 63*2.54))
    )

    #assign footprints
    draw.property("J1", "Footprint", "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical"); 
    draw.property("J2", "Footprint", "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical"); 
    draw.property("J3", "Footprint", "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical"); 
    draw.property("J[4..]", "Footprint", "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical"); 
    draw.property("R[1..]", "Footprint", "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder"); 
    draw.property("C[1..]", "Footprint", "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder"); 
    draw.property("RV[1..]", "Footprint", "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical"); 
    draw.property("U[1..]", "Footprint", "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm"); 
    draw.property("D1", "Footprint", "LED_THT:LED_D5.0mm"); 
    draw.property("D[2..]", "Footprint", "LED_THT:LED_D3.0mm"); 
    draw.property("D3", "Footprint", "Diode_SMD:D_SOD-123"); 
    draw.property("D5", "Footprint", "Diode_SMD:D_SOD-123"); 
    draw.property("D7", "Footprint", "Diode_SMD:D_SOD-123"); 
    draw.property("D9", "Footprint", "Diode_SMD:D_SOD-123"); 
    draw.property("Q[1..]", "Footprint", "Package_TO_SOT_SMD:SOT-23"); 
    draw.property("H[1..]", "Footprint", "MountingHole:MountingHole_2.2mm_M2"); 

    #write the kicad schema
    path = 'mount'
    if not os.path.exists(path):
        os.mkdir(path)
    draw.write(f"{path}/mount.kicad_sch")

def schema_panel():
    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"], 
                title="pentode vca", 
                rev="1", 
                date="02-02-2023", 
                comment1="main circuit", 
                comment2="pentode tube vca", 
                comment4="License CC BY 4.0 - Attribution 4.0 International")

    (draw
     + Element("H1", "Mechanical:MountingHole", value="IN1").at((20*2.54, 20*2.54))
     + Element("H2", "Mechanical:MountingHole", value="IN2").at((20*2.54, 25*2.54))
     + Element("H3", "Mechanical:MountingHole", value="FDBK").at((20*2.54, 30*2.54))
     + Element("H4", "Mechanical:MountingHole", value="OUT").at((20*2.54, 35*2.54))

     + Element("H6", "Mechanical:MountingHole", value="level").at((40*2.54, 20*2.54))
     + Element("H7", "Mechanical:MountingHole", value="bass").at((40*2.54, 25*2.54))
     + Element("H8", "Mechanical:MountingHole", value="treble").at((40*2.54, 30*2.54))
     + Element("H9", "Mechanical:MountingHole", value="mix").at((40*2.54, 35*2.54))
     
     + Element("H10", "Mechanical:MountingHole", value="compress").at((40*2.54, 35*2.54))
     
     + Element("H11", "Mechanical:MountingHole", value="").at((50*2.54, 40*2.54))
     + Element("H12", "Mechanical:MountingHole", value="").at((50*2.54, 45*2.54))
    )

    #assign footprints
    draw.property("H[1..4]", "Footprint", "elektrophon:panel_jack"); 
    draw.property("H[5..9]", "Footprint", "elektrophon:panel_potentiometer"); 
    draw.property("H[5..9]", "Footprint", "elektrophon:panel_potentiometer"); 
    draw.property("H10", "Footprint", "elektrophon:panel_led_monitor"); 
    draw.property("H[11..12]", "Footprint", "elektrophon:MountingHole_Panel_3.2mm_M3"); 

    #write the kicad schema
    path = 'panel'
    if not os.path.exists(path):
        os.mkdir(path)
    draw.write(f"{path}/panel.kicad_sch")

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print("wrong arguments, must be build or clean")
    elif sys.argv[1] == "build":
        schema_main()
        schema_mount()
        schema_panel()
    else:
        print(f"unkown argument '{sys.argv[1]}', must be build or clean")
