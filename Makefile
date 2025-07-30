all:
	texfot latexmk -shell-escape -pdf paper.tex

clean:
	latexmk -C -shell-escape -pdf paper.tex
	rm -f paper.bbl

realclean: clean
	rm -f *.bak *~

.PHONY: all clean realclean