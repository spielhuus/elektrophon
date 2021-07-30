import argparse
import json
import os
from pathlib import Path
from junit_xml import TestSuite, TestCase

parser = argparse.ArgumentParser()
parser.add_argument("--input", help="path to the test reports.")
parser.add_argument("--out", help="output file name.")
#parser.add_argument('pcb', metavar='N', nargs='+',
#                    help='name of the kicad pcb project.')
args = parser.parse_args()

root_path = Path(os.path.abspath(args.input))
f = open(root_path,)
data = json.load(f)

test_suites = []

for key, value in data.items():
    test_cases = []

    for key2, value2 in value.items():
        if( key2 == 'callouts' ) :
            continue
        elif( key2 == 'test' ) :
            for item in value2['report']['tests'] :
                test_cases.append( TestCase('TEST', item['name'], (int)(item['duration']), item['outcome'], 'I am stderr!') )

        else : 
            print( "\tPCB %s " % key2)
            for key3, value3 in value2.items():
                if( key3 == 'bom' ) :
                    continue
                elif( key3 == 'erc' ) :
                    for item in value3 :
                        out = ''
                        for con in item['con'] :
                            out += con['x'] + '-' + con['y'] + ": " + con['message'] + "\n"
                        test_cases.append( TestCase('ERC', item['sheet'], (int)(item['code']), item['message'], out) )

                elif( key3 == 'drc' ) :
                    for item in value3 :
                        out = ''
                        for con in item['con'] :
                            out += con['x'] + '-' + con['y'] + ": " + con['message'] + "\n"
                        test_cases.append( TestCase('DRC', item['sheet'], (int)(item['code']), item['message'], out) )
                    
                elif( key3 == 'unconnected' ) :
                    for item in value3 :
                        out = ''
                        for con in item['con'] :
                            out += con['x'] + '-' + con['y'] + ": " + con['message'] + "\n"
                        test_cases.append( TestCase('Unconnected', item['sheet'], (int)(item['code']), item['message'], out) )

        test_suites.append( TestSuite( key, test_cases ) )

with open(args.out, 'w') as f:
    TestSuite.to_file(f, test_suites, prettyprint=True)

# Closing file
f.close() 
