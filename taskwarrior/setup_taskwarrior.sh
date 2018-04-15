#!/bin/bash

# Store the path to this file
DIR=$(pwd)

# remove the file in case it already exists
rm ~/.taskrc

# make a link to taskrc
ln -sf $DIR/taskrc ~/.taskrc
echo "!!! REMINDER: Don't forget to recover your backed up data files."
echo "    Data files go in '~/.task'."
