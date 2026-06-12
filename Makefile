.PHONY: all clean

all:
	mkdir -p build
	pdflatex -shell-escape -output-directory=build main.tex
	makeindex -s nomencl.ist -o build/main.nls build/main.nlo || true
	bibtex build/main || true
	pdflatex -shell-escape -output-directory=build main.tex
	pdflatex -shell-escape -output-directory=build main.tex
	cp build/main.pdf ./main.pdf

clean:
	rm -rf build
	rm -f *.aux *.log *.toc *.lof *.lot *.out *.bbl *.blg *.synctex.gz *.fls *.fdb_latexmk *.nlo
