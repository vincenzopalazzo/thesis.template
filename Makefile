FILE=thesis

build:
	pdflatex -interaction=nonstopmode "$(FILE).tex"

bib:
	pdflatex -interaction=nonstopmode "$(FILE).tex";
	pdflatex -interaction=nonstopmode "$(FILE).aux";
	pdflatex -interaction=nonstopmode "$(FILE).tex";
	pdflatex -interaction=nonstopmode "$(FILE).tex"

clean:
	rm -f *.log *.pdf *.out *.lof *.lol *.toc *.gz *.blg *.fdb_latexmk *.fls *.aux *.auxlock
