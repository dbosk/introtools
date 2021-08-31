.PHONY: all
all: grade.mk grade.pdf

grade.pdf: grade.mk.nw
	${NOWEAVE.pdf}

grade.mk: grade.mk.nw
	${NOTANGLE.mk}

.PHONY: clean
clean:
	${RM} grade.mk grade.pdf
	${RM} grade.aux grade.fdb_latexmk grade.fls grade.log grade.tex

include grade.mk

INCLUDE_MAKEFILES=../../../makefiles
include ${INCLUDE_MAKEFILES}/noweb.mk
include ${INCLUDE_MAKEFILES}/tex.mk

