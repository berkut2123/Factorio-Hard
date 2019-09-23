#!/usr/bin/env python3
# -*- mode: python; -*-

import itertools
import json
import operator
import png
import shlex
import subprocess
import sys

from collections import OrderedDict
from typing import Generator, Iterable, List


## Globals

DEFAULT_ALPHA = 127
CONVERT = 'lua convert.lua'


## Routines

def color_average (filename: str) -> List[int]:
    reader = png.Reader (filename)
    rgba8 = reader.asRGBA8()

    opaque_pixels = 0
    total = [0, 0, 0, 0]

    # Exhausts the iterator and can't be called again.
    for rgba in flatten (grouper (row, 4) for row in rgba8[2]):
        # Only add pixels that aren't transparent.
        if rgba[3] > 0:
            opaque_pixels += 1
            total = map (operator.add, total, rgba)

    return [t // opaque_pixels for t in total]


def flatten (inception_lists: Iterable[Iterable]) -> Iterable:
    return itertools.chain.from_iterable (inception_lists)


def grouper (iterable: Iterable, n: int, fillvalue=None) -> Iterable:
    args = [iter (iterable)] * n
    return itertools.zip_longest (*args, fillvalue=fillvalue)


def jsonify (convert_files):
    cmd = '{} {}'.format (CONVERT, ' '.join (convert_files))

    try:
        cp = subprocess.run (
            shlex.split (cmd),
            stdout=subprocess.PIPE
        )
        items_json = cp.stdout
    except subprocess.CalledProcessError as e:
        print ('error:', e)
        return None
    else:
        return json.loads (items_json)


def norm256 (*colors: float) -> List[int]:
    return [int (255 * c) for c in colors]


def process_item (item, substitutions=None):
    if substitutions is None:
        substitutions = {}

    rgba = None

    # For fluids, if there's a base_color, we'll use that.
    if item['type'] == 'fluid':
        if 'base_color' in item:
            c = item['base_color']
            rgba = norm256 (c['r'], c['g'], c['b'])
            rgba.append (DEFAULT_ALPHA)

    if rgba is None:
        fname = item['icon']
        for pattern, replace in substitutions.items():
            fname = fname.replace (pattern, replace)

        rgba = color_average (fname)
        # Using the computed alpha ended up making the
        # trains and stations waaay too dark.
        rgba[3] = DEFAULT_ALPHA

    if rgba:
        return item['name'], rgba
    else:
        return None, None


def main (argv):
    from argparse import ArgumentParser

    parser = ArgumentParser()
    parser.add_argument ('--substitute', '-s', required=False, action='append')
    parser.add_argument ('--output', '-o', required=False)
    parser.add_argument ('prototypes', nargs='+')
    args = parser.parse_args (argv)

    substitutions = {}
    if args.substitute:
        for key_value in args.substitute:
            key, value = key_value.split ('=')
            substitutions[key] = value

    colors = OrderedDict()
    for item in jsonify (args.prototypes):
        item, rgba = process_item (item, substitutions=substitutions)
        if item is not None:
            colors[item] = rgba

    if not args.output or args.output == '-':
        fo = sys.stdout
    else:
        fo = open (args.output, 'w')

    fo.write ('return {\n')
    for item, rgba in colors.items():
        item = '["{}"]'.format (item)
        fo.write (
            '    {:<40s} ={{r={:03d}, g={:03d}, b={:03d}, a={:03d}}},\n'
            .format (item, *rgba)
        )
    fo.write ('}\n')
    fo.close()


if __name__ == '__main__':
    main (sys.argv[1:])
