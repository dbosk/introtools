HTML_FILES= 	help.html

PANDOCFLAGS= 	--filter pandoc-xnos


.PHONY: all
all: ${HTML_FILES} ${PDF_FILES}

help.html: help.md new-meeting.png participants.png invite.png queue.png


.PHONY: clean
clean:
	${RM} ${HTML_FILES} ${PDF_FILES}


include ../../../html.mk

INCLUDE_MAKEFILES?=../../../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
