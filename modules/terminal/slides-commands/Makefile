PDF_FILES= 		slides.pdf


.PHONY: all
all: ${HTML_FILES} ${PDF_FILES}

slides.pdf: slides.tex contents.tex preamble.tex slides.tex


.PHONY: clean
clean:
	${RM} ${HTML_FILES} ${PDF_FILES}


include ../../../html.mk

INCLUDE_MAKEFILES?=../../../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
