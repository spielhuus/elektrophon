#! /usr/bin/python
from __future__ import absolute_import, division, print_function, unicode_literals

class Device(object):
    def __init__(self, ref, nodes, value, *args, **kwargs):
        self.ref = ref
        self.nodes = [ str(_) for _ in nodes ]
        self.value = value
        self.args = args
        self.kwargs = kwargs

class Circuit(dict):
    def __init__(self):
        self.includes = set()

    def add_include(self, include):
        self.includes.add(include)

    def add_device(self, device):
        if '?' in device.ref:
            raise ValueError("Invalid ref %s" % device.ref)
        if device.ref in self:
            raise ValueError("Duplicate device with ref %s" % device.ref)
        self[device.ref] = device

    def R(self, ref, nodep, nodem, value):
        assert(ref.startswith('R'))
        self.add_device(Device(ref, [ nodep, nodem ], value))

    def C(self, ref, nodep, nodem, value):
        assert(ref.startswith('C'))
        self.add_device(Device(ref, [ nodep, nodem ], value))

    def L(self, ref, nodep, nodem, value):
        assert(ref.startswith('L'))
        self.add_device(Device(ref, [ nodep, nodem ], value))

    def V(self, ref, nodep, nodem, value):
        assert(ref.startswith('V'))
        self.add_device(Device(ref, [ nodep, nodem ], value))

    def I(self, ref, nodep, nodem, value):
        assert(ref.startswith('I'))
        self.add_device(Device(ref, [ nodep, nodem ], value))

    def Device(self, ref, nodes, model):
        self.add_device(Device(ref, nodes, model))
