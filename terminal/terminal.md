# The terminal

The terminal provides a *command-line interface*. This means that we can type 
commands which the computer will execute. It provides some very powerful 
constructions that allows us to do incredible things, for example:
```bash
n=10 cat hitch-hikers-guide.txt | \
  tr -cs A-Za-z '\n' | \
	tr A-Z a-z | \
	sort | \
	uniq -c | \
	sort -rn | \
  head -n $n
```
This is a one-line command that we have broken over several lines for 
readability. It outputs the 10 most common words in the Hitch-Hikers Guide to 
the Galaxy (provided we have the file `hitch-hikers-guide.txt` containing a 
text copy of that book).

In 1986, [Jon Bentley][bentley] posed a problem to [Donald Knuth][knuth] (the 
father of modern computer science). The problem was to write a [literate 
program][litprog] (a concept of Knuth's construction) that would read a text 
and decide the ten most common words and print them together with their 
respective counts.

[bentley]: https://en.wikipedia.org/wiki/Jon_Bentley_(computer_scientist)
[knuth]: https://en.wikipedia.org/wiki/Donald_Knuth
[litprog]: https://en.wikipedia.org/wiki/Literate_programming

Of course, Knuth solved the problem. But so did [Douglas McIlroy][mcilroy]. 
McIlroy proposed the example above, which solved the problem in the terminal. 
Among McIlroy's numerous contributions, we'll mention two: pipelines (which 
we'll cover shortly) and high quality manual pages for UNIX.

[mcilroy]: https://en.wikipedia.org/wiki/Douglas_McIlroy

Now we'll cover some of the basics of the UNIX-like terminal before we return 
to our example above. To access the terminal, see [this guide][guide].

[guide]: guide.html

## Some common commands

The very first command to learn is `man`. All UNIX commands have as short names 
as possible. `man` is short for manual. Thanks to McIlroy, no command was 
admitted into the UNIX system until it had a well-written manual page. This 
manual page is accessed with the `man` command --- including the `man` command 
itself! To access its manual page, simply type `man man` in the terminal.

Use the manual pages to find out what the following commands do:

  - `ls`
  - `pwd`
  - `mkdir`
  - `rmdir`
  - `touch`
  - `cp`
  - `mv`
  - `rm`

The above file management. The following focus more on file contents, see the 
manual pages to see what they do.

  - `cat`
  - `more` and `less`
  - `head` and `tail`
  - `grep`
  - `file`
  - `nano`

It is possible to search inside the manual pages too. When reading the manual 
page, type a `/` (frontslash) followed by the text you'd like to search for and 
hit enter. This will navigate to the first hit. Type just slash and enter to 
get the next hit. Note that this search just searches in the forward direction, 
from what's visible on the screen down --- not text that has passed the screen 
before.

One example of a manual page where searching is useful is the manual pages for 
`bash`. `bash` is the default shell in many systems, and the *shell* is the 
program that processes your commands. Each command above is provided by a 
separate program, and each such program has a manual page. Some commands, 
however, are built into the shell itself --- for instance, `cd`, which changes 
the current directory. To read about `cd`, run `man bash` and search for 
`/^shell builtin commands` (the `^` character indicates the start of a line, 
meaning there shouldn't be anything before on a matching line). From there, 
either scroll down or search again, but this time for `/cd`.

Let's have an example to look at.
```bash
mkdir testdir
cd testdir
touch testfile
ls
rm testfile
cd ..
rmdir testdir
```
The `mkdir` command will create a directory named `testdir` in the current 
working directory (where we're currently "residing" in the file system). `cd` 
will take us into that directory. `touch` will create an empty file named 
`testfile`. `ls` will list all contents in the current working directory (which 
should be only `testfile` at the moment). Then we can remove `testfile` using 
`rm`.

Now `cd ..` is special. The directory name `..` is a special name which points 
to the parent directory. So `cd ..` will take us back outside of `testdir` 
again. Finally, once outside, we can remove `testdir` again with `rmdir`.

Finally, another useful command is `apropos`. If you provide it with a keyword, 
it will list interesting manual pages that match it: for example, `apropos 
print` will list all manuals related to printing. Read its manual page (`man 
apropos`) for more details.

## Pipelines and redirections

A [pipeline][pipe] (`|`) takes the output of the preceding command and provides 
as input to the proceeding command. For instance, `echo a b c` will print `a b 
c` to the output; `wc` will count lines, words and characters of its input; 
thus `echo a b c | wc` will pass `a b c` as input to `wc`, which will count 
lines (only one), words (three one-letter words) and characters (five, it 
counts the two spaces too).

[pipe]: https://en.wikipedia.org/wiki/Pipeline_(Unix)

There are two possible redirections, `<` and `>`. The first, `<`, reads the 
input to a program from a specified file, while the second, `>` redirects the 
output from a program to a specified file. For instance:

```bash
echo 1 2 3 > testfile
cat testfile
wc < testfile
```

The first line prints `1 2 3` as output, but this output is redirected to the 
file named `testfile`. `cat` simply prints the contents of `testfile` to the 
screen. `wc` gets its input read from `testfile`.

We can see that this is equivalent to `echo 1 2 3 | wc`. `cat testfile | wc` 
would give the same result as `wc < testfile`.

## Explaining the original example above

Let's return the example in the beginning, what does it do exactly? The code 
was this:
```sh
n=10 cat hitch-hikers-guide.txt | \
  tr -cs A-Za-z '\n' | \
	tr A-Z a-z | \
	sort | \
	uniq -c | \
	sort -rn | \
  head -n $n
```
The first thing that happens is that we have a variable `n` that we set to the 
value `10` (we're interested in the 10 most common words). `cat` simply prints 
the contents of the text, which is piped to the next command (`tr`).

`tr` will homogenize the text: the first `tr` will reduce non-letter characters 
and turn them all into a line break (`\n`). This will put each word on its own 
line. The second `tr` will turn every word into lower case, so that they can be 
compared: `word` and `Word` are not the same otherwise.

By now, each word will be on it's own line and be in lower case form. `sort` 
will sort them, so that the same words are grouped together. This will allow 
`uniq` to count them. Once we have the counts, we want to `sort` again, this 
time on the numbers rather than the words.

Finally, `head` will output the first `n` counts and words. The `$n` will be 
replaced by the value of `n`, which we had set to `10` on the first line.
