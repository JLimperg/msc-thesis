.PHONY: slides.pdf watch

.DEFAULT: slides.pdf

slides.pdf:
	latexmk -xelatex -shell-escape slides.tex

watch:
	latexmk -pvc -xelatex -interaction=nonstopmode -shell-escape slides.tex
