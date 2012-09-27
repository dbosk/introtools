CATEGORY=	itgrund/lectures
FILES=		latex.tex ../../literature.bib
DOCUMENTS=	latex.pdf

latex.pdf: latex.tex ../../literature.bib

include miun.course.mk
