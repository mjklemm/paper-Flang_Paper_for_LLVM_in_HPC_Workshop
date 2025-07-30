all:
	latexmk -shell-escape -pdf paper.tex

clean:
	latexmk -C -shell-escape -pdf paper.tex

realclean: clean
	rm -f *.bak *~

.PHONY: all clean realclean