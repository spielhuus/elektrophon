from elektron import Draw, Element, Label, Line, Nc, Dot, C, R, Gnd, Feedback, Power
import os
import sys
sys.path.append("../../lib/python")

from elektrophon import (decouple_tl072, decouple, power, light, input_regulated, output_jack, power_flags)

def mixer(draw):
    (draw 
        + Label("IN_1").rotate(180) + R("R1", "22k").rotate(90) + Line().down().length(4*2.54) + Dot().push()
        + R("R2", "22k").rotate(270) + Label("IN_2").rotate(180)
        + Line().down().length(4*2.54).at(draw.pop()) + Dot().push() + R("R3", "22k").rotate(270) + Label("IN_3").rotate(180)
        + Line().down().length(4*2.54).at(draw.pop()) + Dot().push() + R("R4", "22k").rotate(270) + Label("IN_4").rotate(180)
        + Line().right().length(4*2.54).at(draw.pop()) + Dot()
    )

    (draw 
        + Element("Q1", "elektrophon:THAT340", unit=1, value="THAT340",
                       Spice_Netlist_Enabled="Y",
                       Spice_Primitive="X",
                       Spice_Model="THAT340").anchor(2)

        + Line().at("Q1", "1").up().length(5*2.54) + Dot().push()
        + Line().up().length(5*2.54) + R("R5", "15k").rotate(180).label("west") + Line().up().length(2.54) + Line().right().length(8*2.54) + (head_power := Dot())
        + Power("+12V")
        + Line().right().length(1*2.54).at(draw.pop())
        + Element("Q1", "elektrophon:THAT340", unit=3, value="THAT340",
                       Spice_Netlist_Enabled="Y",
                       Spice_Primitive="X",
                       Spice_Model="THAT340").anchor(6)

        + (OUT_A := Dot()).at("Q1", "7")
        + Line().down().length(8*2.54)
        + R("R7", "560") #+ Power("-6V").rotate(180)
        + Line().at("Q1", "5").tox(head_power)
        + R("R14", "200").rotate(180)
        + Dot().push()
        + Element("RV5", "Device:R_Potentiometer_Trim", value="100", Spice_Primitive="X", Spice_Model="Potentiometer").rotate(180)
        + Line().left().length(2.54).at("RV5", "2")
        + Line().toy(draw.peek())
        + Line().tox(draw.pop())
        + Line().toy(head_power).at("RV5", "3")


        + Line().right().length(8*2.54).at(head_power) + Line().down().length(2.54) + R("R6", "15k") + Line().down().length(5*2.54) + Dot().push()
        + Line().left().length(2.54)
        + Element("Q1", "elektrophon:THAT340", unit=4, value="THAT340",
                       Spice_Netlist_Enabled="Y",
                       Spice_Primitive="X",
                       Spice_Model="THAT340").anchor(9).mirror('y')
        + Line().at("Q1", "10").tox("R14", "1") + Dot()
        
        + Line().down().length(5*2.54).at(draw.pop())
        + Element("Q1", "elektrophon:THAT340", unit=2, value="THAT340",
                       Spice_Netlist_Enabled="Y",
                       Spice_Primitive="X",
                       Spice_Model="THAT340").anchor(14).rotate(180).mirror('x')
        + Gnd().at("Q1", "13")
        + Line().down().length(1*2.54).at("Q1", "12") + Line().tox(head_power) + Dot().push()
        + Line().tox("Q1", "3") + Line().toy("Q1", "3")
        + R("R9", "6.8k").at(draw.pop()) + (negp_dot := Dot()) + Power("-6V").rotate(180)

        + Line().at("Q1", "8").down().length(2*2.54)
        + (OUT_B := Dot())
        + Line().down().length(6*2.54)
        + R("R8", "560") #+ Power("-6V").rotate(180)

        + Line().at(OUT_B).tox("Q1", "2")
        + R("R15", "47k").label("west") + Line().toy("Q1", "2")
        + C("C1", "3.3n").label("west") + Gnd()

        + Line().at(negp_dot).tox("R7", "2")
        + Line().at(negp_dot).tox("R8", "2")

        #The output
        + Line().right().length(13*2.54).at(OUT_A)
        + R("R10", "100").rotate(90) + Label("OUT_A") 
        # + Line().right().length(4*2.54)
        # + Element("RV6", "Device:R_Potentiometer_Dual", "10k").rotate(270).anchor(1)

        + Line().right().length(5*2.54).at(OUT_B)
        + R("R11", "100").rotate(90).label("south") + Label("OUT_B")
        # + Line() + Line().toy("RV6", "4") + Line().tox("RV6", "4")

    )

def input(draw):
     input_regulated(draw, "J1", "RV1", "50k (A)", "IN_1", (15*2.54, 10*2.54), "IN_a")
     input_regulated(draw, "J2", "RV2", "50k (A)", "IN_2", (15*2.54, 20*2.54), "IN_b")
     input_regulated(draw, "J3", "RV3", "50k (A)", "IN_3", (15*2.54, 30*2.54), "IN_c")
     input_regulated(draw, "J4", "RV4", "50k (A)", "IN_4", (15*2.54, 40*2.54), "IN_d")
     output_jack(draw, "J5", "OUT_A", (15*2.54, 50*2.54))
     output_jack(draw, "J6", "OUT_B", (15*2.54, 60*2.54))



def voltage_regulators(draw):
    (draw
        + Element("U1", "elektrophon:NJM79L00S", "NJM79L06").at((38*2.54, 75*2.54))
        + Line().left().length(2*2.54).at("U1", "2") + Dot().push() + Line().left().length(2*2.54) + Power("-15V")
        + Line().right().length(2*2.54).at("U1", "3") + Dot().push() + Line().right().length(2*2.54) + Power("-6V")
        #+ Element("P5", "power:PWR_FLAG", value="power").rotate(180) + Dot()
        + C(draw.next("C"), "0.33u").label("west").at(draw.pop()) + Gnd()
        + C(draw.next("C"), "1.0u").at(draw.pop()) + Gnd()
        + Gnd().at("U1", "1")
    )
    (draw
        + Element("U2", "Regulator_Linear:uA7812", "uA7812").at((54*2.54, 72*2.54))
        + Line().left().length(2*2.54).at("U2", "1") + Dot().push() + Line().left().length(2*2.54) + Power("+15V")
        + Line().right().length(2*2.54).at("U2", "3") + Dot().push() + Line().right().length(2*2.54) + Power("+12V")
        #+ Element("P6", "power:PWR_FLAG", value="power").rotate(180) + Dot()
        + C(draw.next("C"), "0.33u").label("west").at(draw.pop()) + Gnd()
        + C(draw.next("C"), "100n").at(draw.pop()) + Gnd()
        + Gnd().at("U2", "2")
    )

def schema_main():
    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"], 
                title="cp3", 
                rev="1", 
                date="26-07-2023", 
                comment1="main circuit", 
                comment2="Moog like discrete mixer", 
                comment4="License CC BY 4.0 - Attribution 4.0 International")

    draw.pos((30*2.54, 30*2.54))
    mixer(draw)
    input(draw)

    draw + Element("Q1", "elektrophon:THAT340", unit=5, value="THAT340",
                       Spice_Netlist_Enabled="Y",
                       Spice_Primitive="X",
                       Spice_Model="THAT340").at((50*2.54, 54*2.54))
    draw + Nc().at("Q1", "4")
    draw + Nc().at("Q1", "11")

    draw.counter("Q", 5)
    draw.counter("R", 16)
    light(draw, "IN_a", "Green", ((2.54*70, 10*2.54)))
    light(draw, "IN_b", "Green", ((2.54*70, 25*2.54)))
    light(draw, "IN_c", "Green", ((2.54*70, 40*2.54)))
    light(draw, "IN_d", "Green", ((2.54*70, 55*2.54)))
    light(draw, "OUT_A", "Red", ((2.54*90, 10*2.54)))
    light(draw, "OUT_B", "Red", ((2.54*90, 25*2.54)))

    #add power
    draw.counter("C", 2)
    power(draw, "J7", ((8*2.54, 69*2.54)))
    voltage_regulators(draw)

    power_flags(draw)


    #assign footprints
    draw.property("J[1..]", "Footprint", "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical"); 
    draw.property("J7", "Footprint", "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical"); 
    draw.property("RV[1..]", "Footprint", "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical"); 
    draw.property("RV5", "Footprint", "Potentiometer_THT:Potentiometer_Bourns_3299W_Vertical"); 
    draw.property("C[1..]", "Footprint", "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder"); 
    draw.property("C[2..3]", "Footprint", "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm"); 
    draw.property("C[4..6]", "Footprint", "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder"); 
    draw.property("R[1..]", "Footprint", "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder"); 
    draw.property("R[28..29]", "Footprint", "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal"); 
    draw.property("U1", "Footprint", "Package_TO_SOT_SMD:SOT-89-3"); 
    draw.property("U2", "Footprint", "Package_TO_SOT_SMD:SOT-89-3"); 
    draw.property("Q1", "Footprint", "SOIC-14_3.9x8.7mm_P1.27mm"); 
    draw.property("D[1..]", "Footprint", "LED_THT:LED_D3.0mm"); 
    draw.property("D2", "Footprint", "Diode_SMD:D_SOD-123"); 
    draw.property("D4", "Footprint", "Diode_SMD:D_SOD-123"); 
    draw.property("D6", "Footprint", "Diode_SMD:D_SOD-123"); 
    draw.property("D8", "Footprint", "Diode_SMD:D_SOD-123"); 
    draw.property("D10", "Footprint", "Diode_SMD:D_SOD-123"); 
    draw.property("D12", "Footprint", "Diode_SMD:D_SOD-123"); 
    draw.property("Q[2..]", "Footprint", "Package_TO_SOT_SMD:SOT-23"); 
    draw.property("H[1..]", "Footprint", "MountingHole:MountingHole_2.2mm_M2"); 

    #write the kicad schema
    path = 'main'
    if not os.path.exists(path):
        os.mkdir(path)
    draw.write(f"{path}/main.kicad_sch")

def schema_panel():
    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"], 
                title="cp3", 
                rev="1", 
                date="26-07-2023", 
                comment1="panel circuit", 
                comment2="Moog like discrete mixer", 
                comment4="License CC BY 4.0 - Attribution 4.0 International")

    (draw
     + Element("H1", "Mechanical:MountingHole", value="").at((50*2.54, 40*2.54))
     + Element("H2", "Mechanical:MountingHole", value="").at((50*2.54, 45*2.54))

     + Element("H3", "Mechanical:MountingHole", value="IN1").at((20*2.54, 20*2.54))
     + Element("H4", "Mechanical:MountingHole", value="IN2").at((20*2.54, 25*2.54))
     + Element("H5", "Mechanical:MountingHole", value="IN3").at((20*2.54, 25*2.54))
     + Element("H6", "Mechanical:MountingHole", value="IN4").at((20*2.54, 25*2.54))
     + Element("H7", "Mechanical:MountingHole", value="OUT_a").at((20*2.54, 35*2.54))
     + Element("H8", "Mechanical:MountingHole", value="OUT_b").at((20*2.54, 35*2.54))

     + Element("H9", "Mechanical:MountingHole", value="ATTEN_1").at((40*2.54, 20*2.54))
     + Element("H10", "Mechanical:MountingHole", value="ATTEN_2").at((40*2.54, 25*2.54))
     + Element("H11", "Mechanical:MountingHole", value="ATTEN_3").at((40*2.54, 30*2.54))
     + Element("H12", "Mechanical:MountingHole", value="ATTEN_4").at((40*2.54, 35*2.54))
     
    )

    #assign footprints
    draw.property("H[1..2]", "Footprint", "elektrophon:MountingHole_Panel_3.2mm_M3"); 
    draw.property("H[3..8]", "Footprint", "elektrophon:panel_jack"); 
    draw.property("H[9..12]", "Footprint", "elektrophon:panel_potentiometer"); 

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
