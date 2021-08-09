PDF_FILES= 		slides.pdf
FIGS=			figs/canvas.png figs/sauron.jpg figs/version-tree.png


.PHONY: all
all: ${HTML_FILES} ${PDF_FILES}

slides.pdf: slides.tex contents.tex preamble.tex slides.tex
slides.pdf: ${FIGS}


.PHONY: clean
clean:
	${RM} ${HTML_FILES} ${PDF_FILES}


include ../../../html.mk

INCLUDE_MAKEFILES?=../../../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
