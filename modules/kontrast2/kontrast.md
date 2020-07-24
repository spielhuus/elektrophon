![module](https://img.shields.io/badge/module-mischer-yellow)
![status](https://img.shields.io/badge/status-work%20in%20progress-orange)

# *kontrast*

<a href="https://photos.app.goo.gl/pg6iZUC32rTKX5LC7"><img src="https://spielhuus.github.io/elektrophon/images/kontrast-logo-tmb.jpg" height="300px" align="right"></a>

## *table of contents*

* [*about*](#about)
* [*construction*](#construction)
* [*calibration*](#calibration)
* [*usage*](#usage)
* [*credits*](#credits)
* [*links*](#links)
* [*changelog*](#changelog)

<br/><br/>

## *about*

kontrast ist a simple mixer utility module. it can be used as a **mixer**, **attenuator** or **attenuverter** for ac or dc signals. the function depends on the patching and settings of the potentiometers. an attenuverter is used in different modules like the  Serge VCS, Maths and also in the polivoks filter. while this module can be used as a simple mixer you can also adjust cv signals. such a signal can be simply attenuated or inverted. when feeding in a positive singal slope (for example from an adsr). the signal will be turned to a neagative dc singal. if the inpout signal is ac coupled the signal will be inverted. the function is the setting on the potentiometer of the channel. when the potentiometer is at center position. the output signal is attenuated to zero. no output singal is present. when turning to the right. the signal will be stronger until the output signal is equal to the input signal. when turning the potentiomenter to the left, the output signal will be phase shifted by 180°. when you turn the potentiometer to full left the output signal will be the inverted input signal. all the inputs are mixed to the output signal; unless you connect the output of a channel. then this output does not accure on the mixed signal.




![svg](kontrast_files/kontrast_4_0.svg)



the circuit of the attenuverter is based on the opamp dfferential amplifer. the two resistors at the non-inverting inputs are replaced with a potentiometer. the potentiometer is configured as a voltage divider and replace R3 and R4 from the differential amplifier. when the position of the potentiometer is adjusted, the output voltage will change or invert. at the center position  the output is zero volrs. the response to the potentiometer is linear. we can make it an centered s-curve by adding two parallel resistors (R5,R6) to the potentiometer [[1][1]].


![svg](kontrast_files/kontrast_6_0.svg)


the rest of the circuit is straight forwarn an opamp mixer at the output followed by an inverting amplifier with a gain of 1.

## construction

    .title Test
    .subckt voltage_divider n1 n2 n3
    R1 n1 n2 50kOhm
    R2 n2 n3 50kOhm
    .ends voltage_divider
    V1 +15V 0 15V
    X1 +15V OUT 0 voltage_divider
    
    Node +15v: 15.0 V
    Node out: 7.5 V



![svg](kontrast_files/kontrast_10_0.svg)


## *construction*


the center building block of the attenuverter is an integrator opamp circuit. 








![svg](kontrast_files/kontrast_12_0.svg)



    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-11-3c1ade127b7c> in <module>
          4 directory_path = Path(os.path.abspath('')).resolve().parent.parent
          5 spice_libraries_path = directory_path.joinpath("lib", "spice", "transistor")
    ----> 6 spice_library = SpiceLibrary(spice_libraries_path)
          7 
          8 class XU1(SubCircuitFactory):


    NameError: name 'SpiceLibrary' is not defined



    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-12-c4a4d76207ae> in <module>
          4 for s in steps:
          5 
    ----> 6     parser = SpiceParser(path=NETLIST)
          7     circuit = parser.build_circuit(ground='GND')
          8     circuit.include(spice_library['OPA2134'])


    NameError: name 'SpiceParser' is not defined



    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-13-d6086174b2a2> in <module>
    ----> 1 parser = SpiceParser(path=NETLIST)
          2 circuit = parser.build_circuit(ground='GND')
          3 circuit.include(spice_library['OPA2134'])
          4 circuit.V('1', '+15V', circuit.gnd, 15@u_V)
          5 circuit.V('2', '-15V', circuit.gnd, -15@u_V)


    NameError: name 'SpiceParser' is not defined


the input voltage for the amplifier has to be around 100mV. We need to buffer the input signal and attenuate it to that level.

inverting opa amplifier:

\begin{align*}
Vout = -Vin * \left(\frac{R1}{R2}\right)
\end{align*}





## links


1) Rod Elliott (ESP) [Beginners' Guide to Potentiometers][2] 


---
[![CC BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)


[1]: https://wikipedia.org
[2]: https://sound-au.com/pots.htm

