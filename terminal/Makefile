HTML_FILES= 	guide.html terminal.html tmate.html editor.html

PANDOCFLAGS= 	--filter pandoc-xnos

.PHONY: all
all: ${HTML_FILES}


.PHONY: clean
clean:
	${RM} ${HTML_FILES}


include ../html.mk
