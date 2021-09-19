#!/bin/bash

DIR=$(pwd)

OPENBOX_DIR="~/.config/openbox"

mkdir $OPENBOX_DIR

# Create links to config, menus and other stuff
ln -svf $DIR/rc.xml    $OPENBOX_DIR/rc.xml
ln -svf $DIR/autostart $OPENBOX_DIR/autostart
ln -svf $DIR/menu.xml  $OPENBOX_DIR/menu.xml
