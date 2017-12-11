.DEFAULT_GOAL := all

SVGs = $(wildcard svg/*.svg)
PNG16s = $(SVGs:svg/%.svg=16x16/%.png)
PNG36s = $(SVGs:svg/%.svg=36x36/%.png)
PNG72s = $(SVGs:svg/%.svg=72x72/%.png)
PNG256s = $(SVGs:svg/%.svg=256x256/%.png)

16x16/%.png: svg/%.svg
	convert -density 400 -colorspace RGB -background none -resize 16x16 $< $@

36x36/%.png: svg/%.svg
	convert -density 400 -colorspace RGB -background none -resize 36x36 $< $@

72x72/%.png: svg/%.svg
	convert -density 400 -colorspace RGB -background none -resize 72x72 $< $@

256x256/%.png: svg/%.svg
	convert -density 400 -colorspace RGB -background none -resize 256x256 $< $@

.PHONY: all
all: $(PNG16s) $(PNG36s) $(PNG72s) $(PNG256s)
	@echo 'finish.'
