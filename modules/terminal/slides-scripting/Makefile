.PHONY: all
all: notes.pdf slides.pdf

LATEXFLAGS+=	-shell-escape

SRC+=		preamble.tex
SRC+=		abstract.tex contents.tex
SRC+=		fig/many-reports.png
SRC+=		code/summer.sh
SRC+=		code/sort.sh
SRC+=		code/args.sh
SRC+=		code/vars.sh
SRC+=		code/grade.sh

notes.pdf: notes.tex
notes.pdf: ${SRC}

slides.pdf: slides.tex
slides.pdf: ${SRC}


.PHONY: clean
clean:
	${RM} notes.pdf slides.pdf
	${MAKE} -C code clean

code/%:
	${MAKE} -C $(dir $@) $(notdir $@)


INCLUDE_MAKEFILES=../../../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
