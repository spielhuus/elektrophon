import os
import json 

from SCons.Node import NodeList

env = Environment(ENV = os.environ,
        tools=['default', 'kicad', 'nbconvert'], 
        NBCONVERT_ENVIRONMENT_VARS={'flags': ['execute', 'no-input'],
                  'to': 'html',
                  'log-level': 'CRITICAL', 
                  'ExecutePreprocessor.kernel_name': 'python3',
                  'HTMLExporter.exclude_anchor_links': True,
                  'template': 'hugo',
                  'TemplateExporter.extra_template_basedirs': '/templates/',
                  'TemplateExporter.exclude_output_prompt': True,
                  'TemplateExporter.exclude_output_stdin' : True}
)

def pytest_func(target, source, env):

    files = source[0].abspath
    report = target[0].abspath
    pytest = f'pytest {files} -qq --json={report}'
    env.Execute(pytest, chdir=target[0].get_dir())

    #create the project structure in the test file
    data = {}
    with open(report, "r") as read_file:
        data = json.load(read_file)

    result = {env['project_name']: {'unit_test': data}}
    with open(report, "w") as write_file:
        json.dump(result, write_file)

                
    return None

pytest_builder = Builder(action = pytest_func,
                     suffix = '.json',
                     src_suffix = '.py')
env.Append(BUILDERS = {'pytest' : pytest_builder})

PCB = NodeList()
GERBER = NodeList()
SCHEMA = NodeList()
REPORTS = NodeList()
FILES = NodeList()
HTML = NodeList()

SConscript(Glob('**/**/SConscript'), exports=['env', 'PCB', 'GERBER', 'SCHEMA', 'REPORTS', 'FILES', 'HTML'])
env.reports('content/report.json', REPORTS)

#env.Install('www', ['hugo/archetypes',  'hugo/config.toml',  'hugo/content', 'hugo/data', 'hugo/layouts', 'hugo/resources', 'hugo/static', 'hugo/themes'])
env.Install('www/content/posts/', HTML)
env.Install('www/static', [PCB, GERBER, SCHEMA, FILES])
env.Install('www/assets/images', [FILES])
env.Install('www/data/', 'content/report.json')
