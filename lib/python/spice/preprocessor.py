#! /usr/bin/python
from __future__ import absolute_import, division, print_function, unicode_literals

from ply.cpp import *

class SpicePreprocessor(Preprocessor):
    def __init__(self):
        import ply.lex as lex
        super(SpicePreprocessor, self).__init__(lex.lex())

    def parsegen(self,input,source=None):
        if source:
            input = '* included from "%s"\n\n' % source + input
        input += '\n'
        return super(SpicePreprocessor, self).parsegen(input,source=source)

    def __iter__(self):
        while True:
            tok = self.token()
            if not tok:
                break
            yield tok

    def output(self):
        line = []
        lines = []

        for tok in self:
            if tok.type == self.t_SPACE and '\n' in tok.value:
                line.append(tok.value)
                joined = ''.join(line)
                lines.append(joined)
                line = []

            else:
                line.append(tok.value)

        lines.append(''.join(line))

        return ''.join(lines)
