#!/bin/bash

DOI=$1

printf "\n" >> main.bib
curl -sL "https://citation.doi.org/format?doi=$DOI&style=bibtex&lang=en-US" | \
    xargs >> main.bib
echo "Citation saved to main.bib"
