#! /usr/bin/python
from __future__ import absolute_import, division, print_function, unicode_literals

import os
import sys

import numpy as np
from subprocess import Popen, PIPE, STDOUT
import tempfile
import time
import shutil
from collections import OrderedDict

from . import unit
from . preprocessor import SpicePreprocessor

class Dataset(dict):
    pass

class Progress(object):
    def __init__(self):
        pass

    def start(self):
        pass

    def stop(self, status):
        pass

    def percent(self, percent):
        pass

class Variable(object):
    def __init__(self, idx, name, unit, param):
        self.idx = idx
        self.name = name
        self.old_name = name
        self.unit = unit
        self.param = param

class SimulatorBase(object):
    ENCODING = 'utf-8'
    SEPARATOR = '\n'
    BLOCKSIZE = 16
    BASE = '.'
    HEADER = ''

    def __init__(self):
        self.timing = 0
        self.verbose = 0
        self.progress = Progress()
        self.last_trace = ''
        self.preprocessor = SpicePreprocessor
        self.includes = []

    def _dummy(self, *args, **kwargs):
        pass

    def trace(self, s):
        if s == self.last_trace:
            return

        self.last_trace = s

        if self.verbose >= 1:
            print(s)
        self.output.append(str(s))

    def log(self):
        return '\n'.join(self.output)

    def fix_param(self, v):
        if isinstance(v, unit._Unit):
            prefix = v.prefix
            if prefix == 'M':
                prefix = 'MEG'
            return str(v.value / v.multiplier) + prefix

        return str(v)

    def device_to_spice(self, device):
        a = []
        a.append(device.ref)
        for node in device.nodes:
            a.append(str(node))
        a.append(self.fix_param(device.value))
        for arg in device.args:
            a.append(self.fix_param(arg))
        for k, v in device.kwargs:
            a.append('%s=%s' % (k, self.fix_param(v)))
        return ' '.join(a)

    def circuit_to_spice(self, circuit, base = '.'):
        a = []

        for include in circuit.includes:
            a.append('#include "%s"' % os.path.join(base, include))
        for device in circuit.values():
            a.append(self.device_to_spice(device))

        a.append('')

        return '\n'.join(a)

    def readline(self):
        while 1:
            i = self.buf.find(self.separator, self.offset)
            if i != -1:
                break

            data = self.f.read(self.BLOCKSIZE)
            if not data:
                return None

            # print("got %d bytes" % len(data))

            if self.offset:
                self.buf = self.buf[self.offset:]
                self.offset = 0

            self.buf += data

        s = self.buf[self.offset:i].decode(self.ENCODING)

        self.offset = i + len(self.separator)

        return s

    def readheader(self):
        l = self.readline()
        if l is None:
            return None, None
        i = l.find(':')
        return (l[:i], l[i+1:].strip())

    def read(self, n):
        while len(self.buf) < self.offset + n:
            data = self.f.read(max(self.BLOCKSIZE, n - len(self.buf) + self.offset))
            if not data:
                break

            # print("got %d bytes" % len(data))

            if self.offset:
                self.buf = self.buf[self.offset:]
                self.offset = 0

            self.buf += data

        data = self.buf[self.offset:self.offset + n]

        self.offset += n

        return data

    def _load_variables(self, dataset):
        dataset.variables = OrderedDict()

        for idx in range(dataset.nr_variables):
            parts = self.readline().strip().split()
            assert int(parts[0]) == idx
            name = parts[1]
            unit = parts[2]
            params = {}
            for s in parts[3:]:
                i = s.find('=')
                params[s[:i]] = s[i+1:]

            var = Variable(idx, name, unit, params)

            self.update_variable(dataset, var)

            dataset.variables[var.name] = var

    def _load_binary(self, dataset):
        # Doing str here is a workaround for numpy 1.11 not understanding unicode
        dt = np.dtype([ (str(var.name), var.dt) for var in dataset.variables.values() ])

        n = dataset.nr_points * dt.itemsize
        buf = self.read(n)

        data = np.frombuffer(buf, dtype = dt, count = dataset.nr_points)

        for var in dataset.variables.values():
            dataset[var.name] = data[str(var.name)]

    def _load(self, f):
        self.f = f

        self.buf = bytearray()
        self.offset = 0

        self.separator = bytearray(self.SEPARATOR, self.ENCODING)

        dataset = Dataset()
        dataset.headers = {}
        dataset.variables = None

        while 1:
            k, v = self.readheader()

            k = k.lower()

            if k == 'variables':
                self._load_variables(dataset)
                continue

            if k == 'binary':
                self._load_binary(dataset)
                break

            assert k not in dataset.headers
            dataset.headers[k] = v

            if k == 'no. variables':
                dataset.nr_variables = int(v)
            elif k == 'no. points':
                dataset.nr_points = int(v)
            elif k == 'flags':
                dataset.flags = v.strip().split()

        return dataset

    def _make_cmd(self, cir_path, raw_path):
        return '%s -b -r %s %s' % (self.SIMULATOR, raw_path, cir_path)

    def _write_circuit(self, fn, circuit, pre, post):
        title = "simulation"

        cir_s = self.circuit_to_spice(circuit, base = self.BASE)
        s = '\n'.join([ self.HEADER, pre, post, cir_s ])
        if self.preprocessor:
            pp = self.preprocessor()
            for include in self.includes:
                pp.add_path(include)
            pp.parse(s)
            s = pp.output()

        with open(fn, 'w') as f:
            f.write('%s\n' % title)
            f.write('%s\n' % s)
            f.write('.end\n')
            f.close()

    def _simulate(self, circuit, pre, post, secondary = False,
                  postprocess = None):
        self.progress.start()
        try:
            status = 1

            self.output = []

            base = tempfile.mkdtemp(prefix = 'sim-', dir = '.')

            cir_path = os.path.join(base, 'spice.cir')
            raw_path = os.path.join(base, 'spice.raw')

            self._write_circuit(cir_path, circuit, pre, post)

            cmd = self._make_cmd(cir_path, raw_path)
            self.trace(cmd + '\n')

            t0 = time.time()
            p = Popen(cmd, shell = True,
                      stdin = PIPE, stdout = PIPE, stderr = STDOUT,
                      close_fds = True)
            while 1:
                buf = p.stdout.readline()
                if not buf:
                    break
                self.trace(buf.decode('ascii').rstrip())
            ec = p.wait()
            t1 = time.time()

            if self.timing:
                print("simulation took %.3f seconds" % (t1-t0))

            if ec != 0:
                print("Simulation failed")
                print()
                if self.verbose < 1:
                    print(self.log())

            with open(raw_path, 'rb') as f:
                data = self._load(f)
                if secondary:
                    data.secondary = self._load(f)
                assert len(self.read(1)) == 0

            if postprocess:
                postprocess(data, cir_path, raw_path, base)

            self._simulate_post(cir_path, raw_path, base)

            shutil.rmtree(base)

            status = 0

            return data

        finally:
            self.progress.stop(status)

    def _simulate_post(self, cir_path, raw_path, base):
        pass

    def _fixup_data(self, data):
        return data

    def _simulate_simple(self, circuit, *args, **kwargs):
        args = [ self.fix_param(_) for _ in args ]
        return self._simulate(circuit, '', ' '.join(args), **kwargs)

    def dc(self, circuit, source, start, stop, step):
        args = [ '.dc', source, start, stop, step ]
        return self._simulate_simple(circuit, *args)

    def ac(self, circuit, variation, n, fstart, fstop):
        args = [ '.ac', variation, n, fstart, fstop ]
        return self._simulate_simple(circuit, *args)

    def noise(self, circuit, out, ref, variation, n, fstart, fstop, **kwargs):
        args = [ '.noise', out, ref, variation, n, fstart, fstop ]
        return self._simulate_simple(circuit, *args, **kwargs)

    def tran(self, circuit, tstep, tstop, tstart=0, tmax=None, uic=False):
        args = [ '.tran', tstep, tstop, tstart ]
        if tmax is not None:
            args.append(tmax)
        if uic:
            args.append('uic')
        return self._simulate_simple(circuit, *args)
