#!/bin/bash

DIR=$(pwd)

# Create link to the config file
sudo ln -vf $DIR/lightdm.conf /etc/lightdm/lightdm.conf
