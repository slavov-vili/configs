#!/bin/bash

source  $HOME.config/rofi/scripts/rofi_menu.sh

THEME=" $HOME.config/rofi/widgets/two_column_menu.rasi"

# $@ = further parameters to the rofi command
function launchTwoColumnMenu(){
    launchMenu "-scroll-method 0" $@
};

