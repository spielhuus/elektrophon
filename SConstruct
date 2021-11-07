import os

from SCons.Node import NodeList

env = Environment(ENV = os.environ,
        tools=['default', 'kicad', 'nbconvert'], 
        KICAD_ENVIRONMENT_VARS={'kibot': '../kibot.yaml'},
        NBCONVERT_ENVIRONMENT_VARS={'flags': ['execute', 'no-input'],
                  'to': 'html',
                  'log-level': 'CRITICAL', 
                  'ExecutePreprocessor.kernel_name': 'python3',
                  'HTMLExporter.exclude_anchor_links': True,
                  'template': 'hugo'}
)

PCB = NodeList()
GERBER = NodeList()
SCHEMA = NodeList()
REPORTS = NodeList()
FILES = NodeList()
HTML = NodeList()

SConscript(Glob('**/**/SConscript'), exports=['env', 'PCB', 'GERBER', 'SCHEMA', 'REPORTS', 'FILES', 'HTML'])
env.reports('content/report.json', REPORTS)

env.Install('www', ['hugo/archetypes',  'hugo/config.toml',  'hugo/content', 'hugo/data', 'hugo/layouts', 'hugo/resources', 'hugo/static', 'hugo/themes'])
env.Install('www/content/posts/', HTML)
env.Install('www/static', [PCB, GERBER, SCHEMA, FILES])
env.Install('www/data/', 'content/report.json')

Clean(['env', 'PCB', 'GERBER', 'SCHEMA', 'REPORTS', 'FILES', 'HTML'], './www')
