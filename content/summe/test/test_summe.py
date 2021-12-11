#!/usr/bin/env python
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be included
# in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY
# KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

import os
from pathlib import Path

import PySpice.Logging.Logging as Logging
logger = Logging.setup_logging( logging_level='CRITICAL')

from PySpice.Unit import *
from PySpice.Spice.Parser import SpiceParser
from PySpice.Spice.Netlist import Circuit, SubCircuit, SubCircuitFactory
from PySpice.Spice.Library import SpiceLibrary
from PySpice.Spice.Netlist import Circuit
from PySpice.Probe.Plot import plot
from PySpice.Math import *

import pytest
from pytest import approx

class VoltageDivider(SubCircuitFactory):
    __name__ = 'voltage_divider'
    __nodes__ = ('n1', 'n2', 'n3' )
    __R = 100@u_kΩ

    def __init__(self, R=100@u_kΩ, w=0.5, name='voltage_divider'):
        self.__R__ = R
        SubCircuit.__init__(self, name, *self.__nodes__)
        self.R(1, 'n1', 'n2', R * w)
        self.R(2, 'n2', 'n3', R * (1.0-w) )
        
    def wiper(self, w) :
        if w == 0 :
            self.R1.resistance = self.__R * 0.0000001
            self.R2.resistance = self.__R * 0.9999999
        elif w == 1 :
            self.R1.resistance = self.__R * 0.9999999
            self.R2.resistance = self.__R * 0.0000001
        else :
            self.R1.resistance = self.__R * w
            self.R2.resistance = self.__R * (1.0-w)

class JackIn(SubCircuitFactory):
    __name__ = 'jack_in'
    __nodes__ = ('n1', 'n2', 'n3' )
    def __init__(self, R=1@u_kΩ, name='jack_in', value='DC 5'):
        self.__name__ = name
        SubCircuit.__init__(self, name, *self.__nodes__)
        self.V(1, 'n2', self.gnd, value)

class JackOut(SubCircuitFactory):
    __name__ = 'jack_out'
    __nodes__ = ('n1', 'n2', 'n3' )
    def __init__(self, R=0@u_kΩ, name='jack_out'):
        self.__name__ = name
        SubCircuit.__init__(self, name, *self.__nodes__)
        self.R(1, 'n2', 'n3', R)

def test_inverting_input():
    simulator = load().simulator(temperature=25, nominal_temperature=25)
    analysis_op = simulator.operating_point()
    result = float(analysis_op["Net-_R15-Pad1_"]) 
    assert result == approx( -5., rel=1e-3 )
    
def test_non_inverting_input():
    simulator = load(0.999999).simulator(temperature=25, nominal_temperature=25)
    analysis_op = simulator.operating_point()
    result = float(analysis_op["Net-_R15-Pad1_"]) 
    assert result == approx( 5., rel=1e-3 )

def test_inverting_output_single():
    simulator = load().simulator(temperature=25, nominal_temperature=25)
    analysis_op = simulator.operating_point()
    result = float(analysis_op["/MIX_1"]) 
    print( "out: %f " % result )
    assert result == approx( -4.96, rel=1e-2 )

def test_inverting_output():
    simulator = load().simulator(temperature=25, nominal_temperature=25)
    analysis_op = simulator.operating_point()
    result = float(analysis_op["/OUT"]) 
    assert result == approx( -4.95, rel=1e-2 )

def test_non_inverting_output():
    simulator = load(0.999999, 0.5, 0.5, 0.5).simulator(temperature=25, nominal_temperature=25)
    analysis_op = simulator.operating_point()
    result = float(analysis_op["/OUT"]) 
    assert result == approx( 4.95, rel=1e-2 )

def load(div1=0.0000001, div2=0.5, div3=0.5, div4=0.5):
    ## setup spice library path
    directory_path = Path(os.path.abspath('')).resolve().parent.parent
    spice_libraries_path = directory_path.joinpath("lib", "spice")
    spice_library = SpiceLibrary(spice_libraries_path)
    ## set the project directory as directory_path
    directory_path = Path(os.path.abspath('')).resolve()

    kicad_netlist_path = directory_path.joinpath('main', 'main.cir')
    parser = SpiceParser(path=str(kicad_netlist_path))

    circuit = parser.build_circuit(ground=5)
    #circuit.include(spice_library['LM4040_NA10P0'])
    circuit.include(spice_library['TL072c'])
    circuit.include(spice_library['LED1'])
    circuit.include(spice_library['LED2'])
    circuit.include(spice_library['D1N4148'])
    circuit.include(spice_library['BC846B'])

    circuit.V('1', '+15V', circuit.gnd, 'DC 15')
    circuit.V('2', '-15V', circuit.gnd, 'DC -15')
    circuit.V('3', '+5V', circuit.gnd, 'DC 5')

    for c in ( VoltageDivider(R=100@u_kΩ, w=div1, name='voltage_divider_1'), 
            VoltageDivider(R=100@u_kΩ, w=div2, name='voltage_divider_2'), 
            VoltageDivider(R=100@u_kΩ, w=div3, name='voltage_divider_3'), 
            VoltageDivider(R=100@u_kΩ, w=div4, name='voltage_divider_4'), 
            JackIn(name='IN_1', value='AC 5 DC 5 SINE(0 5 1k)'), 
            JackIn(name='IN_2', value='AC 5 DC 5 SINE(0 5 2k)'), 
            JackIn(name='IN_3', value='AC 5 DC 5 SINE(0 5 3k)'), 
            JackIn(name='IN_4', value='AC 5 DC 5 SINE(0 5 4k)'), 
            JackOut(name='OUT_1'), 
            JackOut(name='OUT_2'), 
            JackOut(name='OUT_3'), 
            JackOut(name='OUT_4'), 
            JackOut(name='OUT') ):
        circuit.subcircuit(c)

    return circuit 