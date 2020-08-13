HTML_FILES= 	terminal.html guide.html

.PHONY: all
all: ${HTML_FILES}

${HTML_FILES}: ${HTML_FILES:.html=.md}
	pandoc -s -o $@ $<


include ../html.mk
