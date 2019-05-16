.PHONY: Main.pdf

.DEFAULT: Main.pdf

Main.pdf:
	latexmk -xelatex -shell-escape Main.tex
