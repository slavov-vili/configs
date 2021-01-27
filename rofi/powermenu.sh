#!/bin/bash

options=('cancel' 'lock' 'logout' 'reboot' 'shutdown')



declare -A texts icons commands prompts

texts['cancel']="Cancel"
texts['lock']="Lock"
texts['logout']="Logout"
texts['reboot']="Reboot"
texts['shutdown']="Shutdown"

icons['cancel']="advert-block"
icons['lock']="system-lock-screen"
icons['logout']="system-log-out"
icons['reboot']="system-reboot"
icons['shutdown']="system-shutdown"

commands['lock']="sh ~/Scripts/lock.sh"
commands['logout']="sh ~/Scripts/prompt_logout.sh"
commands['reboot']="sh ~/Scripts/prompt_reboot.sh"
commands['shutdown']="sh ~/Scripts/prompt_shutdown.sh"



# $1 = the list of keys which are being built into options
function buildEntries(){
    local entries=""
    local keys=("$@")
    for key in "${keys[@]}"; do
        entries+="${texts[$key]}\0icon\x1f${icons[$key]}\n"
    done 
    echo $entries
};



ENTRIES=$( buildEntries ${options[@]} )
RESULT_INDEX=$( echo -en $ENTRIES | rofi -theme ~/.config/rofi/powermenu.rasi -dmenu -format i )
RESULT_KEY=${options[$RESULT_INDEX]}

eval ${commands[$RESULT_KEY]}
