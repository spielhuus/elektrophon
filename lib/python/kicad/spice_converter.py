#! /usr/bin/python
from __future__ import absolute_import, division, print_function, unicode_literals

VERBOSE = 0

import os
import re
import numpy as np

from . import schema

from spice.circuit import Circuit
from spice import unit

supply_pat = r'(?P<sign>[+-]?)(?P<int>[0-9]+)V(?P<frac>[0-9]*)$'
supply_re = re.compile(supply_pat)

class Net(object):
    def __init__(self, id):
        self.id = id
        self.coords = set()
        self.pins = []

def sch_to_circuit(sch):
    circuit = Circuit()

    d = {}

    id = 1
    for wire in sch.wire:
        c0 = (wire.x0, wire.y0)
        c1 = (wire.x1, wire.y1)

        net0 = d.get(c0)
        net1 = d.get(c1)

        if net0 and net1:
            if VERBOSE:
                print("merging net %s and net %s" % (net0.id, net1.id))
            net = net0
            net.coords = net0.coords.union(net1.coords)

        elif net0:
            net = net0
        elif net1:
            net = net1
        else:
            net = Net(id)
            id += 1

        net.coords.add(c0)
        net.coords.add(c1)

        if VERBOSE:
            print(c0, c1, net.id)

        for c in net.coords:
            d[c] = net

    if VERBOSE:
        print()

    for text in sch.text:
        if text.sub != 'GLabel' and text.sub != 'Label':
            continue

        c = (text.x, text.y)
        net = d.get(c)

        if not net:
            net = Net(id)
            net.coords.add(c)
            id += 1
            d[c] = net

        if VERBOSE:
            print("label net %s as %s" % (net.id, text.text))
        if not isinstance(net.id, int):
            raise ValueError("two labels for same net: %s and %s" % (
                net.id, text.text))

        net.id = text.text

    if VERBOSE:
        print()

    for comp in sch.comp:
        trans = np.reshape(comp.orientation, (2,2)).T
        pos = np.array((comp.posx, comp.posy))

        for lib in sch.libs:
            sym = lib.get_sym(comp.name)
            if sym:
                break
        else:
            print("Symbol not found %s" % comp.name)
            continue

        nets = {}

        for draw in sym.children:
            if draw.part != 0:
                if comp.part != draw.part:
                    continue

            if draw.__class__ != schema.SymPin:
                continue

            vert = np.array([ draw.x, draw.y ])
            vert = np.matmul(vert, trans) + pos

            c = (vert[0], vert[1])
            net = d.get(c)

            if not net:
                net = Net(id)
                net.coords.add(c)
                id += 1
                d[c] = net

            if VERBOSE:
                print(comp.ref, draw.name, draw.pin, c, net.id, net.pins)
            net.pins.append((comp.ref, draw.name, draw.pin))

            nets[draw.pin] = net.id

        if 'Spice_Netlist_Enabled' in comp.fields:
            if comp.fields['Spice_Netlist_Enabled'].text == 'Y':
                if comp.fields['Spice_Primitive'].text:
                    if 'Spice_Lib_File' in comp.fields and comp.fields['Spice_Lib_File'].text:
                        fn = os.path.join(sch.base, comp.fields['Spice_Lib_File'].text)
                        circuit.add_include(fn)

                    seq_field = comp.fields.get('Spice_Node_Sequence')
                    if seq_field:
                        seq = seq_field.text.split()
                    else:
                        seq = [ str(_+1) for _ in range(len(nets)) ]

                    nodes = []
                    for arg in seq:
                        nodes.append(str(nets[str(arg)]))

                    model = comp.fields['Spice_Model'].text

                    ref = comp.ref
                    if not ref.startswith(comp.fields['Spice_Primitive'].text):
                        ref = comp.fields['Spice_Primitive'].text + ref

                    if VERBOSE:
                        print(ref, nodes, model)

                    circuit.Device(ref, nodes, model)

                else:
                    print("unknown spice model %s with ref %s" % (comp.fields['Spice_Primitive'].text, comp.ref))

        elif comp.name in [ 'Device:R' ]:
            assert comp.ref.startswith('R')
            value = comp.fields[1].text
            if value.lower().endswith('ohm'):
                value = value[:-3]
            value = unit.parse_unit(value)
            circuit.R(comp.ref, nets['1'], nets['2'], value)

        elif comp.name in [ 'Device:C' ]:
            assert comp.ref.startswith('C')
            value = comp.fields[1].text
            if value.endswith('F'):
                value = value[:-1]
            value = unit.parse_unit(value)
            circuit.C(comp.ref, nets['1'], nets['2'], value)

        elif comp.name in [ 'Device:L' ]:
            assert comp.ref.startswith('L')
            if value.endswith('H'):
                value = value[:-1]
            value = unit.parse_unit(value)
            circuit.C(comp.ref, nets['1'], nets['2'], value)

        elif comp.name in [ 'power:GND' ]:
            assert comp.ref.startswith('#PWR')
            # circuit.R('R' + comp.ref[1:], nets['1'], 0, 1 * unit.p)
            circuit.V('V' + comp.ref[1:], nets['1'], 0, 0)

        elif comp.name.startswith('power:'):
            assert comp.ref.startswith('#PWR')

            match = supply_re.match(comp.fields[1].text)
            if match:
                v = int(match.group('int'))

                frac = match.group('frac')
                if frac:
                    v += + 0.1**len(frac) * int(frac)

                if match.group('sign') == '-':
                    v = -v

                circuit.V('V' + comp.ref[1:], nets['1'], 0, v)
            else:
                print("can't figure out supply voltage for %s with ref %s" % (comp.name, comp.ref))

        else:
            print("unknown component %s with ref %s" % (comp.name, comp.ref))

    if VERBOSE:
        print()

    return circuit
