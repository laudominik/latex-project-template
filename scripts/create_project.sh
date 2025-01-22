#!/bin/bash

PROJECT=$1

git clone git@github.com:laudominik/latex-project-template.git "$PROJECT"
pushd "$PROJECT" > /dev/null
    rm -rf .git
popd > /dev/null

echo "New project created in $PROJECT directory"
