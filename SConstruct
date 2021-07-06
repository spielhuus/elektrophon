import os
import os.path
import re
import json
import csv
from pathlib import Path

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
    jupyter = 'jupyter nbconvert --ExecutePreprocessor.timeout=600 --execute --to html \
            --no-input --log-level=CRITICAL --ExecutePreprocessor.kernel_name=python3 \
            --output=%s \
            --TemplateExporter.extra_template_basedirs=lib/templates \
            --template=elektrophon %s' % (target[0].get_abspath(), source[0].get_path())
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

        m = re.search('build/(.*)-(.*)/.*-(.*)\..*', x.get_path())
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

    return None

bld_notebook = Builder( action = build_notebook )
bld_kibot = Builder( action = build_kibot )
bld_kibot_parser = Builder( action = parse_kibot )
env = Environment(ENV=os.environ)
env.Append(BUILDERS = {'Notebook' : bld_notebook, 'Kibot': bld_kibot, "KibotParser": bld_kibot_parser})

kibot_files = []
for root, dirnames, filenames in os.walk('content'):
    for dirname in dirnames:
        if( os.path.isfile(os.path.join(root, dirname, dirname + '.pro')) and 
            os.path.isfile(os.path.join(root, dirname, dirname + '.kicad_pcb')) and
            os.path.isfile(os.path.join(root, dirname, dirname + '.sch'))) :
            path = Path(os.path.join(root, dirname, dirname + '.sch'))
            project = path.parent.parent.name

            FILE_BOM = os.path.join('build', project + '-' + dirname, dirname + "-bom.csv")
            FILE_ERC = os.path.join('build', project + '-' + dirname, dirname + "-erc.txt")
            FILE_DRC = os.path.join('build', project + '-' + dirname, dirname + "-drc.txt")
            FILE_SCHEMA = os.path.join('build', project + '-' + dirname, dirname + '-schematic.pdf')
            FILE_PCB = os.path.join('build', project + '-' + dirname, dirname + '-pcb.pdf')
            FILE_IMAGE = os.path.join('build', project + '-' + dirname, dirname + '-top.png')
            FILE_JLCPCB = os.path.join('build', project + '-' + dirname, 'JLCPCB', dirname + '-JLCPCB.zip')

            Execute(Mkdir(os.path.join('build', project + '-' + dirname)))
            env.Kibot([FILE_BOM, FILE_DRC, FILE_ERC, FILE_SCHEMA, FILE_IMAGE, FILE_PCB, FILE_JLCPCB], 
                [os.path.join(root, dirname, dirname + '.kicad_pcb'), os.path.join(root, dirname, dirname + '.sch')])

            if not project in callouts:
                callouts[project] = {}
            callouts[project][dirname] = {"gerber": '/assets/' + project + '-' + dirname + '-gerbers.zip', "PCB": '/assets/' + project + '-' + dirname + '-pcb.pdf'}
            if dirname != 'panel' :
                callouts[project][dirname]['schema'] = '/assets/' + project + '-' + dirname + '-schematic.pdf'

            kibot_files.append(FILE_BOM)
            kibot_files.append(FILE_ERC)
            kibot_files.append(FILE_DRC)

            env.InstallAs(os.path.join('www', 'assets', project + '-' + dirname + '-pcb.pdf'), FILE_PCB)
            env.InstallAs(os.path.join('www', 'assets', project + '-' + dirname + '-schematic.pdf'), FILE_SCHEMA)
            env.InstallAs(os.path.join('www', 'assets', project + '-' + dirname + '-top.png'), FILE_IMAGE)
            env.InstallAs(os.path.join('www', 'assets', project + '-' + dirname + '-gerbers.zip'), FILE_JLCPCB)

NOTEBOOKS = Glob('content/**/*.ipynb')
for x in NOTEBOOKS:
    notebook = (json.loads(x.get_text_contents()))
    title = notebook['metadata']['FrontMatter']['title']
    date = notebook['metadata']['FrontMatter']['date']
    version = notebook['metadata']['FrontMatter']['version']
    test = 'False'
    if "test" in notebook['metadata']['FrontMatter']:
        test = notebook['metadata']['FrontMatter']['test']
    target = '_posts'
    if( version == '0' ) :
        target = '_drafts'

    abspath = Dir('.').srcnode().abspath
    target_path = os.path.join(abspath, 'www', target)
    target_file = os.path.join('build', date + '-' + title + '.html')
    Execute(Mkdir(target_path))
    targets = [target_file]
    if test == "True" :
        targets.append(os.path.join('build', title + '-test.json'))
        kibot_files.append(os.path.join('build', title + '-test.json'))

    env.Notebook( target_file, x)
    Install(target_path, target_file)

env.KibotParser(os.path.join('build', 'elektrophon.json'), kibot_files)
Install(os.path.join('www', '_data'), os.path.join('build', 'elektrophon.json'))
env.Install('www/assets', Glob('content/**.jpg'))
env.Install('www/assets', Glob('content/**/*.jpg'))
env.Install('www/assets', Glob('content/**/*.pdf'))
env.Install('www/assets', Glob('content/**/*.png'))
env.Install('www/assets', Glob('content/**/*.wav'))
