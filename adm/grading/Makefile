.PHONY: all
all: datintro-grade.pdf common.sh.pdf

# Explicit rules: with a leftover .tex file, the generic rules would go by
# way of that file and weave it without a preamble.
datintro-grade.pdf: datintro-grade.nw
	${NOWEAVE.pdf}

common.sh.pdf: common.sh.nw
	${NOWEAVE.pdf}

include datintro-grade.mk

.PHONY: clean
clean:
	${RM} datintro-grade.tex datintro-grade.mk
	${RM} datintro-grade.aux
	${RM} datintro-grade.fdb_latexmk
	${RM} datintro-grade.fls
	${RM} datintro-grade.log
	${RM} datintro-grade.pdf

INCLUDE_MAKEFILES=../../makefiles
include ${INCLUDE_MAKEFILES}/noweb.mk
