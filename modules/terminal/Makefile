HTML_FILES= 	terminal.html

PANDOCFLAGS= 	--filter pandoc-xnos

.PHONY: all
all: ${HTML_FILES}


.PHONY: clean
clean:
	${RM} ${HTML_FILES}


include ../../html.mk

# Canvas items managed from this directory (see ../module.mk)
PAGES+= 	windows-more-options.md
ASSIGNMENTS+= 	interfaces.md find-terminal-ubuntu.md find-terminal-macos.md \
		find-terminal-windows-wsl.md commands.md pipes.md scripting.md terminal.md
include ../module.mk
