#!/bin/bash

# Linux Bash script to compile
# the document.

pdflatex thesis.tex
makeindex thesis.tex
# note: the following call to biber is without file ending!
biber thesis
makeglossaries thesis
pdflatex thesis.tex
pdflatex thesis.tex

