TARGETS=	gits-setup.sh gits-setup.pdf

.PHONY: all
all: ${TARGETS}

.PHONY: clean
clean:
	${RM} ${TARGETS}
	${RM} gits-setup.aux gits-setup.fls gits-setup.log gits-setup.tex
	${RM} gits-setup.fdb_latexmk

INCLUDE_MAKEFILES=../../makefiles
include ${INCLUDE_MAKEFILES}/noweb.mk
