.DEFAULT_GOAL := all

SVGs = $(wildcard svg/*.svg)
PNG24s = $(SVGs:svg/%.svg=24x24/%.png)
PNG36s = $(SVGs:svg/%.svg=36x36/%.png)
PNG72s = $(SVGs:svg/%.svg=72x72/%.png)
PNG256s = $(SVGs:svg/%.svg=256x256/%.png)

24x24/%.png: svg/%.svg
	convert -density 400 -colorspace sRGB -background none -resize 24x24 $< $@

36x36/%.png: svg/%.svg
	convert -density 400 -colorspace sRGB -background none -resize 36x36 $< $@

72x72/%.png: svg/%.svg
	convert -density 400 -colorspace sRGB -background none -resize 72x72 $< $@

256x256/%.png: svg/%.svg
	convert -density 400 -colorspace sRGB -background none -resize 256x256 $< $@

.PHONY: all
all: $(PNG24s) $(PNG36s) $(PNG72s) $(PNG256s)
	@echo 'finish.'
