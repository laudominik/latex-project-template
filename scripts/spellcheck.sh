#!/bin/bash

SRC_DIR="src"
MAIN_FILE=

FILES=$(find $SRC_DIR -type f -name "*.tex")
FILES+=("main.tex")

echo "SPELLCHECK..."
for file in ${FILES[@]};do
    echo "-----$file------"
    aspell list --mode=tex < "$file"
done
echo "----------"
