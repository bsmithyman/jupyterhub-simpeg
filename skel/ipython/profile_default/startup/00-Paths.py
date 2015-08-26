import os
import sys
import glob

HOME = os.environ.get('HOME')
PROJECTS = 'Projects'
projlist = glob.glob(os.path.join(HOME, PROJECTS, '*'))

for project in projlist:
    sys.path.append(project)

