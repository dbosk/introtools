---
authors:
  - Daniel Bosk <dbosk@kth.se>
---

# Guide to accessing the terminal

You will need to use the terminal in many cases in the future, most imminently 
for the next coming assignments in this course. (But you'll need it in many 
  future courses too). In this assignment you'll ensure you have a terminal to 
  use. 

There are several options for accessing a UNIX-like terminal. We'll cover

  1. running it on your own system,
  2. using a KTH system remotely.


## On your own system

**MacOS and Ubuntu (Linux):** If you run Linux or MacOS, you're already running 
a UNIX-like system (see the [family tree][unix-family]). Then you can just 
start the terminal (just search for the word "terminal"). You can see the 
process in these videos:

[unix-family]: https://www.levenez.com/unix/

[![Video: Finding terminal in Ubuntu][ftupic]][ftuvid]
[![Video: Finding terminal in macOS][ftmpic]][ftmvid]

[ftupic]: https://img.youtube.com/vi/tR_cBiLfnVI/default.jpg
[ftuvid]: https://eu.feedbackfruits.com/courses/activity-course/44d376d9-1423-4a13-97f3-11f8d19d5bd0

[ftmpic]: https://img.youtube.com/vi/mxdXJs4qN3o/default.jpg
[ftmvid]: https://eu.feedbackfruits.com/courses/activity-course/9fdbc81b-7836-42aa-a84b-a90851d18c34

**Windows:** On a Windows system it is a bit more complicated. While Windows 
also have a command-line interface, it's not compatible with a UNIX-like 
interface. If you run Windows 10, just go ahead and install Windows Subsystem 
for Linux (WSL) to run Ubuntu in Windows. There are various guides:

  - [Microsoft's installation guide][ms-wsl] 
  - [Ubuntu's installation guide][ubuntu-wsl]
  - [omg!ubuntu!'s guide][WSL2]
  - [How-to-geek's guide][WSL]

Pick your favourite!

[ms-wsl]: https://aka.ms/wsl2-install
[ubuntu-wsl]: https://ubuntu.com/tutorials/ubuntu-on-windows#1-overview
[WSL]: https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/
[WSL2]: https://www.omgubuntu.co.uk/how-to-install-wsl2-on-windows-10

For older versions of Windows (or if you don't want to/can't install WSL), 
there is no really convenient option, you can

  - use KTH's systems remotely (see below, recommended),
  - [run Ubuntu as a virtual machine][vm],
  - [install Ubuntu][install-ubuntu] on your computer (be careful: some 
    students *accidentally erased* all their photos/data by making a mistake!),
  - [install CygWin][cygwin].

[vm]: https://multipass.run/
[install-ubuntu]: https://ubuntu.com/download/desktop
[cygwin]: https://cygwin.com/install.html

**Old computers:** Note that if you have an old computer that you perceive as 
slow, then it might be worth installing Ubuntu on it. After that the computer 
usually feels much faster again. See [how to install Ubuntu][install-ubuntu]. 
But *make sure you don't have any important data on that computer before you do 
anything*, you might lose it depending on how you choose to install Ubuntu.


## Use a KTH system remotely

Again, if you run a UNIX-like system, such as Linux, MacOS or WSL (on Windows 
10 as above); then you can use the `ssh` command in the terminal to access a 
KTH system remotely. Just run
```
ssh dbosk@student-shell.sys.kth.se
```
with your KTH username instead of `dbosk` and your KTH password.

For verifying the key fingerprint when connecting the first time, you can find 
the official key fingerprints [here][kth-ssh-fps].

[kth-ssh-fps]: https://intra.kth.se/en/it/arbeta-pa-distans/unix/servers-1.971157

The entire process will look something like this:

[![Video: SSH on Ubuntu][sshupic]][sshuvid]
[![Video: SSH on macOS][sshmpic]][sshmvid]

[sshupic]: https://img.youtube.com/vi/ky-nnBsNIl8/default.jpg
[sshuvid]: https://eu.feedbackfruits.com/courses/activity-course/55dd8376-a042-4211-ac8e-486fd1cfde34

[sshmpic]: https://img.youtube.com/vi/uUrCXqxDMQI/default.jpg
[sshmvid]: https://eu.feedbackfruits.com/courses/activity-course/febefd53-2780-498a-a6a8-929bb4c6e7c0

### For Windows without WSL

If you run Windows without WSL (e.g. older than Windows 10), you'll need 
[PuTTY][putty] and [WinSCP][winscp]. PuTTY will open a terminal that's running 
on KTH's servers, just give `student-shell.sys.kth.se` as the hostname in 
PuTTY, something like this:

![The PuTTY start-up screen][puttyconf]

[putty]: https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html
[winscp]: https://winscp.net/eng/download.php
[puttyconf]: https://github.com/dbosk/introtools/raw/master/modules/terminal/puttyconf.png

For verifying the key fingerprint when connecting the first time, you can find 
the official key fingerprints [here][kth-ssh-fps].

[kth-ssh-fps]: https://intra.kth.se/en/it/arbeta-pa-distans/unix/servers-1.971157

Then you just type in your KTH username and password (note that you won't see 
anything when typing in the password, UNIX-like systems don't output the 
bullets or asterisks when typing passwords). It will look something like this:

[![Video: Using PuTTY on Windows 10][sshwpic]][sshwvid]

[sshwpic]: https://img.youtube.com/vi/JBgn51W5Umc/default.jpg
[sshwvid]: https://eu.feedbackfruits.com/courses/activity-course/3ef9ff0a-077d-4739-9e2f-40a1901ff57a

WinSCP is used for copying files between the your local system and the remote 
KTH system. This allows you to upload or download files from your KTH home 
directory. As with PuTTY, just give `student-shell.sys.kth.se` as the hostname.


## The end result

If you succeeded, you should have window that looks something like this (or the 
PuTTY window above):

![A terminal window with an SSH session on a UNIX-like system][terminal]

[terminal]: https://github.com/dbosk/introtools/raw/master/modules/ssh/terminal.png


## Assessment

We can see whether you've never logged into the `student-shell` server or not, 
so ensure that you successfully log in. Even if you're sitting by a computer in 
one of the KTH labs, use `ssh` as above to log into `student-shell`.

By this, we assess that you can *access the computer environment at KTH*.

