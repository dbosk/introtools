.PHONY: all
all: example1.pdf examples.pdf

example1.pdf: example1.tex

examples.pdf: examples.tex literature.bib


.PHONY: clean
clean:
	${RM} examples.pdf example1.pdf


INCLUDE_MAKEFILES=../../../../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk

