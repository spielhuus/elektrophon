#! /usr/bin/python
from __future__ import absolute_import, division, print_function, unicode_literals

from .simulator import SimulatorBase

import numpy as np

class Ngspice(SimulatorBase):
    SIMULATOR = 'ngspice'
    HEADER = '''
#define NGSPICE
.func if(a,b,c) 'ternary_fcn( a , b , c )
.func limit(x, y, z) {min(max(x, min(y, z)), max(z, y))}
.param TEMP=27
'''
    def __init__(self):
        super(Ngspice, self).__init__()

    def update_variable(self, dataset, var):
        name = var.name.upper()
        if name in [ 'V(V-SWEEP)', 'V(I-SWEEP)', 'FREQUENCY' ]:
            assert var.idx == 0
            name = 'SWEEP'

        var.name = name

        if 'complex' in dataset.flags:
            var.dt = np.complex128
        else:
            var.dt = np.float64

    def noise(self, circuit, out, ref, variation, n, fstart, fstop, **kwargs):
        args = [ '.noise', out, ref, variation, n, fstart, fstop, 1 ]
        return self._simulate_simple(circuit, *args, secondary = True, **kwargs)

Simulator = Ngspice
