.PHONY: all
all: datintro-grade.pdf common.sh.pdf

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
