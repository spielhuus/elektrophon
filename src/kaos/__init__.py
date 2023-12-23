from elektron import Draw, Element, Label, Line, Nc, Dot
import os
import shutil
import sys
sys.path.append("../../lib/python")

from elektrophon import (decouple_tl072, power)

def oscilator1(draw):
  from elektron import Circuit, Draw, Element, Label, Line, Dot, Simulation
  (draw
    + Element("RV1", "Device:R_Potentiometer", value="100k",
                   Spice_Netlist_Enabled="Y",
                   Spice_Primitive="X",
                   Spice_Model="Potentiometer")
    + Element("-15V", "power:-15V", value="-15V").at("RV1", "3").rotate(180)
    + Element("+15V", "power:+15V", value="+15V").at("RV1", "1")
    + Element("R1", "Device:R", value="100k").at("RV1", "2").rotate(90)
    + Line().down().length(7*2.54)
    + (CV_DOT := Dot())

    + Element("R2", "Device:R", value="100k").rotate(270)
    + Element("RV2", "Device:R_Potentiometer", value="100k",
                   Spice_Netlist_Enabled="Y",
                   Spice_Primitive="X",
                   Spice_Model="Potentiometer").anchor(2)
    + Element("GND", "power:GND", value="GND").at("RV2", "3")
    + Line().up().length(2.54).at("RV2", "1")
    + Line().left().length(2.54)
    + Label("CV").rotate(180)

    + Line().right().length(2*2.54).at(CV_DOT)
    + Element("U2", "Amplifier_Operational:TL072", unit=1, 
              value="TL072", Spice_Primitive="X", Spice_Model="TL072c").anchor(2).mirror('x')
    + Element("GND", "power:GND", value="GND").at("U2", "3")
    + Line().up().length(6*2.54).at("U2", "1")
    + Element("R3", "Device:R", value="100k").tox("U2", "2").rotate(270)
    + Line().toy("U2", "2")
    + Dot()

    + Dot().at("U2", "1")
    + Line().right().length(2.54)
    + Element("R4", "Device:R", value="56k").rotate(90)
    + Line().right().length(2.54)
    + (DOT1 := Dot())
    + Line().right().length(2.54)
    + Element("Q1", "Transistor_BJT:BC547", unit=1, value="BC547",
                   Spice_Netlist_Enabled="Y",
                   Spice_Primitive="Q",
                   Spice_Model="BC846B").anchor(2).mirror('x')
    + Element("R5", "Device:R", value="1k").at(DOT1)
    + Element("GND", "power:GND", value="GND")

    + Line().up().length(2.54).at("Q1", "3")
    + Element("R6", "Device:R", value="10k").rotate(270)
    + Element("-15V", "power:-15V", value="-15V").rotate(180)

    + Dot().at("Q1", "3")
    + Line().right().length(1*2.54)
    + Element("Q2", "Transistor_BJT:BC557", unit=1, value="BC557",
                   Spice_Netlist_Enabled="Y",
                   Spice_Primitive="Q",
                   Spice_Model="BC556B").anchor(2)
    
    + Line().up().at("Q2", "3").toy("Q1", "1")
    + (DOT2 := Dot())
    + Line().tox("Q1", "1")
    + Line().toy("Q1", "1")
    + Line().right().length(2*2.54).at(DOT2)
    + Line().down().length(2.54)
    + Element("GND", "power:GND", value="GND")

    + Line().up().length(2.54).at("Q2", "1")
    + Element("R8", "Device:R", value="15k").rotate(180)
    + Line().up().length(2.54)
    + Element("U1", "Amplifier_Operational:LM13700", value="LM13700", Spice_Primitive="X", Spice_Model="LM13700d", Spice_Node_Sequence="16 15 14 13 12 6 10 9 8 7 11 5 4 3 2 1", unit=1).anchor(16)
    + Line().left().length(2.54).at("U1", "14")
    + Element("GND", "power:GND", value="GND")

    + Line().right().length(3*2.54).at("U1", "12")
    + (DOT3 := Dot())
    + Line().right().length(2*2.54)
    + Element("U3", "Amplifier_Operational:TL072", unit=1, 
              value="TL072", Spice_Primitive="X", Spice_Model="TL072c").anchor(3).mirror('x')
    + Element("C1", "Device:C", value="100n").at(DOT3)
    + Element("GND", "power:GND", value="GND")

    + Dot().at("U3", "1")
    + Line().up().length(5*2.54)
    + Line().tox("U3", "2")
    + Line().toy("U3", "2")
    + Label("TRIANGLE_1").at("U3", "1").rotate(270)

    + Line().right().length(2.54)
    + Element("R9", "Device:R", value="10k").rotate(90)
    + Line().right().length(2.54)
    + Dot()
    + Element("U3", "Amplifier_Operational:TL072", unit=2, 
              value="TL072", Spice_Primitive="X", Spice_Model="TL072c").anchor(5)

    + Dot().at("U3", "7")
    + Line().up().length(5*2.54)
    + (DOT_FB := Dot())
    + Element("R10", "Device:R", value="33k").tox("U3", "5").rotate(270)
    + Line().toy("U3", "5")

    + Element("GND", "power:GND", value="GND").at("U3", "6")
    + Line().right().length(2.54).at("U3", "7")
    + Label("SQUARE_1").rotate(270)

    + Line().up().length(3*2.54).at(DOT_FB)
    + Element("R11", "Device:R", value="100k").rotate(90).length(33*2.54)
    + Line().toy("U1", "13")
    + (DOT_4 := Dot())
    + Line().tox("U1", "13")
    + Element("R7", "Device:R", value="220").at(DOT_4)
    + Element("GND", "power:GND", value="GND")
    
    + Line().right().length(2.54).at("U3", "7")
    + Element("R12", "Device:R", value="100k").rotate(90)
    + (SQUARE_1 := Dot())
    + Element("U5", "Amplifier_Operational:TL072", unit=1, 
              value="TL072", Spice_Primitive="X", Spice_Model="TL072c").anchor(2).mirror('x')
    + Element("GND", "power:GND", value="GND").at("U5", "3")
    + Dot().at("U5", "1")
    + Line().up().length(5*2.54).at("U5", "1")
    + Element("R14", "Device:R", value="18k").tox("U5", "2").rotate(270)
    + Line().toy("U5", "2")

    + Line().up().length(4*2.54).at(SQUARE_1)
    + Dot()
    + Element("R13", "Device:R", value="100k").rotate(270)
    + Element("-15V", "power:-15V", value="-15V")

    + Line().right().length(2.54).at("U5", "1")
    + Label("DATA")
  ) 


def oscilator2(draw):
  from elektron import Circuit, Draw, Element, Label, Line, Dot, Simulation
  (draw
    + Element("RV3", "Device:R_Potentiometer", value="100k",
                   Spice_Netlist_Enabled="Y",
                   Spice_Primitive="X",
                   Spice_Model="Potentiometer")
    + Element("-15V", "power:-15V", value="-15V").at("RV3", "3").rotate(180)
    + Element("+15V", "power:+15V", value="+15V").at("RV3", "1")
    + Element("R15", "Device:R", value="100k").at("RV3", "2").rotate(90)
    + Line().down().length(7*2.54)
    + (CV_DOT := Dot())

    + Element("R16", "Device:R", value="100k").rotate(270)
    + Element("RV4", "Device:R_Potentiometer", value="100k",
                   Spice_Netlist_Enabled="Y",
                   Spice_Primitive="X",
                   Spice_Model="Potentiometer").anchor(2)
    + Element("GND", "power:GND", value="GND").at("RV4", "3")
    + Line().up().length(2.54).at("RV4", "1")
    + Line().left().length(2.54)
    + Label("CV").rotate(180)

    + Line().right().length(2*2.54).at(CV_DOT)
    + Element("U2", "Amplifier_Operational:TL072", unit=2, 
              value="TL072", Spice_Primitive="X", Spice_Model="TL072c").anchor(6).mirror('x')
    + Element("GND", "power:GND", value="GND").at("U2", "5")
    + Line().up().length(6*2.54).at("U2", "7")
    + Element("R17", "Device:R", value="100k").tox("U2", "6").rotate(270)
    + Line().toy("U2", "6")
    + Dot()

    + Dot().at("U2", "7")
    + Line().right().length(2.54)
    + Element("R18", "Device:R", value="56k").rotate(90)
    + Line().right().length(2.54)
    + (DOT1 := Dot())
    + Line().right().length(2.54)
    + Element("Q3", "Transistor_BJT:BC547", unit=1, value="BC547",
                   Spice_Netlist_Enabled="Y",
                   Spice_Primitive="Q",
                   Spice_Model="BC846B").anchor(2).mirror('x')
    + Element("R19", "Device:R", value="1k").at(DOT1)
    + Element("GND", "power:GND", value="GND")

    + Line().up().length(2.54).at("Q3", "3")
    + Element("R20", "Device:R", value="10k").rotate(270)
    + Element("-15V", "power:-15V", value="-15V").rotate(180)

    + Dot().at("Q3", "3")
    + Line().right().length(1*2.54)
    + Element("Q4", "Transistor_BJT:BC557", unit=1, value="BC557",
                   Spice_Netlist_Enabled="Y",
                   Spice_Primitive="Q",
                   Spice_Model="BC556B").anchor(2)
    
    + Line().up().at("Q4", "3").toy("Q3", "1")
    + (DOT2 := Dot())
    + Line().tox("Q3", "1")
    + Line().toy("Q3", "1")
    + Line().right().length(2*2.54).at(DOT2)
    + Line().down().length(2.54)
    + Element("GND", "power:GND", value="GND")

    + Line().up().length(2.54).at("Q4", "1")
    + Element("R22", "Device:R", value="15k").rotate(180)
    + Line().up().length(2.54)
    + Element("U1", "Amplifier_Operational:LM13700", value="LM13700", Spice_Primitive="X", Spice_Model="LM13700d", Spice_Node_Sequence="16 15 14 13 12 6 10 9 8 7 11 5 4 3 2 1", unit=3).anchor(1)
    + Line().left().length(2.54).at("U1", "3")
    + Element("GND", "power:GND", value="GND")

    + Line().right().length(3*2.54).at("U1", "5")
    + (DOT3 := Dot())
    + Line().right().length(2*2.54)
    + Element("U4", "Amplifier_Operational:TL072", unit=1, 
              value="TL072", Spice_Primitive="X", Spice_Model="TL072c").anchor(3).mirror('x')
    + Element("C2", "Device:C", value="100n").at(DOT3)
    + Element("GND", "power:GND", value="GND")

    + Dot().at("U4", "1")
    + Line().up().length(5*2.54)
    + Line().tox("U4", "2")
    + Line().toy("U4", "2")
    + Label("TRIANGLE_2").at("U4", "1").rotate(270)

    + Line().right().length(2.54)
    + Element("R23", "Device:R", value="10k").rotate(90)
    + Line().right().length(2.54)
    + Dot()
    + Element("U4", "Amplifier_Operational:TL072", unit=2, 
              value="TL072", Spice_Primitive="X", Spice_Model="TL072c").anchor(5)

    + Dot().at("U4", "7")
    + Line().up().length(5*2.54)
    + (DOT_FB := Dot())
    + Element("R24", "Device:R", value="33k").tox("U3", "5").rotate(270)
    + Line().toy("U4", "5")

    + Element("GND", "power:GND", value="GND").at("U4", "6")
    + Line().right().length(2.54).at("U4", "7")
    + Label("SQUARE_2").rotate(270)

    + Line().up().length(3*2.54).at(DOT_FB)
    + Element("R25", "Device:R", value="100k").rotate(90).length(33*2.54)
    + Line().toy("U1", "4")
    + (DOT_4 := Dot())
    + Line().tox("U1", "4")
    + Element("R21", "Device:R", value="220").at(DOT_4)
    + Element("GND", "power:GND", value="GND")

    + Line().right().length(2.54).at("U4", "7")
    + Element("R26", "Device:R", value="100k").rotate(90)
    + (SQUARE_2 := Dot())
    + Element("U5", "Amplifier_Operational:TL072", unit=2, 
              value="TL072", Spice_Primitive="X", Spice_Model="TL072c").anchor(6).mirror('x')
    + Element("GND", "power:GND", value="GND").at("U5", "5")
    + Dot().at("U5", "7")
    + Line().up().length(5*2.54).at("U5", "7")
    + Element("R28", "Device:R", value="18k").tox("U5", "2").rotate(270)
    + Line().toy("U5", "6")

    + Line().up().length(4*2.54).at(SQUARE_2)
    + Dot()
    + Element("R27", "Device:R", value="100k").rotate(270)
    + Element("-15V", "power:-15V", value="-15V")

    + Line().right().length(2.54).at("U5", "7")
    + Label("CLOCK")
  ) 

def r2r(draw, x, y):

    from elektron import Circuit, Draw, Element, Label, Line, Dot, Simulation

    draw.pos((x, y))
    last_r = draw.next("R")

    draw + Label(f"V0").rotate(180)
    draw + Line().right().length(9*2.54)
    draw + Element(last_r, "Device:R", value="30k").rotate(90)

    count = 0
    for i in [1,2,3,4,5,6,7]:
      count += 1
      r1 = draw.next("R")
      r2 = draw.next("R")
      draw.pos((x, y + 2.54*i))
      (draw 
        + Label(f"V{i}").rotate(180)
        + Line().right().length((9-count)*2.54)
        + Line().down().length(2*count*2.54)
        + Line().right().length((count)*2.54)
        + Element(r2, "Device:R", value="30k").rotate(90)
        + Line().right().length(2.54).at(last_r, "2")
        + Element(r1, "Device:R", value="15k")
        + Dot()
      ) 
      last_r = r2

    (draw 
      + Line().at(last_r, "2").tox("R42", "2")
      + Element(draw.next("R"), "Device:R", value="15k")
      + Element("GND", "power:GND", value="GND")

      + Dot().at("R30", "1")
      + Line().right().length(4*2.54)

      + Element("U6", "Amplifier_Operational:TL072", value="TL072", unit=1, Spice_Primitive="X", Spice_Model="TL072c").anchor(2).mirror('x')
      # Feedback U1
      + Dot().at("U6", "1")
      + Line().up().length(5*2.54)
      + Element(draw.next("R"), "Device:R", value="10k").rotate(270).tox("U6", "2")
      + Line().toy("U6", "2")
      + Dot()
      + Element("GND", "power:GND", value="GND").at("U6", "3")
      
      + Line().right().length(2*2.54).at("U6", "1")
      + Element("U6", "Amplifier_Operational:TL072", value="TL072", unit=2, Spice_Primitive="X", Spice_Model="TL072c", on_schema="yes").anchor(5).mirror('x')
      + Line().up().length(5*2.54).at("U6", "7")
      + Line().right().tox("U6", "6")
      + Line().right().toy("U6", "6")
      
      + Label("CV").at("U6", "7")
    )

def cd4094(draw):
    from elektron import Element, Label

    draw + Element("U8", "elektrophon:4094N", value="CD4094", unit=1).anchor(1)

    count = 0
    for i in [4,5,6,7,14,13,12,11]:
      draw + Label(f"V{count}").at("U8", str(i))
      count += 1

    draw + Label("STROBE").at("U8", "1").rotate(180)
    draw + Label("XOR").at("U8", "2").rotate(180)
    draw + Label("CLOCK").at("U8", "3").rotate(180)
    draw + Element("+15V", "power:+15V", value="+15V").at("U8", "15").rotate(90)

def xor(draw):
    from elektron import Dot, Element, Label

    (draw
      + Label("V7").rotate(180)
      + Line().right().length(2.54)
      + (IN := Dot())
      + Element("R46", "Device:R", value="20k").rotate(90)
      + Element("Q5", "Transistor_BJT:BC547", unit=1, value="BC547",
                     Spice_Netlist_Enabled="Y",
                     Spice_Primitive="Q",
                     Spice_Model="BC846B").anchor(2)

      + Line().down().length(2*2.54).at("Q5", "3")
      + (Q1_3 := Dot())
      + Line().left().length(7*2.54)
      + Label("DATA").rotate(180)

      + Element("R47", "Device:R", value="20k").at(Q1_3).rotate(90)
      + Element("Q6", "Transistor_BJT:BC547", unit=1, value="BC547",
                     Spice_Netlist_Enabled="Y",
                     Spice_Primitive="Q",
                     Spice_Model="BC846B").anchor(2)
      + Line().at("Q6", "3").tox(IN)
      + Line().toy(IN)

      + Line().at("Q5", "1").tox("Q6", "1")
      + (OUT := Dot())
      + Line().right().length(2.54)
      + Label("XOR")

      + Element("R48", "Device:R", value="47k").at(OUT).rotate(180)
      + Element("+5V", "power:+5V", value="+5V")

      + Line().at(OUT).toy("Q6", "1")
     )

def pwm(draw):
    (draw
      + Label("TRIANGLE_1").rotate(180)
      + Line().right().length(2.54)
      + Element("U7", "Amplifier_Operational:TL072", value="TL072", unit=1, Spice_Primitive="X", Spice_Model="TL072c").anchor(2).mirror('x')

      + Line().left().length(2.54).at("U7", "3")
      + Label("TRIANGLE_2").rotate(180)

      + Element("R49", "Device:R", value="100k").at("U7", "1").rotate(90)
      + Element("U7", "Amplifier_Operational:TL072", value="TL072", unit=2, Spice_Primitive="X", Spice_Model="TL072c").anchor(6).mirror('x')
      + Dot().at("U7", "7")
      + Line().up().length(5*2.54)
      + Element("R50", "Device:R", value="50k").tox("U7", "6").rotate(270)
      + Line().toy("U7", "6")
      + Dot()
      + Element("GND", "power:GND", value="GND").at("U7", "5")

      + Line().right().length(2.54).at("U7", "7")
      + Label("PWM")
    )

def schema():
    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"], title="kaos", rev="1", date="05-02-2023")

    draw.pos((10*2.54, 18*2.54))
    oscilator1(draw)

    draw.pos((10*2.54, 42*2.54))
    oscilator2(draw)

    draw.counter("R", 29)
    r2r(draw, 80*2.54, 10*2.54)

    draw.pos((74*2.54, 50*2.54))
    cd4094(draw)

    draw.pos((50*2.54, 54*2.54))
    xor(draw)

    draw.pos((92*2.54, 54*2.54))
    pwm(draw)

    #add power
    draw.counter("C", 3)
    draw.counter("R", 51)
    
    power(draw, "J1", ((8*2.54, 62*2.54)))
    draw.pos((30*2.54, 62*2.54))
    draw + Element("U1", "Amplifier_Operational:LM13700", value="LM13700", unit=2)
    draw.pos((30*2.54, 67*2.54))
    draw + Element("U1", "Amplifier_Operational:LM13700", value="LM13700", unit=4)

    draw.pos((12*2.54, 76*2.54))
    (draw
      + Element("U1", "Amplifier_Operational:LM13700", value="LM13700", unit=5)
      + Element("+15V", "power:+15V", value="+15V").at("U1", "11")
      + Element("GND", "power:GND", value="GND").at("U1", "6")
      + Dot().at("U1", "11")
      + Line().left().length(3*2.54)
      + Element(draw.next("C"), "Device:C", value="100n", Spice_Netlist_Enabled="false")
      + (GND := Dot())
      + Element(draw.next("C"), "Device:C", value="100n", Spice_Netlist_Enabled="false")
      + Line().tox("U1", "6")
      + Dot()

      + Line().left().length(2*2.54).at(GND)
      + Element("GND", "power:GND", value="GND")
    )

    decouple_tl072(draw, "U2", ((21*2.54, 75*2.54)), "yes")
    decouple_tl072(draw, "U3", ((29*2.54, 75*2.54)), "yes")
    decouple_tl072(draw, "U4", ((37*2.54, 75*2.54)), "yes")
    decouple_tl072(draw, "U5", ((45*2.54, 75*2.54)), "yes")
    decouple_tl072(draw, "U6", ((53*2.54, 75*2.54)), "yes")
    decouple_tl072(draw, "U7", ((61*2.54, 75*2.54)), "yes")

    draw.pos((58*2.54, 70*2.54))
    (draw
      + Element("U8", "elektrophon:4094N", value="CD4094", unit=2)
      + Element("+15V", "power:+15V", value="+15V", on_schema="no").at("U8", "16")
      + Element("GND", "power:GND", value="GND", on_schema="no").at("U8", "8")

      + Dot().at("U8", "16")
      + Line().left().length(3*2.54)
      + Element(draw.next("C"), "Device:C", value="100n", Spice_Netlist_Enabled="false")
      + Element("GND", "power:GND", value="GND")
    )

    (draw
     + Nc().at("U1", "15")
     + Nc().at("U1", "2")
     + Nc().at("U1", "7")
     + Nc().at("U1", "8")
     + Nc().at("U1", "9")
     + Nc().at("U1", "10")
     + Nc().at("U8", "9")
     + Nc().at("U8", "10")

     + Element("P1", "power:PWR_FLAG", value="power").at((40*2.54, 60*2.54))
     + Element("+15V", "power:+15V", value="+15V").rotate(180)
     + Element("P2", "power:PWR_FLAG", value="power").at((42*2.54, 60*2.54))
     + Element("-15V", "power:-15V", value="-15V").rotate(180)
     + Element("P3", "power:PWR_FLAG", value="power").at((44*2.54, 60*2.54))
     + Element("+5V", "power:+5V", value="+5V")
     + Element("P4", "power:PWR_FLAG", value="power").at((46*2.54, 60*2.54))
     + Element("GND", "power:GND", value="GND")
    )

    #write the kicad schema
    path = 'main'
    if not os.path.exists(path):
        os.mkdir(path)
    draw.write(f"{path}/main.kicad_sch")

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print("wrong arguments, must be build or clean")
    elif sys.argv[1] == "build":
        schema()
    else:
        print(f"unkown argument '{sys.argv[1]}', must be build or clean")

