from elektron import Draw, Element, Label, Line, Nc, Dot, C, R, Gnd, Feedback, Power
import os
import shutil
import sys
sys.path.append("../../lib/python")

from elektrophon import (decouple_tl072, decouple, power, Attenuverter, light)

def input(draw):
    return (draw
        + Label("IN").rotate(180)
        + R(draw.next("R"), "20k").rotate(90) + Line() + Line().down().length(4*2.54) + Dot().push()
        + Line().left().length(2.54) + R(draw.next("R"), "20k").rotate(270) + Label("RES").rotate(180)
        + Line().at(draw.pop()) + Line()
        + Element("U1", "Amplifier_Operational:TL072", unit=1, value="TL072").anchor(2).mirror('x')
        + Line().up().length(5*2.54) + Dot().push()
        + R(draw.next("R"), "20k").rotate(270).tox("U1", "2") + Dot().push()
        + Line().down().toy("U1", "2") + Dot()
        + Line().up().length(4*2.54).at(draw.pop()) 
        + C(draw.next("C"), "22p (C0G)").tox("U1", "1").rotate(90) + Line().toy(draw.pop())
        + Gnd().at("U1", "3")

        + Line().at("U1", "1").dot("start")
        + R(draw.next("R"), "2.2k").rotate(90) + C(draw.next("C"), "470n (C0G)").rotate(90) + Line() + Dot().push()
        + Line().right().length(6*2.54)
        + Element("U2", "1j24b:1J24B", value="1J24B").anchor(6).label((-4*2.54, -6*2.54))
        + Gnd().at("U2", "3")
        + Power("-15V").at("U2", "4").rotate(180)

        + Line().down().length(2.54).at(draw.pop())
        + Element("SW1", "Switch:SW_SPDT", value="Switch", Spice_Primitive="X", Spice_Model="Switch1").anchor(2).rotate(270)
        + Line().left().length(2.54).at("SW1", "3") + Element("RV1", "Device:R_Potentiometer_Trim", value="100k").label("west") + Power("-15V").rotate(180).at("RV1", "3")
        + Line().toy("RV1", "3").at("RV1", "2") + Line().tox("RV1", "3").dot("end")
        + Line().at("SW1", "1") + Element("RV2", "Device:R_Potentiometer_Trim", value="1meg") + Gnd().at("RV2", "3")
        + Line().toy("RV2", "3").at("RV2", "2") + Line().tox("RV2", "3").dot("end")

        
        + R(draw.next("R"), "750 (0.5W)").label("west").at("U2", "1") + Line().right().length(2*2.54) + Dot().push() + Line().tox("U2", "2")
        + C(draw.next("C"), "47u").rotate(180) + Dot()
        + Line().right().length(4*2.54) + Power("-15V").rotate(180)
        + Gnd().at(draw.pop())
    )

def cv(draw):
    return (draw
        + Element("RV3", "Device:R_Potentiometer_Trim", value="100k") + R(draw.next("R"), "100k").rotate(90) + Line() + Line().down().length(4*2.54) + Dot().push()
        + Line().left().length(2.54) + R(draw.next("R"), "100k").rotate(270) + Line().left().length(2.54)
        + Label("GAIN").rotate(180)
        + Line().down().length(4*2.54).at(draw.pop()) + Dot().push()
        + Line().left().length(2.54) + R(draw.next("R"), "100k").rotate(270) + Line().left().length(2.54) + Label("CV1").rotate(180)
        + Line().up().length(2*2.54).at("RV3", "1") + Line().left().length(2.54) + Gnd()
        + Power("-15V").at("RV3", "3").rotate(180)

        + Line().at(draw.pop()).dot("end")
        + Element("U3", "Amplifier_Operational:LM358", value="LM358").anchor(2).mirror('x')
        + Line().up().length(5*2.54).at("U3", "1").dot("start") + Dot().push() + R(draw.next("R"), "220k").rotate(270).tox("U3", "2") + Dot().push() + Line().toy("U3", "2")
        + Line().up().length(4*2.54).at(draw.pop()) + C(draw.next("C"), "22p (C0G)").tox("U3", "1").rotate(90) + Line().toy(draw.pop())

        + R(draw.next("R"), "10k").rotate(90).at("U3", "1") + Line() + Dot().push() + Line() + R(draw.next("R"), "100k").rotate(90)
        + Element("U3", "Amplifier_Operational:LM358", value="LM358", unit=2).anchor(6).mirror('x')
        + Line().up().length(5*2.54).at("U3", "7") + Dot().push() + R(draw.next("R"), "220k").rotate(270).tox("U3", "6") + Dot().push() + Line().toy("U3", "6").dot("end")
        + Line().up().length(4*2.54).at(draw.pop()) + C(draw.next("C"), "22p (C0G)").tox("U3", "7").rotate(90) + Line().toy(draw.pop())
        + Line().at("U3", "7").dot("start") + R(draw.next("R"), "100k").rotate(90) + Line().right().length(16*2.54) + Line().toy("U2", "5") + Line().tox("U2", "5")
    )

def output(draw):
    return (draw
        + Dot().at("U2", "7")
        + Line().right().length(4*2.54)
        + C(draw.next("C"), "470n (C0G)").rotate(90)
        + Line().right().length(2*2.54)
        + Dot().push()
        + Element("U1", "Amplifier_Operational:TL072", unit=2, value="TL072").anchor(5).mirror('x')
        + R(draw.next("R"), "33k").at(draw.pop()).label("west") + Gnd()
        + R(draw.next("R"), "330").at("U1", "7").rotate(90)
        + Line().up().length(5*2.54).at(draw.last("R"), "2") + Dot().push() + R(draw.next("R"), "2.2k").tox("U1", "6").rotate(90) + Dot().push() + Line().toy("U1", "6") 
        + R(draw.next("R"), "1k").rotate(270).at(draw.peek()) + Gnd()
        + Line().up().length(4*2.54).at(draw.pop()) + C(draw.next("C"), "22p (C0G)").rotate(90).tox(draw.peek(), "2") + Line().toy(draw.pop(), "2")
        + Line().at("R15", "2").dot("start") + Label("OUT")

        + R(draw.next("R"), "100k").at("U2", "7").rotate(180)
        + Power("+15V")
        + Gnd().at("U3", "3")
        + Gnd().at("U3", "5")

        + C(draw.next("C"), "0.1u").label("west").at(draw.pop()) + Gnd()
    )


def schema_main():
    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"], 
                title="pentode vca", 
                rev="1", 
                date="02-02-2023", 
                comment1="main circuit", 
                comment2="pentode tube vca", 
                comment4="License CC BY 4.0 - Attribution 4.0 International")

    draw.pos((10*2.54, 24*2.54))
    input(draw)
    draw.pos((10*2.54, 44*2.54))
    cv(draw)
    output(draw)

    draw.pos((75*2.54, 16*2.54))
    (draw
        + Element("J3", "Connector_Audio:AudioJack2_SwitchT", value="PJ398SM").anchor("T")
        + Gnd().rotate(90).at("J3", "S")
        + Nc().at("J3", "TN")
        
        + Line().right().length(3*2.54).at("J3", "T")
        + Element("RV4", "Device:R_Potentiometer", value="A50k",
                     Spice_Netlist_Enabled="Y",
                     Spice_Primitive="X",
                     Spice_Model="Potentiometer1").anchor(3).mirror('x')
        + Label("IN").at("RV4", "2")
        + Gnd().at("RV4", "1")
    )
    draw.pos((90*2.54, 16*2.54))
    (draw
        + Element("J4", "Connector_Audio:AudioJack2_SwitchT", value="PJ398SM").mirror('y').anchor("T")
        + Line().left().length(2*2.54).at("J4", "T") + Label("OUT").rotate(180)
        + Gnd().rotate(270).at("J4", "S")
        + Nc().at("J4", "TN")
    )
    draw.pos((75*2.54, 24*2.54))
    (draw
        + Element("J5", "Connector_Audio:AudioJack2_SwitchT", value="PJ398SM").anchor("T")
        + Gnd().rotate(90).at("J5", "S")
        + Line().down().length(2.54).at("J5", "TN") + Label("OUT").rotate(270)

        + Line().right().length(3*2.54).at("J5", "T")
        + Element("RV5", "Device:R_Potentiometer", value="A50k",
                     Spice_Netlist_Enabled="Y",
                     Spice_Primitive="X",
                     Spice_Model="Potentiometer1").anchor(3).mirror('x')
        + Label("RES").at("RV5", "2")
        + Gnd().at("RV5", "1")
    )
    draw.pos((75*2.54, 44*2.54))
    (draw
        + Element("RV6", "Device:R_Potentiometer", value="A50k",
                     Spice_Netlist_Enabled="Y",
                     Spice_Primitive="X",
                     Spice_Model="Potentiometer1").mirror('x')
        + Power("+15V").at("RV6", "3")
        + Gnd().at("RV6", "1")
        + Label("GAIN").at("RV6", "2")
    )
    draw.pos((75*2.54, 34*2.54))
    (draw
        + Element("J7", "Connector_Audio:AudioJack2_SwitchT", value="PJ398SM").anchor("T")
        + Gnd().rotate(90).at("J7", "S")
        + Nc().at("J7", "TN")
        + Line().right().length(3*2.54).at("J7", "T")

        + Element("RV7", "Device:R_Potentiometer", value="50k",
                     Spice_Netlist_Enabled="Y",
                     Spice_Primitive="X",
                     Spice_Model="Potentiometer1").anchor(3).mirror('x')
        + Label("CV1").at("RV7", "2")
        + Gnd().at("RV7", "1")
    )

    #add power
    power(draw, "J1", ((10*2.54, 69*2.54)))

    decouple(draw, "U1", "Amplifier_Operational:TL072", "TL072", ((38*2.54, 72*2.54)), "yes")
    decouple(draw, "U3", "Amplifier_Operational:LM358", "LM358", ((47*2.54, 72*2.54)), "yes")

    (draw
         + Element("P1", "power:PWR_FLAG", value="power").at((60*2.54, 72*2.54))
         + Element("+15V", "power:+15V", value="+15V").rotate(180)
         + Element("P2", "power:PWR_FLAG", value="power").at((62*2.54,72*2.54))
         + Element("-15V", "power:-15V", value="-15V").rotate(180)
         + Element("P3", "power:PWR_FLAG", value="power").at((64*2.54, 72*2.54))
         + Element("+5V", "power:+5V", value="+5V").rotate(180)
         + Element("P4", "power:PWR_FLAG", value="power").at((66*2.54, 72*2.54))
         + Element("GND", "power:GND", value="GND")
     )

    light(draw, "OUT", "Red", (84*2.54, 40*2.54))

    #assign footprints
    #(property "Footprint" "elektrophon:CUI_RCJ-026" (id 2) (at 0 0 0)
    draw.property("J1", "Footprint", "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical"); 
    draw.property("J[2..]", "Footprint", "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical"); 
    draw.property("R[1..]", "Footprint", "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder"); 
    draw.property("C[..8]", "Footprint", "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder"); 
    draw.property("C[2..3]", "Footprint", "Capacitor_SMD:C_2220_5750Metric_Pad1.97x5.40mm_HandSolder");
    draw.property("C6", "Footprint", "Capacitor_SMD:C_2220_5750Metric_Pad1.97x5.40mm_HandSolder"); 
    draw.property("C[11..]", "Footprint", "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder"); 
    draw.property("C[9..10]", "Footprint", "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm"); 
    draw.property("RV[1..3]", "Footprint", "Potentiometer_THT:Potentiometer_Bourns_3299W_Vertical"); 
    draw.property("RV[4..]", "Footprint", "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical"); 
    draw.property("U1", "Footprint", "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm"); 
    draw.property("U2", "Footprint", "elektrophon:1J24B"); 
    draw.property("U3", "Footprint", "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm"); 
    draw.property("SW1", "Footprint", "elektrophon:SPDT_KIT"); 
    draw.property("D1", "Footprint", "LED_THT:LED_D3.0mm_Horizontal_O1.27mm_Z2.0mm"); 
    draw.property("D2", "Footprint", "Diode_SMD:D_SOD-123"); 

    #write the kicad schema
    path = 'main'
    if not os.path.exists(path):
        os.mkdir(path)
    draw.write(f"{path}/main.kicad_sch")

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
     + Element("H3", "Mechanical:MountingHole", value="CV").at((20*2.54, 30*2.54))
     + Element("H4", "Mechanical:MountingHole", value="OUT").at((20*2.54, 35*2.54))

     + Element("H6", "Mechanical:MountingHole", value="ATT_IN1").at((40*2.54, 20*2.54))
     + Element("H7", "Mechanical:MountingHole", value="ATT_IN2").at((40*2.54, 25*2.54))
     + Element("H8", "Mechanical:MountingHole", value="GAIN").at((40*2.54, 30*2.54))
     + Element("H9", "Mechanical:MountingHole", value="ATT_CV").at((40*2.54, 35*2.54))
     + Element("H10", "Mechanical:MountingHole", value="CLEAN").at((40*2.54, 40*2.54))
     + Element("H11", "Mechanical:MountingHole", value="WINDOW").at((40*2.54, 45*2.54))

     + Element("H12", "Mechanical:MountingHole", value="").at((40*2.54, 30*2.54))
     + Element("H13", "Mechanical:MountingHole", value="").at((40*2.54, 35*2.54))
    )

    #assign footprints
    draw.property("H[1..4]", "Footprint", "elektrophon:panel_jack"); 
    draw.property("H[5..9]", "Footprint", "elektrophon:panel_potentiometer"); 
    draw.property("H10", "Footprint", "elektrophon:panel_switch"); 
    draw.property("H11", "Footprint", "elektrophon:1J24B_mounting_hole"); 
    draw.property("H[12..13]", "Footprint", "elektrophon:MountingHole_Panel_3.2mm_M3"); 

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
        schema_panel()
    else:
        print(f"unkown argument '{sys.argv[1]}', must be build or clean")
