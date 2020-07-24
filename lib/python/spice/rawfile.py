#! /usr/bin/python

# Copyright (c) 2018 Christer Weinigel <christer@weinigel.se>
#
# SPDX-License-Identifier: MIT
#
# Permission is hereby granted, free of charge, to any person
# obtaining a copy of this software and associated documentation files
# (the "Software"), to deal in the Software without restriction,
# including without limitation the rights to use, copy, modify, merge,
# publish, distribute, sublicense, and/or sell copies of the Software,
# and to permit persons to whom the Software is furnished to do so,
# subject to the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
# BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
# ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

from __future__ import division, print_function, unicode_literals

import numpy as np
from collections import OrderedDict

# Python 3 compatibility
try:
    basestring
except NameError:
    basestring = str

class Variable(np.ndarray):
    def __new__(cls, *args, **kwargs):
        self = super(Variable, cls).__new__(cls, *args, **kwargs)

        self.unit = ''
        self.params = {}

        return self

class Dataset(OrderedDict):
    def __init__(self):
        super(Dataset, self).__init__(self)

        self.headers = OrderedDict()
        self.variables = []
        self.flavor = ''

class Reader(object):
    """File like class with heuristics for encoding."""

    def __init__(self, f, separator = '\n'):
        if isinstance(f, basestring):
            f = open(f, 'rb')

        self.f = f
        self.buf = b''
        self.offset = 0

        self.encoding = None
        self.separator = separator

    def readline(self):
        """Read and decode a line.

        If this is the first time readline is called it tries to
        detect the encoding first."""

        if not self.encoding:
            self.detect_encoding()

        while 1:
            i = self.buf.find(self.separator, self.offset)
            if i != -1:
                break

            if not self.fill(256):
                return None

        s = self.buf[self.offset:i].decode(self.encoding)

        self.offset = i + len(self.separator)

        return s

    def read(self, n):
        """Read raw bytes"""

        while len(self.buf) < self.offset + n:
            if not self.fill(n - len(self.buf) + self.offset):
                break

        data = self.buf[self.offset:self.offset + n]
        self.offset += n

        return data

    def fill(self, n):
        if self.offset:
            self.buf = self.buf[self.offset:]
            self.offset = 0

        data = self.f.read(n)
        if not data:
            return None

        if self.buf:
            self.buf += data
        else:
            self.buf = data

        return data

    def detect_encoding(self):
        self.fill(16)
        assert self.offset == 0

        if self.buf[0:2] == b'\xfe\xff':
            encoding = 'utf_16_be'
            self.offset += 2
        elif self.buf[0:1] == b'\0':
            encoding = 'utf_16_be'
        elif self.buf[0:2] == b'\xff\xfe':
            encoding = 'utf_16_le'
            self.offset += 2
        elif self.buf[1:2] == b'\0':
            encoding = 'utf_16_le'
        elif self.buf[:3] == b'\xef\xbb\xbf':
            encoding = 'utf_8'
            self.offset += 3
        else:
            encoding = 'utf_8'

        self.encoding = encoding
        self.separator = bytearray(self.separator, encoding)

class RawFileReader(object):
    def load(self, f):
        a = []

        self.reader = Reader(f)

        while True:
            d = self.load_dataset()
            if not d:
                break
            a.append(d)

        del self.reader

        return a

    def load_dataset(self):
        dataset = Dataset()

        while 1:
            k, v = self.load_header()

            if k is None:
                assert not dataset.headers
                return None

            kl = k.lower()

            if kl == 'variables':
                self.load_variables(dataset)
                continue

            if kl == 'binary':
                data = self.load_binary(dataset)
                break

            if kl == 'command':
                if 'ltspice' in v.lower().split():
                    assert not dataset.flavor
                    dataset.flavor = 'ltspice'

            assert k not in dataset.headers
            dataset.headers[k] = v

            if kl == 'no. variables':
                dataset.nr_variables = int(v)
            elif kl == 'no. points':
                dataset.nr_points = int(v)
            elif kl == 'flags':
                dataset.flags = v.strip().split()

        for name, unit, params in dataset.variables:
            var = data[str(name)].view(Variable)
            var.unit = unit
            var.params = params
            dataset[name] = var

        return dataset

    def load_header(self):
        l = self.reader.readline()
        if l is None:
            return None, None
        i = l.find(':')
        return (l[:i], l[i+1:].strip())

    def load_variables(self, dataset):
        for idx in range(dataset.nr_variables):
            parts = self.reader.readline().strip().split()
            assert int(parts[0]) == idx
            name = parts[1]
            unit = parts[2]
            params = {}
            for s in parts[3:]:
                i = s.find('=')
                params[s[:i]] = s[i+1:]

            dataset.variables.append((name, unit, params))

    def load_binary(self, dataset):
        dtypes = self.make_dtypes(dataset)

        # Using str is a workaround for numpy 1.11 not understanding unicode
        dt = np.dtype([ (str(n), t) for n, t in dtypes ])

        n = dataset.nr_points * dt.itemsize
        buf = self.reader.read(n)

        data = np.frombuffer(buf, dtype = dt, count = dataset.nr_points)

        return data

    def make_dtypes(self, dataset):
        dtypes = []
        for name, unit, params in dataset.variables:
            if 'complex' in dataset.flags:
                # For complex data all variables are complex128
                dt = np.complex128
            else:
                # LTspice outputs all variables but first as float32
                if dtypes and dataset.flavor == 'ltspice':
                    dt = np.float32
                else:
                    dt = np.float64

            dtypes.append((name, dt))

        return dtypes

def load_rawfile(f):
    """Load datasets from a spice rawfile.

    This function has been tested with ngspice, xyce and ltspice.

    Returns an array of Datasets"""

    return RawFileReader().load(f)

if __name__ == '__main__':
    import sys

    if not sys.argv[0]:
        sys.argv = [ '', 'spice.raw' ]

    for fn in sys.argv[1:]:
        print(fn)
        print()

        a = load_rawfile(fn)

        for d in a:
            for k, v in d.headers.items():
                print(k, v)
            print()

            for name, a in d.items():
                print(name, a.unit, a.params)
                print(a)
                print()
