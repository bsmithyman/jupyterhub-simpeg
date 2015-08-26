#!/bin/bash


# ------------------------------------------------------------------------
# Projects

export PROJECTS=$HOME/Projects
mkdir -p $PROJECTS

cd $PROJECTS
git clone https://github.com/simpeg/simpeg.git
cd simpeg
python setup.py build_ext --inplace

# ------------------------------------------------------------------------
# Startup

export STARTUP=$HOME/startup

cd $HOME
ln -s .ipython/profile_default/startup $STARTUP

echo > $STARTUP/00-Paths.py << END
import os
import sys
import glob

HOME = os.environ.get('HOME')
PROJECTS = 'Projects'
projlist = glob.glob(os.path.join(HOME, PROJECTS, '*'))

for project in projlist:
    sys.path.append(project)
END
