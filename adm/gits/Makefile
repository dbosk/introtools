.PHONY: all
all: datintro-setup.pdf

# An explicit rule: with a leftover datintro-setup.tex, the generic rules
# would go by way of the .tex file and weave it without a preamble.
datintro-setup.pdf: datintro-setup.nw
	${NOWEAVE.pdf}

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
