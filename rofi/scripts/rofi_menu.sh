#!/bin/bash

# $1 = the list of keys which are being built into options
function buildEntries(){
    local entries=""
    local keys=("$@")
    for key in "${keys[@]}"; do
        entries+="${texts[$key]}\0icon\x1f${icons[$key]}\n"
    done 
    echo $entries
};



# $@ = further parameters to the rofi command
function launchMenu(){
    ENTRIES=$( buildEntries ${options[@]} )
    RESULT_INDEX=$( echo -en $ENTRIES | rofi -theme $THEME -dmenu -i -format i $@)
    RESULT_KEY=${options[$RESULT_INDEX]}
    
    eval ${commands[$RESULT_KEY]}
};
