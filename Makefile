.PHONY: html beamer pptx clean install all

QMDFILE = index.qmd
PDFFILE = $(TEXFILES:.qmd=.pdf)
PPTXFILE = $(TEXFILES:.qmd=.pptx)

html:
	@quarto render $(QMDFILE)

install:
	@uv sync
	@quarto add shafayetShafee/reveal-header

clean:
	@rm -f $(PDFFILE) $(PPTXFILE)
