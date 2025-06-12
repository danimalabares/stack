# List your source files (no extensions)
LIJST = differential-geometry algebraic-geometry complex-geometry physics book

# Automatic file expansions
PDFS = $(patsubst %,%.pdf,$(LIJST))
AUXS = $(patsubst %,%.aux,$(LIJST))

# Commands
PDFLATEX = pdflatex
BIBTEX = bibtex

# Default target: build all PDFs
.PHONY: all
all: $(PDFS)

# Rule to build a PDF from a .tex + .bib
%.pdf: %.tex %.aux
	$(PDFLATEX) $*
	-$(BIBTEX) $*
	$(PDFLATEX) $*
	$(PDFLATEX) $*

# Generate .aux (used by bibtex)
%.aux: %.tex
	$(PDFLATEX) $*

# Clean up all intermediate files
.PHONY: clean
clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg *.pdf *.fdb_latexmk *.fls

book.tex:
	python3 scripts/make_book.py

book.pdf: book.tex
	pdflatex book
	bibtex book
	pdflatex book
	pdflatex book
