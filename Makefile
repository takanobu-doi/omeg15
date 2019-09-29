TEX=platex
DVIPDF=dvipdfmx
MENDEX=mendex
VIEWER=evince
BIBTEX=pbibtex
TARGET=omeg15

all: ${TARGET}.pdf

${TARGET}.pdf: ${TARGET}.dvi
	$(DVIPDF) $<

${TARGET}.dvi: ${TARGET}.tex
	$(TEX) $<
#	$(MENDEX) $<
#	$(TEX) $<

${TARGET}.bbl: ${TARGET}.aux
	$(BIBTEX) ${TARGET}
	$(TEX) ${TARGET}.tex
	$(TEX) ${TARGET}.tex

force2:
	$(TEX) ${TARGET}.tex
	$(TEX) ${TARGET}.tex
	$(DVIPDF) ${TARGET}.dvi

clean:
	rm ${TARGET}.dvi ${TARGET}.log ${TARGET}.pdf ${TARGET}.aux
