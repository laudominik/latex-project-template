SHELL := /bin/bash
OUTPUT_DIR = build
BIB = bibtex
PDF_TEX = latexmk  -use-make -pdf -pdflatex="pdflatex -interaction=nonstopmode"
HTML_TEX = make4ht

.PHONY: clean sc pdf html all

all: pdf html

pdf: ${OUTPUT_DIR}/main.pdf

html: ${OUTPUT_DIR}/main.html

${OUTPUT_DIR}/main.pdf: main.tex ${OUTPUT_DIR} sc
	${PDF_TEX} --output-directory=${OUTPUT_DIR} main.tex 

${OUTPUT_DIR}/main.html: main.tex ${OUTPUT_DIR} sc
	${HTML_TEX} -d ${OUTPUT_DIR} -B ${OUTPUT_DIR} main.tex 

${OUTPUT_DIR}:
	mkdir -p ${OUTPUT_DIR}

sc: 
	./scripts/spellcheck.sh

clean:
	rm -Rf ${OUTPUT_DIR}
