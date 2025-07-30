all:
	texfot latexmk -shell-escape -pdf paper.tex

clean:
	latexmk -C -shell-escape -pdf paper.tex
	rm -f paper.bbl
	rm -rf _minted-paper_

realclean: clean
	rm -f *.bak *~

.PHONY: all clean realclean
