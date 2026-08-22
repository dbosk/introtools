HTML_FILES= 	git.html

PANDOCFLAGS= 	--filter pandoc-xnos

.PHONY: all
all: ${HTML_FILES}


.PHONY: clean
clean:
	${RM} ${HTML_FILES}


include ../../html.mk

# Canvas items managed from this directory (see ../module.mk)
ASSIGNMENTS+= 	ssh-keys.md git-overview.md git-basics.md git.md
include ../module.mk
