---
title: "Overview of R Material"
author: "Brian S. Yandell"
date: "6/29/2017"
output: html_document
---

This course is a blend of introductory and advanced material using `R` for data science.
It draws on material from [Data Carpentry](http://datacarpentry.org) and courses taught by a variety of people. Rather than try to repeat that material, links are made at various points.

The intent is that this material could serve as the basis for a self-directed learning process. The material is all on GitHub at <https://github.com/ComBEE-UW-Madison/RStudyGroup> as part of the [ComBEE R Study Group at University of Wisconsin-Madison](https://sites.google.com/a/wisc.edu/combee/r-study-group).
This set of material is being prepared by [Brian Yandell](http://www.stat.wisc.edu/~yandell) to be used for Fall 2017. It is built in part on the [Professional Skills for Data Science (Stat 627)](https://github.com/datascience-uwmadison/stat627) course taught by Yandell and [Douglas Bates](https://github.com/dmbates/stat692) in Fall 2014 and 2015, and on material developed by ComBEE members over the past few years.

Chester Ismay offered these guiding principles at rstudio2017::conf

- Blur lines between lecture & lab
- Focus on the data/science research pipeline
- It's all about the data
- Use simulation/resampling not probability/large sample approximation
- Don’t fence off students from the computation pool, throw them in!
- Complete reproducibility with [bookdown](https://bookdown.org/)

The primary focus is the `R` language and the `RStudio` environment. However, the reader may view this as an entry into the culture of organizing and conducting data science projects in any programming language or environment. Most of the approaches presented here arise with other languages, although it is true that some languages are better suited for certain tasks (`Python` seems to be the language of choice today for comparing DNA sequences, for instance). Some aspects will seem to be a stretch, or even downright tedious. However, software engineers have largely found that planning ahead and documenting for future reference, while time consuming now, save many headaches and reduce confusion when sharing work with others, and, most importantly, with your future self.

## Setup

Be sure you have [R](https://www.r-project.org/) and [RStudio](http://www.rstudio.com)
installed on your machine. See for instance [Data Carpentry R](http://kbroman.org/datacarpentry_R_2017-01-10/) (bottom part of page); in fact, please go through the entire second day on R.
It would also be good to have [tidyverse](http://tidyverse.org) installed using the console pane:

```
install.packages("tidyverse")
```


## Basics of RStudio

[R](https://www.r-project.org/) originally ran on a "dumb" terminal. 
There were many efforts to build a useful graphical user interface, or GUI. [RStudio](http://www.rstudio.com) was founded in 2008 with public release in 2011, and was quickly adopted by the `R` community. See <https://www.rstudio.com/about/>.

`RStudio` has four panes to organize the page:

1. Scripts (top-left)
2. R console (bottom-left)
3. Files/plots/help/etc (bottom-right)
4. Environment/history (top-right)

The R console is the basic "dumb" terminal for `R`, where you can type commands directly.

These panes can be rearranged if desired. There are shortcuts to focus on just one pane:
<kbd>`Ctrl`</kbd> + <kbd>`Shift`</kbd> + <kbd>`2`</kbd>
focuses on the R console pane. Use <kbd>`Ctrl`</kbd> +
<kbd>`Shift`</kbd> + <kbd>`0`</kbd> to return to all four panes.

Each pane potentially has multiple tabs with useful information. For instance, pane 3 (bottom-right) has `Files`, `Plots`, `Help` and other tabs. Just click on one to bring it forward.

**Help** on commands can be found with the `Help` tab of pane 4, typing in `log` where the magnifying glass is. Alternatively, type on the `Console`, pane 2, either

```
help(log)
```

or

```
?log
```

to bring up the `log` help page. Another way to get help is to start typing a command and then pause. A yellow popup will appear with a condensed version of the help page.

## R project

It is useful to organize `R` work into projects. Click `File → New Project → Existing directory → Browse for folder`; find folder where you want to work; click `Open`. Then click `Create project`. You can also create a new directory if preferred.

The "working directory" is the folder where you do `R` work. You can use the command `getwd()` to find out what the working directory is. Here is a sample layout (from Data Carpentry lesson) with some suggested sub-folder names to further organize work:

![](http://www.datacarpentry.org/R-ecology-lesson/img/working-directory-structure.png)

## Scripts

Within your project, you can create or save files.
The top-right Source pane (1) is a place to build scripts, that is, flat files with commands and comments. [Comments begin with the sharp `#` character.] Click the green circle with plus at top left and click `R Script` to creat an `Untitled` script. Save this (Either `File → Save` or the floppy disk icon); you will be asked to supply a name, and prompted where you want to put it. At this point you can create a `New Folder` (bottom left of save popup) and name it `scripts` if you like.

The top-left pane (4) has a `History` tab that shows all commands you have typed. You can highlight lines and move them `To Source`.

Be sure to save your script file frequently.

## R Environment and Closing out RStudio

`R` works by creating local files in the `Environment` (see pane 4, top-right). These are local objects in your `R` workspace only present during your active session. They do not exist as files outside of `R`.

It is good practice to NOT save your workspace, but instead recreate your work from scripts every time. To enforce that use the menu: `Tools → Global Options ...` and set `Save workspace to .RData on exit` to <kbd>`never`</kbd>. Also, unclick the box for `Restore .RData into workspace at startup`. These force you to be explicit each time about what objects you are working with.

You exit from RStudio in the usual manner for apps on your system. For instance, click `RStudio` in upper right of top ribbon and then click `Quit RStudio`.

## R Packages

`R` has a basic environment for working with data. Many of the tasks, particularly more complicated tasks such as plotting or analyzing data, require tools (commands) that are organized into packages. Base R actually installs several packages for you (`datasets`, `graphics`, `grDevices`, `methods`, `stats`, `utils`). The [tidyverse](http://tidyverse.org) installs a bunch more. These packages, in ideal settings, seamlessly work together and provide you with an array of useful tools. However, it can be confusing to navigate among them at first. The `help` pages are useful, as is a query on your favorite internet browser.

## Developing your own style

`RStudio` allows great flexibility within its structure in how you organize your work. 
The key thing is to intentionally organize what you do so that you can recreate, or
reproduce your work steps and results in the future. We will talk about various ways this can be done along the way (scripts, Rmarkdown documents, github repositories, function, packages, workflows).
At a big picture level, it might be useful to consider [Jenny Bryan's grading rubric](http://stat545.com/peer-review01_marking-rubric.html), which breaks work down in terms of coding style and strategy, presentation in tables and graphs, mastery and creativity, and ease of access.
