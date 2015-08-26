#!/bin/bash

export PROJECTS=$HOME/Projects
mkdir -p $PROJECTS

cd $PROJECTS
git clone https://github.com/simpeg/simpeg.git
cd simpeg
python setup.py build_ext --inplace

