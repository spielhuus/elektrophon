#! /usr/bin/python
from __future__ import absolute_import, division, print_function, unicode_literals

import math
import numpy as np

from matplotlib.collections import LineCollection
from matplotlib.collections import EllipseCollection
from matplotlib.collections import PathCollection
from matplotlib.path import Path

from . import schema

PIN_ORIENTATION = {
    'L': np.array((-1,  0)),
    'R': np.array(( 1,  0)),
    'U': np.array(( 0,  1)),
    'D': np.array(( 0, -1)),
    }

TEXT_ORIENTATION = {
    0: np.array(( 1,  0)),
    1: np.array(( 0,  1)),
    2: np.array((-1,  0)),
    3: np.array(( 0, -1)),
    }

COMP_ORIENTATION = {
    # Not mirrored
    (  1,  0,  0, -1 ): np.array(( ( 1,  0), ( 0, -1) )), #   0 deg
    (  0, -1, -1,  0 ): np.array(( ( 0, -1), (-1,  0) )), #  90 deg
    (  1,  0,  0,  1 ): np.array(( ( 1,  0), ( 0,  1) )), # 180 deg
    (  0,  1,  1,  0 ): np.array(( ( 0,  1), ( 1,  0) )), # 270 deg

    # X mirrored
    (  1,  0,  0,  1 ): np.array(( ( 1,  0), ( 0,  1) )), #   0 deg
    (  0, -1,  1,  0 ): np.array(( ( 0, -1), ( 1,  0) )), #  90 deg
    (  1,  0,  0, -1 ): np.array(( ( 1,  0), ( 0, -1) )), # 180 deg
    (  0,  1, -1,  0 ): np.array(( ( 0,  1), ( -1, 0) )), # 270 deg

    # Should not happen
    ( -1,  0,  0, -1 ): np.array(( (-1,  0), ( 0, -1) )),
    ( -1,  0,  0,  1 ): np.array(( (-1,  0), ( 0,  1) )),

    }

Y_TRANS = np.array([ 1, -1 ])

class PathList():
    def __init__(self):
        self.paths = []

        self.texts = []

    def path(self, path, linewidth, edgecolor, facecolor):
        self.paths.append((path, linewidth, edgecolor, facecolor))

    def arc(self, offset, radius, start, end, linewidth, edgecolor, facecolor):
        verts = []
        codes = []

        d = end - start
        if d > 180:
            d -= 360
        elif d < -180:
            d += 360
        d /= 4
        while abs(d) > 5:
            d /= 2

        a = start
        codes.append(Path.MOVETO)

        print("YY", start, end, a)

        while 1:
            verts.append((math.cos(a * math.pi / 180),
                          math.sin(a * math.pi / 180)))
            if abs(a - end) < abs(d / 2):
                break
            a += d
            if a > 180:
                a -= 360
            elif a < -180:
                a += 360
            print("XX", start, end, a)
            codes.append(Path.LINETO)

        verts = np.array(verts)

        print(start, end, verts, codes)
        verts = verts * radius + offset

        path = Path(verts, codes)
        self.path(path, linewidth, edgecolor, facecolor)

    def circle(self, offset, radius, linewidth, edgecolor, facecolor):
        path = Path.circle(offset, radius)
        self.path(path, linewidth, edgecolor, facecolor)

    def text(self, offset, normal, text, size,
             halign = 'left', valign = 'center', color = 'green'):
        self.texts.append((offset, normal, text, size, halign, valign, color))

    def on_ax(self, ax, pos, orientation):
        trans = np.reshape(orientation, (2,2)).T

        for offset, normal, text, size, halign, valign, color in self.texts:
            normal = np.matmul(normal, trans)
            angle = math.atan2(-normal[1], normal[0]) * 180 / math.pi

            x, y = (pos + np.matmul(offset, trans)) * Y_TRANS

            if angle >= 180 or angle < 0:
                if halign == 'right':
                    halign = 'left'
                elif halign == 'left':
                    halign = 'right'
                if valign == 'top':
                    valign = 'bottom'
                elif valign == 'bottom':
                    valign = 'top'
                angle -= 180

            kw = { 'x': x,
                   'y': y,
                   'color': color,
                   #                               'font': 'sans-serif',
                   'fontsize': size,
                   's': text,
                   'rotation': angle,
                   'rotation_mode': 'anchor',
                   'horizontalalignment': halign,
                   'verticalalignment': valign,
                   'clip_on': True,
                   }

            ax.text(**kw)

        if self.paths:
            d = {}
            d['paths'] = []
            d['linewidths'] = []
            d['edgecolors'] = []
            d['facecolors'] = []

            for path, linewidth, edgecolor, facecolor in self.paths:
                verts = path.vertices
                verts = np.matmul(verts, trans)
                verts = (pos + verts) * Y_TRANS
                path.vertices = verts

                d['paths'].append(path)
                d['linewidths'].append(linewidth)
                d['edgecolors'].append(edgecolor)
                d['facecolors'].append(facecolor)

            pc = PathCollection(offset_position = 'data', **d)
            ax.add_collection(pc)

# A bit of an ugly hack which scales the line with and font size for
# everything we have drawn on an axis
def scale_ax(ax, scale_factor):
    for c in ax.collections:
        if isinstance(c, LineCollection):
            lw = c.get_linewidth()
            if isinstance(lw, tuple):
                assert len(lw) == 1
                lw = lw[0]
            c.set_linewidth(lw * scale_factor)
        elif isinstance(c, PathCollection):
            c.set_linewidths(np.array(c.get_linewidths()) * scale_factor)
    for t in ax.texts:
        t.set_fontsize(t.get_fontsize() * scale_factor)

def render_to_ax(ax, sch):
    base_width = 1

    wires = []
    notes = []
    for wire in sch.wire:
        seg = np.array([(wire.x0, -wire.y0), (wire.x1, -wire.y1)])
        if wire.layer == 'Wire':
            wires.append(seg)
        elif wire.layer == 'Notes':
            notes.append(seg)
        else:
            assert 0

    line_segments = LineCollection(wires, linewidths = base_width,
                                   colors = 'green',
                                   linestyle = 'solid')
    ax.add_collection(line_segments)

    note_segments = LineCollection(notes, linewidths = base_width,
                                   colors = 'blue',
                                   linestyle = '--')
    ax.add_collection(note_segments)

    conns = []
    for conn in sch.conn:
        xy = np.array((conn.x, -conn.y))
        conns.append(xy)

    conn_ellipses = EllipseCollection(50, 50, 0,
                                           units = 'x',
                                           offsets = conns,
                                           edgecolor = None,
                                           facecolor = 'green',
                                           transOffset = ax.transData)
    ax.add_collection(conn_ellipses)

    noconns = []
    o = 0.025
    for noconn in sch.noconn:
        xy = np.array((noconn.x, -noconn.y))
        noconns.append([ xy + (-o,-o), xy + ( o,o)])
        noconns.append([ xy + ( o,-o), xy + (-o,o)])

    noconn_segments = LineCollection(noconns, linewidths = base_width,
                                     colors = 'green',
                                     linestyle = 'solid')
    ax.add_collection(noconn_segments)

    for comp in sch.comp:
        # for some components the rotation is wrong.  but it only
        # happens every now and then, for example a ground symbol
        # that should be turned to the right is on the left side
        # in _some_ positions.

        for lib in sch.libs:
            sym = lib.get_sym(comp.name)
            if sym:
                break
        else:
            print("Symbol not found %s" % comp.name)
            continue

        pl = PathList()

        for draw in sym.children:
            if draw.part != 0:
                if comp.part != draw.part:
                    # print('nv', draw.part, comp.part, draw.unit)
                    continue

            linewidth = base_width
            if draw.pen_width:
                linewidth *= draw.pen_width / 10

            edgecolor = 'brown'
            if draw.filled:
                facecolor = 'yellow'
                facecolor = 'none'
            else:
                facecolor = 'none'

            if draw.__class__ == schema.SymArc:
                dp = np.array([ draw.x, draw.y ])
                pl.arc(dp, draw.r, draw.start * 0.1, draw.end * 0.1,
                       linewidth, edgecolor, facecolor)

            elif draw.__class__ == schema.SymCircle:
                dp = np.array([ draw.x, draw.y ])
                pl.circle(dp, draw.r, linewidth, edgecolor, facecolor)

            elif draw.__class__ == schema.SymPin:
                dp = np.array([ draw.x, draw.y ])
                normal = PIN_ORIENTATION[draw.orientation]

                if draw.length:
                    verts = np.array([ dp, dp + normal * draw.length ])

                    edgecolor = 'brown'

                    pl.path(Path(verts), base_width, edgecolor, facecolor)

                if not sym.power and (0 or sym.pin_numbers_shown):
                    o = np.matmul(((0,1),(1,0)), normal) * 25
                    o[0] = -abs(o[0])
                    o[1] = abs(o[1])
                    pl.text(dp +  normal * 75 + o,
                            -normal, draw.pin, draw.sizenum / 10,
                            color = 'brown')

                if not sym.power and sym.pin_names_shown and draw.name != '~':
                    pl.text(dp + normal * (draw.length + sym.pin_name_offs), normal, draw.name, draw.sizename / 10,
                            color = 'green')

            elif draw.__class__ == schema.SymPoly:
                verts = draw.vertices

                pl.path(Path(verts), linewidth, edgecolor, facecolor)

            elif draw.__class__ == schema.SymRect:
                verts = [
                    (draw.x0, draw.y0),
                    (draw.x0, draw.y1),
                    (draw.x1, draw.y1),
                    (draw.x1, draw.y0),
                    (draw.x0, draw.y0),
                    ]

                pl.path(Path(verts), linewidth, edgecolor, facecolor)

        for field in comp.fields.values():
            if field.flags & 1:
                # Invisible
                continue

            if field.text == '~':
                # Nothing to show
                continue

            if field.halign == 'C':
                halign = 'center'
            elif field.halign == 'L':
                halign = 'left'
            elif field.halign == 'R':
                halign = 'right'
            else:
                halign = None

            if field.valign == 'C':
                valign = 'center'
            elif field.valign == 'B':
                valign = 'bottom'
            elif field.valign == 'T':
                valign = 'top'
            else:
                valign = None

            if field.orientation == 'H':
                normal = (1,0)
            elif field.orientation == 'V':
                normal = (0,1)
            else:
                normal = None

            pl.text((field.x - comp.posx, field.y - comp.posy), normal,
                    field.text, field.size / 10,
                    halign = halign, valign = valign, color = 'brown')

        pl.on_ax(ax, np.array((comp.posx, comp.posy)), comp.orientation)

    for text in sch.text:
        pl = PathList()
        normal = TEXT_ORIENTATION[text.orientation]
        if text.sub == 'GLabel':
            halign = 'right'
            valign = 'center'
            color = 'brown'
        else:
            halign = 'left'
            valign = 'bottom'
            if text.sub == 'Label':
                color = 'black'
            else:
                color = 'blue'
        pl.text((text.x, text.y), normal,
                text.text, text.size / 10,
                halign = halign, valign = valign, color = color)
        pl.on_ax(ax, np.array((0,0)), (1,0,0,1))

    if 1:
        ax.get_xaxis().set_visible(False)
        ax.get_yaxis().set_visible(False)

    ax.axis('equal')

    fig = ax.get_figure()
    x_scale = fig.bbox_inches.width * ax.get_position().width * 72 / float(np.diff(ax.get_xlim()))
    y_scale = fig.bbox_inches.height * ax.get_position().width * 72 / float(np.diff(ax.get_ylim()))

    scale_ax(ax, min(x_scale, y_scale) * 16)
