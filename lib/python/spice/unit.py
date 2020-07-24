#! /usr/bin/python
from __future__ import absolute_import, division, print_function, unicode_literals

import numpy as np

class _Unit(object):
    def __init__(self, multiplier, prefix, value = 1.0, precision = 6):
        assert isinstance(value, int) or isinstance(value, float)
        self.value = float(value) * multiplier
        self.multiplier = multiplier
        self.prefix = prefix
        self.precision = precision

    def __rmul__(self, other):
        o = self.__class__(self.multiplier, self.prefix)
        o.value = float(other) * self.value
        return o

    def __mul__(self, other):
        o = self.__class__(self.multiplier, self.prefix)
        o.value = self.value * float(other)
        return o

    def __add__(self, other):
        o = self.__class__(self.multiplier, self.prefix)
        o.value = self.value + float(other)
        return o

    def __radd__(self, other):
        o = self.__class__(self.multiplier, self.prefix)
        o.value = float(other) + self.value
        return o

    def __sub__(self, other):
        o = self.__class__(self.multiplier, self.prefix)
        o.value = self.value - float(other)
        return o

    def __rsub__(self, other):
        o = self.__class__(self.multiplier, self.prefix)
        o.value = float(other) - self.value
        return o

    def __div__(self, other):
        o = self.__class__(self.multiplier, self.prefix)
        o.value = self.value / float(other)
        return o

    def __truediv__(self, other):
        o = self.__class__(self.multiplier, self.prefix)
        o.value = self.value / float(other)
        return o

    def __neg__(self):
        o = self.__class__(self.multiplier, self.prefix)
        o.value = -self.value
        return o

    def __call__(self, value = 1):
        return self.__class__(self.multiplier, self.prefix, value)

    def __repr__(self):
        s = '%.*f' % (self.precision, self.value / self.multiplier)
        i = len(s)
        while s[i-1] == '0':
            i -= 1
        if s[i-1] == '.':
            i -= 1
        s = s[:i]
        s += self.prefix
        return s

    def __float__(self):
        return self.value

    def __int__(self):
        return int(self.value)

T = _Unit(1E12,  'T')
G = _Unit(1E9,   'G')
M = _Unit(1E6,   'M')
k = _Unit(1E3,   'k')
m = _Unit(1E-3,  'm')
u = _Unit(1E-6,  'u')
n = _Unit(1E-9,  'n')
p = _Unit(1E-12, 'p')
f = _Unit(1E-15, 'f')

_units = { _.prefix : _ for _ in [ T, G, M, k, m, u, n, p, f ] }

def parse_unit(s):
    u = _units.get(s[-1:])
    if u:
        return u(float(s[:-1]))
    return float(s)

def dBa(v):
    """Convert value to decibel for amplitudes"""
    return 20 * np.log10(np.abs(v))

def dBp(v):
    """Convert value to decibel for power"""
    return 10 * np.log10(np.abs(v))

def dBm(v):
    """Convert value to decibel for power * 1000

    This is usually used to display dB referenced to 1 mW"""
    return 20 * np.log10(np.abs(v) * 1000.0)

import unittest as _unittest

class _Test(_unittest.TestCase):
    def test_Units(self):
        self.assertAlmostEqual(float(3*T),              3E12)
        self.assertAlmostEqual(float(3*G),              3E9)
        self.assertAlmostEqual(float(3*M),              3E6)
        self.assertAlmostEqual(float(3*k),              3E3)
        self.assertAlmostEqual(float(3*m),              3E-3)
        self.assertAlmostEqual(float(3*u),              3E-6)
        self.assertAlmostEqual(float(3*n),              3E-9)
        self.assertAlmostEqual(float(3*p),              3E-12)
        self.assertAlmostEqual(float(3*f),              3E-15)

        self.assertEqual(repr(3*T),                     '3T')
        self.assertEqual(repr(3*G),                     '3G')
        self.assertEqual(repr(3 * M),                   '3M')
        self.assertEqual(repr(3*k),                     '3k')
        self.assertEqual(repr(3*m),                     '3m')
        self.assertEqual(repr(3*u),                     '3u')
        self.assertEqual(repr(3*n),                     '3n')
        self.assertEqual(repr(3*p),                     '3p')
        self.assertEqual(repr(3*f),                     '3f')

        # Other ways of initializing a unit
        self.assertAlmostEqual(k.value,                 1E3)
        self.assertAlmostEqual(float(k),                1E3)
        self.assertEqual(int(k),                        1000)
        self.assertEqual(repr(k),                       '1k')

        # Math
        self.assertAlmostEqual(float(2 * (3*M)),        6E6)
        self.assertAlmostEqual(float((3*M) * 2),        6E6)

        self.assertAlmostEqual(float(5*M + 2*M),        7E6)
        self.assertAlmostEqual(float(5*M - 2*M),        3E6)

        self.assertAlmostEqual(float(5*M + 2E6),        7E6)
        self.assertAlmostEqual(float(5*M - 2E6),        3E6)

        self.assertAlmostEqual(float(5E6 + 2*M),        7E6)
        self.assertAlmostEqual(float(5E6 - 2*M),        3E6)

        self.assertAlmostEqual(float(5*M + 2E6),        7E6)
        self.assertAlmostEqual(float(5*M - 2E6),        3E6)

        self.assertAlmostEqual(float(5*M + 500E3),      5.5E6)
        self.assertAlmostEqual(float(5*M - 500E3),      4.5E6)

        self.assertAlmostEqual(float(5*M + 500*k),      5.5E6)
        self.assertAlmostEqual(float(5*M - 500*k),      4.5E6)

        self.assertEqual(repr(2 * (3*M)),               '6M')
        self.assertEqual(repr((3*M) * 2),               '6M')

        self.assertEqual(repr(5*M + 2*M),               '7M')
        self.assertEqual(repr(5*M - 2*M),               '3M')

        self.assertEqual(repr(5*M + 2E6),               '7M')
        self.assertEqual(repr(5*M - 2E6),               '3M')

        self.assertEqual(repr(5E6 + 2*M),               '7M')
        self.assertEqual(repr(5E6 - 2*M),               '3M')

        self.assertEqual(repr(5*M + 500*k),             '5.5M')
        self.assertEqual(repr(5*M - 500*k),             '4.5M')

        self.assertEqual(repr(500*k + 5*M),             '5500k')

if __name__ == '__main__':
    _unittest.main()
