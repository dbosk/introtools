.PHONY: all
all: grade.sh grade.pdf

grade.pdf: grade.sh.nw
	${NOWEAVE.pdf}

grade.sh: grade.sh.nw common.sh
	${NOTANGLE.mk}
	chmod +x grade.sh

common.sh: ../../../adm/grading/common.sh.nw
	${NOTANGLE}


.PHONY: clean
clean:
	${RM} grade.sh grade.pdf
	${RM} grade.aux grade.fdb_latexmk grade.fls grade.log grade.tex
	${RM} common.sh


INCLUDE_MAKEFILES=../../../makefiles
include ${INCLUDE_MAKEFILES}/noweb.mk
include ${INCLUDE_MAKEFILES}/tex.mk

