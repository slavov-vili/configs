#!/bin/bash

source  $HOME/.config/rofi/scripts/rofi_two_column_menu.sh

options=('capture-current-screen' 'capture-selection' 'capture-current-window' 'save-current-screen' 'save-selection' 'save-current-window')



declare -A texts icons commands prompts

texts[${options[0]}]="Capture current screen"
texts[${options[1]}]="Capture selection"
texts[${options[2]}]="Capture current window"
texts[${options[3]}]="Save current screen"
texts[${options[4]}]="Save selection"
texts[${options[5]}]="Save current window"

icons[${options[0]}]="preferences-desktop-gestures-screenedges"
icons[${options[1]}]="view-fullscreen"
icons[${options[2]}]="window-duplicate"
icons[${options[3]}]="folder-download"
icons[${options[4]}]="folder-download"
icons[${options[5]}]="folder-download"

commands[${options[0]}]="sh  $HOME/Scripts/screenshot.sh"
commands[${options[1]}]="sh  $HOME/Scripts/screenshot.sh --selection"
commands[${options[2]}]="sh  $HOME/Scripts/screenshot.sh --window"
commands[${options[3]}]="sh  $HOME/Scripts/screenshot.sh --save"
commands[${options[4]}]="sh  $HOME/Scripts/screenshot.sh --selection --save"
commands[${options[5]}]="sh  $HOME/Scripts/screenshot.sh --window --save"

launchTwoColumnMenu "-p Screenshot:"

