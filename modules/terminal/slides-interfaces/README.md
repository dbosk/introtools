# Interfaces / Gränssnitt

The deck *Interfaces* (English) and *Gränssnitt* (Swedish), built from one
literate source, `contents.nw`, as `notes.pdf`, `slides.pdf` (English) and
`notes-sv.pdf`, `slides-sv.pdf` (Swedish):

```bash
~/.claude/skills/didactic-decks/scripts/build_deck.sh --deck .
```

or `make` (pass `LATEXFLAGS="-shell-escape -interaction=nonstopmode"` when
no one is there to answer LaTeX's prompt).

## Build dependencies

Besides the usual TeX Live, noweb, PythonTeX and didactic (v2.18.1 or
later):

- `pwsh` (PowerShell 7, e.g. `snap install powershell --classic`): the
  `Get-ChildItem` example is a real run in `demo/`.  It runs without a
  terminal and asks for names only, so its output holds no user name,
  dates or colour codes.  A PowerShell start takes about ten seconds, and
  the run has a two-minute timeout.
- the locales `en_GB.UTF-8` and `sv_SE.UTF-8`: each edition sets
  `LC_ALL` for its runs.

## Files

- `demo/` is the directory the runs list (tracked; it holds one hidden
  file, `.settings`).  The file-manager figure shows this directory.
- `examples/` is generated: the two Python programs and
  `generate-reports.sh` are tangled from `contents.nw`, and
  `examples/reports/` (3287 files) is made by running that script.
- `litteratursokning/unix-lineage-full.tex` and `-full-sv.tex` are the
  hit lists of Appendix D, exported with `scholar sessions export
  unix-lineage -f table --bearing-only --lang en|sv`.

## Figures

| File | Source and licence |
|---|---|
| `figs/gui-files-demo.png` | GNOME Files on `demo/`, a screenshot taken for the course in a clean home directory |
| `figs/cli-cmd-dir.png` | [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:Dir_command_in_Windows_Command_Prompt.png), Loadmaster (David R. Tribble), public domain |
| `figs/gui-ubuntu.png` | [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:Ubuntu_24.04_LTS_default_desktop_-_English.png), Canonical Inc, GPL |
| `figs/gui-android.png` | [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:Android_14_Go_Home_Screen.png), Paowee, Apache License 2.0 |

Still to supply: desktops of Windows and macOS and the home screen of an
iPhone for `fig:gui-systems`.  No free image was found; Microsoft allows
screenshots that the author takes himself (credit "Used with permission
from Microsoft."), Apple's terms need written consent.

The recorded lecture that the deck replaces:

- [Video: Briefly on interfaces][youtube]
- [FeedbackFruits: Briefly on interfaces][fbf]

[youtube]: https://youtu.be/ma5UlQIsO6k
[fbf]: https://eu.feedbackfruits.com/courses/activity-course/2b0978ba-b60f-4c2e-8371-2f5676b286cb
