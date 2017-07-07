Software Packages, Languages & Writing Tools
============================================

-   [Statistical Packages &
    Languages](http://www.amstat.org/profession/index.cfm?fuseaction=software)
-   [SWI Software Links](/~yandell/www/wright/software.html)
-   [Writing, Editing and References](#writing)
-   [Graphics: Viewing and Printing](graphics.html)
-   [Statistical Reporting with S/R (Frank Harrell, Vanderbilt Medical
    Center)](http://biostat.mc.vanderbilt.edu/twiki/bin/view/Main/StatReport)
-   [UNIX Guides](unix.html)
-   [Auckland S Workshop](http://www.stat.auckland.ac.nz/S-Workshop/)
-   [Yandell's Software Page](./)

* * * * *

Writing, Editing and References
-------------------------------

Most people use either [emacs](http://www.emacs.org/) or
[vi](http://weber.u.washington.edu/~rells/R110/) as a full-screen editor
to develop documents. The [LaTeX](latex.html) system is widely used in
the mathematical sciences for document preparation. Unfortunately, it is
not WYSIWYG (What You See Is What You Get) -- you have to prepare your
document in the LaTeX language. This is actually easy to learn, and
there are some nice tools for previewing pages, as indicated below.

[emacs](http://www.emacs.org/)

Richard M. Stallman (1986) GNU Emacs Manual. Free Software Foundation.

[vi](http://weber.u.washington.edu/~rells/R110/)

Visual Editor

ghostview, xdvi, dvipr, dvips, psnup

Utilities for viewing and printing DVI (\*.dvi) and postscript (\*.ps)
files.

[latex, bibtex](latex.html)

document prepartion language

latex2html

See `man latex2html` and the longer document by [Nikos Drakos, U Leeds,
UK](http://www.stat.wisc.edu/cgi-bin/finger?nikos@cbl.leeds.ac.uk),
which is available from
[Bates](http://www.stat.wisc.edu/cgi-bin/finger?bates@stat.wisc.edu) or
[Yandell](http://www.stat.wisc.edu/cgi-bin/finger?yandell@stat.wisc.edu).
Online documentation is available at the [U Leeds
WWW](http://cbl.leeds.ac.uk/nikos/tex2html/tex2html.html). **Note:
Filenames to latex2html must end in .tex and have an absolute address
without symbolic links, such as**

``` {width="80"}
      % latex2html /u/y/a/yandell/doc/mydoc.tex
```

This creates a directory mydoc with the main HTML file being
mydoc/mydoc.html.

ASADIR

American Statistical Association Directory of People. Not real user
friendly yet. Give it a list of names to get their information. No
manual or online help.

[CIS](/statistics/cis/)

[Current Index in Statistics](/statistics/cis/) online reference
database. See `man CIS`. CIS returns only those citations that match all
of the keys you type. It gives you the initial counts of the number of
matches so you can decide what keys help to narrow the search and what
keys are not worthwhile. If you do find that something like

``` {width="80"}
CIS ratio estimate
```

is returning a citation that does not match both of those keys, contact
[Bates](/cgi-bin/finger?bates@stat.wisc.edu). The database contains
abbreviations for publishers and journal names. If you want to modify
these for your own purposes, see the CIS manual page and the file
[/usr/stat/lib/CIS/ab.v92.](file:///usr/stat/lib/CIS/ab.v92) [Click here
to use CIS on the World Wide Web](/statistics/cis/).

* * * * *

Return to [U WI Statistics Home Page](/)

Last modified: sat 3 jul 2004 by Brian Yandell
[*(yandell@stat.wisc.edu)*](/~yandell)
