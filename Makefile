SHELL := /bin/bash
OUTPUT_DIR = build
BIB = bibtex
TEX = latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make

${OUTPUT_DIR}/main.pdf: main.tex ${OUTPUT_DIR}
	${TEX} --output-directory=${OUTPUT_DIR} main.tex 

${OUTPUT_DIR}:
	mkdir -p ${OUTPUT_DIR}

clean:
	rm -Rf ${OUTPUT_DIR}