#! /usr/bin/python
from __future__ import absolute_import, division, print_function, unicode_literals

from collections import OrderedDict

import os
import sys

VERBOSE = 0

class AttributeDict(dict):
    def __getattr__(self, attr):
        return self[attr]
    def __setattr__(self, attr, value):
        self[attr] = value

def _encode_string(s):
    return '"%s"' % s

class Parser(object):
    def __init__(self, lines):
        self.lines = lines
        self.index = 0

    def eof(self):
        return self.index >= len(self.lines)

    def readline(self):
        if not self.eof():
            l = self.lines[self.index]
            self.index += 1
            l = l.strip()
            return l
        return None

    def back(self):
        assert self.index > 0
        self.index -= 1

    def parse_line(self):
        while True:
            l = self.readline()
            if l is None:
                return None
            if l.startswith('#'):
                continue
            break

        i = 0
        a = []
        while i < len(l):
            if l[i].isspace():
                i += 1
                continue

            if l[i] == '"':
                j = l.index('"', i + 1)
                s = l[i+1:j]
                i = j + 1
            else:
                j = l.find(' ', i)
                if j == -1:
                    j = len(l)
                s = l[i:j]
                i = j
            a.append(s)

        if VERBOSE:
            print(len(a), a)

        return a

class Element(object):
    def __init__(self):
        self.kind = None

        self.pen_width = 0
        self.filled = False

class SchDescr(Element):
    def __init__(self, parser):
        super(SchDescr, self).__init__()
        self.parse(parser)

    def parse(self, parser):
        # $Descr A3 16535 11700
        parts = parser.parse_line()
        assert len(parts) >= 4
        assert parts[0] == '$Descr'
        self.size = parts[1]
        assert self.size in [ 'A0', 'A1', 'A2', 'A3', 'A4',
                              'A', 'B', 'C', 'D', 'E', 'User' ]
        self.w = int(parts[2])
        self.h = int(parts[3])
        self.flags = parts[4:]

        parts = parser.parse_line()
        if parts[0] == 'encoding':
            assert len(parts) == 2
            assert parts[1] == 'utf-8'
            self.encoding = parts[1]
        else:
            parser.back()
            self.encoding = None

        # Sheet 1 4
        parts = parser.parse_line()
        assert len(parts) == 3
        assert parts[0] == 'Sheet'
        self.sheet_num = int(parts[1])
        self.sheet_max = int(parts[2])

        # "title"
        parts = parser.parse_line()
        if len(parts) == 1:
            self.title = parts[0]
        else:
            assert len(parts) == 2
            assert parts[0] == 'Title'
            self.title = parts[1]

        # Date "28 dec 1996"
        parts = parser.parse_line()
        assert len(parts) == 2
        assert parts[0] == 'Date'
        self.date = parts[1]

        # Rev "revision"
        parts = parser.parse_line()
        assert len(parts) == 2
        assert parts[0] == 'Rev'
        self.rev = parts[1]

        # Comp "company"
        parts = parser.parse_line()
        assert len(parts) == 2
        assert parts[0] == 'Comp'
        self.comp = parts[1]

        # Comment1 "comment"
        # Comment2 "comment"
        # Comment3 "comment"
        # Comment4 "comment"
        self.comments = []
        while 1:
            parts = parser.parse_line()
            if not parts[0].startswith('Comment'):
                parser.back()
                break
            assert int(parts[0][7:]) == len(self.comments) + 1
            assert len(parts) == 2
            self.comments.append(parts[1])
        assert len(self.comments) == 4

        # $EndDescr
        parts = parser.parse_line()
        assert len(parts) == 1
        assert parts[0] == '$EndDescr'

    def format(self, outf):
        extra = ' '.join(self.flags)
        if extra:
            extra = ' ' + extra
        outf.write('$Descr %s %u %u%s\n' % (
            self.size, self.w, self.h, extra))
        if self.encoding is not None:
            outf.write('encoding %s\n' % self.encoding)
        outf.write('Sheet %u %u\n' % (self.sheet_num, self.sheet_max))
        outf.write('Title %s\n' % _encode_string(self.title))
        outf.write('Date %s\n' % _encode_string(self.date))
        outf.write('Rev %s\n' % _encode_string(self.rev))
        outf.write('Comp %s\n' % _encode_string(self.comp))
        for i, s in enumerate(self.comments):
            outf.write('Comment%u %s\n' % (i + 1, _encode_string(s)))
        outf.write('$EndDescr\n')

class SchSheet(Element):
    def __init__(self, parser):
        super(SchSheet, self).__init__()
        self.parse(parser)

    def parse(self, parser):
        # $Sheet
        parts = parser.parse_line()
        assert len(parts) == 1
        assert parts[0] == '$Sheet'

        # S posx posy dimx dimy
        parts = parser.parse_line()
        assert len(parts) == 5
        assert parts[0] == 'S'
        self.posx = int(parts[1])
        self.posy = int(parts[2])
        self.dimx = int(parts[3])
        self.dimy = int(parts[4])

        # U DEADBEEF
        parts = parser.parse_line()
        assert len(parts) == 2
        assert parts[0] == 'U'
        self.uuid = parts[1]

        # F0 "text" 50
        # F1 "text" 50
        # ...
        self.fields = []
        while 1:
            parts = parser.parse_line()
            if not parts[0].startswith('F'):
                parser.back()
                break
            assert int(parts[0][1:]) == len(self.fields)
            assert len(parts) == 3
            self.fields.append((parts[1], int(parts[2])))
        assert len(self.fields) >= 2

        parts = parser.parse_line()
        assert len(parts) == 1
        assert parts[0] == '$EndSheet'

    def format(self, outf):
        outf.write('$Sheet\n')
        # bug compatibility, add trailing space to S
        outf.write('S %u %u %u %u \n' % (
            self.posx, self.posy, self.dimx, self.dimy))
        outf.write('U %s\n' % self.uuid)
        for i, (text, n) in enumerate(self.fields):
            outf.write('F%u %s %s\n' % (i, _encode_string(text), n))
        outf.write('$EndSheet\n')

class SchCompField(Element):
    def __init__(self, parts):
        super(SchCompField, self).__init__()
        self.parse(parts)

    def parse(self, parts):
        assert len(parts) == 10 or len(parts) == 11
        self.num = int(parts[1])
        self.text = parts[2]
        self.orientation = parts[3]
        self.x = int(parts[4])
        self.y = int(parts[5])
        self.size = int(parts[6])
        self.flags = int(parts[7])
        self.halign = parts[8]
        assert len(parts[9]) == 3
        self.valign = parts[9][0]
        self.italic = parts[9][1]
        self.bold = parts[9][2]
        if len(parts) > 10:
            self.name = parts[10]
        else:
            self.name = self.num

    def format(self, outf):
        if self.num < 4:
            # TODO check field names
            assert self.num == self.name
            extra = ''
        else:
            extra = ' %s' % _encode_string(self.name)
        outf.write('F %u %s %s %u %u %u  %04u %s %s%s%s%s\n' % (
            self.num, _encode_string(self.text), self.orientation,
            self.x, self.y, self.size, self.flags,
            self.halign, self.valign, self.italic, self.bold,
            extra))

class SchComp(Element):
    def __init__(self, parser):
        super(SchComp, self).__init__()
        self.parse(parser)
        self.kind = 'comp'

    def parse(self, parser):
        # $Comp
        parts = parser.parse_line()
        assert len(parts) == 1
        assert parts[0] == '$Comp'

        # L Library:Component_name REF123
        parts = parser.parse_line()
        assert len(parts) == 3
        assert parts[0] == 'L'
        self.name = parts[1]
        self.ref = parts[2]

        # U 1 1 DEADBEEF
        parts = parser.parse_line()
        assert len(parts) == 4
        assert parts[0] == 'U'
        self.uuid_1 = int(parts[1])
        self.uuid_2 = int(parts[2])
        self.uuid = parts[3]

        # P posx posy
        parts = parser.parse_line()
        assert len(parts) == 3
        assert parts[0] == 'P'
        self.posx = int(parts[1])
        self.posy = int(parts[2])

        # F 0 "REF" H 2456 8667 50  0000 C CNN
        # F 1 "USB_B_Micro" H 2456 8576 50  0000 C CNN
        # F 2 "mod:USB_Micro-B_Amphenol_10118193-0001LF_DIY" H 2550 8150 50  0001 C CNN
        # F 3 "~" H 2550 8150 50  0001 C CNN
        # F 4 "10118193-0001LF" H 2400 8200 50  0001 C CNN "MFP"
        # ...
        #
        # Note that F0..F3 are hardcoded, F4 and on have a user defined key at the end
        self.fields = OrderedDict()
        while 1:
            parts = parser.parse_line()
            if parts[0] != 'F':
                parser.back()
                break
            field = SchCompField(parts)
            assert field.num == len(self.fields)
            self.fields[field.name] = field
        assert len(self.fields) >= 4

        parts = parser.parse_line()
        assert len(parts) == 3
        self.a = (int(parts[0]), int(parts[1]), int(parts[2]))
        self.part = int(parts[0])

        assert self.posx == self.a[1]
        assert self.posy == self.a[2]

        parts = parser.parse_line()
        assert len(parts) == 4
        self.orientation = ( int(parts[0]), int(parts[1]),
                             int(parts[2]), int(parts[3]) )

        parts = parser.parse_line()
        assert len(parts) == 1
        assert parts[0] == '$EndComp'

    def format(self, outf):
        outf.write('$Comp\n')
        outf.write('L %s %s\n' % (self.name, self.ref))
        outf.write('U %u %u %s\n' % (self.uuid_1, self.uuid_2, self.uuid))
        outf.write('P %u %u\n' % (self.posx, self.posy))
        for field in self.fields.values():
            field.format(outf)
        outf.write('\t%-4u %-4u %-4u\n' % self.a)
        # bug compatibility, the final %-4u can add whitespace at the end of the line
        outf.write('\t%-4u %-4u %-4u %-4u\n' % self.orientation)
        outf.write('$EndComp\n')

class SchText(Element):
    def __init__(self, parser):
        super(SchText, self).__init__()
        self.kind = 'text'
        self.parse(parser)

    def parse(self, parser):
        parts = parser.parse_line()
        assert parts[0] == 'Text'
        self.sub = parts[1]
        self.x = int(parts[2])
        self.y = int(parts[3])
        self.orientation = int(parts[4])
        self.size = int(parts[5])

        if self.sub == 'GLabel':
            assert len(parts) == 9
            self.direction = parts[6]
            self.a = parts[7]
            self.b = parts[8]
        elif self.sub == 'Label' or self.sub == 'Notes':
            assert len(parts) == 8
            self.a = parts[6]
            self.b = parts[7]
        else:
            raise ValueError("Unknown text type \"%s\"" % self.sub)

        self.text = parser.readline()
        self.text = self.text.replace('\\\\', '\1')
        self.text = self.text.replace('\\n', '\n')
        self.text = self.text.replace('\1', '\\')

    def format(self, outf):
        if self.sub == 'GLabel':
            outf.write('Text %s %s %s %-4s %-4s %s %s %s\n' % (
                self.sub, self.x, self.y, self.orientation, self.size, self.direction, self.a, self.b))
        else:
            outf.write('Text %s %s %s %-4s %-4s %s %s\n' % (
                self.sub, self.x, self.y, self.orientation, self.size, self.a, self.b))
        outf.write('%s\n' % self.text)

class SchWire(Element):
    def __init__(self, parser):
        super(SchWire, self).__init__()
        self.parse(parser)
        self.kind = 'wire'

    def parse(self, parser):
        parts = parser.parse_line()
        assert parts[0] == 'Wire'
        assert len(parts) == 3
        self.layer = parts[1]
        self.shape = parts[2]
        parts = parser.parse_line()
        assert len(parts) == 4
        self.x0 = int(parts[0])
        self.y0 = int(parts[1])
        self.x1 = int(parts[2])
        self.y1 = int(parts[3])

    def format(self, outf):
        outf.write('Wire %s %s\n' % (self.layer, self.shape))
        outf.write('\t%u %u %u %u\n' % (self.x0, self.y0, self.x1, self.y1))

class SchConnection(Element):
    def __init__(self, parser):
        super(SchConnection, self).__init__()
        self.parse(parser)
        self.kind = 'conn'

    def parse(self, parser):
        parts = parser.parse_line()
        assert parts[0] == 'Connection'
        assert len(parts) == 4
        self.name = parts[1]
        self.x = int(parts[2])
        self.y = int(parts[3])

    def format(self, outf):
        outf.write('Connection %s %u %u\n' % (self.name, self.x, self.y))

class SchNoConn(Element):
    def __init__(self, parser):
        super(SchNoConn, self).__init__()
        self.parse(parser)
        self.kind = 'noconn'

    def parse(self, parser):
        parts = parser.parse_line()
        assert parts[0] == 'NoConn'
        assert len(parts) == 4
        self.name = parts[1]
        self.x = int(parts[2])
        self.y = int(parts[3])

    def format(self, outf):
        outf.write('NoConn %s %u %u\n' % (self.name, self.x, self.y))

class Sch(AttributeDict):
    def __init__(self, fn):
        assert fn.endswith('.sch')

        self.path = fn
        self.base, self.fn = os.path.split(fn)
        self.name = self.fn[:-4]

        f = open(fn)

        parser = Parser(f.readlines())
        self.parse(parser)

        self.load_libs()

        self['conns'] = []
        self['noconn'] = []
        for child in self.children:
            if child.kind is None:
                continue
            try:
                a = self[child.kind]
            except KeyError:
                a = []
                self[child.kind] = a
            a.append(child)

    def parse(self, parser):
        self.children = []

        # EESchema Schematic File Version 4
        parts = parser.parse_line()
        assert parts[:4] == [ 'EESchema', 'Schematic', 'File', 'Version' ]
        self.version = int(parts[4])
        assert self.version == 4

        # LIBS:project-cache foo bar boz

        self.lib_names = []
        while 1:
            libs = self.parse_libs(parser)
            if not libs:
                break
            self.lib_names.append(libs)

        # EELAYER 26 0
        parts = parser.parse_line()
        assert parts[0] == 'EELAYER'
        self.eelayer = parts[1:]

        # EELAYER END
        parts = parser.parse_line()
        assert parts == [ 'EELAYER', 'END' ]

        self.children.append(SchDescr(parser))

        while 1:
            parts = parser.parse_line()
            parser.back()
            if parts[0] == '$Sheet':
                self.children.append(SchSheet(parser))
            elif parts[0] == '$Comp':
                self.children.append(SchComp(parser))
            elif parts[0] == 'Text':
                self.children.append(SchText(parser))
            elif parts[0] == 'Wire':
                self.children.append(SchWire(parser))
            elif parts[0] == 'Connection':
                self.children.append(SchConnection(parser))
            elif parts[0] == 'NoConn':
                self.children.append(SchNoConn(parser))
            else:
                break

        parts = parser.parse_line()
        assert len(parts) == 1
        assert parts[0] == '$EndSCHEMATC'

        assert parser.eof()

    def parse_libs(self, parser):
        l = parser.readline()
        if l is None:
            return l
        if l.startswith('LIBS:'):
            return [ _.strip() for _ in l[5:].split(',') ]
        parser.back()
        return None

    def load_lib(self, fn, search = [ '.' ]):
        for base in search:
            path = os.path.join(base, fn)
            if os.path.exists(path):
                with open(path) as f:
                    if VERBOSE:
                        print("parsing library %s" % fn)
                    lib = Lib(f)
                    self.libs.append(lib)
                    break
        else:
            if VERBOSE:
                print("%s: library not found" % fn)
        if VERBOSE:
            print()

    def load_libs(self, search = [ '.' ]):
        search = [ os.path.join(self.base, _) for _ in search ]

        # Make a unique set of library names
        names = set()
        for a in self.lib_names:
            names.update(a)

        # Remove the cache if it is in the list of names
        cache = self.name + '-cache'
        if cache in names:
            names.remove(cache)

        self.libs = []
        for name in names:
                self.load_lib(name + '.lib', search)

        # Load the cache last so that it overwrites any other libraries
        self.load_lib(cache + '.lib', search)

    def format(self, outf):
        outf.write('EESchema Schematic File Version %u\n' % self.version)
        for libs in self.lib_names:
            outf.write('LIBS:%s\n' % ', '.join(libs))
        outf.write('EELAYER %s\n' % ' '.join(self.eelayer))
        outf.write('EELAYER END\n')

        for child in self.children:
            child.format(outf)

        outf.write('$EndSCHEMATC\n')

class SymArc(Element):
    def __init__(self, parts):
        Element.__init__(self)
        assert parts[0] == 'A'
        assert len(parts) == 14
        self.x = int(parts[1])
        self.y = int(parts[2])
        self.r = int(parts[3])
        self.start = int(parts[4])
        self.end = int(parts[5])
        self.part = int(parts[6])
        self.unit = int(parts[7])
        self.pen_width = int(parts[8])
        assert parts[9].upper() in [ 'F', 'N' ]
        self.filled = parts[9].upper() == 'F'
        self.xstart = int(parts[10])
        self.xend = int(parts[11])
        self.ystart = int(parts[12])
        self.yend = int(parts[13])

class SymCircle(Element):
    def __init__(self, parts):
        Element.__init__(self)
        assert parts[0] == 'C'
        assert len(parts) == 8
        self.x = int(parts[1])
        self.y = int(parts[2])
        self.r = int(parts[3])
        self.part = int(parts[4])
        self.unit = int(parts[5])
        self.pen_width = int(parts[6])
        assert parts[7].upper() in [ 'F', 'N' ]
        self.filled = parts[7].upper() == 'F'

class SymPoly(Element):
    def __init__(self, parts):
        Element.__init__(self)
        assert parts[0] == 'P'
        count = int(parts[1])
        self.part = int(parts[2])
        self.unit = int(parts[3])
        self.pen_width = int(parts[4])
        self.vertices = []
        idx = 5
        for i in range(count):
            self.vertices.append((int(parts[idx]), int(parts[idx+1])))
            idx += 2
        assert parts[idx].upper() in [ 'F', 'N' ]
        self.filled = parts[idx].upper() == 'F'
        idx += 1
        assert idx == len(parts)

class SymPin(Element):
    def __init__(self, parts):
        Element.__init__(self)
        assert parts[0] == 'X'
        assert len(parts) >= 12 and len(parts) <= 13
        self.name = parts[1]
        self.pin = parts[2]
        self.x = int(parts[3])
        self.y = int(parts[4])
        self.length = int(parts[5])
        self.orientation = parts[6]
        self.sizenum = int(parts[7])
        self.sizename = int(parts[8])
        self.part = int(parts[9])
        self.unit = int(parts[10])
        self.kind = parts[11]
        if len(parts) > 12:
            self.shape = parts[12]
        else:
            self.shape = None

class SymRect(Element):
    def __init__(self, parts):
        Element.__init__(self)
        assert parts[0] == 'S'
        assert len(parts) == 9
        self.x0 = int(parts[1])
        self.y0 = int(parts[2])
        self.x1 = int(parts[3])
        self.y1 = int(parts[4])
        self.part = int(parts[5])
        self.unit = int(parts[6])
        self.pen_width = int(parts[7])
        assert parts[8].upper() in [ 'F', 'N' ]
        self.filled = parts[8].upper() == 'F'

class SymText(Element):
    def __init__(self, parts):
        Element.__init__(self)
        assert parts[0] == 'T'
        assert len(parts) >= 12 and len(parts) <= 13
        self.angle = int(parts[1])
        self.x = int(parts[2])
        self.y = int(parts[3])
        self.size = int(parts[4])
        self.hidden = parts[5]
        self.part = int(parts[6])
        self.unit = int(parts[7])
        self.text = parts[8]
        self.italic = parts[9]
        self.bold = parts[10]
        self.halign = parts[11]
        self.valign = parts[11]

class Sym(Element):
    def __init__(self, parser):
        super(Sym, self).__init__()
        self.parse(parser)
        self.kind = 'sym'

    def parse(self, parser):
        # DEF Connector_Generic_Conn_01x01 J 0 40 Y N 1 F N
        parts = parser.parse_line()
        assert parts[0] == 'DEF'
        self.name = parts[1]
        self.prefix = parts[2]
        assert int(parts[3]) == 0
        self.pin_name_offs = int(parts[4])
        assert parts[5] in [ 'Y', 'N' ]
        self.pin_numbers_shown = parts[5] == 'Y'
        assert parts[6] in [ 'Y', 'N' ]
        self.pin_names_shown = parts[6] == 'Y'
        self.part_count = int(parts[7])
        if len(parts) >= 8:
            assert parts[8] in [ 'F', 'L' ]
            self.locked = parts[8] == 'L'
        else:
            self.locked = 0
        if len(parts) >= 9:
            assert parts[9] in [ 'P', 'N' ]
            self.power = parts[9] == 'P'
        else:
            self.power = 0

        # F0 "J" 0 100 50 H V C CNN
        # F1 "Connector_Generic_Conn_01x01" 0 -100 50 H V C CNN
        # F2 "" 0 0 50 H I C CNN
        # F3 "" 0 0 50 H I C CNN
        #
        # Note that F0..F3 are hardcoded, F4 and on have a user defined key at the end
        self.fields = []
        while 1:
            parts = parser.parse_line()
            if not parts[0].startswith('F'):
                break
            assert int(parts[0][1:]) == len(self.fields)
            assert len(parts) == 9 or len(parts) == 10
            a = [ parts[1], int(parts[2]), int(parts[3]), int(parts[4]), parts[5], parts[6], parts[7], parts[8] ]
            if len(parts) > 9:
                a.append(parts[9])
            else:
                a.append(None)
            self.fields.append(a)
        assert len(self.fields) >= 4

        self.aliases = []
        if parts[0] == 'ALIAS':
            assert len(parts) >= 2
            self.aliases.extend(parts[1:])
            parts = parser.parse_line()

        self.fplist = []
        if parts == [ '$FPLIST' ]:
            parts = parser.parse_line()
            while parts != [ '$ENDFPLIST' ]:
                self.fplist.append(' '.join(parts))
                parts = parser.parse_line()
            parts = parser.parse_line()

        self.children = []

        assert parts == [ 'DRAW' ]
        parts = parser.parse_line()
        while parts != [ 'ENDDRAW' ]:
            if parts[0] == 'A':
                self.children.append(SymArc(parts))
            elif parts[0] == 'C':
                self.children.append(SymCircle(parts))
            elif parts[0] == 'P':
                self.children.append(SymPoly(parts))
            elif parts[0] == 'S':
                self.children.append(SymRect(parts))
            elif parts[0] == 'T':
                self.children.append(SymText(parts))
            elif parts[0] == 'X':
                self.children.append(SymPin(parts))
            else:
                ValueError("Unknown symbol element \"%s\"" % parts[0])

            parts = parser.parse_line()
        parts = parser.parse_line()

        assert parts == [ 'ENDDEF' ]

    def format(self, outf):
        outf.write('Connection %s %u %u\n' % (self.name, self.x, self.y))

class Lib(object):
    def __init__(self, f):
        parser = Parser(f.readlines())
        self.parse(parser)

    def parse(self, parser):
        # EESchema-LIBRARY Version 2.4
        parts = parser.parse_line()
        assert parts[:2] == [ 'EESchema-LIBRARY','Version' ]
        self.version = parts[2:]

        l = parser.readline()
        assert l == '#encoding utf-8'

        self.syms = []
        while True:
            parts = parser.parse_line()
            if parts is None:
                break

            if parts[0] == 'DEF':
                parser.back()
                sym = Sym(parser)
                self.syms.append(sym)

        assert parser.eof()

        self.map = {}
        for sym in self.syms:
            self.map[sym.name.upper()] = sym

    def get_sym(self, name):
        name = name.upper()
        sym = self.map.get(name)
        if sym:
            return sym
        name = name.replace(':', '_')
        sym = self.map.get(name)
        if sym:
            return sym
        return None
