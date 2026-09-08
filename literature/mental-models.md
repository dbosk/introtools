# Students' mental models and misconceptions: literature notes

Literature backing for the claims underlying the course revision planned in
[../evaluation/improvements.md](../evaluation/improvements.md), particularly
the computer-deconstruction introduction and the terminal, file-system, Git
and LaTeX modules. Every reference lives in
[mental-models.bib](mental-models.bib) with a provenance block (claim, exact
search query, pick rationale, verbatim quote, verification level). Entries
marked TODO there are verified only to the stated level.

## The terminal / CLI (course priority #1)

**What the literature supports:**

- The shell and Git are widely taught, but there is *little research* on how
  students learn the shell or how to teach it [Winder2024ShellTutor,
  ITiCSE 2024]. Their Shell Tutor (an intelligent tutoring system for shell
  and Git) is openly available and already noted in issue #114 as adaptable
  material.
- Producing composite Unix commands is genuinely hard, and there is a
  qualitative novice/expert difference in what help works: novices and
  intermediates are helped by *concrete* information, experts by *abstract*
  information [Doane1992UnixPrompts]. Implication: getting-started material
  must be concrete (literal commands, actual output), and abstraction
  ("a pipe connects any producer to any consumer") comes second. This
  matches the 2025 evaluation complaint that videos are pitched at a high
  level.
- Users persistently fail to adopt faster expert methods even when available
  [Cockburn2014NoviceExpert, CSUR] — students will not switch from the GUI
  to the terminal just because it is faster; the course must engineer the
  transition (which supports the motivation theme and the deconstruction
  intro).
- Beginning CS students are commonly kept away from the CLI (visual
  environments first) [Dillon2012MentalModels — full text still to be
  checked], so datintro students plausibly arrive with no CLI exposure at
  all.

**Mental model of the machine (backs the deconstruction intro):**

- The "notional machine" — an abstract computer for executing programs — is
  identified by a whole research literature as a major challenge for
  novices, and should be an *explicit learning objective*
  [Sorva2013NotionalMachines, TOCE review]. The idea originates in
  [DuBoulay1981BlackBox] (glass box vs black box; full text still to be
  checked before quoting).
- Novice difficulties are tied to inaccurate mental models and prior
  knowledge [QianLehman2017Misconceptions, TOCE review;
  BenAri1998Constructivism — the famous "no effective model of a computer"
  line still needs full-text verification before we attribute it].
- Applied to datintro: the hardware→OS→kernel+shell deconstruction is
  exactly a notional machine for the *system* level (rather than program
  execution). Sorva's argument transfers: make the model explicit, teach
  with it, assess against it.

## File systems (course priority within terminal module)

**What the literature supports:**

- Fluent users retrieve files overwhelmingly by *navigating folder
  hierarchies* (56–68% of retrievals) and search only as a last resort
  (4–15%), a preference that better search engines did not change
  [Bergman2008Navigation, TOIS].
- fMRI evidence suggests why: folder navigation recruits the brain's
  real-world spatial-navigation structures, while search recruits linguistic
  processing [Benn2015BrainFolders, Sci Rep]. The folder hierarchy is
  effectively a *spatial* skill.
- Folders also serve thinking and organizing, not just retrieval; search and
  recency lists could not functionally replace them in a study that forced
  participants to work folder-free [Whitham2017Folder]. Classic PIM work
  agrees: location-based finding is preferred for its reminding function
  [BarreauNardi1995].

**The gap (be careful):** the popular claim that *current students* no
longer understand files and folders is, as far as this search round found,
**journalistic, not peer-reviewed** [Chin2021FileNotFound, The Verge 2021 —
flagged as anecdote in the .bib]. What the peer-reviewed literature gives
us: (a) hierarchical navigation is the skill fluent users actually rely on,
and it is spatial in nature; (b) nothing yet on cohort-level decline.
For the course material, phrase it as "the file tree is a spatial skill the
terminal assumes and the course must build" — backed — rather than "Gen Z
can't use folders" — unbacked. Our own grading data (e.g., path errors in
the terminal lab) could substantiate the local version of the claim and
would be worth analyzing (candidate research note; cf. issue #50).

**Variation-theory connection:** `cd`/`ls`/paths are a natural contrast
space: same tree seen through the GUI file manager and through the shell
(fusion of the two shells over the invariant kernel/file system — the
deconstruction intro again); absolute vs relative paths as a dimension of
variation over an invariant target file.

## Git / version control

- Students confuse Git's concepts in specific, nameable ways: e.g.,
  conceptualizing a *branch as a directory* and trying to `cd` into it —
  and this is "in part attributed to the use of the command line client";
  the authors recommend visual diagrams and teaching branches as pointers
  into the commit graph [IsomottonenCochez2014, full text read]. Directly
  supports issue #10 (visualize Git) and the planned Git revision.
- Part of the difficulty is the *tool's design*, not the students: Git's
  well-known difficulties can be explained as concept–purpose misfits
  [DeRossoJackson2016Gitless, OOPSLA]. Useful framing for the material: some
  confusion is legitimate and expected; name it rather than implying the
  student is at fault (also relevant for theme K, presupposed knowledge).
- Recent multi-institution work (GitKit) is cataloguing student
  misconceptions in basic GitHub workflows [Postner2026GitMisconceptions —
  poster, low evidence weight, but the GitKit environment itself may be
  useful; watch this group for the full paper].

## LaTeX

- The only controlled comparison found: LaTeX users (including experts) were
  slower and made more errors than Word users on continuous/tabular text,
  while *enjoying their tool more*; equations were LaTeX's strong case
  [Knauff2014Latex — mind the scope: professionals, text-typing tasks].
  Implication for the "Why LaTeX?" material (#91): do not sell LaTeX with
  general efficiency claims — sell it on equations, structure, versionable
  plain text (which ties into Git), and required formats; and set the
  expectation that the learning curve is real.
- LaTeX-specific education research appears thin; nothing found on students'
  misconceptions of markup/compilation. Gap worth noting: the TeX-error
  material (#119) will have to lean on general error-message and
  worked-example research rather than LaTeX-specific studies.

## Variation theory in computing education (the plus)

- Thuné & Eckerdal applied phenomenography + variation theory to
  programming conceptions of *non-CS engineering students* — the closest
  published population to datintro's — and demonstrated designed patterns
  of variation working in a lab assignment [ThuneEckerdal2009Variation],
  later extending the approach to analyze theory–practice interaction in
  lab sessions [ThuneEckerdal2018Lab].
- Programming environments are a natural medium for variation: students
  vary an aspect, observe the effect, and "enter into a loop of discovery
  and understanding" [Svensson2020Affordances]. The same vary-and-observe
  loop is available in the shell (change a flag, rerun; change a path,
  rerun) and in Git (same command, different repository state) — a concrete
  design pattern for the revised exercises.
- Theory base (Marton & Booth, *Learning and Awareness*; Marton, *Necessary
  Conditions of Learning*; Lo, *Variation Theory and the Improvement of
  Teaching and Learning*) is not re-verified here — these are already the
  working references of the vt-* projects.

## Search protocol (this round, 2026-07-18)

Find→verify→record per the backing-claims protocol; per-reference provenance
(exact query, pick rationale, verbatim quote, verification level) is in
[mental-models.bib](mental-models.bib). Searches ran via `scholar` against
DBLP, OpenAlex and Semantic Scholar (S2 rate-limited during part of the
session); abstracts via the OpenAlex API; full texts via open repository
copies (JYU, MIT DSpace, Nature, PLOS, APS, Lancaster). Broad queries
("students mental models file system") were dominated by irrelevant
medical/ML hits and replaced by phrase and author-anchored queries — the
retained ones are in the `FOUND-VIA` lines. Discarded as unverifiable or
inaccessible this round: Norman's 1981 *The trouble with Unix* (no
verifiable source located), Feliciano et al. 2016 (abstract truncated;
redundant next to the retained Git sources), Bergman et al. 2008
folders-vs-tags (redundant), and any use of the Verge piece as evidence.
Full-text TODOs: DuBoulay1981BlackBox, BenAri1998Constructivism,
Dillon2012MentalModels (all flagged in the .bib).
