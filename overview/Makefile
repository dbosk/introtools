HTML_FILES= 	overview.html
PDF_FILES= 		slides.pdf


.PHONY: all
all: ${HTML_FILES} ${PDF_FILES}

overview.html: overview.md
slides.pdf: slides.tex contents.tex preamble.tex slides.tex version-tree.png


.PHONY: clean
clean:
	${RM} ${HTML_FILES} ${PDF_FILES}


include ../html.mk

MAKEFILES_INCLUDE?=../makefiles
include ${MAKEFILES_INCLUDE}/tex.mk
