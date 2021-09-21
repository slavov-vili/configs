#!/bin/bash

source $HOME/.config/rofi/scripts/rofi_menu.sh



THEME="$HOME/.config/rofi/widgets/two_column_menu.rasi"

TWO_COLUMN_MENU_OPTIONS="-scroll-method 0"



# $1 = a string of the entries which should be passed to rofi
# $2 = further parameters to the rofi command
function launchTwoColumnMenu(){
    launchMenu $1 "$TWO_COLUMN_MENU_OPTIONS $2"
};



# $@ = further parameters to the rofi command
function launchTwoColumnMenuWithBuiltEntries(){
    launchMenuWithBuiltEntries "$TWO_COLUMN_MENU_OPTIONS $@"
};
