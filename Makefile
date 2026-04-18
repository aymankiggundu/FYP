.PHONY: all clean

all:
	mkdir -p build
	pdflatex -shell-escape -output-directory=build main.tex
	bibtex build/main || true
	pdflatex -shell-escape -output-directory=build main.tex
	pdflatex -shell-escape -output-directory=build main.tex
	cp build/main.pdf ./main.pdf

clean:
	rm -rf build
	rm -f *.aux *.log *.toc *.lof *.lot *.out *.bbl *.blg *.synctex.gz *.fls *.fdb_latexmk *.nlo
