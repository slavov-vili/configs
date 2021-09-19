#!/bin/bash

source  $HOME/.config/rofi/scripts/rofi_menu.sh

options=('cancel' 'lock' 'logout' 'reboot' 'shutdown')
THEME=" $HOME/.config/rofi/widgets/five_item_menu.rasi"



declare -A texts icons commands prompts

texts[${options[0]}]="Cancel"
texts[${options[1]}]="Lock"
texts[${options[2]}]="Logout"
texts[${options[3]}]="Reboot"
texts[${options[4]}]="Shutdown"

icons[${options[0]}]="advert-block"
icons[${options[1]}]="system-lock-screen"
icons[${options[2]}]="system-log-out"
icons[${options[3]}]="system-reboot"
icons[${options[4]}]="system-shutdown"

commands[${options[1]}]="sh  $HOME/Scripts/lock.sh"
commands[${options[2]}]="sh  $HOME/Scripts/prompt_logout.sh"
commands[${options[3]}]="sh  $HOME/Scripts/prompt_reboot.sh"
commands[${options[4]}]="sh  $HOME/Scripts/prompt_shutdown.sh"

launchMenu
