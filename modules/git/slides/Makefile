.PHONY: all
all: notes.pdf slides.pdf

SRC+=		preamble.tex
SRC+=		abstract.tex contents.tex

FIGS+=		figs/version-tree.png

notes.pdf: notes.tex
notes.pdf: ${SRC} ${FIGS}

slides.pdf: slides.tex
slides.pdf: ${SRC} ${FIGS}


.PHONY: clean
clean:
	${RM} notes.pdf slides.pdf


INCLUDE_MAKEFILES=../../../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
