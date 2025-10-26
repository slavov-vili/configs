#!/bin/bash

DIR=$(pwd)

cp --verbose --force --remove-destination $DIR/taskrc $HOME/.taskrc
echo "!!! REMINDER: Don't forget to recover your backed up data files."
echo "    Data files go in ' $HOME/.task'."
