.PHONY: all
all: grade.sh grade.pdf regrade.sh regrade.pdf

grade.pdf: grade.sh.nw
	${NOWEAVE.pdf}

grade.sh: grade.sh.nw
	${NOTANGLE.mk}
	chmod +x $@

regrade.pdf: regrade.sh.nw
	${NOWEAVE.pdf}

regrade.sh: regrade.sh.nw
	${NOTANGLE.mk}
	chmod +x $@


.PHONY: clean
clean:
	${RM} grade.sh grade.pdf regrade.sh regrade.pdf
	${RM} grade.aux grade.fdb_latexmk grade.fls grade.log grade.tex
	${RM} regrade.aux regrade.fdb_latexmk regrade.fls regrade.log regrade.tex


.PHONY: grade
grade: grade.sh regrade.sh
	${RM} -R repos
	./regrade.sh
	${RM} -R repos
	./grade.sh


INCLUDE_MAKEFILES=../../../makefiles
include ${INCLUDE_MAKEFILES}/noweb.mk
include ${INCLUDE_MAKEFILES}/tex.mk

