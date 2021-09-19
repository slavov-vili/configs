#!/bin/bash

DIR=$(pwd)

TINT2_DIR=" $HOME.config/tint2"
ICONS_DIR=" $HOME.icons/tint2"

mkdir -p $TINT2_DIR $ICONS_DIR

# Make a link to the relevant files in the correct directory
ln -svf $DIR/tint2rc_custom_adapta $TINT2_DIR/tint2rc
ln -svf $DIR/start_menu.desktop    $TINT2_DIR/start_menu.desktop
ln -vf  $DIR/icons/*               $ICONS_DIR/tint2/
