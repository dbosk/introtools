.PHONY: all
all: grade.sh grade.pdf

grade.pdf: grade.sh.nw
	${NOWEAVE.pdf}

grade.sh: grade.sh.nw
	${NOTANGLE.mk}
	chmod +x $@


.PHONY: clean
clean:
	${RM} grade.sh grade.pdf
	${RM} grade.aux grade.fdb_latexmk grade.fls grade.log grade.tex


.PHONY: grade
grade: grade.sh
	./grade.sh


INCLUDE_MAKEFILES=../../makefiles
include ${INCLUDE_MAKEFILES}/noweb.mk
include ${INCLUDE_MAKEFILES}/tex.mk

