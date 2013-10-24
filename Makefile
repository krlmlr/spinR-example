.PRECIOUS: spin/%.md spin/%.tex

spin/%.md: %.R
	R --vanilla --args "$<" < spin/spin.R

spin/%.tex: spin/%.md
	pandoc --include-in-header=header.tex -s -o $@ $< 

%.pdf: spin/%.tex
	latexmk -pdf -output-directory=spin $<
	cp -u spin/$@ .
