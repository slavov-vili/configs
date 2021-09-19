#!/bin/bash

DIR=$(pwd)

# Create link to the config file
sudo cp $DIR/lightdm.conf /etc/lightdm/lightdm.conf
ln -svf $DIR/xprofile     $HOME.xprofile
