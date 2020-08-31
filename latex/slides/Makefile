CATEGORY=	itgrund/lectures
latexsrc=	latex.tex literature.bib theory.tex thesis.tex
latexsrc+=	circular_margin.jpg maps.jpg tengwar.jpg music.jpg
latexsrc+= 	example1.pdf examples.pdf
examplessrc=examples.tex literature.bib
FILES=		${latexsrc} ${examplessrc} example1.tex
DOCUMENTS=	latex.pdf latex-examples.pdf

PACKAGE=		latex-src
TARBALL_FILES=	${FILES}

USE_BIBLATEX= 	yes
USE_LATEXMK= 	yes

PUB_FILES=	${PACKAGE}.tar.gz ${DOCUMENTS}

latex.pdf: ${latexsrc} example1.pdf examples.pdf
latex-examples.pdf: examples.pdf
	mv examples.pdf $@

examples.pdf: examples.tex literature.bib

#export no
literature.bib: ../../literature.bib
	${CP} $^ $@
Makefile.export: Makefile

clean:
	${RM} literature.bib

TARBALL_FILES= 	${FILES:.tex=.exporttex} Makefile.export
PUB_FILES= 	${DOCUMENTS} ${PACKAGE}.tar.gz
#endexport

miun.depend.mk:
	wget http://ver.miun.se/build/$@

include miun.depend.mk
include miun.course.mk
include miun.package.mk
