.PHONY: Main.pdf

.DEFAULT: Main.pdf

Main.pdf:
	latexmk -xelatex -shell-escape -latex="xelatex --interaction nonstopmode %O %S" Main.tex
