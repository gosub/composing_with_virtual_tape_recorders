SRCFILES := $(wildcard src/*.md)
OUTDIR    := output

.PHONY: pdf html clean all

all: pdf html

pdf: $(OUTDIR)/book.pdf

html: $(OUTDIR)/book.html

$(OUTDIR):
	mkdir -p $(OUTDIR)

$(OUTDIR)/book.pdf: $(SRCFILES) metadata.yaml templates/book.latex | $(OUTDIR)
	pandoc metadata.yaml $(SRCFILES) \
	  -o $@ \
	  --pdf-engine=xelatex \
	  --template=templates/book.latex \
	  --toc --number-sections \
	  --resource-path=images \
	  --highlight-style=tango

$(OUTDIR)/book.html: $(SRCFILES) metadata.yaml | $(OUTDIR)
	pandoc metadata.yaml $(SRCFILES) \
	  -o $@ \
	  --standalone --toc --number-sections \
	  --resource-path=images \
	  --highlight-style=tango \
	  --css=style.css \
	  -V "pagetitle=Composing with Virtual Tape Recorders"

clean:
	rm -f $(OUTDIR)/book.pdf $(OUTDIR)/book.html
