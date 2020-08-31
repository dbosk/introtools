
We cannot emphasize enough how valuable a good (text) editor is. "A good 
editor" is, of course, subjective. That's why we're still fighting the [Editor 
War][editor-war], one of the Holy Wars of Computer Science.

[editor-war]: https://en.wikipedia.org/wiki/Editor_war

We've already encountered the `nano` editor. A small editor that runs entirely 
in the terminal. An editor that runs in the terminal is an important tool, 
because you can use it in all terminal interfaces, e.g. on remote systems over 
SSH or systems which doesn't have any *graphical* user interface (e.g. 
servers).

However, in most cases you'll be using the editor on your own system, which 
will usually have a graphical user interface (GUI). So it might be worth having 
two editors of choice.

Below we give a list of some commons editors, both terminal and GUI.


## Editors for the terminal

As mentioned above, we've already encountered `nano`.

We also mentioned the Editor War, which is usually fought between `vi` (or 
newer Vim or NeoVim) on one side and Emacs on the other. Both of these run in 
the terminal, but they also have GUI versions.

You can access a tutorial on Vim by running `vimtutor` in the terminal. That's 
the safest way to start with Vim, since [many have problems to exit 
Vim][sx-exit-vim]. Emacs offers the possibility to enter a tutorial when it's 
started.

[sx-exit-vim]: https://stackoverflow.blog/2017/05/23/stack-overflow-helping-one-million-developers-exit-vim/

[Yours truly][dbosk], is in the Vim camp. So, if I should try to say anything 
objective about Vim vs Emacs, it's that `vi` is available on *every* UNIX-like 
system by default. Emacs is only available by default on GNU/Linux systems, 
which is a subset of UNIX-like systems.

[dbosk]: https://daniel.bosk.se


## GUI-only editors

What people usually want when they go for a GUI editor is more of an integrated 
development environment (IDE). This brings a lot of tools to the same place.

Again, [yours truly][dbosk] uses only Vim in terminal mode. So it *is* possible 
to come a long way without a GUI. Vim (and Emacs) has support for syntax 
highlighting, code completion and integrated debugging through various 
plug-ins. There are even [services which generate the configuration for 
Vim][vim-bootstrap] based on your language preferences.

[vim-bootstrap]: https://vim-bootstrap.com/

There are also GUI-only text editors, which also supports various languages and 
other features through plug-ins. Some of the most popular are

 - [Atom](https://atom.io/),
 - [Sublime Text](https://www.sublimetext.com/),
 - [Visual Studio Code (VS Code)](https://code.visualstudio.com/).

