.PHONY: Main.pdf watch

.DEFAULT: Main.pdf

Main.pdf:
	latexmk -xelatex -shell-escape Main.tex

watch:
	latexmk -pvc -xelatex -interaction=nonstopmode -shell-escape Main.tex
