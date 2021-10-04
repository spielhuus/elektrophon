import os
import os.path
import re
import json
import csv
from pathlib import Path
from junit_xml import TestSuite, TestCase

##Build the junit report for jenkins
def create_report(input, output) :
    f = open(input,)
    data = json.load(f)

    test_suites = []

    for key, value in data.items():
        test_cases = []

        for key2, value2 in value.items():
            if( key2 == 'callouts' ) :
                continue
            elif( key2 == 'test' ) :
                for item in value2['report']['tests'] :
                    test_case = TestCase('TEST', item['name'], (int)(item['duration']), item['outcome'], 'I am stderr!')
                    if item['outcome'] == "failed" :
                        test_case.add_failure_info( item['call']['longrepr'])
                    test_cases.append( test_case )

            else : 
                for key3, value3 in value2.items():
                    if( key3 == 'bom' ) :
                        continue
                    elif( key3 == 'erc' ) :
                        for item in value3 :
                            out = ''
                            for con in item['con'] :
                                out += con['x'] + '-' + con['y'] + ": " + con['message'] + "\n"
                            testname = key + "::" + key2 + "::" + item['sheet']
                            test_case = TestCase(testname, key3, (int)(item['code']), item['message'], "ERC")
                            test_case.add_failure_info( 'ERC Error' )
                            test_cases.append( test_case )

                    elif( key3 == 'drc' ) :
                        for item in value3 :
                            out = ''
                            for con in item['con'] :
                                out += con['x'] + '-' + con['y'] + ": " + con['message'] + "\n"
                            testname = key + "::" + key2 + "::" + item['sheet']
                            test_case = TestCase(testname, key3, (int)(item['code']), item['message'], "DRC")
                            test_case.add_failure_info( 'DRC Error' )
                            test_cases.append( test_case )
                        
                    elif( key3 == 'unconnected' ) :
                        for item in value3 :
                            out = ''
                            for con in item['con'] :
                                out += con['x'] + '-' + con['y'] + ": " + con['message'] + "\n"
                            testname = key + "::" + key2 + "::" + item['sheet']
                            test_case = TestCase(testname, key3, (int)(item['code']), item['message'], "unconnected")
                            test_case.add_failure_info( out )
                            test_cases.append( test_case )

            test_suites.append( TestSuite( key, test_cases ) )

    with open(output, 'w') as f:
        TestSuite.to_file(f, test_suites, prettyprint=True)

    # Closing file
    f.close() 

def bom_parser(target, source) :
    first = True
    with open(source.get_path(), newline='') as csvfile:
        csvreader = csv.reader(csvfile, delimiter=',')
        # Row,Description,Part,References,Value,Footprint,Quantity Per PCB,Status,Datasheet
        for row in csvreader:
            if(first) :
                first = False
            else :
                item = {}
                item['Quantity_Per_PCB'] = row[6]
                item['References'] = row[3]
                item['Value'] = row[4]
                item['Datasheet'] = row[8]
                item['Description'] = row[1]
                target.append(item)

    return None

def kibot_parser(type, target, source) :

    p_erc_err_drc = re.compile('^\*\* Found (.*) DRC errors \*\*$')
    p_nc_err = re.compile('^\*\* Found (.*) unconnected pads \*\*$')
    p_erc_err = re.compile('^ERC report \((.*)\)$')
    p_erc_sheet = re.compile('^\*\*\*\*\* Sheet (.*)$')
    p_err_type = re.compile('^ErrType\((.*)\): (.*)$')
    p_err_entry = re.compile('^.*@\((.*) mm, (.*) mm\): (.*)$')

    act_list = []
    act_message = {}
    sheet_name = '/'

    with open(source.get_path()) as f:
        lines = f.readlines()
        for line in lines:

            if( p_erc_err_drc.match(line) ):
                act_list = []
                target['drc'] = act_list

            elif( p_nc_err.match(line) ):
                act_list = []
                target['unconnected'] = act_list

            elif( p_erc_err.match(line) ):
                act_list = []
                target['erc'] = act_list

            elif( p_erc_sheet.match(line) ):
                err = p_erc_sheet.match(line)
                sheet_name = err.group(1)

            elif( p_err_type.match(line) ):
                err = p_err_type.match(line)
                act_message = {'code':err.group(1), 'sheet': sheet_name, 'message':err.group(2), 'con':[]}
                act_list.append(act_message)

            elif( p_err_entry.match(line) ):
                err = p_err_entry.match(line)
                act_message['con'].append( {'x':err.group(1), 'y':err.group(2), 'message':err.group(3)})

    return None

def build_notebook(target, source, env):
    for s, t in zip(source, target) :
        jupyter = 'jupyter nbconvert --ExecutePreprocessor.timeout=600 --execute --to html \
                --no-input --log-level=CRITICAL --ExecutePreprocessor.kernel_name=python3 \
                --output=%s \
                --HTMLExporter.exclude_anchor_links=True \
                --TemplateExporter.extra_template_basedirs=lib/templates \
                --template=elektrophon %s' % (t.get_abspath(), s.get_path())
        env.Execute(jupyter)
    return None

callouts = {}
def build_kibot(target, source, env):
    path = Path(target[0].get_abspath())
    target = path.parent
    kibot = 'kibot -c kibot.yaml -b "%s" -e "%s" -d "%s"' % (source[0].get_abspath(), source[1].get_abspath(), target)
    env.Execute(kibot)
    return None

def parse_kibot(target, source, env):
    res = {}

    for x in source :
        name = "name"
        project = "project"
        type = "type"

        m = re.search('build/kibot/(.*)/(.*)-(.*)\..*', x.get_path())
        m_test = re.search('build/(.*)-test.json', x.get_path())
        if m:
            project = m.group(1)
            name = m.group(2)
            type = m.group(3)

            if( name != 'panel') :
                if not project in res:
                    res[project] = {}

                if not name in res[project]:
                    res[project][name] = {}

                if(x.get_path().endswith('-bom.csv')) :
                    res[project][name][type] = []
                    bom_parser(res[project][name][type], x)

                elif(x.get_path().endswith('.txt')) :
                    kibot_parser(type, res[project][name], x)

                else :
                    print("unknown file: %s" % x.get_path())

        elif m_test :
            project = m_test.group(1)
            if not project in res:
                res[project] = {}

            with open(x.get_path(), "r") as read_file:
                data = json.load(read_file)
                res[project]['test'] = data

        else :
            print("names not found in: %s " % x.get_path())


    # add the callout files
    for project in callouts :
        callout_schematics = {"title": "schematics", 
                            "subtitle": "schematic files",
                            "icon": "fas fa-file-download",
                            "files": []}
        callout_pcb =        {"title": "PCB", 
                            "subtitle": "PCB files",
                            "icon": "fas fa-code-branch",
                            "files": []}
        callout_gerbers =    {"title": "gerbers", 
                            "subtitle": "gerber files",
                            "icon": "fas fa-industry",
                            "files": []}
        for pcb in callouts[project] :
            if 'schema' in callouts[project][pcb] :
                callout_schematics['files'].append({'name': pcb, 'href': callouts[project][pcb]['schema']})
            callout_gerbers['files'].append({'name': pcb, 'href': callouts[project][pcb]['gerber']})
            callout_pcb['files'].append({'name': pcb, 'href': callouts[project][pcb]['PCB']})

        res[project]['callouts'] = [callout_gerbers, callout_pcb, callout_schematics]

    with open(target[0].get_path(), 'w') as outfile:
        json.dump(res, outfile)

    create_report(target[0].get_path(), 'build/elektrophon.xml')

    return None

bld_notebook = Builder( action = build_notebook )
bld_kibot = Builder( action = build_kibot )
bld_kibot_parser = Builder( action = parse_kibot )
env = Environment(ENV=os.environ)
env.Append(BUILDERS = {'Notebook' : bld_notebook, 'Kibot': bld_kibot, "KibotParser": bld_kibot_parser})

##collect the files
testfiles = []
kibot_targets = []
kibot_sources = []
notebook_targets = []
notebooks = []
kibot_files = []
install_notebooks = []
for path in Path('content').iterdir():
    if path.is_dir():
        notebook = ''
        title = path.name
        date = path.name
        version = '0'
        test = 'False'
        target = '_posts'
        build = False

        for nb in Glob(f'{path}/*.ipynb'):
            notebook = nb
            meta = (json.loads(nb.get_text_contents()))
            if "FrontMatter" in meta['metadata']:
                if "title" in meta['metadata']['FrontMatter']:
                    title = meta['metadata']['FrontMatter']['title']
                if "date" in meta['metadata']['FrontMatter']:
                    date = meta['metadata']['FrontMatter']['date']
                if "version" in meta['metadata']['FrontMatter']:
                    version = meta['metadata']['FrontMatter']['version']
                if "test" in meta['metadata']['FrontMatter']:
                    test = meta['metadata']['FrontMatter']['test']
                if "build" in meta['metadata']['FrontMatter'] and meta['metadata']['FrontMatter']['build'] == 'False' :
                    build = False
                else :
                    build = True
                if( version == '0' ) :
                    target = '_drafts'

                if build :
                    notebooks.append(nb)
                    notebook_targets.append(os.path.join('build', target, date + '-' + title + '.html'))
                    install_notebooks.append(os.path.join('www', target, date + '-' + title + '.html'))
                    
                    if test == "True" :
                        kibot_files.append(os.path.join('build', title + '-test.json'))
                        testfiles.append(os.path.join('build', title + '-test.json'))

                    for s_path in path.iterdir():
                        if s_path.is_dir():
                            if( os.path.isfile(os.path.join(s_path, s_path.name + '.pro')) and 
                                os.path.isfile(os.path.join(s_path, s_path.name + '.kicad_pcb')) and
                                os.path.isfile(os.path.join(s_path, s_path.name + '.sch'))) :
                                path = Path(os.path.join(s_path, s_path.name + '.sch'))

                                FILE_BOM = os.path.join('build', 'kibot', title, s_path.name + "-bom.csv")
                                kibot_targets.append(os.path.join('www', 'assets', title + '-' + s_path.name + "-bom.csv"))
                                kibot_sources.append(FILE_BOM)                            
                                FILE_ERC = os.path.join('build', 'kibot', title, s_path.name + "-erc.txt")
                                kibot_targets.append(os.path.join('www', 'assets', title + '-' + s_path.name + "-erc.txt"))
                                kibot_sources.append(FILE_ERC)
                                FILE_DRC = os.path.join('build', 'kibot', title, s_path.name + "-drc.txt")
                                kibot_targets.append(os.path.join('www', 'assets', title + '-' + s_path.name + "-drc.txt"))
                                kibot_sources.append(FILE_DRC)
                                FILE_SCHEMA = os.path.join('build', 'kibot', title, s_path.name + '-schematic.pdf')
                                kibot_targets.append(os.path.join('www', 'assets', title + '-' + s_path.name + "-schematic.pdf"))
                                kibot_sources.append(FILE_SCHEMA)
                                FILE_PCB = os.path.join('build', 'kibot', title, s_path.name + '-pcb.pdf')
                                kibot_targets.append(os.path.join('www', 'assets', title + '-' + s_path.name + "-pcb.pdf"))
                                kibot_sources.append(FILE_PCB)
                                FILE_IMAGE = os.path.join('build', 'kibot', title, s_path.name + '-top.png')
                                kibot_targets.append(os.path.join('www', 'assets', title + '-' + s_path.name + "-top.png"))
                                kibot_sources.append(FILE_IMAGE)
                                FILE_JLCPCB = os.path.join('build', 'kibot', title, 'JLCPCB', s_path.name + '-JLCPCB.zip')
                                kibot_targets.append(os.path.join('www', 'assets', title + '-' + s_path.name + "-JLCPCB.zip"))
                                kibot_sources.append(FILE_JLCPCB)

                                Execute(Mkdir(os.path.join('build', 'kibot', title)))
                                env.Kibot([FILE_BOM, FILE_DRC, FILE_ERC, FILE_SCHEMA, FILE_IMAGE, FILE_PCB, FILE_JLCPCB], 
                                    [os.path.join(s_path, s_path.name + '.kicad_pcb'), os.path.join(s_path, s_path.name + '.sch')])

                                if not title in callouts :
                                    callouts[title] = {}
                                callouts[title][s_path.name] = {"gerber": '/assets/' + title + '-' + s_path.name + '-gerbers.zip', "PCB": '/assets/' + title + '-' + s_path.name + '-pcb.pdf'}
                                if s_path.name != 'panel' :
                                    callouts[title][s_path.name]['schema'] = '/assets/' + title + '-' + s_path.name + '-schematic.pdf'

                                kibot_files.append(FILE_BOM)
                                kibot_files.append(FILE_ERC)
                                kibot_files.append(FILE_DRC)

env.Notebook( (notebook_targets, testfiles), notebooks)
env.KibotParser([os.path.join('build', '_data', 'elektrophon.json'), os.path.join('build', 'elektrophon.xml')], kibot_files)

## install the js files with npm
ab = env.Command(["www/node_modules/alpinejs/dist/cdn.min.js", 'www/node_modules/mathjax/es5/tex-chtml.js', 'www/node_modules/fft.js/lib/fft.js'],
                 "www/package.json",
                 "npm install",
                 chdir='www')

ab = env.Command(["www/assets/js/bundle.js"],
                 ["www/assets/js/main.js", 'www/node_modules/fft.js/lib/fft.js'],
                 "www/node_modules/.bin/browserify www/assets/js/main.js > www/assets/js/bundle.js")

##install
Install(os.path.join('www', '_data'), os.path.join('build', '_data', 'elektrophon.json'))
InstallAs(install_notebooks, notebook_targets)
InstallAs(kibot_targets, kibot_sources)
env.Install('www/assets/js', 'www/node_modules/mathjax/es5/')
env.Install('www/assets', Glob('content/**.jpg'))
env.Install('www/assets', Glob('content/**/*.jpg'))
env.Install('www/assets', Glob('content/**/*.pdf'))
env.Install('www/assets', Glob('content/**/*.png'))
env.Install('www/assets', Glob('content/**/*.wav'))

##clean
if GetOption("clean"):
    for s in notebooks :
        jupyter = 'jupyter nbconvert --clear-output --inplace %s' % (s.get_path())
        env.Execute(jupyter)
Clean('build/elektophon.xml', './build')
Clean(["www/node_modules/alpinejs/dist/cdn.min.js", 'www/node_modules/mathjax/es5/tex-chtml.js', 'www/node_modules/fft.js/lib/fft.js'], ['www/assets/js/bundle.js', 'www/node_modules'])
Clean('www/assets/js', 'www/assets/js/es5/')
