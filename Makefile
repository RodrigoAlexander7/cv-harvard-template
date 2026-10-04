PDFLATEX ?= pdflatex
PDFLATEX_FLAGS ?= -file-line-error -halt-on-error -interaction=nonstopmode

SOURCES := CV-Rodrigo-Fernandez-Huarca_en.tex CV-Rodrigo-Fernandez-Huarca_es.tex
PDFS := $(SOURCES:.tex=.pdf)

.PHONY: all en es clean

all: $(PDFS)

en: CV-Rodrigo-Fernandez-Huarca_en.pdf

es: CV-Rodrigo-Fernandez-Huarca_es.pdf

%.pdf: %.tex
	$(PDFLATEX) $(PDFLATEX_FLAGS) $<
	$(PDFLATEX) $(PDFLATEX_FLAGS) $<

clean:
	del /Q $(PDFS) \
		$(SOURCES:.tex=.aux) \
		$(SOURCES:.tex=.log) \
		$(SOURCES:.tex=.out) \
		$(SOURCES:.tex=.synctex.gz) \
		$(SOURCES:.tex=.fls) \
		$(SOURCES:.tex=.fdb_latexmk)
