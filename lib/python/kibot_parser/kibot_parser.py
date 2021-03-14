import argparse
import json
import re
import os
from pathlib import Path

p_drc = re.compile('\*\* Found 0 DRC errors \*\*')
p_not_connected = re.compile('\*\* Found .* unconnected pads \*\*')
p_erc = re.compile('\*\* ERC messages: .*  Errors .*  Warnings .*')
p_erc_err_type = re.compile('^ErrType\(([0-9*])\): (.*)')
p_erc_err_entry = re.compile('^.*@\((.*) mm, (.*) mm\): (.*)$')

parser = argparse.ArgumentParser()
parser.add_argument("--kibot", help="path to the kibot DRC/ERC reports.")
parser.add_argument("--out", help="output file name.")
parser.add_argument('pcb', metavar='N', nargs='+',
                    help='name of the kicad pcb project.')
args = parser.parse_args()

PCBS = args.pcb
root_path = Path(os.path.abspath(args.kibot))

print( "start parsing files [%s] in %s" % (PCBS, args.kibot))

#res = {'projects': args.pcb}
res = []

for pcb in PCBS:
    res_pcb = {'name':pcb, 'reports':[]}

    # parse the drc and unconnected reports
    file_drc = root_path.joinpath( pcb, '%s-drc.txt' % pcb)

    act_list = {}
    act_message = {}
    act_code = ''
    with open(file_drc) as f:
        lines = f.readlines()
        for line in lines:

            if( p_drc.match(line) ):
                act_list = {'name':'drc','messages':[]}
                res_pcb['reports'].append(act_list)

            elif( p_not_connected.match(line) ):
                act_list = {'name':'unconnected','messages':[]}
                res_pcb['reports'].append(act_list)

            elif( p_erc_err_type.match(line) ):
                err = p_erc_err_type.match(line)
                act_message = {'code':err.group(1), 'message':err.group(2), 'con':[]}
                act_list['messages'].append(act_message)

            elif( p_erc_err_entry.match(line) ):
                err = p_erc_err_entry.match(line)
                act_message['con'].append( {'x':err.group(1), 'y':err.group(2), 'message':err.group(3)})

    file_drc = root_path.joinpath( pcb, '%s-erc.txt' % pcb)

    sheet = ''
    act_list = {'name':'erc','messages':[]}
    res_pcb['reports'].append(act_list)

    with open(file_drc) as f:
        lines = f.readlines()
        for line in lines:
            if line.startswith( '***** Sheet' ):
                sheet = line[12:]

            elif( p_erc_err_type.match(line) ):
                err = p_erc_err_type.match(line)
                act_message = {'code':err.group(1), 'message':err.group(2), 'sheet':sheet, 'con':[]}
                act_list['messages'].append(act_message)

            elif( p_erc_err_entry.match(line) ):
                err = p_erc_err_entry.match(line)
                act_message['con'].append( {'x':err.group(1), 'y':err.group(2), 'message':err.group(3)})

    res.append(res_pcb)

with open(args.out, 'w') as outfile:
    json.dump(res, outfile)
