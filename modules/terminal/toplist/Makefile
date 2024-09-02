LATEXFLAGS=-shell-escape
TEX_PYTHONTEX=yes
TEX_OUTDIR=.

.PHONY: all
all: top.sh top.pdf

top.pdf: top.tex top.sh skye.sh submissions.csv
top.tex: top.nw

skye.sh: top.nw
	${NOTANGLE.sh}

submissions.csv:
	canvaslms submissions -c "(datintro|progd)24" > submissions.csv

.PHONY: clean
clean:
	rm -f top.sh top.pdf skye.sh
	rm -Rf _minted-top py_default_default_0.stdout pythontex_data.pkl
	rm -f top.pytxmcr top.pytxpyg top.tex
	rm -f py_*.stdout top.bbl top.unq

.PHONY: distclean
distclean:
	rm -f submissions.csv


INCLUDE_MAKEFILES=../../../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/noweb.mk
#INCLUDE_DIDACTIC=../../../didactic
#include ${INCLUDE_DIDACTIC}/didactic.mk
