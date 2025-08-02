all:
	texfot latexmk -shell-escape -pdf paper.tex

clean:
	latexmk -C -shell-escape -pdf paper.tex
	rm -f paper.bbl
	rm -rf _minted-paper_
	rm -rf diff.tmp

diff:

	@if [ "x$(DIFF_FROM)" = "x" ]; then echo "You need to set DIFF_FROM"; exit 1; fi
	latexdiff-vc -r $(DIFF_FROM) paper.tex
	latexmk -shell-escape -pdf paper-diff$(DIFF_FROM).tex 

realclean: clean
	rm -f *.bak *~

.PHONY: all clean realclean diff
