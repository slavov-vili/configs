#!/bin/bash

DIR=$(pwd)

TINT2_DIR=" $HOME/.config/tint2"
ICONS_DIR=" $HOME/.icons/tint2"

mkdir -p $TINT2_DIR $ICONS_DIR

cp --verbose --force --remove-destination $DIR/tint2rc_custom_adapta $TINT2_DIR/tint2rc
cp --verbose --force --remove-destination $DIR/start_menu.desktop    $TINT2_DIR/start_menu.desktop
cp --verbose --force --remove-destination $DIR/icons/*               $ICONS_DIR/
