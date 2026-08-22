HTML_FILES= 	guide.html

PANDOCFLAGS= 	--filter pandoc-xnos

.PHONY: all
all: ${HTML_FILES}


.PHONY: clean
clean:
	${RM} ${HTML_FILES}


include ../../html.mk

# Canvas items managed from this directory (see ../module.mk)
ASSIGNMENTS+= 	ssh-putty-windows.md ssh-ubuntu.md ssh-macos.md guide.md
include ../module.mk
