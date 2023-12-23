from elektron import Draw, Dot, Element, Label, Line, R, Gnd, C, Power, Nc

def input_jack(draw, ref, label, pos):
    """
    Input Jack with ground and label.

        Parameters:
                draw (Draw): Elektron drawing sheet.
                ref (String): Reference of the Jack
                label (String): Label of the input
                pos (tuple|element): The position of the input section

    ![power](/pdoc/input_jack.svg)
    """
    draw + Element(ref, "Connector_Audio:AudioJack2_SwitchT", value="PJ398SM").at(pos).anchor("T")
    draw + Gnd().rotate(90).at(ref, "S")
    draw + Label(label).at(ref, "T")
    draw + Nc().at(ref, "TN")

def input_regulated(draw, ref, pot, resistance, label, pos, input_label=None):
    """
    Input Jack with ground, label and potentiometer.

        Parameters:
                draw (Draw): Elektron drawing sheet.
                ref (String): Reference of the Jack
                pot (String): Reference of the potentiometer.
                resistance (String): Resistance of the potentiometer.
                label (String): Label of the input
                pos (tuple|element): The position of the input section
                input_label (String|None): Label of the input before the potentiometer.

    ![power](/pdoc/input_regulated.svg)
    """

    draw + Element(ref, "Connector_Audio:AudioJack2_SwitchT", value="PJ398SM").at(pos).anchor("T")
    draw + Gnd().rotate(90).at(ref, "S")
    draw + Line().at(ref, "T") + Line().right().length(2*2.54)
    if input_label:
        draw + Label(input_label)
    draw + Element(pot, "Device:R_Potentiometer", value=resistance, Spice_Primitive="X", Spice_Model="Potentiometer").rotate(180).mirror('y').anchor(3)
    draw + Line().at(pot, "2") + Label(label)
    draw + Gnd().at(pot, "1")
    draw + Nc().at(ref, "TN")


def output_jack(draw, ref, label, pos):
    """
    Output Jack with ground and label.

        Parameters:
                draw (Draw): Elektron drawing sheet.
                ref (String): Reference of the Jack
                label (String): Label of the output
                pos (tuple|element): The position of the output section

    ![power](/pdoc/output_jack.svg)
    """
    draw + Element(ref, "Connector_Audio:AudioJack2_SwitchT", value="PJ398SM").at(pos).anchor("T").mirror('y')
    draw + Gnd().rotate(270).at(ref, "S")
    draw + Label(label).at(ref, "T").rotate(180)
    draw + Nc().at(ref, "TN")

def decouple_tl072(draw, ref, pos, visible):
    """
    Decoupling capacitors for the TL072.

    Draw a TL072 with power rails and decoupling capacitors.
    """
    draw + Element(ref, "Amplifier_Operational:TL072", value="TL072", unit=3, Spice_Primitive="X", Spice_Model="TL072c", on_schema=visible).at(pos)
    draw + Element("+15V", "power:+15V", value="+15V", unit=1, on_schema=visible).at(ref, "8")
    draw + Element("-15V", "power:-15V", value="-15V", unit=1, on_schema=visible).at(ref, "4").rotate(180)

    draw + Dot().at(ref, "8")
    draw + Line().left().length(3*2.54)
    draw + Element(draw.next("C"), "Device:C", value="100n", Spice_Netlist_Enabled="false")
    draw + (GND := Dot())
    draw + Element(draw.next("C"), "Device:C", value="100n", Spice_Netlist_Enabled="false")
    draw + Line().tox(ref, "4")
    draw + Dot()

    draw + Line().left().length(2*2.54).at(GND)
    draw + Element("GND", "power:GND", value="GND")

def decouple(draw, ref, device, value, pos, visible):
    """
    Decouple and set the element library name.

    ![](/pdoc/decouple.svg)
    """
    draw + Element(ref, device, value=value, unit=3, on_schema=visible).at(pos)
    draw + Element("+15V", "power:+15V", value="+15V", unit=1, on_schema=visible).at(ref, "8")
    draw + Element("-15V", "power:-15V", value="-15V", unit=1, on_schema=visible).at(ref, "4").rotate(180)

    draw + Dot().at(ref, "8")
    draw + Line().left().length(3*2.54)
    draw + Element(draw.next("C"), "Device:C", value="100n", Spice_Netlist_Enabled="false")
    draw + (GND := Dot())
    draw + Element(draw.next("C"), "Device:C", value="100n", Spice_Netlist_Enabled="false")
    draw + Line().tox(ref, "4")
    draw + Dot()

    draw + Line().left().length(2*2.54).at(GND)
    draw + Element("GND", "power:GND", value="GND")

def power(draw, ref, pos):
    """
    Draw the power section.

    Draws the IDC header and the main decoupling capacitors.

            Parameters:
                    draw (Draw): Elektron drawing sheet.
                    ref (String): ????
                    pos (tuple|element): The position of the power section

    ![power](/pdoc/power.svg)
    """
    draw + Element(ref, "Connector_Generic:Conn_02x05_Odd_Even", value="IDC_Header", unit=1, Spice_Netlist_Enabled="false").at((pos[0], pos[1] + 2*2.54))

    draw + Element("+5V", "power:+5V", value="+5V").at(ref, "10").rotate(270)
    draw + Element("+5V", "power:+5V", value="+5V").at(ref, "9").rotate(90)
    draw + Element("GND", "power:GND", value="GND").at(ref, "6").rotate(90)
    draw + Element("GND", "power:GND", value="GND").at(ref, "8").rotate(90)
    draw + Element("GND", "power:GND", value="GND").at(ref, "5").rotate(270)
    draw + Element("GND", "power:GND", value="GND").at(ref, "7").rotate(270)
    draw + Label("VP").at(ref, "3").rotate(180)
    draw + Label("VP").at(ref, "4").rotate(0)
    draw + Label("VN").at(ref, "1").rotate(180)
    draw + Label("VN").at(ref, "2").rotate(0)

    draw.pos((pos[0] + 10 * 2.54, pos[1]))
    draw + Label("VP").rotate(180)
    draw + Element(draw.next("R"), "Device:R", value="10").rotate(90)
    draw + Line().right().length(2*2.54)
    draw + (V_PLUS := Dot())
    draw + Element("+15V", "power:+15V", value="+15V")
    draw + Element(draw.next("C"), "Device:C_Polarized", value="10u").at(V_PLUS)
    draw + (GND := Dot())
    draw + Element(draw.next("C"), "Device:C_Polarized", value="10u")
    draw + (V_MINUS := Dot())
    draw + Line().left().length(2*2.54)
    draw + Element(draw.next("R"), "Device:R", value="10").rotate(270)
    draw + Label("VN").rotate(180)
    draw + Element("-15V", "power:-15V", value="-15V").rotate(180).at(V_MINUS)
    draw + Line().left().length(2*2.54).at(GND)
    draw + Element("GND", "power:GND", value="GND").rotate(270)

def DaisyAudioOut(draw, pos):
    """
    Audio output from the daisy.

    Amplify the output of the daisy codec output.

            Parameters:
                    draw (Draw): Elektron drawing sheet.
                    pos (tuple|element): The position of the power section

    ![DaisyAudioOut](/pdoc/daisy_audio_out.svg)
    """
    draw.pos(pos)
    draw = (draw 
      + Label(f"AUDIO_OUT_L").rotate(180)
      + R(draw.next("R"), "10k").rotate(90)
      + Element(draw.next("U"), "Amplifier_Operational:TL072", value="TL072").mirror('x').anchor(2)
      + Gnd().at(draw.last("U"), "3")

      + Line().up().length(5*2.54).at(draw.last("U"), "1").dot("start") + Dot().push()
      + R(draw.next("R"), "33k").tox(draw.last("U"), "2").rotate(270) + Dot().push()
      + Line().toy(draw.last("U"), "2").dot("end")

      + Line().up().length(4*2.54).at(draw.pop())
      + C(draw.next("C"), "100p").rotate(90).tox(draw.peek())
      + Line().toy(draw.pop())

      + R(draw.next("R"), "1k").rotate(90).at(draw.last("U"), "1") + Label(f"OUT_L")
    )

    # draw.pos((pos.0 + 10*2.54, pos.1))
    draw.pos((pos[0] + 20*2.54, pos[1]))
    return (draw 
      + Label(f"AUDIO_OUT_R").rotate(180)
      + R(draw.next("R"), "10k").rotate(90)
      + Element(draw.last("U"), "Amplifier_Operational:TL072", value="TL072", unit=2).mirror('x').anchor(6)
      + Gnd().at(draw.last("U"), "5")

      + Line().up().length(5*2.54).at(draw.last("U"), "7").dot("start") + Dot().push()
      + R(draw.next("R"), "33k").tox(draw.last("U"), "6").rotate(270) + Dot().push()
      + Line().toy(draw.last("U"), "6").dot("end")

      + Line().up().length(4*2.54).at(draw.pop())
      + C(draw.next("C"), "100p").rotate(90).tox(draw.peek())
      + Line().toy(draw.pop())

      + R(draw.next("R"), "1k").rotate(90).at(draw.last("U"), "7") + Label(f"OUT_R")
    )

def DaisyAnalogIn(draw, U, label_1, label_out, label_2=None, unit=1, pos=(0,0)):
    """
    Analog input for the daisy.

        Parameters:
                draw (Draw): Elektron drawing sheet.
                label_1 (String): first Input label.
                label_out (String): output label.
                label_2 (String): second input label.
                U (String): Opamp Label
                unit (int): Opamp Unit.
                pos (tuple|element): The position of the power section

    ![DaisyAudioOut](/pdoc/daisy_analog_in.svg)
    """
    r1 = draw.next("R")
    r2 = draw.next("R")
    draw.pos(pos)
    draw + Label(label_1).rotate(180) + R(r2, "100k").rotate(90) + Dot().push()
    if label_2:
      (draw + Line().down().length(4*2.54) + R(draw.next("R"), "66.5k").rotate(270) + Label(label_2).rotate(180))
    (draw
      + Line().up().length(4*2.54).at(draw.peek()) + R(r1, "200k").rotate(270) + Label("-10V").rotate(180)
      + Line().right().length(2*2.54).at(draw.pop())
      + Element(U, "Amplifier_Operational:MCP6004", unit=unit, value="MCP6004",
                     Spice_Netlist_Enabled="Y",
                     Spice_Primitive="X",
                     Spice_Model="TL072c").anchor("2" if unit == 1 else "6").mirror('x')
      + Line().up().length(6*2.54) + Dot().push() + R(draw.next("R"), "66.5k").tox(U, "2" if unit == 1 else "6" ).rotate(270) + Dot().push()
      + Line().toy(U, "2" if unit == 1 else "6") + Dot()
      + Line().up().length(4*2.54).at(draw.pop()) + C(draw.next("C"), "100n").tox(draw.peek()).rotate(90) + Line().toy(draw.pop())
      + Dot().at(U, "1" if unit == 1 else "7") + Line() + Label(label_out)
      + Gnd().at(U, "3" if unit == 1 else "5")

    )

def DaisyAnalogRef(draw, U, pos=(0,0)):
    """
    Reference voltage for analog input.

        Parameters:
                draw (Draw): Elektron drawing sheet.
                U (String): Opamp Label
                pos (tuple|element): The position of the power section

    ![DaisyAudioOut](/pdoc/daisy_analog_ref.svg)
    """
    draw.pos(pos)
    (draw 
      + Power("-15V") + R(draw.next("R"), "2k") + Dot().push()
      + Element(U, "Reference_Voltage:LM4040DCK-10", unit=1, value="LM4040-10").rotate(270).label("west")
      + Gnd().at(U, "3")
      + Line().right().length(2*2.54).at(draw.pop()) + Dot().push() + Line().right().length(2*2.54) + Label("-10V")
      + C(draw.next("C"), "100n").at(draw.pop()) + Gnd()
    )

def Attenuverter(draw, LabelIn, LabelOut, U, RV):
    """
    Attenuverter circuit.

    Atenuverter with logarithmic potentiometer setup.

            Parameters:
                    draw (Draw): Elektron drawing sheet.
                    LabelIn (String): Input labelid. 
                    LabelOut (String): Output labelid. 
                    U (String): Opamp reference.
                    RV (String): Potentiometer reference.

    ![Attenuverter](/pdoc/attenuverter.svg)
    """
    return (draw
      + Label(LabelIn).rotate(180) 
      + Line().right().length(2.54)
      + (dot1 := Dot()) 
      + Line().right().length(10.16)
      + (dot2 := Dot())
      + Element(draw.next("R"), "Device:R", unit=1, value="47k")
      + (dot3 := Dot())
      + Element(draw.next("R"), "Device:R", unit=1, value="47k")
      + Element("GND", "power:GND", value="GND")

      + Line().at(dot1).down().length(3*1.27)
      + Element(RV, "Device:R_Potentiometer", value="100k",
                     Spice_Netlist_Enabled="Y",
                     Spice_Primitive="X",
                     Spice_Model="Potentiometer").anchor(1)
      + Element("GND", "power:GND", value="GND").at(RV, "3")

      + Line().at(dot2).right().length(2.54)
      + Element(draw.next("R"), "Device:R", unit=1, value="100k").rotate(90)
      + Element(U, "Amplifier_Operational:TL072", unit=1, value="TL072",
                     Spice_Netlist_Enabled="Y",
                     Spice_Primitive="X",
                     Spice_Model="TL072c").anchor(2).mirror('x')
                     
      + Line().at(dot3).tox(RV, "2")
      + Line().at(dot3).right().length(10.16)
      + Line().toy(U, "3")
      + Line().tox(U, "3")

      + Dot().at(U, "1")
      + Line().up().length(5*2.54)
      + Element(draw.next("R"), "Device:R", value="100k").rotate(270).tox(U, "2")
      + Line().toy(U, "2")
      + Dot()

      + Line().at(U, "1").right().length(2.54)
      + Label(LabelOut)
    )

def light(draw, label, color, pos):
    """
    Transistor based LED driver.

    LED driver for 'bright' LEDs.
 
        Parameters:
                draw (Draw): Elektron drawing sheet.
                label (String): Label of the input signal.
                color (String): Color of the LED.
                pos (tuple|element): The position of the input section

    ![Light](/pdoc/light.svg)
    """
    draw.pos(pos)
    (draw
        + Label(label).rotate(180) + R(draw.next("R"), "100k").rotate(90) + Dot().push()
        + Element(draw.next("Q"), "Transistor_BJT:MMBT3904", value="MMBT3904").anchor(1)
        + R(draw.next("R"), "5.1k").at(draw.last("Q"), "3").rotate(180) + Power("+5V")
        + Element(draw.next("D"), "Device:LED", value=f"LED ({color})").rotate(90).at(draw.last("Q"), "2").anchor(2)
        + Dot().at(draw.last("D"), "1").push() + Gnd()
        + Line().at(draw.pop()).tox(draw.peek())
        + Element(draw.next("D"), "Diode:1N4148", value="1N4148W").rotate(270).anchor(2).label("west") + Line().at(draw.last("D"), "1").toy(draw.pop())
    )

def power_flags(draw):
    """
    The Kicad power flags.

    The position for the flags is fixed.

        Parameters:
                draw (Draw): Elektron drawing sheet.

    ![Light](/pdoc/power_flags.svg)
    """
    (draw
     + Element("P1", "power:PWR_FLAG", value="power").at((104*2.54, 63*2.54))
     + Element("+15V", "power:+15V", value="+15V").rotate(180)
     + Element("P2", "power:PWR_FLAG", value="power").at((106*2.54, 63*2.54))
     + Element("-15V", "power:-15V", value="-15V").rotate(180)
     + Element("P3", "power:PWR_FLAG", value="power").at((108*2.54, 63*2.54))
     + Element("+5V", "power:+5V", value="+5V").rotate(180)
     + Element("P4", "power:PWR_FLAG", value="power").at((110*2.54, 63*2.54))
     + Element("GND", "power:GND", value="GND")
    )
