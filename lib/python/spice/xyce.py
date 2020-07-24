#! /usr/bin/python
from __future__ import absolute_import, division, print_function, unicode_literals

import numpy as np

from .simulator import SimulatorBase

class Xyce(SimulatorBase):
    SIMULATOR = 'LD_LIBRARY_PATH=/usr/local/xyce/serial/lib /usr/local/xyce/serial/bin/Xyce'
    HEADER = '#define XYCE'

    def __init__(self):
        super(Xyce, self).__init__()

    def update_variable(self, dataset, var):
        name = var.name.upper()
        if name in [ 'SWEEP', 'TIME' ]:
            pass
        elif name in [ 'FREQUENCY' ]:
            name = 'SWEEP'
        elif name.endswith('#BRANCH'):
            name = 'I(%s)' % name[:-7]
        elif not name.startswith('V('):
            name = 'V(%s)' % name

        var.name = name

        if 'complex' in dataset.flags:
            var.dt = np.complex128
        else:
            var.dt = np.float64

    def _default_trace(self, s):
        if s.startswith('***** Percent complete'):
            percent = float(s.split()[-2])
            self.progress.percent(percent)
        elif s.startswith('***** Current system time'):
            pass
        elif s.startswith('***** Estimated time to completion'):
            pass
        else:
            super(Xyce, self)._default_trace(s)

    def _merge_xyce(self, data, path):
        lines = []
        for l in open(path):
            if l[:1].isspace():
                lines[-1] += l
            else:
                lines.append(l)

        parts = lines[0].strip().split('\t')

        assert parts[0].strip() == 'TITLE="noise output"'
        assert parts[1].strip() == 'VARIABLES="frequency"'

        variables = [ None ]
        for i, s in enumerate(parts[2:]):
            s = s.strip()
            assert s.startswith('"')
            assert s.endswith('"')
            s = s[1:-1].strip()
            variables.append(s)

        assert lines[1].strip().split() == ['ZONE','F=POINT','T="Xyce','data"']

        values = []
        for l in lines[2:]:
            vs = np.fromiter(l.strip().split('\t'), dtype = float)
            values.append(vs)
        values = np.array(values).transpose()

        assert np.allclose(data['SWEEP'].imag, 0)
        data['SWEEP'] = abs(data['SWEEP'])

        assert np.allclose(data['SWEEP'], values[0])

        for i in range(1, len(values)):
            name = 'V(%s)' % variables[i].upper()
            assert name not in data
            data[name] = values[i]

    def _noise_post(self, data, cir_path, raw_path, base):
        path = cir_path + '_noise.dat'
        self._merge_xyce(data, path)

    def noise(self, circuit, out, ref, variation, n, fstart, fstop, **kwargs):
        # Xyce doesn't include the noise spectrums in the raw file,
        # print the noise spectrums and add a postprocessing hook to
        # merge the print data with the raw data

        args = [ '.noise', out, ref, variation, n, fstart, fstop, 1 ]
        args = [ self.fix_param(_) for _ in args ]
        s = ' '.join(args)
        s += '\n' + '.PRINT NOISE'
        return self._simulate(circuit, '', s,
                              postprocess = self._noise_post, **kwargs)

Simulator = Xyce
