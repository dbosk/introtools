SRC=	contents.tex literature.bib

DEPENDS= 	example1.pdf examples.pdf
DEPENDS+=	circular_margin.jpg maps.jpg tengwar.jpg music.jpg

.PHONY: all
all: notes.pdf slides.pdf

SRC+=		preamble.tex
SRC+=		abstract.tex contents.tex

notes.pdf: notes.tex
notes.pdf: ${SRC} ${DEPENDS}

slides.pdf: slides.tex
slides.pdf: ${SRC} ${DEPENDS}

examples.pdf: examples.tex literature.bib


.PHONY: clean
clean:
	${RM} notes.pdf slides.pdf examples.pdf example1.pdf


INCLUDE_MAKEFILES=../../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
