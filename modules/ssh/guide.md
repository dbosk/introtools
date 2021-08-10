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

**MacOS and Linux:** If you run Linux or MacOS, you're already running a 
UNIX-like system. Then you can just start the terminal (just search for the 
word "terminal").

**Windows:** On a Windows system it is a bit more complicated. While Windows 
also have a command-line interface, it's not compatible with a UNIX-like 
interface. If you run Windows 10, just go ahead and install Windows Subsystem 
for Linux (WSL) to run Ubuntu in Windows. There are various guides:

  - [Microsoft's installation guide][ms-wsl] 
  - [Ubuntu's installation guide][ubuntu-wsl]
  - [omg!ubuntu!'s guide][WSL2]
  - [How-to-geek's guide][WSL]

Pick your favourite!

[ms-wsl]: https://docs.microsoft.com/en-us/windows/wsl/install-win10
[ubuntu-wsl]: https://ubuntu.com/tutorials/ubuntu-on-windows#1-overview
[WSL]: https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/
[WSL2]: https://www.omgubuntu.co.uk/how-to-install-wsl2-on-windows-10

For older versions of Windows, there are no really convenient option, you can

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
But *make sure to back up any data on that computer before you do anything 
else*.


## Use a KTH system remotely

Again, if you run a UNIX-like system, such as Linux, MacOS or WSL (as above); 
then you can use the `ssh` command in the terminal to access a KTH system 
remotely. Just run
```
ssh dbosk@student-shell.sys.kth.se
```
with your KTH username instead of `dbosk` and your KTH password.

### For Windows without WSL

If you run Windows without WSL (e.g. older than Windows 10), you'll need 
[PuTTY][putty] and [WinSCP][winscp]. PuTTY will open a terminal that's running 
on KTH's servers, just give `student-shell.sys.kth.se` as the hostname in 
PuTTY, something like this:

![The PuTTY start-up screen][puttyconf]

Then you just type in your KTH username and password (note that you won't see 
anything when typing in the password, UNIX-like systems don't output the 
bullets or asterisks when typing passwords). It will look something like this:

![A terminal window in PuTTY][puttyterm]

[putty]: https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html
[winscp]: https://winscp.net/eng/download.php
[puttyconf]: https://github.com/dbosk/introtools/raw/master/modules/terminal/puttyconf.png
[puttyterm]: https://github.com/dbosk/introtools/raw/master/modules/terminal/puttyterm.png

WinSCP is used for copying files between the your local system and the remote 
KTH system. This allows you to upload or download files from your KTH home 
directory. As with PuTTY, just give `student-shell.sys.kth.se` as the hostname.


## The end result

If you succeeded, you should have window that looks something like this (or the 
PuTTY window above):

![A terminal window with an SSH session on a UNIX-like system][terminal]

[terminal]: https://github.com/dbosk/introtools/raw/master/terminal/terminal.png


## Assessment

We can see whether you've never logged into the `student-shell` server or not, 
so ensure that you successfully log in. Even if you're sitting by a computer in 
one of the KTH labs, use `ssh` as above to log into `student-shell`.

By this, we assess that you can *access the computer environment at KTH*.

