# Improvement plan based on student evaluations (datintro20--25)

This document inventories the issues raised in the student evaluations of
datintro20 through datintro25 and turns them into a prioritized plan for
improving the course material. Sources:

- [analysis.md](analysis.md) (2020 and 2023 analyses),
- [changelog.md](changelog.md) (2020 changes and suggestions),
- [datintro23.md](datintro23.md) (LEQ 6 and grade statistics),
- [datintro25.pdf](datintro25.pdf) (course analysis for DD1301 HT25, CTFYS
  instance: survey results with free-text answers, 34 of 112 respondents),
- the per-year tracking issues on GitHub:
  [#20](https://github.com/dbosk/introtools/issues/20) (2020),
  [#74](https://github.com/dbosk/introtools/issues/74) (2021),
  [#89](https://github.com/dbosk/introtools/issues/89) (2022, never analyzed),
  [#111](https://github.com/dbosk/introtools/issues/111) (2023, includes a
  prioritized development list),
- the child issues these spawned (many labeled `student evaluation`),
- the tracking issue [#151](https://github.com/dbosk/introtools/issues/151),
  which breaks this plan into workable issues (#129--#150 plus the
  pre-existing ones) in the `material-improvements` milestone.

Themes are ordered by priority below; priority is recurrence-weighted: a
theme that students bring up every year outranks one mentioned once, and the
most recent round (2025) weighs heaviest since it reflects the current state
of the material. This puts the assessment-vs-course confusion and the video
platform first --- both recur since 2021 and dominated the 2025 free-text
answers --- while Git (no 2025 complaints) and motivation (2025
counter-signal) move down from where the 2020--23 data alone would put them.

Literature backing for the mental-model and misconception claims that the
revision builds on (terminal, file systems, Git, LaTeX, variation theory) is
collected in [../literature/mental-models.md](../literature/mental-models.md)
with verified references in
[../literature/mental-models.bib](../literature/mental-models.bib).

## Material themes, in priority order

### 1. Assessment is not the course: what to focus on when (theme F)

- Sources: 2023 ("videor ... otroligt mycket ny info ... som inte behövdes i
  uppgifterna"; #111 analysis: tell students that what they learn and what we
  assess differ --- we assess only the basics); 2021 (#72 clarify focus:
  terminal and Git first, LaTeX can wait, grading runs all year); 2025
  (several respondents: make it much clearer that the videos are *not*
  mandatory for passing, only the final task is; one took notes on every
  video before realizing they weren't part of the grade; videos pitched at a
  high level while the examination asks for the minimum).
- Modules affected: `modules/overview/`, course intro on Canvas, and the
  intro of every module.
- Open issues: #72.
- Proposed changes: state explicitly in the course introduction and in each
  module what is assessed (the basics) versus what is offered for those who
  want more; mark optional/advanced sections as such.

### 2. Interactive video material and platform (theme G)

- Sources: 2021 (mixed reception: good for seeing others' questions, but
  "messy and unclear where the info could be found"); 2023 (want correct
  answers shown after answering; others' answers spoil the questions ---
  "feedbackloop är helt katastrofalt"; want to be able to turn off
  comments/questions); 2025 (the platform itself, FeedbackFruits, is now the
  dominant complaint: forced stepping through interactive elements,
  "delta i diskussion" steps with nothing to contribute so discussions fill
  with "ok!" comments, easy to miss a discussion and be blocked from
  progressing, unintuitive UI, videos that fail to load, the built-in video
  player called "helt värdelöst och helt opedagogiskt"; videos are hard to
  find and there is no marker for having completed one; "interaktiva videos
  är fint i teorin men FeedbackFruits är långt ifrån en bra implementation").
- Modules affected: all video material.
- Open issues: covered by #111's priority item "revise the teaching material
  and questions in it (8 h)".
- Proposed changes: add correct answers or suggested solutions to all
  in-video questions (some have them, some lack them); investigate platform
  settings for hiding other students' answers until after answering; drop
  interactive elements that force participation without adding learning
  (discussion checkpoints); offer the text guide as an explicit, equal
  alternative to the videos --- one 2025 student discovered only at the end
  that the guide alone sufficed ("Var tydligare med detta! Ha fler val!");
  reconsider the platform or provide plain video links as fallback.

### 3. Git module: too shallow and unclear (theme C)

Raised every year 2020--23; quiet in 2025 (only positive mentions).

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

### 4. Motivation and relevance: "why do I need this?" (theme A)

- Sources: 2020 ("better motivation why the terminal is more powerful",
  automation examples); 2021 (#75 make challenges more stimulating, #78 make
  the addressed issues interesting, #80 explain why the course is needed per
  programme; #76, closed, connected the terminal to programming with the
  GUI-vs-terminal-vs-script demo).
- Modules affected: `modules/overview/`, plus the intro of every module.
- Open issues: #75, #78, #80, #57 (purpose of Git), #91 (Why LaTeX? video),
  #64 (intro video explaining the course).
- Counter-signal 2025: "kursen känns relevant och jag har utvecklat min
  kompetens" scored 4.6, the highest of all statements, and free-text calls
  the course "en ovärderlig resurs" --- motivation may be less of a problem
  for the CTFYS cohort than for earlier, broader cohorts.
- Proposed changes: each module opens with a concrete, programme-relevant
  use case; repeat the #76 demo pattern (do in GUI, redo, do in terminal,
  script it) in more modules.
- Deconstruct the computer in the course intro, borrowing the basics from
  the OS courses: the computer (hardware) runs an operating system
  (software), which consists of a kernel and a shell. The GUI they already
  use *is* a shell; the terminal is another shell to the same kernel ---
  same computer, same OS, only the interface varies. This gives complete
  beginners the mental model that theme K says they lack (cf. #50, what are
  the students' mental models of a computer?, and #49, the virtual-machine
  concept) and removes the "terminal = advanced/arcane" framing: it's not a
  different computer, just a different shell.
- A modern motivating example that builds directly on that deconstruction:
  AI coding agents (Claude Code and the like) work in the terminal with
  shell commands and Git. LLMs are themselves text-based, so the text shell
  is their native interface --- which is why agentic AI is so aligned with
  the terminal. To direct such agents, review what they did and fix what
  they got wrong, you need exactly the terminal and Git skills this course
  teaches. This reframes the course from "old tools" to "the interface to
  current tools".

### 5. Operating-system differences (theme B)

- Sources: 2020 ("more detailed coverage for how to get started on different
  OSes", #42 closed); 2021 ("the commands are different on different
  computers; maybe a document that translates between systems"); 2023
  ("guides for other operating systems").
- Modules affected: `modules/terminal/`, `modules/overview/`.
- Open issues: #44 (WSL video), #52 (bash exists on Windows), #60 (Linux GUI
  apps on Windows 11).
- 2025: "lära oss fixa wsl och tkinter" --- WSL setup (and getting GUI
  toolkits like tkinter working there) is still a pain point, and matters
  for the programming course that follows.
- Proposed changes: a getting-started guide per OS (Windows/WSL, macOS,
  Linux) and a command translation table where commands differ.

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
  ("add more formative feedback in the grading script"); 2025 (automated
  grading appreciated overall, but "man måste göra precis rätt för att få
  poäng" --- exact-match checking frustrates; easy to see whether one
  passed was praised).
- Affected: `modules/*/grading/` scripts.
- Open issues: #79 (practice without grading), #65 and #21 (better LaTeX
  checks/feedback), #66 (repo URL in feedback), #32 (grading rubrics), #24
  (manual checks), #117 (grader Docker image).
- Proposed changes: more formative feedback in the grading output (the
  ongoing `review-all-modules` branch work on grading scripts contributes
  here); tolerate near-misses or explain exactly what differed; investigate
  on-demand grading.

### 9. Canvas structure and course introduction (theme I)

- Sources: 2023 ("det var ibland oklart vad man behövde göra för att gå
  vidare ... det kronologiska systemet i Canvas"; "lite tydligare
  instruktioner på Canvas"); #111 priority list ("revise the introduction to
  the course for the students, 4 h"); 2025 (course-information organization
  scored lowest of the survey statements, 3.7; align instructions with what
  the following basic programming course expects; information before the
  first session --- several students missed the room division).
- Proposed changes: revise the Canvas course introduction and module
  progression so the next step is always evident; explain the chronological
  unlock system. Note the counterpoint: the 2025 study plan also got praise
  ("Väldigt enkel och tydlig. Står exakt vad det är man ska göra"), so the
  problem is discoverability of videos and progression state rather than
  the plan itself.

## Process themes (not course material)

### TA and teacher support (theme J)

- Sources: 2023 (TAs solved problems *for* students rather than *with* them;
  the teacher felt unavailable; #111 priority list: "instructions for TAs,
  2 h"); 2025 (TAs got explicit praise --- "mycket hjälpsamma och
  värdefulla" --- but students want support outside scheduled lab hours).
- Actions: write TA instructions focusing on student understanding; tell
  students the division of labor (TAs for practical problems, teacher for
  questions about the material, e.g. via in-video questions); point to
  allmänhandledningen for tutoring after course end (#82, #107).

### Language and accessibility (theme K)

- Sources: 2021 (#85: simpler language that doesn't presuppose any knowledge
  of computers); 2020 (lectures "too intense and at a too advanced level";
  women students reported lower on LEQ statements than men); 2025 ("en
  bättre introduktion till begrepp som git och terminalen för de som aldrig
  har hört talas om det innan"; the amount of information feels like more
  than 1.5 hp for a beginner course, "men all information var nödvändig").
- Actions: review the material for presupposed knowledge; treat #85 as a
  review criterion for every module revision rather than a one-off task.
  The hardware/OS/kernel/shell deconstruction proposed under theme 4 is the
  concrete answer to the 2025 request for a better introduction to the
  concepts: it presupposes nothing and defines the terms the rest of the
  course relies on.

## What to keep (explicit positives)

Consistent across 2021 and 2025: the asynchronous own-pace format, no
deadlines, flexibility around other courses, recorded videos one can return
to, automated grading with visible pass status, helpful TAs, and the short
focused scope. The 2025 survey scores workload (4.4), examination
meaningfulness (4.3) and relevance (4.6) high. Improvements should not
sacrifice these.

## Meta-observations and follow-ups

- Completion rate is around 50% and lower than datintro20 (datintro23: 191 P,
  198 F; see [datintro23.md](datintro23.md)). The datintro25 course analysis
  (CTFYS instance) reports 48 P of 112 registered at analysis time. Worth
  tracking per revision.
- The 2022 evaluation (#89) was never analyzed; the raw data may still exist
  and could be folded into this inventory.
- No datintro24 evaluation data is in the repository or on GitHub (searched
  github.com issues in this and related repos); the datintro25 course
  analysis covers only the CTFYS instance (34 of 112 responded). Collect
  what exists for datintro24 and the other datintro25 instances.
- The prioritized development list in #111 (TA instructions 2 h, intro
  revision 4 h, material and question revision 8 h; expand Git and SSH,
  literate shell script examples, better LaTeX packages) was never executed;
  it is subsumed by the priorities above.
