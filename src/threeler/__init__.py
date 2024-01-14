from elektron import Draw, Element, Label, Line, Nc, Dot, C, R, Gnd, Feedback
import os
import shutil
import sys
sys.path.append("../../lib/python")

from elektron import Draw, Element, Label, Line, Dot, R, Gnd, Power, Feedback, Nc
from elektrophon import (decouple, decouple_tl072, power, light)

def input(draw):
    return (draw
      + Element("U1", "Amplifier_Operational:OPA2134", unit=1, value="OPA2134").anchor(3).mirror('x')
      + Line().left().length(2.54).at("U1", "3")
      + R("R3", "22k").rotate(270)
      + Label("IN").rotate(180)

      + Dot().at("U1", "1")
      + Line().up().length(5*2.54).at("U1", "1")
      + (IN1 := Dot())
      + R("R2", "33k").rotate(270).tox("U1", "2")
      + (IN2 := Dot())
      + Line().toy("U1", "2")
      + R("R1", "100k").rotate(270).at(IN2) + Gnd()

      + Line().up().length(4*2.54).at(IN1)
      + Element("C1", "Device:C", value="56p").rotate(270).tox(IN2)
      + Line().toy(IN2)

      + Element("U8", "elektrophon:DG409", value="DG409", unit=1).anchor(8).at("U1", "1")
      
      + Line().at("U8", "7").toy("U8", "6").dot("end")
      + Line().at("U8", "5").toy("U8", "4").dot("end")
      + Line().up().length(2.54)
    )

def filters(draw):
    draw = (draw
      + R("R6", "22k").rotate(180) + Line()
      + Element("U6", "elektrophon:CA3280", unit=1, value="AS3280").anchor(16)
      + Nc().at("U6", "2")
      + Line().right().length(2*2.54).at("U6", "13")
      + Dot().push()
      + Element("U1", "Amplifier_Operational:OPA2134", unit=2, value="OPA2134").anchor(5).mirror('x')
      + Line().up().length(5*2.54).at("U1", "7").dot("start")
      + Dot().push()
      + Line().tox("U1", "6")
      + Dot().push()
      + Line().toy("U1", "6")

      + Line().up().length(5*2.54).at("U6", "15")
      + R("R4", "22k").rotate(90).tox(draw.peek())
      + Line().toy(draw.pop())

      + Line().at(draw.pop()) + Label("OUT_1")

      + Line().left().length(2.54).at("U6", "1")
      + Line().up().length(2.54)
      + R("R5", "68k").rotate(180).label("west")
      + Power("+15V")

      + Line().down().length(1.5*2.54).at(draw.pop())
      + Element("C2", "Device:C", value="220p")

      + Element("U9", "elektrophon:DG409", value="DG409", unit=1).anchor(8).at("U1", "7")

      + Line().at("U8", "6").tox("C2", "2")
      + (C2Dot := Dot())
      + Line().toy("C2", "2")

      + R("R7", "18k").at("U6", "3").label("west")
      + Label("A").rotate(270)
    )

    draw = (draw
            + Line().right().length(2.54).at("U9", "4") + (U9Dot1 :=  Dot())
      + Line().up().length(4*2.54)
      + Line().right().length(3*2.54)
      + Dot().push() + Line()
      + Element("U2", "Amplifier_Operational:OPA2134", unit=1, value="OPA2134").mirror('x').anchor(3)

      + R("R8", "5.6k").at(draw.pop()).label("west") + Gnd()
      + Feedback().start("U2", "1").end("U2", "2").dot("start")
      + R("R12", "22k").rotate(90).at("U2", "1") + Line()

      + Element("U6", "elektrophon:CA3280", unit=2, value="AS3280").anchor(9)
      + Nc().at("U6", "7")

      + Line().right().length(2*2.54).at("U6", "12")
      + Dot()
      + Element("U2", "Amplifier_Operational:OPA2134", unit=2, value="OPA2134").anchor(5).mirror('x')
      + Line().up().length(5*2.54).at("U2", "7").dot("start")
      + Dot().push()
      + Line().tox("U2", "6")
      + Dot().push()
      + Line().toy("U2", "6")

      + Line().up().length(5*2.54).at("U6", "10")
      + R("R10", "22k").rotate(90).tox(draw.peek())
      + Line().toy(draw.pop())

      + Line().right().length(2.54).at(draw.pop()) + Label("OUT_2")

      + Line().left().length(2.54).at("U6", "8")
      + Line().up().length(2.54)
      + R("R11", "68k").rotate(180).label("west") + Power("+15V")

      + Line().down().length(1.5*2.54).at("U2", "5")
      + Element("C3", "Device:C", value="220p")
      + Line().down().length(2.54*4)
      + Line().left().length(11.5*2.54).dot("end")
      + Element("U3", "Amplifier_Operational:OPA2134", unit=1, value="OPA2134").anchor(1).mirror('x')
      + Feedback().start("U3", "1").end("U3", "2")
      
      + Line().left().length(2.54).at("U3", "3") + Dot().push()
      + R("R9", "5.6k").label("west") + Gnd()
      + Line().at(draw.pop()).left().length(2*2.54)
      + Dot().push()
      + Line().at(draw.peek()).toy("U9", "5") + Line().tox("U9", "5")
      + Line().at(draw.pop()).toy("U9", "7") + Line().tox("U9", "7")

      + Line().at("U9", "6") + Line().toy(U9Dot1)
      + R("R13", "18k").at("U6", "6").label("west")
      + Label("A").rotate(270)
    )

    draw = (draw
      + Line().right().length(2*2.54).at("U2", "7")
      + (D1 := Dot())
      + Line().up().length(2*2.54)
      + Element("C4", "Device:C", value="470p").rotate(90)
      + Line().down().length(2*2.54)
      + (D2 := Dot())
      + Line().down().length(2*2.54).at(D1)
      + R("R14", "22k").rotate(90)
      + Line().up().length(2*2.54)

      + Line().right().length(2*2.54).at(D2)
      + Element("U7", "elektrophon:CA3280", unit=1, value="AS3280").anchor(15)

      + R("R15", "22k").at("U7", "16").label("west") + Gnd()

      + Line().left().length(2.54).at("U7", "1")
      + Line().up().length(2*2.54)
      + R("R16", "68k").rotate(180) + Power("+15V")

      + Dot().at("U7", "13")
      + Element("U3", "Amplifier_Operational:OPA2134", unit=2, value="OPA2134").anchor(6).mirror('x')
      + Gnd().at("U3", "5")

      + Label("B").at("U7", "3").rotate(90)
      + Nc().at("U7", "2")

      + Line().at("U3", "7").up().length(5*2.54)
      + (FB1 := Dot())
      + Element("R17", "Device:R", value="220k").rotate(270).tox("U3", "6")
      + (FB2 := Dot())
      + Line().toy("U3", "6")
      + Line().up().length(3*2.54).at(FB1)
      + Element("D2", "Device:D_Zener", value="1N5236").anchor(2)
      + Element("D1", "Device:D_Zener", value="1N5236").rotate(180).at("D2", "1")
      + Line().toy(FB2)

      + Dot().at("U3", "7")
      + Line().down().length(18*2.54)
      + Element("U9", "elektrophon:DG409", value="DG409", unit=2).anchor(9).mirror('y')
    )

    draw = (draw
      + Line().left().length(3*2.54).at("U9", "13") + Dot().push()
      + Line().left().length(2.54)

      + Element("U4", "Amplifier_Operational:OPA2134", unit=1, value="OPA2134").rotate(180).anchor(3)
      + Feedback().start("U4", "1").end("U4", "2").dot("start")
      + R("R18", "5.6k").at(draw.pop()) + Gnd()

      + Line().at("U9", "12").toy("U9", "13") + Dot()
      + Line().at("U9", "11").toy("U9", "10") + Dot()

      + Line().down().length(3*2.54).at("U9", "10")
      + Line().left().length(3*2.54) + Dot().push()
      + Line().left().length(2.54)
      + Element("U4", "Amplifier_Operational:OPA2134", unit=2, value="OPA2134").rotate(180).anchor(5)
      + Feedback().start("U4", "7").end("U4", "6").dot("start")
      + R("R19", "5.6k").at(draw.pop()) + Gnd()
      + Line().at("U9", "12").toy("U9", "13") + Dot()
      
      + R("R22", "22k").rotate(270).at("U4", "1")
      + Line().left().length(2.54)

      + Element("U7", "elektrophon:CA3280", unit=2, value="AS3280").anchor(16).rotate(180).mirror('x')

      + Line().right().length(2.54).at("U7", "8")
      + Line().up().length(2*2.54)
      + R("R21", "68k").rotate(180) + Power("+15V")

      + Line().left().length(2*2.54).at("U7", "12")
      + (Cap := Dot())
      + Line().left().length(2*2.54)
      + Element("U5", "Amplifier_Operational:OPA2134", unit=1, value="OPA2134").anchor(3).rotate(180)
      + Dot().at("U5", "1")
      + Line().up().length(5*2.54).at("U5", "1")
      + (D_OUT_3 := Dot())
      + Line().tox("U5", "2")
      + (FB := Dot())
      + Line().toy("U5", "2")

      + Line().up().length(5*2.54).at("U7", "10")
      + R("R20", "22k").rotate(90).tox(FB)
      + Line().toy(FB)

      + Element("U8", "elektrophon:DG409", value="DG409", unit=2).anchor(9).mirror('y').at("U5", "1")

      + Element("C5", "Device:C", value="220p").at(Cap).label("west")
      + Line().toy("U4", "7") + Line().tox("U4", "7")

      + R("R23", "18k").at("U7", "6") + Label("A").rotate(90)
      + Nc().at("U7", "7")

      + Line().left().length(2.54).at(D_OUT_3)
      + Label("OUT_3").rotate(180)

      + Line().at("U8", "12").toy("U8", "13") + Dot()
      + Line().tox(C2Dot)
      + Line().toy(C2Dot)
      + Line().at("U8", "10").toy("U8", "11") + Dot()
      + Line().left().length(20*2.54)
      + Line().toy("U8", "4")
      + Line().tox("U8", "4")
    )

def cv(draw):
    return (draw

      + Label("COARSE").rotate(180)
      + Element("R24", "Device:R", value="120k").rotate(90)
      + Line().down().length(4*2.54)
      + (D_IN_1 := Dot())
      + Line().down().length(4*2.54)
      + (D_IN_2 := Dot())
      + Line().down().length(4*2.54)
      + (D_IN_3 := Dot())

      + Element("R25", "Device:R", value="2.2meg").rotate(270).at(D_IN_1)
      + Label("FINE").rotate(180)
      + Element("R26", "Device:R", value="100k").rotate(270).at(D_IN_2)
      + Label("V/O").rotate(180)
      + Element("R27", "Device:R", value="150k").rotate(270).at(D_IN_3)
      + Label("FM").rotate(180)

      + Line().right().length(5*2.54).at(D_IN_3)
      + Element("U10", "Amplifier_Operational:OPA2134", unit=1, value="OPA2134").anchor(2).mirror('x')
      + Line().up().length(5*2.54).at("U10", "1")
      + (D_CV_1 := Dot())
      + Element("C6", "Device:C", value="180p").rotate(270).tox("U10", "2")
      + (D_CV_2 := Dot())
      + Line().toy("U10", "2") + Dot()
      + Gnd().at("U10", "3")

      + Line().up().length(4*2.54).at(D_CV_1)
      + Element("R29", "Device:R", value="2k").rotate(270).tox(D_CV_2)
      + (D_CV_3 := Dot())
      + Line().toy(D_CV_2)

      + Line().left().length(3*2.54).at(D_CV_3)
      + Element("R28", "Device:R", value="270k")
      + Element("GND", "power:GND", value="GND")

      + Dot().at("U10", "1") + Line().down().length(2.54)
      + Element("RV1", "Device:R_Potentiometer_Trim", value="100").anchor(1)
      + Element("R30", "Device:R", value="330").at("RV1", "3")
      + Element("GND", "power:GND", value="GND")

      + Line().right().length(2.54).at("RV1", "2")
      + Element("Q1", "elektrophon:AS395", value="AS395", unit=1).anchor(3).mirror('x')
      + Line().length(6*2.54).at("Q1", "4")
      + Element("Q1", "elektrophon:AS395", value="AS395", unit=2).anchor(6).rotate(180)
      + Element("GND", "power:GND", value="GND").at("Q1", "7")
      
      + Line().right().length(10*2.54).at("Q1", "8")
      + Line().down().length(5*2.54)
      + (Q_DOT := Dot())
      + Line().down().length(5*2.54) + Dot().push()
      + Line().left().length(2*2.54)
      + Element("U10", "Amplifier_Operational:OPA2134", unit=2, value="OPA2134").rotate(180).anchor(6)
      + Element("GND", "power:GND", value="GND").at("U10", "5")
      + R("R33", "330k").at(draw.pop()) + Power("-15V").rotate(180)
      + Line().at("U10", "7").tox("Q1", "4")
      + (Q_DOT_2 := Dot())
      + Element("R31", "Device:R", value="3.3k").rotate(180).toy("Q1", "4")
      + Dot()

      + Element("C7", "Device:C", value="180p").at(Q_DOT).rotate(270).tox("U10", "7")
      + Line().toy("U10", "7")
      + Dot()

      + Element("D3", "Diode:1N4148", value="1N4148").mirror('y').anchor(2).rotate(180).at(Q_DOT_2)
      + Element("R32", "Device:R", value="1meg").rotate(270).at("D3", "1")
      + Line().tox(D_IN_3) + Line().toy(D_IN_3)

      + Label("A").rotate(90).at("Q1", "2")
    )

def res(draw):
    return (draw

      + Label("RES").rotate(180)
      + Element("R34", "Device:R", value="120k").rotate(90)
      + Line().down().length(4*2.54)
      + (D_IN_1 := Dot())

      + Element("R35", "Device:R", value="100").rotate(270).at(D_IN_1)
      + Label("RES_MOD").rotate(180)

      + Line().right().length(2.54).at(D_IN_1)
      + Element("U11", "Amplifier_Operational:OPA2134", unit=1, value="OPA2134").mirror('x').anchor(2)
      + Element("GND", "power:GND", value="GND").at("U11", "3")
      + Line().right().length(2.54).at("U11", "1")
      + Element("U11", "Amplifier_Operational:OPA2134", unit=2, value="OPA2134").mirror('x').anchor(5)
      
      + Dot().at("U11", "1")
      + Line().up().length(5*2.54)
      + Element("R36", "Device:R", value="100k").rotate(270).tox("U11", "2")
      + Line().toy("U11", "2") + Dot()

      + Line().up().length(8*2.54).at("U11", "7")
      + Line().left().length(2.54)
      + Element("Q2", "Transistor_BJT:2N3906", value="2N3906").anchor(2).mirror('y')
      + Line().at("Q2", "1").tox("U11", "6")
      + Line().toy("U11", "6") + Dot()

      + Line().down().length(4*2.54).at("U11", "6")
      + Element("R37", "Device:R", value="18k")
      + Element("GND", "power:GND", value="GND")

      + Label("B").rotate(90).at("Q2", "3")
    )

def wire(draw):
    draw += Element("J2", "Connector:Conn_01x08_Pin", value="01x08 Female").at((45*2.54, 65*2.54))
    for i, label in enumerate(["+15V", "+5V", "-15V", "GND", "IN", "RES", "RES_MOD", "OUT_1"]):
        draw += Label(label).at("J2", str(i+1))
    
    draw += Element("J3", "Connector:Conn_01x04_Pin", value="01x04 Female").at((50*2.54, 65*2.54))
    for i, label in enumerate(["A0", "A1", "OUT_2", "OUT_3"]):
        draw += Label(label).at("J3", str(i+1))

    draw += Element("J4", "Connector:Conn_01x04_Pin", value="01x04 Female").at((55*2.54, 65*2.54))
    for i, label in enumerate(["FINE", "V/O", "FM", "COARSE"]):
        draw += Label(label).at("J4", str(i+1))

    (draw 
      + Element("U8", "elektrophon:DG409", value="DG409", unit=3).at((108*2.54, 16*2.54))
      + Dot().at("U8", "14")
      + Element("+15V", "power:+15V", value="+15V")

      + Dot().at("U8", "3")
      + Element("-15V", "power:-15V", value="-15V").rotate(180)

      + Element("GND", "power:GND", value="GND").at("U8", "15")

      + Label("A0").at("U8", "1")
      + Label("A1").at("U8", "16")

      + Line().right().length(2*2.54).at("U8", "2")
      + Element("+15V", "power:+15V", value="+15V")

      + Line().left().length(6*2.54).at("U8", "14")
      + Line().down().length(2.54)
      + Element("C29", "Device:C", value="100n")
      + (GDOT := Dot())
      + Line().left().length(2*2.54)
      + Element("GND", "power:GND", value="GND")
      
      + Line().left().length(6*2.54).at("U8", "3")
      + Line().up().length(2.54)
      + Element("C28", "Device:C", value="100n").rotate(180)
      + Line().toy(GDOT)
    )

    (draw 
      + Element("U9", "elektrophon:DG409", value="DG409", unit=3).at((108*2.54, 34*2.54))
      + Dot().at("U9", "14")
      + Element("+15V", "power:+15V", value="+15V")

      + Dot().at("U9", "3")
      + Element("-15V", "power:-15V", value="-15V").rotate(180)

      + Element("GND", "power:GND", value="GND").at("U9", "15")

      + Label("A0").at("U9", "1")
      + Label("A1").at("U9", "16")

      + Line().right().length(2*2.54).at("U9", "2")
      + Element("+15V", "power:+15V", value="+15V")

      + Line().left().length(6*2.54).at("U9", "14")
      + Line().down().length(2.54)
      + Element("C30", "Device:C", value="100n")
      + (GDOT := Dot())
      + Line().left().length(2*2.54)
      + Element("GND", "power:GND", value="GND")
      
      + Line().left().length(6*2.54).at("U9", "3")
      + Line().up().length(2.54)
      + Element("C31", "Device:C", value="100n").rotate(180)
      + Line().toy(GDOT)
    )

    draw + Element("U5", "Amplifier_Operational:OPA2134", value="OPA2134", unit=2).at((50*2.54, 72*2.54))
    draw + Nc().at("U5", "5")
    draw + Nc().at("U5", "6")
    draw + Nc().at("U5", "7")

    draw.counter("C", 8)
    draw.counter("R", 38)
    power(draw, "J1", ((8*2.54, 69*2.54)))
    for i in range(1, 6):
      decouple(draw, f"U{i}", "Amplifier_Operational:OPA2134", "OPA2134", ((2.54 * (9 * i + 66), 50*2.54)), "yes")

    (draw
      + Element("U6", "elektrophon:CA3280", value="AS3280", unit=3).at((2.54 * (69), 60*2.54))
      + Element("+15V", "power:+15V", value="+15V", unit=1).at("U6", "14")
      + Element("-15V", "power:-15V", value="-15V", unit=1).at("U6", "4").rotate(180)

      + Dot().at("U6", "14")
      + Line().tox("U6", "11") + Dot()
      + Line().left().length(3*2.54)
      + Element(draw.next("C"), "Device:C", value="100n", Spice_Netlist_Enabled="false")
      + (GND := Dot())
      + Element(draw.next("C"), "Device:C", value="100n", Spice_Netlist_Enabled="false")
      + Line().tox("U6", "4")
      + Dot()
      + Line().at(GND).left().length(2*2.54) + Gnd()
    )

    (draw
      + Element("U7", "elektrophon:CA3280", value="AS3280", unit=3).at((2.54 * (80), 60*2.54))
      + Element("+15V", "power:+15V", value="+15V", unit=1).at("U7", "14")
      + Element("-15V", "power:-15V", value="-15V", unit=1).at("U7", "4").rotate(180)

      + Dot().at("U7", "14")
      + Line().tox("U7", "11") + Dot()
      + Line().left().length(3*2.54)
      + Element(draw.next("C"), "Device:C", value="100n", Spice_Netlist_Enabled="false")
      + (GND := Dot())
      + Element(draw.next("C"), "Device:C", value="100n", Spice_Netlist_Enabled="false")
      + Line().tox("U7", "4")
      + Dot()
      + Line().at(GND).left().length(2*2.54) + Gnd()
    )

    for i in range(10, 12):
      decouple(draw, f"U{i}", "Amplifier_Operational:OPA2134", "OPA2134", ((2.54 * (10 * (i-10) + 94), 60*2.54)), "yes")

    Line().left().length(2*2.54).at(GND)
    Element("GND", "power:GND", value="GND")


def schema_main():
    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"], 
                title="threeler", 
                rev="1", 
                date="04-03-2023", 
                comment1="main circuit", 
                comment2="Filter by Ian Fritz", 
                comment4="License CC BY 4.0 - Attribution 4.0 International")

    #input 
    draw.pos((10*2.54, 28*2.54))
    input(draw)
    filters(draw)

    draw.pos((8*2.54, 36*2.54))
    cv(draw)

    draw.pos((48*2.54, 50*2.54))
    res(draw)
    wire(draw)

    draw + Element("U6", "elektrophon:CA3280", value="AS3280", unit=4).at((30*2.54, 72*2.54))
    draw + Nc().at("U6", "5")
    draw + Element("U7", "elektrophon:CA3280", value="AS3280", unit=4).at((35*2.54, 72*2.54))
    draw + Nc().at("U7", "5")
    draw + Element("Q1", "elektrophon:AS395", value="AS395", unit=3).at((40*2.54, 72*2.54))
    draw + Nc().at("Q1", "5")
    draw + Nc().at("Q1", "1")

    #assign footprints
    draw.property("J1", "Footprint", "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical"); 
    draw.property("J2", "Footprint", "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical"); 
    draw.property("J3", "Footprint", "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical"); 
    draw.property("J4", "Footprint", "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical"); 
    draw.property("R[1..]", "Footprint", "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal"); 
    draw.property("C[1..]", "Footprint", "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm"); 
    draw.property("C[2..3]", "Footprint", "Capacitor_THT:C_Axial_L12.0mm_D6.5mm_P15.00mm_Horizontal"); 
    draw.property("C5", "Footprint", "Capacitor_THT:CP_Axial_L11.0mm_D5.0mm_P18.00mm_Horizontal"); 
    draw.property("C[8..9]", "Footprint", "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm"); 
    draw.property("U[1..]", "Footprint", "Package_DIP:DIP-8_W7.62mm_Socket"); 
    draw.property("U[6..7]", "Footprint", "Package_DIP:DIP-16_W7.62mm_Socket"); 
    draw.property("U[8..9]", "Footprint", "Package_DIP:DIP-16_W7.62mm_Socket"); 
    draw.property("D[1..2]", "Footprint", "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_AnodeUp"); 
    draw.property("Q1", "Footprint", "Package_TO_SOT_THT:TO-5-8"); 
    draw.property("Q2", "Footprint", "Package_TO_SOT_THT:TO-92_Inline_Wide"); 
    draw.property("RV1", "Footprint", "Potentiometer_THT:Potentiometer_Bourns_3266Z_Horizontal"); 

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

    #write the kicad schema
    path = 'main'
    if not os.path.exists(path):
        os.mkdir(path)
    draw.write(f"{path}/main.kicad_sch")

def schema_mount():
    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"], 
                title="threeler", 
                rev="1", 
                date="04-06-2023", 
                comment1="mount circuit", 
                comment2="VCF from Ian Fritz", 
                comment4="License CC BY 4.0 - Attribution 4.0 International")


    #INPUT
    draw.pos((20*2.54, 10*2.54))
    (draw
        + Element("J4", "Connector_Audio:AudioJack2_SwitchT", value="IN").anchor("T")
        + Gnd().rotate(90).at("J4", "S")
        + Nc().at("J4", "TN")
        + Line().length(4*2.54).at("J4", "T") + Label("IN_JACK").rotate(90)
        + Element("RV1", "Device:R_Potentiometer", value="100k")
        + Gnd().at("RV1", "3")
        + Label("IN").at("RV1", "2")
    )
    #coarse
    draw.pos((20*2.54, 20*2.54))
    (draw
        + Element("RV2", "Device:R_Potentiometer", value="100k")
        + Power("+15V").at("RV2", "1")
        + Power("-15V").at("RV2", "3").rotate(180)
        + Label("COARSE").at("RV2", "2")
    )
    #fine
    draw.pos((20*2.54, 30*2.54))
    (draw
        + Element("RV3", "Device:R_Potentiometer", value="100k")
        + Power("+15V").at("RV3", "1")
        + Power("-15V").at("RV3", "3").rotate(180)
        + Label("FINE").at("RV3", "2")
    )
    #V/O
    draw.pos((20*2.54, 40*2.54))
    (draw
        + Element("J5", "Connector_Audio:AudioJack2_SwitchT", value="IN").anchor("T")
        + Gnd().rotate(90).at("J5", "S")
        + Nc().at("J5", "TN")
        + Label("V/O").at("J5", "T")
    )
    #FM
    draw.pos((20*2.54, 50*2.54))
    (draw
        + Element("J6", "Connector_Audio:AudioJack2_SwitchT", value="FM").anchor("T")
        + Gnd().rotate(90).at("J6", "S")
        + Nc().at("J6", "TN")
        + Line().length(4*2.54).at("J6", "T") + Label("FM_JACK").rotate(90)
        + Element("RV4", "Device:R_Potentiometer", value="100k")
        + Gnd().at("RV4", "3")
        + Label("FM").at("RV4", "2")
    )
    #RES
    draw.pos((40*2.54, 20*2.54))
    (draw
        + Element("RV5", "Device:R_Potentiometer", value="100k")
        + Power("+15V").at("RV5", "1")
        + Gnd().at("RV5", "3")
        + Label("RES").at("RV5", "2")
    )
    #RES_MOD
    draw.pos((40*2.54, 30*2.54))
    (draw
        + Element("J7", "Connector_Audio:AudioJack2_SwitchT", value="IN").anchor("T")
        + Gnd().rotate(90).at("J7", "S")
        + Nc().at("J7", "TN")
        + Line().length(4*2.54).at("J7", "T") + Label("RES_MOD_JACK").rotate(90)
        + Element("RV6", "Device:R_Potentiometer", value="100k")
        + Gnd().at("RV6", "3")
        + Label("RES_MOD").at("RV6", "2")
    )
    #OUT
    draw.pos((40*2.54, 40*2.54))
    (draw
        + Element("J8", "Connector_Audio:AudioJack2_SwitchT", value="OUT").anchor("T")
        + Gnd().rotate(90).at("J8", "S")
        + Nc().at("J8", "TN")
        + Label("OUT_1").at("J8", "T")
    )
    draw.pos((40*2.54, 45*2.54))
    (draw
        + Element("J9", "Connector_Audio:AudioJack2_SwitchT", value="OUT").anchor("T")
        + Gnd().rotate(90).at("J9", "S")
        + Nc().at("J9", "TN")
        + Label("OUT_2").at("J9", "T")
    )
    draw.pos((40*2.54, 50*2.54))
    (draw
        + Element("J10", "Connector_Audio:AudioJack2_SwitchT", value="OUT").anchor("T")
        + Gnd().rotate(90).at("J10", "S")
        + Nc().at("J10", "TN")
        + Label("OUT_3").at("J10", "T")
    )

    (draw
     + Element("SW1", "elektrophon:SW_Rotary2x4", value="2P4T").at((80*2.54, 50*2.54))
     + Label("A0").at("SW1", "1")
     + Label("A1").at("SW1", "6")
     + Line().at("SW1", "2") + Dot().push()
     + Line().toy("SW1", "3") + Dot().push() + Line().tox("SW1", "3")
     + Line().at(draw.pop()).toy("SW1", "7") + Dot().push() + Line().tox("SW1", "7")
     + Line().at(draw.pop()).toy("SW1", "9") + Line().tox("SW1", "9")
     + Power("+15V").at(draw.pop())

     + Line().at("SW1", "6") + Dot().push()

     + Line().length(2*2.54).at("SW1", "4")
     + Line().toy("SW1", "5") + Dot().push() + Line().tox("SW1", "5")
     + Line().at(draw.pop()).toy("SW1", "8") + Dot().push() + Line().tox("SW1", "8") 
     + Line().at(draw.pop()).toy("SW1", "10") + Dot().push() + Line().tox("SW1", "10") 
     + Power("-15V").at(draw.pop()).rotate(180)
     )

    draw += Element("J1", "Connector:Conn_01x08_Pin", value="01x08 Male").at((50*2.54, 62*2.54))
    for i, label in enumerate(["+15V", "+5V", "-15V", "GND", "IN", "RES", "RES_MOD", "OUT_1"]):
        draw += Label(label).at("J1", str(i+1))

    draw += Element("J2", "Connector:Conn_01x04_Pin", value="01x04 Male").at((55*2.54, 62*2.54))
    for i, label in enumerate(["A0", "A1", "OUT_2", "OUT_3"]):
        draw += Label(label).at("J2", str(i+1))

    draw += Element("J3", "Connector:Conn_01x04_Pin", value="01x04 Male").at((60*2.54, 62*2.54))
    for i, label in enumerate(["FINE", "V/O", "FM", "COARSE"]):
        draw += Label(label).at("J3", str(i+1))

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

    # the leds
    light(draw, "IN_JACK", "Green", (55*2.54,15*2.54))
    light(draw, "RES_MOD_JACK", "Yellow", (70*2.54,15*2.54))
    light(draw, "V/O", "Yellow", (85*2.54,15*2.54))
    light(draw, "FM_JACK", "Yellow", (100*2.54,15*2.54))
    
    light(draw, "OUT_1", "Red", (55*2.54,30*2.54))
    light(draw, "OUT_2", "Red", (70*2.54,30*2.54))
    light(draw, "OUT_3", "Red", (85*2.54,30*2.54))

    #assign footprints
    draw.property("J1", "Footprint", "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical"); 
    draw.property("J[2..3]", "Footprint", "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical"); 
    draw.property("SW1", "Footprint", "elektrophon:2P4T.MINI"); 
    draw.property("J[4..]", "Footprint", "elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical"); 
    draw.property("RV[1..]", "Footprint", "elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical"); 
    draw.property("R[1..]", "Footprint", "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder"); 
    draw.property("U[1..]", "Footprint", "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm"); 
    draw.property("D1", "Footprint", "LED_THT:LED_D5.0mm"); 
    draw.property("D[1..]", "Footprint", "LED_THT:LED_D3.0mm"); 
    draw.property("D2", "Footprint", "Diode_SMD:D_SOD-123"); 
    draw.property("D4", "Footprint", "Diode_SMD:D_SOD-123"); 
    draw.property("D6", "Footprint", "Diode_SMD:D_SOD-123"); 
    draw.property("D8", "Footprint", "Diode_SMD:D_SOD-123"); 
    draw.property("D10", "Footprint", "Diode_SMD:D_SOD-123"); 
    draw.property("D12", "Footprint", "Diode_SMD:D_SOD-123"); 
    draw.property("D14", "Footprint", "Diode_SMD:D_SOD-123"); 
    draw.property("Q[1..]", "Footprint", "Package_TO_SOT_SMD:SOT-23"); 


    #write the kicad schema
    path = 'mount'
    if not os.path.exists(path):
        os.mkdir(path)
    draw.write(f"{path}/mount.kicad_sch")

def schema_panel():
    draw = Draw(["/usr/share/kicad/symbols", "../../lib/symbols"], 
                title="hall", 
                rev="1", 
                date="04-03-2023", 
                comment1="panel circuit", 
                comment2="module for a spring reverb tank.", 
                comment4="License CC BY 4.0 - Attribution 4.0 International")

    (draw
     + Element("H1", "Mechanical:MountingHole", value="IN").at((20*2.54, 20*2.54))
     + Element("H2", "Mechanical:MountingHole", value="CV").at((20*2.54, 25*2.54))
     + Element("H3", "Mechanical:MountingHole", value="FM").at((20*2.54, 30*2.54))
     + Element("H4", "Mechanical:MountingHole", value="RES_MOD").at((20*2.54, 35*2.54))
     + Element("H5", "Mechanical:MountingHole", value="OUT_1").at((20*2.54, 40*2.54))
     + Element("H13", "Mechanical:MountingHole", value="OUT_2").at((20*2.54, 45*2.54))
     + Element("H14", "Mechanical:MountingHole", value="OUT_3").at((20*2.54, 50*2.54))

     + Element("H6", "Mechanical:MountingHole", value="P_IN").at((40*2.54, 20*2.54))
     + Element("H7", "Mechanical:MountingHole", value="P_COARSE").at((40*2.54, 25*2.54))
     + Element("H8", "Mechanical:MountingHole", value="P_FINE").at((40*2.54, 30*2.54))
     + Element("H9", "Mechanical:MountingHole", value="P_FM").at((40*2.54, 35*2.54))
     + Element("H10", "Mechanical:MountingHole", value="P_RES").at((40*2.54, 40*2.54))
     + Element("H11", "Mechanical:MountingHole", value="P_RES_MOD").at((40*2.54, 45*2.54))
     + Element("H12", "Mechanical:MountingHole", value="SWITCH").at((40*2.54, 50*2.54))


     + Element("H15", "Mechanical:MountingHole", value="").at((50*2.54, 40*2.54))
     + Element("H16", "Mechanical:MountingHole", value="").at((50*2.54, 45*2.54))
     + Element("H17", "Mechanical:MountingHole", value="").at((50*2.54, 50*2.54))
     + Element("H18", "Mechanical:MountingHole", value="").at((50*2.54, 55*2.54))
    )

    #assign footprints
    draw.property("H[1..5]", "Footprint", "elektrophon:panel_jack"); 
    draw.property("H[13..14]", "Footprint", "elektrophon:panel_jack"); 
    draw.property("H[6..12]", "Footprint", "elektrophon:panel_potentiometer"); 
    draw.property("H[15..18]", "Footprint", "elektrophon:MountingHole_Panel_3.2mm_M3"); 

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
