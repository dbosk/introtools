.PHONY: all
all: notes.pdf slides.pdf

LATEXFLAGS+=	-shell-escape

SRC+=		preamble.tex
SRC+=		abstract.tex contents.tex
SRC+=		fig/dir.jpg
SRC+=		fig/files-ls.png
SRC+=		fig/files.png
SRC+=		fig/GetChildItem.png
SRC+=		fig/ls-api-out.png
SRC+=		fig/ls-api.png
SRC+=		fig/ls.png
SRC+=		fig/macos.jpg
SRC+=		fig/ubuntu.png
SRC+=		fig/windows10-laptop.png
SRC+=		fig/windows95.png
SRC+=		fig/android.png
SRC+=		fig/ios14.jpg
SRC+=		fig/nokia-n9.jpg
SRC+=		fig/nokia-n9.png
SRC+=		fig/many-reports.png
SRC+=		code/ls.py

notes.pdf: notes.tex
notes.pdf: ${SRC}

slides.pdf: slides.tex
slides.pdf: ${SRC}


.PHONY: clean
clean:
	${RM} notes.pdf slides.pdf


INCLUDE_MAKEFILES=../../../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
