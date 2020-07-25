#!/bin/bash

DIR=$(pwd)

# Make a link to the relevant files in the correct directory
ln -svf $DIR/tint2rc_custom_adapta    ~/.config/tint2/tint2rc
ln -svf $DIR/start_menu.desktop ~/.config/tint2/start_menu.desktop
ln -vf  $DIR/icons/* ~/.icons/tint2/
