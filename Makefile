CATEGORY=	itgrund/lectures
latexsrc=	latex.tex ../../literature.bib theory.tex thesis.tex \
			circular_margin.jpg maps.jpg tengwar.jpg music.jpg
examplessrc=examples.tex literature.bib
FILES=		${latexsrc} ${examplessrc}
DOCUMENTS=	latex.pdf latex-examples.pdf

PACKAGE=		latex-src
PACKAGE_FILES=	${FILES}

PUB_FILES=	${PACKAGE}.tar.gz ${DOCUMENTS}

latex.pdf: ${latexsrc}
latex-examples.pdf: examples.pdf ${examplessrc}
	mv examples.pdf $@

include miun.course.mk
include miun.package.mk
