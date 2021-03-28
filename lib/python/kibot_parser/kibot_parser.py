import argparse
import json
import re
import os
from pathlib import Path

parser = argparse.ArgumentParser()
parser.add_argument("--kibot", help="path to the kibot DRC/ERC reports.")
parser.add_argument("--out", help="output file name.")
parser.add_argument('pcb', metavar='N', nargs='+',
                    help='name of the kicad pcb project.')
args = parser.parse_args()

p_erc_err_drc = re.compile('^\*\* Found (.*) DRC errors \*\*$')
p_nc_err = re.compile('^\*\* Found (.*) unconnected pads \*\*$')
p_erc_err = re.compile('^ERC report \((.*)\)$')
p_erc_sheet = re.compile('^\*\*\*\*\* Sheet (.*)$')
p_err_type = re.compile('^ErrType\((.*)\): (.*)$')
p_err_entry = re.compile('^.*@\((.*) mm, (.*) mm\): (.*)$')


PCBS = args.pcb
root_path = Path(os.path.abspath(args.kibot))

res = []

for pcb in PCBS:
    res_pcb = {'name':pcb, 'reports':[]}

    # parse the drc and unconnected reports
    for report in ('drc', 'erc'):
        file_drc = root_path.joinpath( pcb, '%s-%s.txt' % (pcb, report) )

        act_list = {}
        act_message = {}
        sheet_list = {}
        act_code = ''

        with open(file_drc) as f:
            lines = f.readlines()
            for line in lines:

                if( p_erc_err_drc.match(line) ):
                    act_list = {'name':'drc','messages':[]}
                    res_pcb['reports'].append(act_list)

                elif( p_nc_err.match(line) ):
                    act_list = {'name':'unconnected','messages':[]}
                    res_pcb['reports'].append(act_list)

                elif( p_erc_err.match(line) ):
                    sheet_list = {'name':'erc','sheets':[]}
                    res_pcb['reports'].append(sheet_list)

                elif( p_erc_sheet.match(line) ):
                    err = p_erc_sheet.match(line)
                    act_list = {'name':err.group(1),'messages':[]}
                    sheet_list['sheets'].append(act_list)

                elif( p_err_type.match(line) ):
                    err = p_err_type.match(line)
                    act_message = {'code':err.group(1), 'message':err.group(2), 'con':[]}
                    act_list['messages'].append(act_message)

                elif( p_err_entry.match(line) ):
                    err = p_err_entry.match(line)
                    act_message['con'].append( {'x':err.group(1), 'y':err.group(2), 'message':err.group(3)})

    res.append(res_pcb)

with open(args.out, 'w') as outfile:
    json.dump(res, outfile)
