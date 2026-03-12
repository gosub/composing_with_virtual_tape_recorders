SRCFILES  := $(wildcard src/*.md)
SVGFILES  := $(wildcard images/diagrams/*.svg)
PDFIMAGES := $(SVGFILES:images/diagrams/%.svg=images/diagrams/%.pdf)
OUTDIR    := output

.PHONY: pdf html clean all

all: pdf html

pdf: $(OUTDIR)/book.pdf

html: $(OUTDIR)/book.html

$(OUTDIR):
	mkdir -p $(OUTDIR)

images/diagrams/%.pdf: images/diagrams/%.svg
	rsvg-convert -f pdf -o $@ $<

$(OUTDIR)/book.pdf: $(SRCFILES) metadata.yaml templates/book.latex filters/divs.lua $(PDFIMAGES) | $(OUTDIR)
	pandoc metadata.yaml $(SRCFILES) \
	  -o $@ \
	  --pdf-engine=tectonic \
	  --template=templates/book.latex \
	  --lua-filter=filters/divs.lua \
	  --toc --number-sections \
	  --resource-path=images \
	  --highlight-style=tango

$(OUTDIR)/book.html: $(SRCFILES) metadata.yaml templates/book.html filters/divs.lua style.css | $(OUTDIR)
	cp -r images $(OUTDIR)/images
	cp style.css $(OUTDIR)/style.css
	pandoc metadata.yaml $(SRCFILES) \
	  -o $@ \
	  --standalone --toc --number-sections \
	  --template=templates/book.html \
	  --lua-filter=filters/divs.lua \
	  --resource-path=images \
	  --highlight-style=tango \
	  --css=style.css \
	  -V "pagetitle=Composing with Virtual Tape Recorders"

clean:
	rm -f $(OUTDIR)/book.pdf $(OUTDIR)/book.html
	rm -rf $(OUTDIR)/images
