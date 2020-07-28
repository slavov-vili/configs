#!/bin/bash

DIR=$(pwd)

# Create links to config, menus and other stuff
ln -svf $DIR/rc.xml    ~/.config/openbox/rc.xml
ln -svf $DIR/autostart ~/.config/openbox/autostart
ln -svf $DIR/menu.xml  ~/.config/openbox/menu.xml
ln -svf $DIR/scripts   ~/.config/openbox/scripts
