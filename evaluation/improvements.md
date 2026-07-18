# Improvement plan based on student evaluations (datintro20--23)

This document inventories the issues raised in the student evaluations of
datintro20 through datintro23 and turns them into a prioritized plan for
improving the course material. Sources:

- [analysis.md](analysis.md) (2020 and 2023 analyses),
- [changelog.md](changelog.md) (2020 changes and suggestions),
- [datintro23.md](datintro23.md) (LEQ 6 and grade statistics),
- the per-year tracking issues on GitHub:
  [#20](https://github.com/dbosk/introtools/issues/20) (2020),
  [#74](https://github.com/dbosk/introtools/issues/74) (2021),
  [#89](https://github.com/dbosk/introtools/issues/89) (2022, never analyzed),
  [#111](https://github.com/dbosk/introtools/issues/111) (2023, includes a
  prioritized development list),
- the child issues these spawned (many labeled `student evaluation`).

Themes are ordered by priority below; priority is recurrence-weighted: a theme
that students bring up every year outranks one mentioned once.

## Material themes, in priority order

### 1. Git module: too shallow and unclear (theme C)

The strongest recurring theme; raised every year.

- Sources: 2020 ("revise the Git lab, it was mentioned as a bit unclear",
  #71); 2021 (#83 more on collaborating on GitHub, #86 learn Git beyond the
  CLI); 2023 ("mer genomgång för GitHub-delen", more videos on `git commit`
  and `git push`, OverLeaf-to-GitHub transfer #69); #111's priority list
  ("Expand on Git").
- Modules affected: `modules/git/`, `modules/git_commits/`,
  `modules/collaboration/`.
- Open issues: #114 (in depth: merge conflicts, pull requests, revert; 4--8 h
  version wanted for reuse in another course), #71, #83, #86, #10 (visualize
  Git), #98 (don't keep working in Public), #26 (prerecord Git lecture), #69,
  #1.
- Proposed changes: revise the Git lab for clarity; add material on commit,
  push and the GitHub part of the assignment specifically; add pull-request
  collaboration material; show Git through more than one interface (CLI plus
  an editor integration); cover the OverLeaf-GitHub workflow.

### 2. Motivation and relevance: "why do I need this?" (theme A)

- Sources: 2020 ("better motivation why the terminal is more powerful",
  automation examples); 2021 (#75 make challenges more stimulating, #78 make
  the addressed issues interesting, #80 explain why the course is needed per
  programme; #76, closed, connected the terminal to programming with the
  GUI-vs-terminal-vs-script demo).
- Modules affected: `modules/overview/`, plus the intro of every module.
- Open issues: #75, #78, #80, #57 (purpose of Git), #91 (Why LaTeX? video),
  #64 (intro video explaining the course).
- Proposed changes: each module opens with a concrete, programme-relevant
  use case; repeat the #76 demo pattern (do in GUI, redo, do in terminal,
  script it) in more modules. A modern motivating example: AI coding agents
  (Claude Code and the like) work in the terminal with shell commands and
  Git --- to direct them, review what they did and fix what they got wrong,
  you need exactly the terminal and Git skills this course teaches. This
  reframes the course from "old tools" to "the interface to current tools".

### 3. Operating-system differences (theme B)

- Sources: 2020 ("more detailed coverage for how to get started on different
  OSes", #42 closed); 2021 ("the commands are different on different
  computers; maybe a document that translates between systems"); 2023
  ("guides for other operating systems").
- Modules affected: `modules/terminal/`, `modules/overview/`.
- Open issues: #44 (WSL video), #52 (bash exists on Windows), #60 (Linux GUI
  apps on Windows 11).
- Proposed changes: a getting-started guide per OS (Windows/WSL, macOS,
  Linux) and a command translation table where commands differ.

### 4. Assessment is not the course: what to focus on when (theme F)

- Sources: 2023 ("videor ... otroligt mycket ny info ... som inte behövdes i
  uppgifterna"; #111 analysis: tell students that what they learn and what we
  assess differ --- we assess only the basics); 2021 (#72 clarify focus:
  terminal and Git first, LaTeX can wait, grading runs all year).
- Modules affected: `modules/overview/`, course intro on Canvas.
- Open issues: #72.
- Proposed changes: state explicitly in the course introduction and in each
  module what is assessed (the basics) versus what is offered for those who
  want more; mark optional/advanced sections as such.

### 5. Interactive video material (theme G)

- Sources: 2021 (mixed reception: good for seeing others' questions, but
  "messy and unclear where the info could be found"); 2023 (want correct
  answers shown after answering; others' answers spoil the questions ---
  "feedbackloop är helt katastrofalt"; want to be able to turn off
  comments/questions).
- Modules affected: all video material.
- Open issues: covered by #111's priority item "revise the teaching material
  and questions in it (8 h)".
- Proposed changes: add correct answers or suggested solutions to all
  in-video questions (some have them, some lack them); investigate platform
  settings for hiding other students' answers until after answering.

### 6. LaTeX module (theme D)

- Sources: 2023 ("mer invecklad modul inom LaTeX" --- more advanced content);
  #111 priority list ("LaTeX should be revised to use better packages").
- Modules affected: `modules/latex/`.
- Open issues: #92 (getting-started video), #91 (Why LaTeX?), #65 (better
  grading feedback), #70 (align with iskriv DA1600), #87 (chemistry
  package), #119 (how to approach TeX errors).
- Proposed changes: revise to modern packages; add an optional advanced
  section; add material on reading and resolving TeX errors; add
  programme-specific packages (e.g. chemistry).

### 7. Terminal and SSH modules (theme E)

- Sources: 2020 (terminal is where students need the most time; material
  improved per #20); #111 priority list (expand on SSH and what it actually
  does, the ssh-cycle mistake IT complains about, incorporate literate shell
  scripts as examples).
- Modules affected: `modules/terminal/`, `modules/ssh/`.
- Open issues: #115 (video on orientation over SSH), #48 (SSH keys and
  ssh-agent), #55 and #120 (terminal game / bashcrawl as practice).
- Proposed changes: expand the SSH material (what SSH does, common mistakes);
  use literate shell scripts as worked examples in the terminal module;
  consider bashcrawl-style practice.

### 8. Grading and feedback loop (theme H)

- Sources: 2023 (an on-demand "grade my own work" button rather than a batch
  script grading everyone --- "95% antagligen inte är uppdaterat"); 2020
  ("add more formative feedback in the grading script").
- Affected: `modules/*/grading/` scripts.
- Open issues: #79 (practice without grading), #65 and #21 (better LaTeX
  checks/feedback), #66 (repo URL in feedback), #32 (grading rubrics), #24
  (manual checks), #117 (grader Docker image).
- Proposed changes: more formative feedback in the grading output (the
  ongoing `review-all-modules` branch work on grading scripts contributes
  here); investigate on-demand grading.

### 9. Canvas structure and course introduction (theme I)

- Sources: 2023 ("det var ibland oklart vad man behövde göra för att gå
  vidare ... det kronologiska systemet i Canvas"; "lite tydligare
  instruktioner på Canvas"); #111 priority list ("revise the introduction to
  the course for the students, 4 h").
- Proposed changes: revise the Canvas course introduction and module
  progression so the next step is always evident; explain the chronological
  unlock system.

## Process themes (not course material)

### TA and teacher support (theme J)

- Sources: 2023 (TAs solved problems *for* students rather than *with* them;
  the teacher felt unavailable; #111 priority list: "instructions for TAs,
  2 h").
- Actions: write TA instructions focusing on student understanding; tell
  students the division of labor (TAs for practical problems, teacher for
  questions about the material, e.g. via in-video questions); point to
  allmänhandledningen for tutoring after course end (#82, #107).

### Language and accessibility (theme K)

- Sources: 2021 (#85: simpler language that doesn't presuppose any knowledge
  of computers); 2020 (lectures "too intense and at a too advanced level";
  women students reported lower on LEQ statements than men).
- Actions: review the material for presupposed knowledge; treat #85 as a
  review criterion for every module revision rather than a one-off task.

## Meta-observations and follow-ups

- Completion rate is around 50% and lower than datintro20 (datintro23: 191 P,
  198 F; see [datintro23.md](datintro23.md)). Worth tracking per revision.
- The 2022 evaluation (#89) was never analyzed; the raw data may still exist
  and could be folded into this inventory.
- No evaluation data for datintro24/25 is in the repository although the
  course still runs; collect and add it.
- The prioritized development list in #111 (TA instructions 2 h, intro
  revision 4 h, material and question revision 8 h; expand Git and SSH,
  literate shell script examples, better LaTeX packages) was never executed;
  it is subsumed by the priorities above.
