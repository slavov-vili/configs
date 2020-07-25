#!/bin/bash

DIR=$(pwd)

# make a link to taskrc
ln -svf $DIR/taskrc ~/.taskrc
echo "!!! REMINDER: Don't forget to recover your backed up data files."
echo "    Data files go in '~/.task'."
