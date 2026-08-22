---
id: latex
authors:
  - Daniel Bosk <dbosk@kth.se>
name: Writing a report in LaTeX
regex: ^Writing a report in LaTeX$
due_at: null
unlock_at: null
lock_at: null
points_possible: 1.0
published: true
rubric:
- id: _9276
  points: 1.0
  description: create and compile technical reports
  long_description: <p>You should be able to create and compile technical reports
    using LaTeX. LaTeX is a document preparation system originating from the needs
    of computer science and mathematics. However, it's very useful for all kinds of
    engineering subjects, like physics or chemistry. It helps automating all document
    layout, such as table of contents, figure placement, references, etc.</p>
  ignore_for_scoring: false
  criterion_use_range: false
  ratings:
  - id: blank
    points: 1.0
    description: Meets expectations
    long_description: ''
  - id: blank_2
    points: 0.0
    description: Does not meet expectations
    long_description: ''
  outcome_id: 10453
  vendor_guid: null
modules:
- module: ^Report\ writing$
  position: 7
---

[LaTeX](https://en.wikipedia.org/wiki/LaTeX) is a document preparation
system. LaTeX is based on [TeX](https://en.wikipedia.org/wiki/TeX),
which is a typesetting engine that [can do
anything](https://www.tug.org/texshowcase/).

The main purpose of these systems, and the reason we want you to learn
this, is to prepare high quality documents and reports. LaTeX lets you
focus on the contents of the report: you say what should go in, if
anything should be *emphasized*, what's the contents of figures, the
data for references etc. and LaTeX will put this content together in a
form that is *comforable* to read and aesthetically pleasing.

So what about [word
processors](https://en.wikipedia.org/wiki/Word_processor) like Microsoft
Word of LibreOffice Writer? Well, word processors are to readability as
food processors are to restaurant critics. Of course, it's possible to
achieve good results with a word processor too, it's just that it
requires much more effort than most people imagine
([this](http://tug.ctan.org/info/memdesign/memdesign.pdf) brings up a
few of the things that one must ensure manually with the word
processor). So using a system like LaTeX is actually makes better
results more easy to achieve.

## Learning LaTeX

The following videos give a basic introduction to LaTeX. Then you can
proceed with the text below which provides some more details.

-   [Video: Intro to
    LaTeX](https://eu.feedbackfruits.com/courses/activity-course/c5ee7be4-e53f-4ebc-ae43-84c46b97860e)
-   [Video:
    References/Bibliography](https://eu.feedbackfruits.com/courses/activity-course/2b012cee-db36-4a81-8fbd-d39a48491aec)
-   [Video:
    Mathematics](https://eu.feedbackfruits.com/courses/activity-course/40c16b4f-4c2b-453f-b318-3cb628fc647f)
-   [Video: Figures and
    Tables](https://eu.feedbackfruits.com/courses/activity-course/920200f2-157e-4a53-ac4c-2d8d30a5012e)
-   [Video: Other packages and
    classes](https://eu.feedbackfruits.com/courses/activity-course/860d65cb-d17d-4dca-b970-5f4b7cfbf711)

Run through the [LearnLaTeX tutorial](https://learnlatex.org). We
recommend that you try the [Overleaf](https://overleaf.com) editor,
since that is an option for easy experimentation in the tutorial. [KTH
provides Overleaf Professional for all
students](https://www.overleaf.com/edu/kth), you just need to register
an account using your KTH email address. (Or add your KTH address, if
you've already signed up for the free version.)

With Overleaf Professional you can [use Overleaf with
Git](https://www.overleaf.com/learn/how-to/How_do_I_connect_an_Overleaf_project_with_a_repo_on_GitHub,_GitLab_or_BitBucket%3F).
However, to use branching and pull-requests to their full extent, you'll
have to use a local editor (as in the videos above) instead of Overleaf.
All powerful text editors have syntax highlighting and auto-completion
support for LaTeX.

The material has talked about producing books and reports so far. It's
also possible to use LaTeX to produce slides. One way to do that is with
[beamer](https://ctan.org/pkg/beamer). Overleaf has a short
[tutorial](https://www.overleaf.com/learn/latex/beamer), but we
recommend the [documentation for
beamer](http://mirrors.ctan.org/macros/latex/contrib/beamer/doc/beameruserguide.pdf)
--- that documentation is actually written as a guide to good
presentations in general, well worth reading.

## Assessment

Write a short document (article, using the `article` document class) in
LaTeX with the following requirements: it must contain

-   a title,
-   a table of contents,
-   a figure,
-   a citation with a reference, you can use
    [Libris](https://libris.kb.se) (web) or
    [libris.sh](https://github.com/dbosk/libris.sh) (terminal) to create
    a BibTeX reference to a book;
-   a listing, using the [listings
    package](https://ctan.org/pkg/listings), that contains your command
    line history (the output of the `history` command).

The document *source files* (i.e. the LaTeX files, and not as e.g. a zip
file) must be committed and pushed to your repository on [KTH
GitHub](https://gits-15.sys.kth.se/datintro21) for the course. We'll
compile the PDF ourselves to see that it works.

We assess that by doing this you can *create and compile technical
reports*; *handle submissions of (program) code with version control
tools* and, finally, *control the computer environment via the command
line*.
