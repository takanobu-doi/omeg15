TEX=platex
DVIPDF=dvipdfmx
MENDEX=mendex
BIBTEX=pbibtex
TARGET=jps_cp

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

clean:
	rm ${TARGET}.dvi ${TARGET}.log ${TARGET}.ilg ${TARGET}.pdf ${TARGET}.aux
