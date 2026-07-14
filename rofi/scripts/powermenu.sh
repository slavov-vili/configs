#!/bin/bash

source $HOME/.config/rofi/scripts/rofi_menu.sh



THEME="$HOME/.config/rofi/widgets/five_item_menu.rasi"
RESULT_FORMAT="i"



texts[0]="Cancel"
texts[1]="Lock"
texts[2]="Logout"
texts[3]="Reboot"
texts[4]="Shutdown"

icons[0]="advert-block"
icons[1]="system-lock-screen"
icons[2]="system-log-out"
icons[3]="system-reboot"
icons[4]="system-shutdown"

commands[0]=""
commands[1]="sh $HOME/Scripts/lock.sh"
commands[2]="sh $HOME/Scripts/prompt_logout.sh"
commands[3]="sh $HOME/Scripts/prompt_reboot.sh"
commands[4]="sh $HOME/Scripts/prompt_shutdown.sh"

evaluateCommand $(launchMenuWithBuiltEntries)
