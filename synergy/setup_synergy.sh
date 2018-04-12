#!/bin/bash

# Store the path to this file
DIR=$(pwd)

# Make a link to synergy.conf
ln -sf $DIR/synergy.conf ~/.config/synergy/synergy.conf
