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

latex.pdf: ${latexsrc} example1.pdf
latex-examples.pdf: examples.pdf ${examplessrc}
	mv examples.pdf $@

examples.pdf: examples.tex literature.bib

#export no
literature.bib: ../../literature.bib
	${CP} $^ $@

clean:
	${RM} literature.bib
#endexport

miun.depend.mk:
ifeq (${MAKE},gmake)
	lynx -dump http://ver.miun.se/build/$@ > $@
else
	wget http://ver.miun.se/build/$@
endif

include miun.depend.mk
include miun.course.mk
include miun.package.mk
