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


# test the input buffers
def test_buffer_1a_voltage():
    simulator = load().simulator(temperature=25, nominal_temperature=25)
    analysis_op = simulator.operating_point()
    result = float(analysis_op["Net-_U1-Pad1_"]) 
    assert result == approx( 5, rel=1e-1 )

def test_buffer_1b_voltage():
    simulator = load().simulator(temperature=25, nominal_temperature=25)
    analysis_op = simulator.operating_point()
    result = float(analysis_op["Net-_U1-Pad6_"]) 
    assert result == approx( 5, rel=1e-1 )

def test_buffer_2a_voltage():
    simulator = load().simulator(temperature=25, nominal_temperature=25)
    analysis_op = simulator.operating_point()
    result = float(analysis_op["Net-_U2-Pad1_"]) 
    assert result == approx( 5, rel=1e-1 )

def test_buffer_2b_voltage():
    simulator = load().simulator(temperature=25, nominal_temperature=25)
    analysis_op = simulator.operating_point()
    result = float(analysis_op["Net-_U2-Pad6_"]) 
    assert result == approx( 5, rel=1e-3 )

# test the output amplifier
def test_output_amplifier_1_voltage():
    simulator = load().simulator(temperature=25, nominal_temperature=25)
    analysis_op = simulator.operating_point()
    result = float(analysis_op["OUTa"]) 
    assert result == approx( 5, rel=1e-1 )

def test_output_amplifier_2_voltage():
    simulator = load().simulator(temperature=25, nominal_temperature=25)
    analysis_op = simulator.operating_point()
    result = float(analysis_op["OUTb"]) 
    assert result == approx( 5, rel=1e-1 )

#test the trimpot voltage
def test_trimpot_1_voltage():
    simulator = load().simulator(temperature=25, nominal_temperature=25)
    analysis_op = simulator.operating_point()
    result = float(analysis_op["Net-_R7-Pad1_"]) 
    assert result == approx( -2.9941339771434902e-05, rel=1e-1 )

def test_trimpot_2_voltage():
    simulator = load().simulator(temperature=25, nominal_temperature=25)
    analysis_op = simulator.operating_point()
    result = float(analysis_op["Net-_R8-Pad2_"]) 
    assert result == approx( -2.9941339771434902e-05, rel=1e-1 )


def load(div1=0.5, div2=0.5):
    ## setup spice library path
    directory_path = Path(os.path.abspath('')).resolve().parent.parent
    spice_libraries_path = directory_path.joinpath("lib", "spice")
    spice_library = SpiceLibrary(spice_libraries_path)
    ## set the project directory as directory_path
    directory_path = Path(os.path.abspath('')).resolve()

    kicad_netlist_path = directory_path.joinpath('main', 'main.cir')
    parser = SpiceParser(path=str(kicad_netlist_path))

    circuit = parser.build_circuit(ground=5)
    circuit.include(spice_library['OPA2134'])
    circuit.include(spice_library['OPA2134d'])
    circuit.include(spice_library['AD633'])

    circuit.V('1', '+15V', circuit.gnd, 'DC 15')
    circuit.V('2', '-15V', circuit.gnd, 'DC -15')
    circuit.V('3', '+5V', circuit.gnd, 'DC 5')
    circuit.V('4', 'Xa', circuit.gnd, 'DC 5')
    circuit.V('5', 'Ya', circuit.gnd, 'DC 5')
    circuit.V('6', 'Xb', circuit.gnd, 'DC 5')
    circuit.V('7', 'Yb', circuit.gnd, 'DC 5')

    for c in ( VoltageDivider(R=100@u_kΩ, w=div1, name='voltage_divider_1'), 
            VoltageDivider(R=100@u_kΩ, w=div2, name='voltage_divider_2') ):
        circuit.subcircuit(c)

    return circuit 

