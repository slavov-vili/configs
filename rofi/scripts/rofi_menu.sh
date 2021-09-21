#!/bin/bash

THEME=""
ENTRIES=""
RESULT_INDEX=-1
RESULT_KEY=""

declare -a options
declare -A texts icons commands


# $1 = the list of keys which are being built into options
function buildEntries(){
    local entries=""
    local keys=("$@")
    for key in "${keys[@]}"; do
        entries+="${texts[$key]}\0icon\x1f${icons[$key]}\n"
    done 
    echo $entries
};



# $1 = a string of the entries which should be passed to rofi
# $2 = further parameters to the rofi command
function launchMenu(){
    RESULT_INDEX=$( echo -en $1 | rofi -theme $THEME -dmenu -i -format i $2)
    RESULT_KEY=${options[$RESULT_INDEX]}
};



# $1 = further parameters to the rofi command
function launchMenuWithBuiltEntries(){
    ENTRIES=$( buildEntries ${options[@]} )
    launchMenu "$ENTRIES" "$1"
};



function evaluateCommand(){
    eval ${commands[$RESULT_KEY]}
};
