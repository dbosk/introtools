SRC=	contents.tex literature.bib

DEPENDS+= 	examples/example1.pdf
DEPENDS+=	examples/examples.pdf
DEPENDS+=	figs/circular_margin.jpg
DEPENDS+=	figs/maps.jpg
DEPENDS+=	figs/tengwar.jpg
DEPENDS+=	figs/music.jpg

.PHONY: all
all: notes.pdf slides.pdf

SRC+=		preamble.tex
SRC+=		abstract.tex contents.tex

notes.pdf: notes.tex
notes.pdf: ${SRC} ${DEPENDS}

slides.pdf: slides.tex
slides.pdf: ${SRC} ${DEPENDS}

${DEPENDS}:
	${MAKE} -C $(dir $@) $(notdir $@)


.PHONY: clean
clean:
	${RM} notes.pdf slides.pdf

.PHONY: distclean
distclean:
	${MAKE} -C figs clean distclean
	${MAKE} -C examples clean distclean


INCLUDE_MAKEFILES=../../../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
