TEX=lualatex

.PHONY: all clean mrproper
.DEFAULT_TARGET= all

CV=$(wildcard *.tex)

all: $(CV:.tex=.pdf)

$(CV:.tex=.pdf): $(CV) $(wildcard cv-sections/*.tex) awesome-cv.cls

%.pdf: %.tex
	$(TEX) $<

clean:
	rm -f *.aux *.log *.out

mrproper: clean
	rm -f *.pdf
