
#Makefile for compiling CANS2020 submission
SOURCE := 108
BIBFILE := references
all : 
	pdflatex -synctex=1 -interaction=nonstopmode $(SOURCE).tex
	bibtex $(SOURCE)
	pdflatex -synctex=1 -interaction=nonstopmode $(SOURCE).tex
	pdflatex -synctex=1 -interaction=nonstopmode $(SOURCE).tex


clean :
	rm -rf *.aux
	rm -rf *.log
	rm -rf *.out
	rm -rf $(SOURCE).pdf
	rm -rf $(SOURCE).bbl
	rm -rf $(SOURCE).blg