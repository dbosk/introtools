# introtools (DD1301 Datorintroduktion, Canvas course datintro26)

The slide decks and tutorial decks have their own rules in
`modules/CLAUDE.md`. This file holds what is true of the course's Canvas
side and its Jekyll site. **Load the `canvas-course-repo` skill before any
write to Canvas**; it owns the general rules (files are the source of
truth, authoritative `modules:` front matter, the empty-body hazard,
sandbox rehearsal, `--no-cache`). A rule that would hold in another course
belongs there, not here.

The course outcomes, with their Canvas outcome codes and the decks that
meet them, are in `learning-outcomes.md`.

## Canvas (datintro26, course id 64041)

Every page and assignment the repo manages is a Markdown file with
canvaslms front matter under `modules/<topic>/`; the README's "Canvas
sync" section documents the front matter. A topic directory is not a
Canvas module: one Canvas module draws on several directories.

| Canvas module | Directories | Notes |
|---|---|---|
| Course overview | `overview/` | pages, the intro lecture, *Introduction to interactive videos* |
| Terminal pre-test | none | one external-tool assignment, *Terminal quiz: what you know already* |
| The terminal | `terminal/`, `ssh/`, `editor/` | sequential; the lab *Guide to accessing the terminal* (`ssh/guide.md`) and the lab *The terminal* (`terminal/terminal.md`) |
| Terminal post-test | none | *Terminal quiz: what you know now* |
| Git pre-test | none | *Git quiz: what you know already* |
| Collaboration | `collaboration/`, `git/`, `git_commits/` | sequential; the lab *Git* (`git/git.md`) |
| Git post-test | none | *Git quiz: what you know now* |
| LaTeX pre-test | none | *LaTeX quiz: what you know already* |
| Report writing | `latex/` | sequential; the lab *Writing a report in LaTeX* (`latex/latex.md`) |
| LaTeX post-test | none | *LaTeX quiz: what you know now* |
| Conclusion | `toplist/` | *Who finished datintro first?*, *Checklist for getting a grade*, and the page *Information om forskningsstudien* (no file) |

### The shape of a topic module (as of 2026-10-31)

The three topic modules (The terminal, Collaboration, Report writing) run
sequentially (`unlock_at` 2026-08-23) and have the same order:

1. the learning material: FeedbackFruits external-tool assignments, one
   per recorded lecture (*Briefly on interfaces*, *The terminal: Some
   useful commands*, *The terminal: Pipes and redirections*, *Programming
   using the CLI*; *Git overview*, *Git: Basic commands and workflow*,
   *Git commits*, *Git commits - Exercises*; *LaTeX: Introduction*,
   *References/Bibliography*, *Mathematics*, *Figures and Tables*, *Other
   packages and classes*), scored on rubric rows such as "Viewed" and
   "Write reflection" without outcome codes; pages (*Getting started with
   LaTeX*, *Terminal mates*) where the module needs them;
2. the lab, a 1-point assignment whose single rubric criterion carries the
   module's outcome code, with the requirement `must_mark_done`.

The terminal module is the exception: text headers (SubHeader) split it
into *Local terminal*, *Remote terminal*, *Summary* (the ssh lab) and
*Using the terminal* (the lectures and the terminal lab), and the page
*Choosing an editor* comes last. Each topic module is framed by a pre-test
and a post-test module holding one external-tool quiz (`must_submit`).
The pre/post quizzes, SubHeaders and ExternalUrl items (*Grading script
log* in Course overview) have no files and are not managed from the repo.

Not determined from the survey: which external tool the pre/post quizzes
use (the API says only `external_tool`), and why the course holds two
unused duplicate outcomes (10448 and 10449, the same titles as 10451 and
10450). Publish states were not compared with the files.

When a deck replaces or joins a recorded lecture, the Canvas item stays
the FeedbackFruits assignment; how the decks' notes reach Canvas is not
decided yet (ask the author before adding items).

### Make targets (`modules/module.mk`)

- In a topic directory: `make push` (changed pages and assignments, stamps
  in `.pushed-*.d/`), `make push-pages`, `make push-assignments`; `cd
  modules && make push` for all. `make force-push` re-pushes everything
  with `--create`: one-shot only (see the skill on duplicates).
- `COURSE ?= datintro26` (override `make COURSE=datintro27 push`); each
  directory's Makefile lists `PAGES` and `ASSIGNMENTS` and includes
  `../module.mk`. The pull targets are empty.
- The recipes do not pass `--no-cache`; for a verified write push single
  files with `canvaslms --no-cache pages edit -c '^datintro26$' -f <file>`
  (or `assignments edit`). The stamps live in the main checkout, so from
  a worktree always push single files this way.
- A FeedbackFruits item's file carries only metadata and an HTML comment
  saying so; text written below the front matter becomes the assignment
  description on the next push.

## The Jekyll site (GitHub Pages)

The same Markdown files are the course website (`_config.yml`,
`_layouts/default.html`, `pages/index.md` as the start page). The order of
the site is `_data/navigation.yml` (prev/next links): add a page there when
it should be on the site. Rules from the README:

- Do not start a body with an H1: Canvas shows the title itself and the
  layout prints `page.title`.
- The Jekyll keys `id:` and `authors:` are ignored by canvaslms; keep them.
- Embedded media (`<iframe>`, `<video>`) stay in the `.md` as raw HTML
  blocks, the full element as its own paragraph; after any re-export
  compare the `<iframe>` count in Canvas's HTML against the file before
  pushing (only `modules/overview/intro-lecture.md` has one).
- To refresh positions after reordering in the Canvas UI, re-export with
  `canvaslms pages view`/`assignments view`; never pull a whole page back
  over a file (the skill's rule 1).

`make` at the root runs the topic Makefiles listed in `modules/Makefile`
(pandoc HTML, the grading directories, `toplist/top.pdf`); no deck
directory is in that list yet, so the decks build only by `make` in their
own directory.
