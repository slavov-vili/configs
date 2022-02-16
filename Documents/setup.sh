#!/bin/bash

DIR=$(pwd)

DOCS_DIR=" $HOME/Documents"

mkdir $DOCS_DIR

cp --verbose --force --remove-destination $DIR/TODOS.md $DOCS_DIR/TODOS.md

