## BOM: SSG

### main panel

|Qty|Reference(s)                                                 |Value           |Footprint                                                                                                  |
|---|-------------------------------------------------------------|----------------|-----------------------------------------------------------------------------------------------------------|
|2  |C1, C2                                                       |10u             |Electrolytic Capacitors - Radial (D:5.0mm, P:2.50mm)                                                       |
|14 |C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C16, C17, C18, C19|0.1u            |Ceramic Capacitors (L:4mm, P:2.50mm)                                                                       |
|1  |C13                                                          |100n            |Ceramic Capacitors (L:4mm, P:2.50mm)                                                                       |
|1  |C14                                                          |220n            |Ceramic Capacitors (L:5mm, P:5mm)                                                                          |
|2  |C15, C20                                                     |1n              |Ceramic Capacitors (L:4mm, P:2.50mm)                                                                       |
|1  |C21                                                          |100p            |Ceramic Capacitors (L:4mm, P:2.50mm)                                                                       |
|2  |C22, C23                                                     |47p             |Ceramic Capacitors (L:4mm, P:2.50mm)                                                                       |
|4  |D1, D2, D3, D4                                               |1N4148          |Diode                                                                                                      |
|4  |D5, D6, D7, D8                                               |1N4148          |Diode                                                                                                      |
|1  |J1                                                           |10 Pins / 2 Rows|PCB IDC Socket (P2.54mm, Vertical)                                                                         |
|1  |J2                                                           |12 Pins / 1 Row |Pin Socket Connector (P2.54mm)                                                                             |
|1  |J3                                                           |9 Pins / 1 Row  |Pin Socket Connector (P2.54mm)                                                                             |
|2  |Q1, Q2                                                       |PN4250          |Bipolar Transistors – BJT (TO-92)                                                                          |
|2  |Q3, Q4                                                       |2N5457          |JFET (TO-92)                                                                                               |
|4  |R1, R2, R13, R14                                             |2M7             |Resistor (L:6.3mm, D:2.5mm)                                                                                |
|9  |R3, R4, R5, R6, R11, R12, R15, R16, R24                      |33k             |Resistor (L:6.3mm, D:2.5mm)                                                                                |
|4  |R7, R9, R23, R26                                             |100k            |Resistor (L:6.3mm, D:2.5mm)                                                                                |
|4  |R8, R10, R21, R22                                            |15k             |Resistor (L:6.3mm, D:2.5mm)                                                                                |
|2  |R17, R19                                                     |82k             |Resistor (L:6.3mm, D:2.5mm)                                                                                |
|3  |R18, R20, R32                                                |1M5             |Resistor (L:6.3mm, D:2.5mm)                                                                                |
|1  |R25                                                          |680k            |Resistor (L:6.3mm, D:2.5mm)                                                                                |
|2  |R27, R31                                                     |820k            |Resistor (L:6.3mm, D:2.5mm)                                                                                |
|1  |R28                                                          |1m              |Resistor (L:6.3mm, D:2.5mm)                                                                                |
|1  |R29                                                          |4M7             |Resistor (L:6.3mm, D:2.5mm)                                                                                |
|3  |R30, R42, R43                                                |1M              |Resistor (L:6.3mm, D:2.5mm)                                                                                |
|3  |R33, R34, R35                                                |330             |Resistor (L:6.3mm, D:2.5mm)                                                                                |
|4  |R36, R37, R38, R39                                           |10k             |Resistor (L:6.3mm, D:2.5mm)                                                                                |
|2  |R40, R41                                                     |470k            |Resistor (L:6.3mm, D:2.5mm)                                                                                |
|2  |R44, R45                                                     |2M2             |Resistor (L:6.3mm, D:2.5mm)                                                                                |
|5  |R46, R47, R48, R49, R51                                      |3k3             |Resistor (L:6.3mm, D:2.5mm)                                                                                |
|2  |R50, R52                                                     |100             |Resistor (L:6.3mm, D:2.5mm)                                                                                |
|2  |RV1, RV2                                                     |25k             |Trimpotentiometer (Bourns 3296Z)                                                                           |
|2  |U1, U4                                                       |TL072           |[Low-Noise JFET-Input Operational Amplifiers](https://spielhuus.github.io/elektrophon/datasheet/TL07xx.pdf)|
|2  |U2, U3                                                       |LM3900          |Norton Operational Amplifier                                                                               |
|2  |U5, U6                                                       |CA3080          |[Operational Transconductance Amplifier](https://spielhuus.github.io/elektrophon/datasheet/LM3080.pdf)     |
|1  |U7                                                           |LM741           |Operational Amplifiers - Op Amps                                                                           |

### mount panel                                            

|Qty|Reference(s)                                                 |Value           |Footprint                                                                                                  |Datasheet|
|---|-------------------------------------------------------------|----------------|-----------------------------------------------------------------------------------------------------------|---------|
|2  |D1, D2                                                       |LED_Dual_2pin   |LED_THT:LED_D5.0mm                                                                                         |~        |
|1  |D3                                                           |LED             |LED_THT:LED_D5.0mm                                                                                         |~        |
|1  |J1                                                           |SAMPLE          |elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical                                                                |~        |
|2  |J2, J5                                                       |IN              |elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical                                                                |~        |
|2  |J3, J6                                                       |VC              |elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical                                                                |~        |
|1  |J4                                                           |HOLD            |elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical                                                                |~        |
|2  |J7, J9                                                       |OUT             |elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical                                                                |~        |
|2  |J8, J10                                                      |CYCLE           |elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical                                                                |~        |
|1  |J11                                                          |HOT             |elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical                                                                |~        |
|1  |J12                                                          |5V              |elektrophon:Jack_3.5mm_WQP-PJ398SM_Vertical                                                                |~        |
|1  |J13                                                          |Conn_01x12_Male |Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical                                                 |~        |
|1  |J14                                                          |Conn_01x09_Male |Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical                                                 |~        |
|4  |RV1, RV2, RV3, RV4                                           |50k             |elektrophon:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical                                              |~        |

### misc material

| Qty | Reference(s)             | Value              | Description | 
|-----|--------------------------|--------------------|-------------|
| 4   |                         | M2/15mm             | hex brass standoff, female to female | 
| 1   |                        | M2-6mm               | Screws   |
| 4   |                        | 6.35mm              | Potentiometer Knobs, colors of your choice   |

---
[![CC BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)

