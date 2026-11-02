---
title: Learning Outcomes
authors:
  - Daniel Bosk <dbosk@kth.se>
---
# Course learning outcomes

After the course the students should be able to (`pages/index.md`, and the
Canvas outcomes of datintro26):

- 10451: obtain access to the computational environment on KTH Royal
  Institute of Technology,
- 10450: control the computer environment via the command line,
- 10452: handle submissions of program code with version control tools,
- 10453: create and compile technical reports.

The code is the Canvas outcome id. Each outcome is the single rubric
criterion of one lab, a 1-point assignment ("Meets expectations" / "Does
not meet expectations"); no other rubric row in datintro26 carries an
outcome (the learning-material assignments are scored on rows such as
"Viewed" and "Write reflection"). The course also holds two unused
outcomes with the titles of 10451 and 10450 (ids 10448 and 10449); no
rubric refers to them.


# Outcomes by lab, module and deck

Deck titles are those in `modules/CLAUDE.md`, where the git and LaTeX titles
are still working titles.

## 10451: obtain access to the computational environment at KTH

- Lab: *Guide to accessing the terminal* (`modules/ssh/guide.md`, Canvas
  module *The terminal*): log into `student-shell` with `ssh`, also from a
  lab computer. Rubric text: "obtain access to the computational
  environment at KTH, through SSH (which is equivalent to logging into an
  Ubuntu computer in the lab)".
- Module: `ssh` (guides per operating system, no deck); finding a local
  terminal is in `terminal` (`find-terminal-*.md`).
- Decks: none. *Interfaces* argues why a command-line interface is
  worth having, but no deck shows how to reach one.

## 10450: control the computer environment via the command line

- Lab: *The terminal* (`modules/terminal/terminal.md`, Canvas module *The
  terminal*): on `student-shell`, go to `~/Public`, create `datintro`,
  redirect `history` into `history.txt` there (permissions inherited from
  the directory). The lab text opens with McIlroy's word-frequency
  pipeline and ends by explaining it part by part.
- Module: `terminal`.
- Decks: *Interfaces*, *Commands and the file system*, *Pipes and
  redirection*, *Scripts*, *Exercise: The terminal*.
- The LaTeX lab's text says it also assesses this outcome (the listing of
  the command history), but its rubric codes only 10453.

## 10452: handle submissions of program code with version control tools

- Lab: *Git* (`modules/git/git.md`, Canvas module *Collaboration*): on
  KTH GitHub, add files to the assessment repository, change the README,
  commit and push, from the command line.
- Modules: `git`, `git_commits`; `collaboration` (tmate, pair
  programming) is in the same Canvas module but has no deck.
- Decks: *Git version control*, *Good commits* (and its exercises),
  *Exercise: Git*.
- The LaTeX lab's text says it also assesses this outcome (the sources
  are committed and pushed), but its rubric codes only 10453.

## 10453: create and compile technical reports

- Lab: *Writing a report in LaTeX* (`modules/latex/latex.md`, Canvas
  module *Report writing*): an `article` with a title, a table of
  contents, a figure, a citation with a BibTeX reference, and a
  `listings` listing of the command history; the sources pushed to KTH
  GitHub and compiled by the teachers.
- Module: `latex`.
- Decks: *\LaTeX*, *Exercise: \LaTeX*.

## The overview

*Course overview* (`overview/slides`) presents what the course teaches
(terminal, version management, \LaTeX) and how it runs (material, labs);
it meets no outcome itself, so its objectives carry no code.
