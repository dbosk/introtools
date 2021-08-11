---
authors:
  - Ric Glassey <glassey@kth.se>
  - Daniel Bosk <dbosk@kth.se>
---

# Activate your KTH GitHub account

At KTH, we have an enterprise edition of GitHub running locally. As a
student, you get a free account to use for university work, projects and
so on. This is pretty much the same as [regular GitHub][github], except
private to KTH users. Several courses make use of version control (Git)
and project management tools (GitHub), so it is good to have it setup
from the beginning.

Go to [KTH GitHub][gits] and **login to activate your account.** Our automation 
cannot find you until you've logged in a first time, so log in as soon as 
possible.

[github]: https://github.com
[gits]: https://gits-15.sys.kth.se/


# Setup SSH Keys

SSH can let you connect and authenticate your computer with remote services, 
without needing to provide a username and password every time you access them.

*N.b. this step can be problematic, so pay attention to the commands you
are typing (measure twice, cut once!)*

  1. [Generate a new SSH key pair][github-keypair]

  2. [Add the public key to your KTH Github account][github-addkeys]

[github-keypair]: https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/

[github-addkeys]: https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/

*N.b. make sure you are in KTH Github - https://gits-15.sys.kth.se/ and
not Public Github - https://www.github.com*


# Choose a Text Editor

When you interact with `git`, you will most likely use the command line
(e.g. Bash) to issue commands. Some of these commands will launch a text
editor so you can type messages (e.g. a description of a change you have
made to a project). You can choose any text editor you like. (Hopefully, you've 
already made up your mind.) We will use Atom in the example below.

By default `git` will use the `vi` (or `vim`) text editor, which can be 
[confusing if you haven't run through the `vimtutor` tutorial 
already][stackoverflow-exitvim]. You can [associate other text editors with 
Git][github-changeeditor], so that it uses your editor of choice.

[stackoverflow-exitvim]: https://stackoverflow.blog/2017/05/23/stack-overflow-helping-one-million-developers-exit-vim/

[github-changeeditor]: https://help.github.com/articles/associating-text-editors-with-git/


# Repos

You can [create][github-makerepo] as many repos on KTH Github as you like, and 
they can be public or private. The best way to think of a repo is a place for 
all the resources of a project to be stored and managed. As the project
resources change over time, new versions will be created. All of the
resources (and their previous versions) can be accessed through the
repo.

[github-makerepo]: https://help.github.com/articles/create-a-repo/

In this course, we will create a repo for you automatically. This is because we 
need particular settings to allow our grading bot to automatically check that 
you've completed the assignment. A while after you've logged into KTH GitHub 
for the first time, our bot will have created a repo for you. You can find it 
  in the [course organization datintro21][gits-datintro].


# Clone your repo and add a file

Now go back to your repo's main page (click the "Code" tab farthest to the 
left) and copy the clone URL. You should copy the SSH URL, it should look 
something like this:

![Copy the URL for SSH][gh-clone]

Or like this:

[gh-clone]: https://github.com/dbosk/introtools/raw/master/collaboration/gh-clone.png

![Copy the URL for SSH on a non-empty repo][gh-clone-nonempty]

[gh-clone-nonempty]: https://github.com/dbosk/introtools/raw/master/collaboration/gh-clone-nonempty.png

To complete this assignment, you must show that you know how to interact with 
the repo through Git: Add new files to your repo and create new versions which 
must be committed and pushed to the repo. It is important that you complete 
these steps using the command line interface.

Clone your repository with the URL you copied, e.g.:
```bash
$ git clone git@gits-15.sys.kth.se:datintro20/datintro20-dbosk.git
[some output]
```

Now, that should've produced a new subdirectory in your current working 
directory.
```bash
$ ls
datintro20-dbosk
```

Go into that directory and create a file `history.txt` by redirecting the 
output of the `history` command into the file. (You should've learned how to do 
this, now prove it!)

Add and commit that file to your *local* repository. Then push it to the 
*remote* repository on KTH GitHub.
```
$ git add history.txt
$ git commit
$ git push
[some output]
```

By doing this we assess that you can *handle submissions of (program)
code with version control tools*.

