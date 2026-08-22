# introtools: An intro to some basic (CS) tools

The course material:

 - `terminal` introduces the terminal (`bash`).
 - `collaboration` introduces `tmate` and other remote tools and `git`.
 - `latex` introduces report writing using LaTeX.

## Canvas sync

Every page and assignment of the Canvas course lives as a Markdown file with
YAML front matter under `modules/<topic>/`; the front matter identifies the
Canvas item and the body is its content.  Pushing is done with the
[`canvaslms`](https://github.com/dbosk/canvaslms) CLI through
`modules/module.mk` (same setup as the tilkry course):

```bash
cd modules/terminal
make push              # push changed pages and assignments (stamped in .pushed-*.d/)
make push-pages        # only pages
make push-assignments  # only assignments
make force-push        # re-push everything, creating missing items (--create)
cd modules && make push  # all module directories
```

The target course is `COURSE ?= datintro26` in `modules/module.mk` (override
with `make COURSE=datintro27 push`).  Each directory's Makefile lists its files
in `PAGES` and `ASSIGNMENTS` and includes `../module.mk`.

Front matter (as exported by `canvaslms pages view` / `assignments view`):

```yaml
---
title: The terminal          # pages; assignments use `name:`
regex: ^The terminal$        # how the item is found: matched against title AND URL slug
                             # (assignments: name and id). Keep it free of dates etc.
published: true
modules:                     # authoritative: add/remove from modules and set position
- module: ^The terminal$     # regex on the Canvas module name
  position: 17               # absolute 1-based position, counting SubHeader/ExternalUrl items
---
```

Pages additionally carry `front_page` and `editing_roles`; assignments carry
`due_at`, `unlock_at`, `lock_at`, `points_possible`, `rubric`.  The Jekyll keys
`id:`/`authors:` are ignored by canvaslms.  Bodies are converted Markdown→HTML
by pandoc inside canvaslms; do not start the body with an H1 (Canvas shows the
title itself; the GitHub Pages layout prints `page.title`).

The 24 "Learning material" items are FeedbackFruits external-tool assignments
with an empty description in Canvas; their files carry the metadata only.
SubHeader and ExternalUrl module items are not managed from the repo.  To seed a
new year's course, copy it in Canvas, set `COURSE`, and run `make force-push`;
to refresh positions after reordering in the Canvas UI, re-export with
`canvaslms pages view`/`assignments view` rather than editing many files.

Embedded media: the Markdown export of `canvaslms pages view` (before the
iframe fix) drops `<iframe>`/`<video>` elements, and pushing such a file
removes the embed from Canvas.  Keep embeds in the `.md` as raw HTML blocks
(the full `<iframe …></iframe>` as its own paragraph; pandoc passes raw HTML
through), and after any re-export compare
`canvaslms --no-cache pages view --html … | grep -c '<iframe'` against the
file before pushing.  Currently only `modules/overview/intro-lecture.md` has
an embed.
