.PHONY: all
all: datintro-setup.pdf

include datintro-setup.mk

.PHONY: clean
clean:
	${RM} datintro-setup.tex datintro-setup.mk
	${RM} datintro-setup.aux
	${RM} datintro-setup.fdb_latexmk
	${RM} datintro-setup.fls
	${RM} datintro-setup.log
	${RM} datintro-setup.pdf
	${RM} Dockerfile gits-setup.sh

INCLUDE_MAKEFILES=../../makefiles
include ${INCLUDE_MAKEFILES}/noweb.mk
