.PHONY: Main.pdf

.DEFAULT: Main.pdf

Main.pdf:
	latexmk -pdf -shell-escape Main.tex
