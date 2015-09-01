#!/bin/bash

export PROJECTS=$HOME/Projects
mkdir -p $PROJECTS

cd $PROJECTS
git clone https://github.com/simpeg/simpeg.git -b parallel
cd simpeg
python setup.py build_ext --inplace

cd $PROJECTS
git clone https://github.com/bsmithyman/pymatsolver.git
cd pymatsolver/pymatsolver/Mumps
make

cd $PROJECTS
git clone https://github.com/bsmithyman/zephyr.git -b simpeg-integration

