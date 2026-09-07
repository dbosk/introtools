LATEXFLAGS=-shell-escape
TEX_PYTHONTEX=yes
TEX_OUTDIR=.

# A failed fetch must not leave an empty CSV behind: an empty CSV yields a
# silently empty top list.
.DELETE_ON_ERROR:

.PHONY: all
all: top.sh top.pdf

SUBMISSIONS=submissions24.csv submissions25.csv submissions26.csv

top.pdf: top.tex top.sh skye.sh eric.sh eric-improved.sh ${SUBMISSIONS}
top.tex: top.nw

# Contributed scripts, tangled from top.nw; the generic %.sh: %.nw rule
# would look for skye.nw etc., hence the explicit rule.
skye.sh eric.sh eric-improved.sh: top.nw
	${NOTANGLE.sh}

# One LAB1-only export per year, since the script expects exactly four lines
# per student.  In 2024 and 2025 the LAB1 assignments were shared with progd
# (DD1337), hence the alternation.  submissions24.csv cannot be refetched:
# progd24 is no longer on Canvas, so distclean leaves that file alone.
submissions%.csv:
	canvaslms submissions list -c "^(datintro|progd)$*$$" -A LAB1 > $@

.PHONY: clean
clean:
	rm -f top.sh top.pdf skye.sh eric.sh eric-improved.sh
	rm -Rf _minted-top py_default_default_0.stdout pythontex_data.pkl
	rm -f top.pytxmcr top.pytxpyg top.tex
	rm -f py_*.stdout top.bbl top.unq
	rm -f times.txt times-full.txt

.PHONY: distclean
distclean:
	rm -f submissions25.csv submissions26.csv


INCLUDE_MAKEFILES=../../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/noweb.mk
#INCLUDE_DIDACTIC=../../didactic
#include ${INCLUDE_DIDACTIC}/didactic.mk

# Canvas items managed from this directory (see ../module.mk)
PAGES+= 	checklist.md
ASSIGNMENTS+= 	README.md
include ../module.mk
