from elektron import Draw, Element, Label, Line, Nc, Dot, C, R, Gnd, Feedback, Power
import os
import sys
sys.path.append("../../lib/python")

from elektrophon import (decouple_tl072, decouple, power, Attenuverter, light)

def schema_main():
    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"], 
                title="funktion", 
                rev="1", 
                date="01-06-2023", 
                comment1="main circuit", 
                comment2="discrete adsr and function generator", 
                comment4="License CC BY 4.0 - Attribution 4.0 International")

    draw.pos((10*2.54, 18*2.54))

    #add the header
    # draw += Element("J4", "Connector:Conn_01x04_Pin", value="01x04 Female").at((70*2.54, 50*2.54))
    # for i, label in enumerate(["GND", "+15V", "-15V", "+5V"]):
    #     draw += Label(label).at("J4", str(i+1))

    # draw += Element("J5", "Connector:Conn_01x02_Pin", value="01x02 Female").at((60*2.54, 50*2.54))
    # for i, label in enumerate(["LED1", "LED2"]):
    #     draw += Label(label).at("J5", str(i+1))

    # draw += Element("J6", "Connector:Conn_01x03_Pin", value="01x03 Female").at((80*2.54, 50*2.54))
    # for i, label in enumerate(["FB2", "IN", "REVERB"]):
    #     draw += Label(label).at("J6", str(i+1))

    # draw = (draw
    #  + Element("P1", "power:PWR_FLAG", value="power").at((104*2.54, 63*2.54))
    #  + Element("+15V", "power:+15V", value="+15V").rotate(180)
    #  + Element("P2", "power:PWR_FLAG", value="power").at((106*2.54, 63*2.54))
    #  + Element("-15V", "power:-15V", value="-15V").rotate(180)
    #  + Element("P3", "power:PWR_FLAG", value="power").at((108*2.54, 63*2.54))
    #  + Element("+5V", "power:+5V", value="+5V").rotate(180)
    #  + Element("P4", "power:PWR_FLAG", value="power").at((110*2.54, 63*2.54))
    #  + Element("GND", "power:GND", value="GND")
    # )

    #add power
    # power(draw, "J1", ((8*2.54, 69*2.54)))

    # decouple(draw, "U1", "Amplifier_Operational:NE5532", "NE5532", ((36*2.54, 72*2.54)), "yes")
    # decouple(draw, "U3", "Amplifier_Operational:NE5532", "NE5532", ((45*2.54, 72*2.54)), "yes")
    # decouple(draw, "U4", "Amplifier_Operational:NE5532", "NE5532", ((54*2.54, 72*2.54)), "yes")

    # (draw
    #  + Element("H1", "Mechanical:MountingHole", "H1").at((94*2.54, 61*2.54))
    #  + Element("H2", "Mechanical:MountingHole", "H2").at((96*2.54, 61*2.54))
    #  + Element("H3", "Mechanical:MountingHole", "H3").at((94*2.54, 63*2.54))
    #  + Element("H4", "Mechanical:MountingHole", "H4").at((96*2.54, 63*2.54))
    # )

    #assign footprints
    # draw.property("J1", "Footprint", "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical", 2); 
    # draw.property("J[2..3]", "Footprint", "elektrophon:CUI_RCJ-026", 2); 
    # draw.property("J4", "Footprint", "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical", 2); 
    # draw.property("J5", "Footprint", "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical", 2); 
    # draw.property("J6", "Footprint", "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical", 2); 
    # draw.property("R[1..]", "Footprint", "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal", 2); 
    # draw.property("C[1..2]", "Footprint", "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm", 2); 
    # draw.property("C[4..5]", "Footprint", "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm", 2); 
    # draw.property("C[10..]", "Footprint", "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm", 2); 
    # draw.property("C[8..9]", "Footprint", "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm", 2); 
    # draw.property("C[6..7]", "Footprint", "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm", 2); 
    # draw.property("C3", "Footprint", "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm", 2); 
    # draw.property("RV[1..]", "Footprint", "Potentiometer_THT:Potentiometer_Bourns_3299W_Vertical", 2); 
    # draw.property("U1", "Footprint", "Package_DIP:DIP-8_W7.62mm_Socket", 2); 
    # draw.property("U2", "Footprint", "DIP-4_W10.16mm", 2); 
    # draw.property("U[3..]", "Footprint", "Package_DIP:DIP-8_W7.62mm_Socket", 2); 
    # draw.property("D[1..]", "Footprint", "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal", 2); 
    # draw.property("D5", "Footprint", "LED_THT:LED_D5.0mm", 2); 
    # draw.property("H[1..]", "Footprint", "MountingHole:MountingHole_2.2mm_M2", 2); 

    #write the kicad schema
    path = 'main'
    if not os.path.exists(path):
        os.mkdir(path)
    draw.write(f"{path}/main.kicad_sch")

def jack(draw, ref, name, pos):
    return(draw
        + Element(ref, "Connector_Audio:AudioJack2_SwitchT", value="PJ398SM").at(pos).anchor("T")
        + Gnd().rotate(90).at(ref, "S")
        + Label(name).at(ref, "T")
        + Nc().at(ref, "TN")
    )

def schema_mount():
    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"], 
                title="funktion", 
                rev="1", 
                date="01-06-2023", 
                comment1="mount circuit", 
                comment2="discrete adsr and function generator", 
                comment4="License CC BY 4.0 - Attribution 4.0 International")



    draw = (draw
        + Element("RV1", "Device:R_Potentiometer", value="10k").rotate(180).mirror('y').anchor(1).at((15*2.54,15*2.54))
        + Element("RV2", "Device:R_Potentiometer", value="10k").rotate(180).mirror('y').anchor(1).at((15*2.54,20*2.54))
        + Element("RV3", "Device:R_Potentiometer", value="10k").rotate(180).mirror('y').anchor(1).at((15*2.54,25*2.54))
        + Element("RV4", "Device:R_Potentiometer", value="10k").rotate(180).mirror('y').anchor(1).at((15*2.54,30*2.54))

        # + Line().left().length(2*2.54).at("RV5", "3") + R(draw.next("R"), "10k").rotate(270) + Label("TONE").rotate(180)
        # + R(draw.next("R"), "100k").at("RV5", "2").rotate(90)
        # + Element("U5", "Amplifier_Operational:TL072", unit=2, 
        #       value="TL072", Spice_Primitive="X", Spice_Model="TL072c").anchor(6).mirror('x')
        # + Gnd().at("U5", "5")

        # + Line().up().at("U5", "7").length(5*2.54).dot("start")
        # + R(draw.next("R"), "100k").rotate(270).tox("U5", "6")
        # + Line().toy("U5", "6") + Dot() 
        # + Line().at("U5", "7") + Label("OUT")
    )

    jack(draw, "J1", "TRIGGER", (25*2.54,15*2.54))
    jack(draw, "J2", "GATE", (25*2.54,20*2.54))
    jack(draw, "J3", "ATTACK", (25*2.54,25*2.54))
    jack(draw, "J4", "RELEASE", (25*2.54,30*2.54))
    jack(draw, "J5", "SUSTAIN", (25*2.54,35*2.54))
    jack(draw, "J6", "RELEASE", (25*2.54,40*2.54))
    jack(draw, "J7", "OUT", (25*2.54,45*2.54))
    jack(draw, "J8", "SGO", (25*2.54,50*2.54))

    (draw
        + Element("SW1", "Switch:SW_SPDT", value="Switch", Spice_Primitive="X", Spice_Model="Switch1").anchor(2).rotate(270)
    )

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

    (draw
     + Element("H1", "Mechanical:MountingHole", "H1").at((94*2.54, 61*2.54))
     + Element("H2", "Mechanical:MountingHole", "H2").at((96*2.54, 61*2.54))
     + Element("H3", "Mechanical:MountingHole", "H3").at((94*2.54, 63*2.54))
     + Element("H4", "Mechanical:MountingHole", "H4").at((96*2.54, 63*2.54))
    )

    # #assign footprints
    draw.property("J[1..]", "Footprint", "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical"); 
    draw.property("RV[1..]", "Footprint", "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical"); 
    draw.property("SW1", "Footprint", "elektrophon:SPDT_KIT"); 
    # draw.property("D1", "Footprint", "LED_THT:LED_D3.0mm_Horizontal_O1.27mm_Z2.0mm", 2); 
    # draw.property("D2", "Footprint", "Diode_SMD:D_SOD-123", 2); 

    #write the kicad schema
    path = 'mount'
    if not os.path.exists(path):
        os.mkdir(path)
    draw.write(f"{path}/mount.kicad_sch")

def schema_panel():
    draw = Draw(["/usr/share/kicad/symbols", "lib/symbols"], 
                title="funktion", 
                rev="1", 
                date="01-06-2023", 
                comment1="main circuit", 
                comment2="discrete adsr", 
                comment4="License CC BY 4.0 - Attribution 4.0 International")

    (draw
     + Element("H1", "Mechanical:MountingHole", value="TRIGGER").at((20*2.54, 20*2.54))
     + Element("H2", "Mechanical:MountingHole", value="GATE").at((20*2.54, 25*2.54))
     + Element("H3", "Mechanical:MountingHole", value="OUT").at((20*2.54, 30*2.54))
     + Element("H4", "Mechanical:MountingHole", value="ATTACK_CV").at((20*2.54, 35*2.54))
     + Element("H5", "Mechanical:MountingHole", value="DECAY_CV").at((20*2.54, 40*2.54))
     + Element("H6", "Mechanical:MountingHole", value="SUSTAIN_CV").at((20*2.54, 45*2.54))
     + Element("H7", "Mechanical:MountingHole", value="RELEASE_CV").at((20*2.54, 50*2.54))
     + Element("H8", "Mechanical:MountingHole", value="SGO").at((20*2.54, 55*2.54))

     + Element("H9", "Mechanical:MountingHole", value="ATTACK").at((40*2.54, 20*2.54))
     + Element("H10", "Mechanical:MountingHole", value="DECAY").at((40*2.54, 25*2.54))
     + Element("H11", "Mechanical:MountingHole", value="SUSTAIN").at((40*2.54, 30*2.54))
     + Element("H12", "Mechanical:MountingHole", value="RELEASE").at((40*2.54, 35*2.54))
     
     + Element("H13", "Mechanical:MountingHole", value="").at((50*2.54, 40*2.54))
     + Element("H14", "Mechanical:MountingHole", value="").at((50*2.54, 45*2.54))
    )

    #assign footprints
    draw.property("H[1..8]", "Footprint", "elektrophon:panel_jack"); 
    draw.property("H[9..12]", "Footprint", "elektrophon:panel_potentiometer"); 
    draw.property("H[13..14]", "Footprint", "elektrophon:MountingHole_Panel_3.2mm_M3"); 

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
