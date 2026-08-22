HTML_FILES= 	latex.html


.PHONY: all
all: ${HTML_FILES}


.PHONY: clean
clean:
	${RM} ${HTML_FILES}


include ../../html.mk

# Canvas items managed from this directory (see ../module.mk)
PAGES+= 	getting-started.md
ASSIGNMENTS+= 	intro.md references.md mathematics.md figures-tables.md \
		packages-classes.md latex.md
include ../module.mk
