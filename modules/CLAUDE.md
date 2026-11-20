# Module slide decks

**Load the `didactic-decks` skill before touching a deck.** It holds
everything about how a deck is built, authored and checked; the pedagogy
lives in `try-first-tell-later`, `variation-theory` and `didactic-notes`,
the citations and appendices in `backing-claims`, the review loop in
`remarkable` and `worktree-subagents`. This file holds only what is true
of this course. Before writing a new rule here, ask: would it hold in
another course too? Then it belongs in a skill, not here. A rule in two
places is a defect.

## Languages

- **English decks** (all but the terminal decks) follow
  `didactic-decks/references/house-style-en.md`.
- **Bilingual decks**: the four terminal decks and the terminal tutorial
  deck are single-source decks with English and Swedish side by side
  (`onlyin` blocks and `\ensv{…}{…}`, sync stamps, the didactic sync
  script; the rules are in `didactic-decks/references/bilingual.md`).
  Their `english` blocks follow `house-style-en.md`, their `swedish`
  blocks `house-style-sv.md` **and** the course rules in
  `modules/CLAUDE.md` of dbosk/intropy (example-data names,
  `python3`/`pydoc3`), because intropy's course book builds their Swedish
  edition as its first chapters. Read those rules there; do not copy them
  here. *Interfaces* is the pilot (2026-11-18).
- **English is the main text; review English first, Swedish after**
  (author, 2026-11-18): every `english` block and `\ensv` gets its
  Swedish partner in the same commit, `\ltnote`s included, and the pair
  is stamped then; the author reviews the English edition first and the
  Swedish one after it. A fix from the English review is carried into
  the Swedish partner before the pair is stamped again.
- **Shared names are English** (author, 2026-11-18): files, directories
  and chunk names in shared runs and chunks, read alike in both editions.
- **Dictionaries**: a section that analyses a word cites a dictionary of
  its own edition's language (author, 2026-11-18): *Interfaces* takes
  *interface* apart with an English dictionary and *gränssnitt* with a
  Swedish one.
- In intropy's reading order the Swedish terminal chapters come first
  (before *Algoritmiskt tänkande*, week 37), so a `swedish` block can
  point back to no intropy deck; a pointer only one course needs is a
  block without a partner.

## The decks

Each module has one or more deck directories building `slides.pdf` and
`notes.pdf`; all but *Interfaces* (converted 2026-11-18, the bilingual
pilot) are old-style `contents.tex` decks waiting for conversion.
Canonical titles, used when one deck points at
another in prose. The titles of the course overview and the four
terminal decks are decided (author, 2026-11-02), and the terminal decks'
parallel their Swedish titles; a conversion replaces the current `\title`
with them. The git and LaTeX titles are still working titles.

| Directory | Current `\title` | English title | Swedish title |
|---|---|---|---|
| `overview/slides` | DD1301 Datorintroduktion | *Course overview* | |
| `terminal/slides-interfaces` | (converted) | *Interfaces* | *Gränssnitt* |
| `terminal/slides-commands` | The terminal: Useful commands | *Commands and the file system* | *Kommandon och filsystemet* |
| `terminal/slides-pipes` | The terminal: Pipes and redirects | *Pipes and redirection* | *Rör och omdirigering* |
| `terminal/slides-scripting` | Programming with the CLI | *Scripts* | *Skript* |
| `git/slides` | Git version control | *Git version control* | |
| `git_commits/slides` | Good commits | *Good commits* | |
| `git_commits/exercise_slides` | Good commits - Exercises | part of *Exercise: Git* (below) | |
| `latex/slides` | \LaTeX | *\LaTeX* | |

- `git_commits/slides` is Amanda Berg's deck and `exercise_slides` Amanda
  Berg's and Daniel Bosk's (from Berg and Osnes's 2021 degree project,
  `git_commits/README.md`); a conversion keeps that `\author` credit.
- `git_commits/exercise_slides` is **not** a duplicate of `slides`: it
  holds the exercises behind the Canvas item *Git commits - Exercises* and
  its own video. It becomes part of the tutorial deck *Exercise: Git*
  (author, 2026-11-02).
- `latex/slides` has the parts `theory.tex`, `thesis.tex` and
  `literature.tex`; they become sections or appendices.
- **Tutorial decks**, for the terminal, git and LaTeX labs only (none for
  ssh and collaboration): *Exercise: The terminal* (bilingual, Swedish
  *Övning: Terminalen*), *Exercise: Git*, *Exercise: LaTeX* (working
  titles), in `modules/<module>/tutorial/`, one exercise per section
  followed by a literate solution. The labs stay the Canvas items.
- Not decks: `toplist/top.nw` (a paper) and
  `terminal/grading/grade.sh.nw` stay as they are.

**Reading order** (what "an earlier deck" means, e.g. for appendix
pointers, which may only point to the current deck or an earlier one),
from `modules/plan.md`: week 1: *Course overview*; the terminal decks
*Interfaces*, *Commands and the file system*, *Pipes and redirection*,
*Scripts*, then *Exercise: The terminal*; ssh and collaboration (no
decks); *Git version control*, *Good commits* (and its exercises), then
*Exercise: Git*. Week 2: *\LaTeX*, then *Exercise: \LaTeX*. Week 3 is an
extra lab session, without a deck.

**Learning objectives** come from `../learning-outcomes.md`: each deck's
`abstract.tex` carries the Canvas outcome code its objectives serve in a
comment (`% 10450`), as intropy's decks carry their Lo-codes.

**Review**: the reMarkable review family of a deck is `<Title> — notes
(review) vN`, the Swedish edition of a bilingual deck its own family under
its Swedish title. On the tablet they live in `/datintro/<module>/`
(`overview`, `terminal`, `git`, `git_commits`, `latex`; created
2026-10-31); upload a new version there (`parent_folder`) and move the
version it replaces into that folder's `Äldre versioner`, a version with
ink only once its comments are fully addressed in a newer version (the
`remarkable` skill, versioned review workflow, step 2).

## Course-specific rules

- Example data names: never the author's (the current decks use "Daniel",
  "Bosk" and `dbosk@kth.se`, e.g. `terminal/slides-pipes/names.csv`), but
  intropy's names (Malvina as the single name; Ronja, Pippi, Madicken, then
  Birk, Annika, Lisabet; Ada), so that the bilingual decks have one set of
  names in both editions and the Swedish chapters match intropy's book
  (author, 2026-11-02). A conversion replaces the author's name with these.
- A deck may point forward to a later deck by its title, to say where a
  thing is explained (*Commands and the file system*, *Pipes and
  redirection*, *Scripts*); appendix pointers still go only backwards
  (author, 2026-11-18).
- The reports task (put the summer reports of 2005--2008 into one file)
  is posed in *Interfaces* and solved in *Scripts* (author, 2026-11-18).
  The reports, one file per day of 2001--2009 (3287), are made at build
  time by the chunk `generate-reports.sh` in *Interfaces* and never
  committed; *Scripts* reuses that chunk rather than a copy
  (`didactic-decks/references/build-and-gotchas.md`, "Reusing a program
  another deck tangles").
- Every backed-claim appendix chapter (B onwards; not the method chapter A;
  author, 2026-11-02) opens with the verbatim
  `\chapterprecis{The author has not yet reviewed the results in this
  appendix in full.}` (in a bilingual deck through `\ensv`, the Swedish half
  intropy's sentence `Författaren har ännu inte granskat resultaten i den
  här bilagan i sin helhet.`).

## Backed claims (the ledger)

A claim already backed in another deck is not redone: cite the same
source with the provenance block copied (plus `% FOUND-VIA (here): backed
in <deck>, appendix <X>`) and point to it in a footnote anchored at the
claim, saying what the appendix answers, with the claim stated in the
prose at the strength the appendix supports. intropy's ledger
(`modules/CLAUDE.md` of dbosk/intropy, "Backed claims")
counts too: several of its answers (error messages, literate programming,
DRY, PEP 8) may meet claims in these decks, and a bilingual deck's
appendix serves both books.

Backed so far (question → answer): none yet.

## Build environment

The `makefiles` submodule is at bd2fdcf (the `tominted-default-weave`
lineage the deck template needs; its `latexmkrc`, linked into every
directory that sets `TEX_PYTHONTEX`, lets latexmk run ten times). In a
fresh worktree run `git submodule
update --init --checkout makefiles`.
