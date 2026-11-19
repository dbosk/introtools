# The unsuffixed PDFs are the English edition, the -sv PDFs the Swedish
# one.  Both are built from the one contents.nw (onlyin blocks, \ensv).
PDFS=		notes.pdf slides.pdf
PDFS+=		$(patsubst %.tex,%.pdf,$(wildcard notes-sv.tex slides-sv.tex))

.PHONY: all
all: ${PDFS}

LATEXFLAGS+=	-shell-escape
# The terminal sessions (ls, the pipelines, the Python programs) are run
# and embedded with PythonTeX (didactic's \runshell and \runpython), so
# commands and output cannot drift apart.
TEX_PYTHONTEX=	yes
# The two jobs of an edition share an output directory, so the second
# job would otherwise reuse the first job's PythonTeX cache.
PYTHONTEXFLAGS=	--interpreter python:python3 --rerun=always

SRC+=		preamble.tex
SRC+=		abstract.tex contents.tex
SRC+=		sokprotokoll.tex
# The appendices \input the generated hit-list tables; a regenerated table
# must trigger a rebuild even when no .tex source changed.
SRC+=		$(wildcard litteratursokning/*.tex)
SRC+=		ltnotes.bib
SRC+=		$(wildcard figs/*)
# The directory the runs list.  It is a tracked input, not generated: the
# file-manager figure shows the same directory.
SRC+=		$(wildcard demo/* demo/.settings)

# The tangled programs.  Recaps re-display these files with
# \inputminted, so they must be built before the PDFs.
EXAMPLES+=	examples/ls-api.py examples/ls.py
EXAMPLES+=	examples/generate-reports.sh

# noweb names every chunk label after the woven file, and every deck's
# source is called contents.nw, so a book binding several decks would give
# them the same labels.  Weave the file under its path from modules/: it
# is the same file, but the labels are the deck's own.
NOWEB_NAME=	../../$(notdir $(abspath ..))/$(notdir ${CURDIR})/contents.nw
contents.tex: contents.nw
	noweave ${NOWEAVEFLAGS.tex} ${NOWEB_NAME} > $@

# The generic %.py: %.nw pattern does not match across the examples/
# directory boundary, so spell out one rule per suffix.
examples/%.py: contents.nw
	@mkdir -p ${@D}
	${NOTANGLE.py}

examples/%.sh: contents.nw
	@mkdir -p ${@D}
	${NOTANGLE.sh}

# The reports that the reports task is about: one file per day of
# 2001--2009, made by the tangled script and never committed.  The stamp
# stands for the whole directory, since its 3287 files have no one name to
# depend on.
REPORTS=	examples/reports/.made
${REPORTS}: examples/generate-reports.sh
	${RM} -R examples/reports
	cd examples && sh generate-reports.sh
	touch $@

.PHONY: examples
examples: ${EXAMPLES} ${REPORTS}

# Each driver sets its edition and inputs the shared body.
notes.pdf notes-sv.pdf: notes-body.tex
slides.pdf slides-sv.pdf: slides-body.tex

# PythonTeX writes its outputs into the output directory under names that
# do not say which job made them, and the two editions run different code
# under the same instance numbers, so each edition has its own output
# directory; the two jobs of one edition share it.
notes-sv.pdf slides-sv.pdf: TEX_OUTDIR=ltxobj-sv

${PDFS}: ${SRC} ${EXAMPLES} ${REPORTS}


.PHONY: clean
clean:
	${RM} notes.pdf slides.pdf notes-sv.pdf slides-sv.pdf
	${RM} -R ltxobj-sv
	${RM} contents.tex
	${RM} ${EXAMPLES}
	${RM} -R examples/reports


INCLUDE_MAKEFILES=../../../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/noweb.mk
