.PHONY: all
all: datintro.pdf datintro.sh
all: datintro-setup
all: datintro-grade

datintro.sh: datintro-setup
datintro.sh: datintro-grade

datintro.sh: datintro.nw

.PHONY: datintro-setup
datintro-setup:
	${MAKE} -C gits all

.PHONY: datintro-grade
datintro-grade:
	${MAKE} -C grading all


.PHONY: clean distclean
clean:
	${MAKE} -C gits $@
	${MAKE} -C grading $@
	${RM} datintro.aux datintro.fdb_latexmk datintro.fls datintro.log
	${RM} datintro.pdf datintro.sh datintro.tex

distclean:
	${MAKE} -C gits $@
	${MAKE} -C grading $@
	${RM} datintro.sh

INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/noweb.mk
