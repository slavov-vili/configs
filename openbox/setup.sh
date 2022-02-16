#!/bin/bash

DIR=$(pwd)

OPENBOX_DIR=$HOME/.config/openbox

mkdir -p $OPENBOX_DIR

cp --verbose --force --remove-destination $DIR/rc.xml    $OPENBOX_DIR/rc.xml
cp --verbose --force --remove-destination $DIR/autostart $OPENBOX_DIR/autostart
cp --verbose --force --remove-destination $DIR/menu.xml  $OPENBOX_DIR/menu.xml
