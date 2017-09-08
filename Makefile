TEMPLATE = template.html
TEXTEMPLATE = template.tex
MDFILES := $(shell find . -name \*.md)
HTMLFILES := $(MDFILES:./%.md=site/%.html)
# ASSIGNMENTS := $(filter ./assignments/%.md,$(MDFILES))
PDFS := $(MDFILES:./%.md=site/%.pdf)
# TEXS := $(ASSIGNMENTS:./%.md=site/%.tex)
IMGFILES := $(shell find images -name \*.png)
IMGFILES := $(IMGFILES:%=site/%)

$(HTMLFILES): site/%.html: %.md $(TEMPLATE)
	mkdir -p $(@D)
	pandoc -o $@ --template=$(TEMPLATE) --mathjax --smart --filter ./makeHtml.hs $<

$(PDFS): site/%.pdf: %.md $(TEXTEMPLATE)
	mkdir -p $(@D)
	pandoc -o $@ --template=$(TEXTEMPLATE) -t latex --listings --filter ./makeTex.hs $<

$(IMGFILES): site/images/%.png: images/%.png
	mkdir -p $(@D)
	cp $< $@

email:
	open "mailto:`cat students.txt`"

site: $(IMGFILES) $(HTMLFILES) $(PDFS)

all: site
