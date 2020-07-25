#!/bin/bash

DIR=$(pwd)

# Make a link to the relevant files in the correct directory
ln -svf $DIR/rc.xml    ~/.config/openbox/rc.xml
ln -svf $DIR/autostart ~/.config/openbox/autostart
ln -svf $DIR/menu.xml  ~/.config/openbox/menu.xml

