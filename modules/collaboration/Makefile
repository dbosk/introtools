HTML_FILES= 	tmate.html

PANDOCFLAGS= 	--filter pandoc-xnos

.PHONY: all
all: ${HTML_FILES}


.PHONY: clean
clean:
	${RM} ${HTML_FILES}


include ../../html.mk

# Canvas items managed from this directory (see ../module.mk)
PAGES+= 	tmate.md
ASSIGNMENTS+= 	pair-programming-case.md pair-programming-costs-benefits.md
include ../module.mk
