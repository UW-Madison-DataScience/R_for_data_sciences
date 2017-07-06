---
title: "R for Data Sciences Syllabus"
author: "Brian S Yandell"
date: "July 2017"
output:
  html_document: default
---

**Description:** This material is aimed at providing teams in the data sciences with an understanding of and experience with professional skills in data science. Researchers today must organize data projects to be able to repeat tasks and share data, ideas, reports and code with others in diverse teams. They need to do this quickly in real time and on a longer term, being able to reproduce tasks -- either their own or those of others -- months or years later. This involves building documents as a project evolves to capture work flow,
and sharing data methods and results with team collaborators.
To do this well, researchers as data scientists need to be skilled with internet tools, sophisticated use of statistical languages (such as `R`) and other emerging topics.  

**Learning Objectives:** After completing this material, an individual will be able to

- use `R` and `RStudio` as platform for statistical computing
    + install [R]() and [RStudio]() on personal computer
    + navigate `RStudio` integrated development environment ([IDE](https://en.wikipedia.org/wiki/Integrated_development_environment))
    + use `help` and internet searches to answer questions
- [curate](curate/README.md) data in `R`, including
    + read, manipulate and display data summaries in concise tables
    + work with data frames using [tidyverse](http://tidyverse.org/) tools
    + create functions to collapse repeated steps into one-line "verbs"
    + write cleaned up data table out in CSV format
- [visualize](visualize/README.md) data with plots
    + visualize data with the [ggplot2](http://ggplot2.org/) package
    + understand key components of the grammar of graphics
    + develop interactive graphics with [plotly](https://plot.ly/ggplot2/) or [ggvis](http://blog.revolutionanalytics.com/2014/06/interactive-web-ready-ggplot2-style-graphics-with-ggvis.html)
    + examine related packages ([cowplot](https://github.com/wilkelab/cowplot), [GGally](https://ggobi.github.io/ggally/), [grid viewports](https://stat.ethz.ch/R-manual/R-devel/library/grid/doc/viewports.pdf))
    + create heatmaps ([pheatmap](https://github.com/raivokolde/pheatmap))
    + use [shiny](http://shiny.rstudio.com) to share results on the web
- [organize](organize/README.md) data methods and documentation
    + document ongoing work with [R Markdown](http://rmarkdown.rstudio.com/)
    + use [git and github](http://happygitwithr.com/) to keep track of code and document changes with version control
    + organize functions, documentation and data into packages (`R` libraries) to share
    + create and manage external databases from `R` objects
- [analyze](analyze/README.md) data with statistical models
    + correlate measurements and compare across groups using linear models
    + develop annotated plots that reflect project design
    + organize linear model results with [broom](https://github.com/tidyverse/broom), [car](https://cran.r-project.org/web/packages/car/index.html), or [lsmeans](https://github.com/rvlenth/lsmeans) packages
    + clustering and trees, building networks
    + [network](analyze/network/README.md) observations in connected graphs
- [profile](profile/README.md) code for efficiency and error checking
    + use code profiling tools to identify bottlenecks and logic errors
    + use simulation to study statistical properties
    + create graphics to diagnose patterns in raw and derived data
- [connect](connect/README.md) with other data science tools beyond R
    + use unix/linux shell to search and modify project
    + build a basic pipeline or workflow in the shell
    + high throughput computing

[References](reference.md)
