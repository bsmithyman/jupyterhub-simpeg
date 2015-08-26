#!/bin/bash

mkdir -p $HOME

for loc in `ls -A /etc/skel`
do
  cp -r /etc/skel/${loc} $HOME/
done
