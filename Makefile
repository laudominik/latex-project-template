SHELL := /bin/bash
OUTPUT_DIR = build
BIB = bibtex
TEX = latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make

.PHONY: clean sc

${OUTPUT_DIR}/main.pdf: main.tex ${OUTPUT_DIR} sc
	${TEX} --output-directory=${OUTPUT_DIR} main.tex 

${OUTPUT_DIR}:
	mkdir -p ${OUTPUT_DIR}

sc: 
	./scripts/spellcheck.sh

clean:
	rm -Rf ${OUTPUT_DIR}
