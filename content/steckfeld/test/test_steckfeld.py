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

import numpy as np

## setup spice library path
directory_path = Path(os.path.abspath('')).resolve().parent.parent
spice_libraries_path = directory_path.joinpath("lib", "spice")
spice_library = SpiceLibrary(spice_libraries_path)
## set the project directory as directory_path
directory_path = Path(os.path.abspath('')).resolve()

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

class Vref(SubCircuitFactory):
    __name__ = 'vref'
    __nodes__ = ('n1', 'n2', 'n3' )
    def __init__(self, R=1@u_kΩ, name='vref', value='DC 5'):
        self.__name__ = name
        SubCircuit.__init__(self, name, *self.__nodes__)
        self.V(1, 'n2', self.gnd, value)

class JackOut(SubCircuitFactory):
    __name__ = 'jack_out'
    __nodes__ = ('n1', 'n2', 'n3' )
    def __init__(self, R=100@u_kΩ, name='jack_out'):
        self.__name__ = name
        SubCircuit.__init__(self, name, *self.__nodes__)
        self.R(1, 'n2', 'n1', R)

class PatchRef(SubCircuitFactory):
    __name__ = 'patch'
    __nodes__ = ('n1', 'n2', 'n3' )
    def __init__(self, name='patch'):
        self.__name__ = name
        SubCircuit.__init__(self, name, *self.__nodes__)
        self.R(1, 'n1', 'n2', 0)

class PatchGnd(SubCircuitFactory):
    __name__ = 'patch'
    __nodes__ = ('n1', 'n2', 'n3' )
    def __init__(self, name='patch'):
        self.__name__ = name
        SubCircuit.__init__(self, name, *self.__nodes__)
        self.R(1, 'n1', 'n3', 0)

def test_input():
    kicad_netlist_path = directory_path.joinpath('main', 'main.cir')
    parser = SpiceParser(path=str(kicad_netlist_path))

    circuit = parser.build_circuit(ground=0)
    circuit.include(spice_library['TL072c'])

    circuit.V('1', '+15V', circuit.gnd, 'DC 15')
    circuit.V('2', '-15V', circuit.gnd, 'DC -15')

    for c in ( VoltageDivider(R=100@u_kΩ, w=0.00000000000001, name='voltage_divider_1'), 
            VoltageDivider(R=100@u_kΩ, w=0.00000000000001, name='voltage_divider_2'), 
            VoltageDivider(R=100@u_kΩ, w=0.00000000000001, name='voltage_divider_3'), 
            VoltageDivider(R=100@u_kΩ, w=0.00000000000001, name='voltage_divider_4'), 
            JackIn(name='IN_1', value='AC 5 DC 5 SINE(0 5 1k)'), 
            JackIn(name='IN_2', value='AC 0 DC 0'), 
            JackIn(name='IN_3', value='AC 5 DC 5 SINE(0 5 3k)'), 
            JackIn(name='IN_4', value='AC 5 DC 5 SINE(0 5 4k)'), 
            JackOut(name='OUT_1'), 
            JackOut(name='OUT_2'),
            Vref(name='Vref1', value='DC 5'),
            Vref(name='Vref2', value='DC 5'),
            PatchGnd(name='patch1'),
            PatchGnd(name='patch2') ):
        circuit.subcircuit(c)

    simulator = circuit.simulator(temperature=25, nominal_temperature=25)
    analysis  = simulator.transient(step_time=1@u_us, start_time=0@u_ms, end_time=20@u_ms)

    values = np.array(analysis["IN_1"])
    result_min = np.amin(values)
    result_max = np.amax(values)
    result_avg = np.average(values) 

    print( 'result: %f, %f, %f' % (result_max, result_min, result_avg))
    assert result_max == approx( 5, rel=1e-2 )
    assert result_min == approx( -5, rel=1e-2 )
    assert result_avg == approx( 0.00035970155344531863, rel=1e-2 )


def test_input_both():
    kicad_netlist_path = directory_path.joinpath('main', 'main.cir')
    parser = SpiceParser(path=str(kicad_netlist_path))

    circuit = parser.build_circuit(ground=0)
    circuit.include(spice_library['TL072c'])

    circuit.V('1', '+15V', circuit.gnd, 'DC 15')
    circuit.V('2', '-15V', circuit.gnd, 'DC -15')

    for c in ( VoltageDivider(R=100@u_kΩ, w=0.00000000000001, name='voltage_divider_1'), 
            VoltageDivider(R=100@u_kΩ, w=0.00000000000001, name='voltage_divider_2'), 
            VoltageDivider(R=100@u_kΩ, w=0.00000000000001, name='voltage_divider_3'), 
            VoltageDivider(R=100@u_kΩ, w=0.00000000000001, name='voltage_divider_4'), 
            JackIn(name='IN_1', value='AC 5 DC 5 SINE(0 5 1k)'), 
            JackIn(name='IN_2', value='AC 0 DC 5 SINE(0 5 1k)'), 
            JackIn(name='IN_3', value='AC 5 DC 5 SINE(0 5 3k)'), 
            JackIn(name='IN_4', value='AC 5 DC 5 SINE(0 5 4k)'), 
            JackOut(name='OUT_1'), 
            JackOut(name='OUT_2'),
            Vref(name='Vref1', value='DC 5'),
            Vref(name='Vref2', value='DC 5'),
            PatchGnd(name='patch1'),
            PatchGnd(name='patch2') ):
        circuit.subcircuit(c)

    simulator = circuit.simulator(temperature=25, nominal_temperature=25)
    analysis  = simulator.transient(step_time=1@u_us, start_time=0@u_ms, end_time=20@u_ms)

    values = np.array(analysis["IN_1"])
    result_min = np.amin(values)
    result_max = np.amax(values)
    result_avg = np.average(values) 
    print( 'result: %f, %f, %f' % (result_max, result_min, result_avg))
    assert result_max == approx( 10, rel=1e-2 )
    assert result_min == approx( -10, rel=1e-2 )
    assert result_avg == approx( 0.0006928803365574028, rel=1e-2 )


def test_output():
    kicad_netlist_path = directory_path.joinpath('main', 'main.cir')
    parser = SpiceParser(path=str(kicad_netlist_path))

    circuit = parser.build_circuit(ground=0)
    circuit.include(spice_library['TL072c'])

    circuit.V('1', '+15V', circuit.gnd, 'DC 15')
    circuit.V('2', '-15V', circuit.gnd, 'DC -15')
    circuit.V('3', 'OUT_1a', circuit.gnd, 'AC 5 DC 5 SINE(0 5 1k)')
    circuit.V('4', 'OUT_1b', circuit.gnd, 'AC 5 DC 0')

    for c in ( VoltageDivider(R=100@u_kΩ, w=0.00000000000001, name='voltage_divider_1'), 
            VoltageDivider(R=100@u_kΩ, w=0.00000000000001, name='voltage_divider_2'), 
            VoltageDivider(R=100@u_kΩ, w=0.00000000000001, name='voltage_divider_3'), 
            VoltageDivider(R=100@u_kΩ, w=0.00000000000001, name='voltage_divider_4'), 
            JackIn(name='IN_1', value='AC 5 DC 5 SINE(0 5 1k)'), 
            JackIn(name='IN_2', value='AC 0 DC 5 SINE(0 5 1k)'), 
            JackIn(name='IN_3', value='AC 5 DC 5 SINE(0 5 3k)'), 
            JackIn(name='IN_4', value='AC 5 DC 5 SINE(0 5 4k)'), 
            JackOut(name='OUT_1'), 
            JackOut(name='OUT_2'),
            Vref(name='Vref1', value='DC 5'),
            Vref(name='Vref2', value='DC 5'),
            PatchGnd(name='patch1'),
            PatchGnd(name='patch2') ):
        circuit.subcircuit(c)

    simulator = circuit.simulator(temperature=25, nominal_temperature=25)
    analysis  = simulator.transient(step_time=1@u_us, start_time=0@u_ms, end_time=20@u_ms)

    values = np.array(analysis["Net-_C11-Pad2_"])
    result_min = np.amin(values)
    result_max = np.amax(values)
    result_avg = np.average(values) 
    print( 'result output: %f, %f, %f' % (result_max, result_min, result_avg))
    assert result_max == approx( 5, rel=1e-2 )
    assert result_min == approx( -5, rel=1e-2 )
    assert result_avg == approx( 0.00016442563947679473, rel=1e-2 )

def test_level_shift():
    kicad_netlist_path = directory_path.joinpath('main', 'main.cir')
    parser = SpiceParser(path=str(kicad_netlist_path))

    circuit = parser.build_circuit(ground=0)
    circuit.include(spice_library['TL072c'])

    circuit.V('1', '+15V', circuit.gnd, 'DC 15')
    circuit.V('2', '-15V', circuit.gnd, 'DC -15')
    circuit.V('3', 'OUT_1a', circuit.gnd, 'AC 5 DC 5 SINE(5 5 1k)')
    circuit.V('4', 'OUT_1b', circuit.gnd, 'AC 5 DC 0')

    for c in ( VoltageDivider(R=100@u_kΩ, w=0.00000000000001, name='voltage_divider_1'), 
            VoltageDivider(R=100@u_kΩ, w=0.00000000000001, name='voltage_divider_2'), 
            VoltageDivider(R=100@u_kΩ, w=0.00000000000001, name='voltage_divider_3'), 
            VoltageDivider(R=100@u_kΩ, w=0.00000000000001, name='voltage_divider_4'), 
            JackIn(name='IN_1', value='AC 5 DC 5 SINE(0 5 1k)'), 
            JackIn(name='IN_2', value='AC 0 DC 5 SINE(0 5 1k)'), 
            JackIn(name='IN_3', value='AC 5 DC 5 SINE(0 5 3k)'), 
            JackIn(name='IN_4', value='AC 5 DC 5 SINE(0 5 4k)'), 
            JackOut(name='OUT_1'), 
            JackOut(name='OUT_2'),
            Vref(name='Vref1', value='DC 1.68'),
            Vref(name='Vref2', value='DC -5'),
            PatchRef(name='patch1'),
            PatchGnd(name='patch2') ):
        circuit.subcircuit(c)

    simulator = circuit.simulator(temperature=25, nominal_temperature=25)
    analysis  = simulator.transient(step_time=1@u_us, start_time=0@u_ms, end_time=20@u_ms)

    values = np.array(analysis["Net-_C11-Pad2_"])
    result_min = np.amin(values)
    result_max = np.amax(values)
    result_avg = np.average(values) 
    print( 'result: %f, %f, %f' % (result_max, result_min, result_avg))
    assert result_max == approx( 5.039814, rel=1e-2 )
    assert result_min == approx( -4.960018, rel=1e-2 )
    assert result_avg == approx( 0.00016442764132744227, rel=1e-2 )

