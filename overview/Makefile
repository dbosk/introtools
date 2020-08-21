HTML_FILES= 	overview.html help.html
PDF_FILES= 		slides.pdf

PANDOCFLAGS= 	--filter pandoc-xnos


.PHONY: all
all: ${HTML_FILES} ${PDF_FILES}

overview.html: overview.md
help.html: help.md new-meeting.png participants.png invite.png queue.png
slides.pdf: slides.tex contents.tex preamble.tex slides.tex version-tree.png


.PHONY: clean
clean:
	${RM} ${HTML_FILES} ${PDF_FILES}


include ../html.mk

MAKEFILES_INCLUDE?=../makefiles
include ${MAKEFILES_INCLUDE}/tex.mk
