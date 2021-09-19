#!/bin/bash

DIR=$(pwd)

DOCS_DIR=" $HOMEDocuments"

mkdir $DOCS_DIR

ln -svf $DIR/TODOS.md $DOCS_DIR/TODOS.md

