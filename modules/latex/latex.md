---
id: latex
title: Writing reports with LaTeX
authors:
  - Daniel Bosk <dbosk@kth.se>
---

# Writing reports with LaTeX

[LaTeX][latex] is a document preparation system. LaTeX is based on [TeX][tex], 
which is a typesetting engine that [can do anything][tex-showcase].

[latex]: https://en.wikipedia.org/wiki/LaTeX
[tex]: https://en.wikipedia.org/wiki/TeX
[tex-showcase]: https://www.tug.org/texshowcase/

The main purpose of these systems, and the reason we want you to learn this, is 
to prepare high quality documents and reports. LaTeX lets you focus on the 
contents of the report: you say what should go in, if anything should be 
*emphasized*, what's the contents of figures, the data for references etc. and 
LaTeX will put this content together in a form that is *comforable* to read and 
aesthetically pleasing.

So what about [word processors][word-processor] like Microsoft Word of 
LibreOffice Writer? Well, word processors are to readability as food processors 
are to restaurant critics. Of course, it's possible to achieve good results 
with a word processor too, it's just that it requires much more effort than 
most people imagine ([this][memdesign] brings up a few of the things that one 
must ensure manually with the word processor). So using a system like LaTeX is 
actually makes better results more easy to achieve.

[word-processor]: https://en.wikipedia.org/wiki/Word_processor
[memdesign]: http://tug.ctan.org/info/memdesign/memdesign.pdf


## Learning LaTeX

The following videos give a basic introduction to LaTeX. Then you can proceed 
with the text below which provides some more details.

 - [Video: Intro to LaTeX][introvid]
 - [Video: References/Bibliography][bibvid]
 - [Video: Mathematics][mathvid]
 - [Video: Figures and Tables][figvid]
 - [Video: Other packages and classes][othervid]

[intropic]: https://img.youtube.com/vi/7rWdpflo3UE/default.jpg
[introvid]: https://eu.feedbackfruits.com/courses/activity-course/c5ee7be4-e53f-4ebc-ae43-84c46b97860e

[bibpic]: https://img.youtube.com/vi/L5zsBee7FxA/default.jpg
[bibvid]: https://eu.feedbackfruits.com/courses/activity-course/2b012cee-db36-4a81-8fbd-d39a48491aec

[mathpic]: https://img.youtube.com/vi/yguF69QPb84/default.jpg
[mathvid]: https://eu.feedbackfruits.com/courses/activity-course/40c16b4f-4c2b-453f-b318-3cb628fc647f

[figpic]: https://img.youtube.com/vi/aUlahJTEG7I/default.jpg
[figvid]: https://eu.feedbackfruits.com/courses/activity-course/920200f2-157e-4a53-ac4c-2d8d30a5012e

[otherpic]: https://img.youtube.com/vi/QiE_0NFc1wg/default.jpg
[othervid]: https://eu.feedbackfruits.com/courses/activity-course/860d65cb-d17d-4dca-b970-5f4b7cfbf711

Run through the [LearnLaTeX tutorial][learnlatex]. We recommend that you try 
the [Overleaf][overleaf] editor, since that is an option for easy 
experimentation in the tutorial. [KTH provides Overleaf Professional for all 
students][overleaf-kth], you just need to register an account using your KTH 
email address. (Or add your KTH address, if you've already signed up for the 
free version.)

[learnlatex]: https://learnlatex.org
[overleaf]: https://overleaf.com
[overleaf-kth]: https://www.overleaf.com/edu/kth

With Overleaf Professional you can [use Overleaf with Git][overleaf-git]. 
However, to use branching and pull-requests to their full extent, you'll have 
to use a local editor (as in the videos above) instead of Overleaf. All 
powerful text editors have syntax highlighting and auto-completion support for 
LaTeX.

[overleaf-git]: https://www.overleaf.com/learn/how-to/How_do_I_connect_an_Overleaf_project_with_a_repo_on_GitHub,_GitLab_or_BitBucket%3F

The material has talked about producing books and reports so far. It's also 
possible to use LaTeX to produce slides. One way to do that is with 
[beamer][beamer]. Overleaf has a short [tutorial][overleaf-beamer], but we 
recommend the [documentation for beamer][beamerguide] --- that documentation is 
actually written as a guide to good presentations in general, well worth 
reading.

[beamer]: https://ctan.org/pkg/beamer
[overleaf-beamer]: https://www.overleaf.com/learn/latex/beamer
[beamerguide]: http://mirrors.ctan.org/macros/latex/contrib/beamer/doc/beameruserguide.pdf


## Assessment

Write a short document (article, using the `article` document class) in LaTeX 
with the following requirements: it must contain

  - a title,
  - a table of contents,
  - a figure,
  - a citation with a reference, you can use [Libris][libris] (web) or 
    [libris.sh][libris.sh] (terminal) to create a BibTeX reference to a book;
  - a listing, using the [listings package][listings], that contains your 
    command line history (the output of the `history` command).

[libris]: https://libris.kb.se
[libris.sh]: https://github.com/dbosk/libris.sh
[listings]: https://ctan.org/pkg/listings

The document *source files* (i.e. the LaTeX files, and not as e.g. a zip file) 
must be committed and pushed to your repository on [KTH GitHub][github-kth] for 
the course. We'll compile the PDF ourselves to see that it works.

[github-kth]: https://gits-15.sys.kth.se/datintro21

We assess that by doing this you can *create and compile technical reports*; 
*handle submissions of (program) code with version control tools* and, finally, 
*control the computer environment via the command line*.

