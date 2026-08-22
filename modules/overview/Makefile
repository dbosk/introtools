HTML_FILES= 	overview.html

PANDOCFLAGS= 	--filter pandoc-xnos


.PHONY: all
all: ${HTML_FILES} ${PDF_FILES}

overview.html: overview.md


.PHONY: clean
clean:
	${RM} ${HTML_FILES} ${PDF_FILES}


include ../../html.mk

INCLUDE_MAKEFILES?=../../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk

# Canvas items managed from this directory (see ../module.mk)
PAGES+= 	start.md overview.md deadlines.md help/help.md genai.md intro-lecture.md
ASSIGNMENTS+= 	interactive-videos.md
include ../module.mk
