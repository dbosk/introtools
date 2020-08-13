.PHONY: html
html: ${target}
	pandoc -f markdown -t html $<

