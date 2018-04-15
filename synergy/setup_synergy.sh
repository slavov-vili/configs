#!/bin/bash

# Store the path to this file
DIR=$(pwd)

# remove the file in case it already exists
rm ~/.config/synergy/synergy.conf

# Make a link to synergy.conf
ln -sf $DIR/synergy.conf ~/.config/synergy/synergy.conf
