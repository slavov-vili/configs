#!/bin/bash

source $HOME/.config/rofi/scripts/rofi_menu.sh


PROMPT="Screenshot:"
RESULT_FORMAT="i"
ROFI_OPTIONS+=(-scroll-method 0)
THEME="$HOME/.config/rofi/widgets/two_column_menu.rasi"
THEME_CHANGES="listview{lines: 3;} element-icon{size: 40px;} element-text{font: \"DejaVu Sans Mono Regular 18\";}"



texts[0]="Capture current screen"
texts[1]="Capture selection"
texts[2]="Capture current window"
texts[3]="Save current screen"
texts[4]="Save selection"
texts[5]="Save current window"

icons[0]="preferences-desktop-gestures-screenedges"
icons[1]="view-fullscreen"
icons[2]="window-duplicate"
icons[3]="folder-download"
icons[4]="folder-download"
icons[5]="folder-download"

commands[0]="sh $HOME/Scripts/screenshot.sh"
commands[1]="sh $HOME/Scripts/screenshot.sh --selection"
commands[2]="sh $HOME/Scripts/screenshot.sh --window"
commands[3]="sh $HOME/Scripts/screenshot.sh --save"
commands[4]="sh $HOME/Scripts/screenshot.sh --selection --save"
commands[5]="sh $HOME/Scripts/screenshot.sh --window --save"

evaluateCommand $(launchMenuWithBuiltEntries)
