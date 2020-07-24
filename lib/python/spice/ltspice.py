#! /usr/bin/python
from __future__ import absolute_import, division, print_function, unicode_literals

import os
import numpy as np

from .simulator import SimulatorBase, Dataset

class LTspice(SimulatorBase):
    SIMULATOR = 'DISPLAY=:0 "%s/.wine/drive_c/Program Files/LTC/LTspiceXVII/XVIIx64.exe"' % os.environ['HOME']
    ENCODING = 'utf_16_le'
    HEADER = '#define LTSPICE'

    def __init__(self):
        super(LTspice, self).__init__()

    def _create_files(self):
        return 'spice.cir', 'spice.raw'

    def _make_cmd(self, cir_path, raw_path):
        return '%s -b %s' % (self.SIMULATOR, cir_path)

    def _simulate_post(self, cir_path, raw_path, base):
        assert cir_path.endswith('.cir')
        log_path = cir_path[:-4] + '.log'
        with open(log_path, 'rb') as f:
            data = f.read()
            if data[1:2] == '\0':
                log = data.decode(self.encoding)
            else:
                log = data.decode('ascii')
            self.trace(log)

    def update_variable(self, dataset, var):
        name = var.name.upper()

        if name in [ 'GAIN', 'TIME' ]:
            pass
        elif var.idx == 0:
            name = 'SWEEP'
        elif name == 'V(ONOISE)':
            name = 'V(ONOISE_SPECTRUM)'
        elif name == 'INOISE':
            name = 'V(INOISE_SPECTRUM)'
        elif name.startswith('I('):
            pass
        elif not name.startswith('V('):
            name = 'V(%s)' % name

        var.name = name

        if 'complex' in dataset.flags:
            var.dt = np.complex128
        elif var.idx != 0:
            var.dt = np.float32
        else:
            var.dt = np.float64

    def dc(self, circuit, source, start, stop, step):
        args = [ '.dc', source, start, stop, step ]
        data = self._simulate_simple(circuit, *args)

        return data

    def tran(self, circuit, tstep, tstop, tstart=0, tmax=None, uic=False):
        args = [ '.tran', tstep, tstop, tstart ]
        if tmax is not None:
            args.append(tmax)
        if uic:
            args.append('uic')
        data = self._simulate_simple(circuit, *args)
        data['TIME'] = abs(data['TIME'])
        return data

    def noise(self, *args, **kwargs):
        data = super(LTspice, self).noise(*args, **kwargs)

        # Ngspice and Xyce return V^2/HZ while LTspice returns V/rtHz;
        # convert LTspice spectrums to same format as them
        for name in [ 'V(INOISE_SPECTRUM)',  'V(ONOISE_SPECTRUM)' ]:
            data[name] = data[name] ** 2
        return data

Simulator = LTspice
