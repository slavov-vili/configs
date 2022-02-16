#!/bin/bash

PROJECT_LIST_FILE="projects_to_setup.txt"
DIR=$(pwd)

while read line; do
    # TODO: maybe escape spaces in paths?
    echo "Setting up ${line}:"
    cd $line
    sh ./setup.sh
    cd $DIR
    echo -ne "\n"
done < $PROJECT_LIST_FILE

