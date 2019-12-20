SOURCES := $(shell find . -iname '*.tex')

.PHONY: all clean

all: thesis.pdf

thesis.pdf: $(SOURCES)
	xelatex thesis.tex
	bibtex thesis
	xelatex thesis.tex
	xelatex thesis.tex
	makeindex thesis.idx
	xelatex thesis.tex
	xelatex thesis.tex

clean:
	rm -f *.aux *.log *.out *.cfg *.glo *.idx *.toc *.ilg *.ind *.lof *.lot *.bbl *.blg *.gls *.cut *.hd *.dvi *.ps *.thm *.rpi *.d *.fls *.pyc *.fdb_latexmk *.synctex.gz
	rm -Rf latex.out
