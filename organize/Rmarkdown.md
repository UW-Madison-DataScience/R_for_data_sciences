---
title: "Rmarkdown Report Writing"
author: "Brian S. Yandell"
date: "7/5/2017"
output: html_document
---

Rmarkdown works best on a machine with the latest versions of [R](https://cran.r-project.org/) and [Rstudio](https://www.rstudio.com/products/rstudio/download/#download). Fire up Rstudio and click the green circle with white plus (upper left corner) and try creating an "R Markdown" (HTML format) or "R Notebook" page. You might be asked to install some packages at that point – do it. If you are adventurous, try clicking the "Preview" or "Knit" icon at the top of the page to see what is produced. Again, you may be asked to install some packages, which you should. There is a "Markdown Quick Reference" under the "Help" tab at top of page.

- [Reproducible Reports with Rmarkdown from Data Carpentry](http://kbroman.org/datacarpentry_R_2017-01-10/04-rmarkdown.html)
- [Rmarkdown from RStudio](http://rmarkdown.rstudio.com/)
- [Rmarkdown Gallery](http://rmarkdown.rstudio.com/gallery.html) & [Rmarkdown Articles](http://rmarkdown.rstudio.com/articles.html) 
- [Rmarkdown Example](RmarkdownExample.Rmd)
- [R package primer](http://kbroman.org/pkg_primer/)

- [R4DS book](http://r4ds.had.co.nz/): [Rmarkdown](http://r4ds.had.co.nz/r-markdown.html) 
- [Knitr in a knutshell by Karl Broman](http://kbroman.org/knitr_knutshell/)
- [Rstudio Rmarkdown Cheatsheet](https://www.rstudio.com/resources/cheatsheets/) (scroll down to find)
- [Rmarkdown Code and Chunk Options](https://yihui.name/knitr/options/)
- [Flex Dashboard](http://rmarkdown.rstudio.com/flexdashboard/) | [Interactive Documents](http://rmarkdown.rstudio.com/authoring_shiny.html) | [Parameterized Reports](http://rmarkdown.rstudio.com/developer_parameterized_reports.html)
- <http://rpubs.com> (Share Rmarkdown online)
- <https://plot.ly/r/knitr/>
- [MacTex Download](http://www.tug.org/mactex/) (for PDFs on Macintosh)

- [BookDown](https://bookdown.org/) and [BlogDown](https://bookdown.org/yihui/blogdown/)

### Adding pandoc to your path in `.bash_profile` or `.bashrc`

```
# Adding pandoc from R studio to path
export PATH=$PATH:/Applications/RStudio.app/Contents/MacOS/pandoc
```


