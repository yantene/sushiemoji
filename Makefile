.DEFAULT_GOAL := all

SVGs = $(wildcard svg/*.svg)
PNGs = $(SVGs:svg/%.svg=72x72/%.png)

72x72/%.png: svg/%.svg
	convert -density 400 -colorspace RGB -background none -resize 72x72 $< $@

.PHONY: all
all: $(PNGs)
	@echo 'finish.'
