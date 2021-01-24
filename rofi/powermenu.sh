#!/bin/bash

CANCEL="Cancel\0icon\x1fadvert-block"
LOCK="Lock\0icon\x1fsystem-lock-screen"
LOGOUT="Logout\0icon\x1fsystem-log-out"
REBOOT="Reboot\0icon\x1fsystem-reboot"
SHUTDOWN="Shutdown\0icon\x1fsystem-shutdown"
OPTIONS="$CANCEL\n$LOCK\n$LOGOUT\n$REBOOT\n$SHUTDOWN"

echo -en $OPTIONS | rofi -theme ~/.config/rofi/powermenu.rasi -dmenu

# TODO: add the actions that need to happen once an option is chosen
