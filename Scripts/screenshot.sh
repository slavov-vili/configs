#!/bin/bash

function printUsage() {
    echo "USAGE: screenshot.sh [{--all}|--selection|--window] [--save]"
};

# $1 = The command where the filepath needs to be appended
function getFilename() {
    PATH_TO_SCREENSHOTS="${HOME}/Screenshots"
    mkdir -p $PATH_TO_SCREENSHOTS
    FILENAME="screenshot_$(date +%Y_%m_%d_%N).png"
    echo -en "$PATH_TO_SCREENSHOTS/$FILENAME"
};



COMMAND="maim"

if [ $# -eq 0 ]
then
    COMMAND=$COMMAND
elif [ "$1" = "--all" ]
then
    COMMAND=$COMMAND
elif [ "$1" = "--selection" ]
then
    COMMAND="${COMMAND} -s --bordersize=2 --color=0,80,80,0.15 --highlight"
elif [ "$1" = "--window" ]
then
    COMMAND="${COMMAND} -i $(xdotool getactivewindow)"
elif [ "$1" = "--save" ]
then
    COMMAND="${COMMAND} \"$(getFilename)\""
else
    printUsage
    exit 0
fi

if [ "$2" == "--save" ]
then
    COMMAND="${COMMAND} \"$(getFilename)\""
else
    COMMAND="${COMMAND} | xclip -selection clipboard -t image/png"
fi

# TODO: Send notification that a screenshot was taken?
eval $COMMAND
