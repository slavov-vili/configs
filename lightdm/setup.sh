#!/bin/bash

DIR=$(pwd)

sudo cp --verbose --force --remove-destination $DIR/lightdm.conf /etc/lightdm/lightdm.conf
cp --verbose --force --remove-destination $DIR/xprofile     $HOME/.xprofile
