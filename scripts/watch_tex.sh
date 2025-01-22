#!/bin/bash

SRC_DIR="src"
MAIN_FILE="main.tex"

FILES=$(find $SRC_DIR -type f -name "*.tex" -print; echo $MAIN_FILE)

echo "$FILES" | entr -r sh -c "make"
