## Stat 692 Fall 2014 Notes 

These are Yandell's notes from Fall 2014
sessions to augment lectures. These are open to read, somewhat for my
benefit and yours. Comments welcome. First link is to [Bates's
GitHub](https://github.com/dmbates/stat692) document; second is to notes
below by date.

1.  Introduction to R and RStudio
    ([Intro.Rmd](https://github.com/dmbates/stat692/blob/master/Intro.Rmd))
2.  Organizing Data in R
    ([Data.Rmd](https://github.com/dmbates/stat692/blob/master/Data.Rmd);
    [2014-09-12](#2014-09-12))
3.  Data Visualization with ggplot2
    ([ggplot2.Rmd](https://github.com/dmbates/stat692/blob/master/ggplot2.Rmd);
    [2014-09-19](#2014-09-19))
4.  Quadrat Data Project
    ([Quadrat.Rmd](https://github.com/dmbates/stat692/blob/master/Quadrat.Rmd);
    [2014-09-26](#2014-09-26))
5.  Linear Models
    ([lm.Rmd](https://github.com/dmbates/stat692/blob/master/lm.Rmd);
    [2014-10-10](#2014-10-10))
6.  Reading Big Data
    ([ReadingBigData.Rmd](https://github.com/dmbates/stat692/blob/master/ReadingBigData.Rmd)
    ([2014-10-17](#2014-10-17))
7.  Sleep Transcriptome Data Project
    ([sleepTranscriptome.Rmd](https://github.com/dmbates/stat692/blob/master/sleepTranscriptome.Rmd))
8.  Multi-factor experiments
    ([ch09.Rmd](https://github.com/dmbates/stat692/blob/master/ch09.Rmd);
    [2014-10-31](#2014-10-31))
9.  Regression models
    ([ch10.Rmd](https://github.com/dmbates/stat692/blob/master/ch10.Rmd);
    [2014-11-07](#2014-11-07))
10. Plotting Densities
    ([densities.Rmd](https://github.com/dmbates/stat692/blob/master/densities.Rmd);
    [2014-11-14](#2014-11-14))
11. Plotting PMF's and Probability Densities
    ([PMFs.Rmd](https://github.com/dmbates/stat692/blob/master/PMFs.Rmd);
    [2014-11-21](#2014-11-21))
12. Simulations
    ([Simulations.Rmd](https://github.com/dmbates/stat692/blob/master/Simulations.Rmd),
    [SimSpeed.Rmd](https://github.com/dmbates/stat692/blob/master/SimSpeed.Rmd))
13. [Thanksgiving]
14. Creating Packages with R ([2014-12-05](#2014-12-05))
15. Special Topics Suggested by Students ([2014-12-12](#2014-12-12))

* * * * *

2014-09-12
----------

    github notes

    cd 
    git clone https://github.com/dmbates/stat692
    cd stat692
    git pull

    See also github links at http://www.stat.wisc.edu/network-skills#beyondR
    Add notes how to clone git repositorywithin Rstudio (if possible)

    ===============

    Using Install button to get package polynom

    Kernighan and Plaugher
    Elements of Programming Style
    http://en.m.wikipedia.org/wiki/The_Elements_of_Programming_Style

    stopifnot()
    see Doug's Data.Rmd at his github

    help for package
    search path
    datasets for intro classes--what is out there
    count.fields

    $ as "syntactic sugar" vs [[]]



    2014-09-19

    moodle.wisc.edu course page
    first homework assignment at moodle
    Data.Rmd
    with() better than attach() ... detach()
    within() to change assignments in structure
    count.fields()
    manual: input/output ... http://cran.r-project.org/doc/manuals/r-release/R-data.html
        read.table: tell what fields are

    data organization
    wide and long formats
    long format--need example
    factor and ordered factor
    subset
        factors, can use drop=TRUE to explicily drop unused levels
        or apply factor() to a factor()
    stack/unstack; reshape
    xtabs(~xtabs(~schoolid, classroom))
    xtabs(~xtabs(~classid, classroom))

    data visualization
    ggplot2.org
    pima indian data from faraway
    qplot
    empirical density plot

    use factors for things that should be factors
    don't do dumb things with boxplots



    2014-09-26

    homework comments
    be sure to document what you did so you will later recall details
    childid problem
    classroom <- withing(classroom, {sex <- factor(sex, labels=c("M","F"))
       minority <- factor(minority, labels=c("N","Y"))
       childid <- factor(childid)
       schoolid <- factor(schoolid)
       classid <- factor(classid)
    }
    str(rownames(classroom))
    ## note: evaluates as character string
    all(str(rownames(classroom) == classroom$childid))

    loops
    R prefers vectorized calculation--work on the whole object

    look ahead
    cd /afs/cs.wisc.edu/p/stat/data
    ls
    cd MS.exam
    ls -l
    cd s11
    ls -l
    linux basic tools
    head file.txt
    wc -l file.txt
    ls -lh
    wc
    less or zless
    zcat file.gz | wc -l

    homework
    ex2.Rmd

    details of Rmd document
    "---" YAML metadata section at top
    html_document to pdf_document
    preliminary section
    set options
    ```{r initial,echo=FALSE,print=FALSE,cache=FALSE}
    library(knitr)
    library(ggplot2)
    load("classroom.rda")
    opts_chunk$set(cache=TRUE)
    options(width=76, show,signif.stars=FALSE, str=strOptions(strict.width="cut"))
    set.seed(1234
    ```
    comments on cache and chunks
    see Rstudio home->products->R packages
        knitr (caution--poor navigation of document)
        R markdown (read this one)
            full specification of pandoc markdown
    note: Rstudio has lookahead for options as you type
    ```{r hist1,echo=FALSE,fig.align="center",fig.cap="Histogram of blah blah",
       fig.height=2.5,fig.width=6.5,fig.lp="fig:hist1",fig.pos="top"}
    qplot(mathkind,data=classroom, geom="histogram")
    ```
    somehow this did not work; will fix later

    back to ggplot2 slides
    bivariate plots
    log-log scale spreads data out nicely
    comparative box plots--horizontal
    regression or ancova
    stat500 data with geom_smooth(method="lm") + coord_equal()
    watch aspect ratio (studied by Bill Cleveland): should be ~45 degree angle
    add reference line using geom_abline
        note Galton's regression toward the mean
    ancova
    cathedral data
    geom_point(aes(color=style)) + geom_smooth(aes=(col=style),method="lm")
    different panels or facets using formula (left=rows, right=columns)
    facet_grid(.~style)
    Tufte's small multiples
    Cleveland: details of how to do this well



    2014-10-10

    assignment due NEXT Tuesday to produce several figures
    look at MS exam data
    ex: Spring 2011 MS exam problem on Quadrat Summary
    auto conversion
    think of names of variables and number of unique values--are they labels?
    note "X" prefix on variable identifier

    single bracket on data.frame gets data.frame: summ[1] vs summ[[1]]
    the first one is like using subset() on a data.frame

    single vs double ampersand (&)
    single: component-wise AND
    double: programmatic AND (evaluates first as scalar; if FALSE do not evaluate second)

    are there any entries that have Browsed but not Present?
    nrow(subset(summ, X2m_SppPresent == "N" & X2m_SPPBrowsed == "Y"))
    -----------------------
    Linear Models
    brain weight data
    ggplot, scale_x_log10()
    geom_smooth(): mostly linear but a bit of a bump
    linear: geom_smooth(method="lm")
    model fitting functions
    style suggestion for reproducibility
        use data option with data.frame after cleaned
        keep Rmd document with steps of cleaning and steps in analysis
    note explicit inclusion of intercept as "~ 1 +"

    model.matrix()
    gaussian model: y ~ N(Xb, s^2 I)
    linear model form works here, but not for more general models (e.g. Poisson)
    str() of model.matrix -- notice "assign" attribute
    many subtle things go on behind the scenes
    model matrix more appropriate name than "design matrix"
    suppress intercept: "~ 0 +"
    coef(summary(fm1)) includes variability but coef(fm1) does not
    vcov(fm1) provides variance-covariance matrix of coefficients
    note: stderr() is error message stream, NOT standard error
    offset(log(BodyWt)) to test if slope is 1
    plot of model fit: get 4 of 6 possible diagnostic plots
    think about aspect ratio

    diagnostics useful, but designed for blind selection of "best" model
    often better these days to use visualization tools to explore

    methods for lm objects 
    generic functions such as print, summary, plot
    what methods does a particular class have?
    non-visible functions (not in NAMESPACE)
    extractor functions such as coef, deviance, logLik
    use methods that exist to "future proof" your code
        role of methods can change in the future
        provide extractors in the code


    2014-10-17

    Rmd and figures
    short wide figures more flexible
    ---
    title:
    author:
    date:
    preamble
        output:
            pdf_document:
                fig_caption:yes
                fig_height: 3
    ---

    preliminary R section
    set options, load libraries, create initial objects (such as plots)

    ## subsection (can be numbered if desired--see manual)

    now look at report and plots for kindergarten math scores
    notice outlying points--what is going on?
    test has minimum and maximum scores
    minimum is allegedly adjusted for possibility of guessing: artificial value
    notice more variability in boys than girls

    style: figure captions as complete sentences, explaining plot. Enough information so busy reader can read caption and comprehend what is going on.

    side-by-side plots: perceive shape but not shift

    histogram vs quantile-quantile vs histogram vs boxplots
    note minority vs non-minority

    scatter plot of score vs gain (=difference)
    notice collinearity: pre and post scores each have variability
    low initial scores have high gains
    loess curve: see http://en.m.wikipedia.org/wiki/Local_regression
    be careful of interpreting intercepts: are they meaningful?

    scatterplot of pre vs post scores (more appropriate)
    use theme(aspect = 1) or coord_equal() to set aspect ratio to one
    facet_grid(sex ~ .) puts one on top of the other
        don't know how to put labels on left rather than top
    facets use the same axes: can look at patterns between
    experiment: what communicates best

    is the variability among schools, classrooms, individuals?
        be careful about confounding these nested sources of variability
    coord_flip()
    what kind of spread within classroom of individuals?
        careful of outliers and leverage if plotting gains
        gains are not effective measure of instructor!
    think about ordering of classrooms
        by ID: meaningless
        by mean
    school11 <- within(droplevels(subset(classroom, schoolid==11),
        classid <- reorder(classid, mathgain))
    note: reorder has third argument for function to use for reordering

    digression on multilevel modelling/hierarchical modeling
        caution on longitudinal data and migration

    ==========================
    Dealing with Big Data
    what is Big Data? (http://www.stat.wisc.edu/bigdata)
        volume: very large
        velocity: arriving and changing rapidly
        variety: many sources
        veracity: 
        validity
        volatility

    Big Data in R
    R is slow interpreter and is single threaded
    in-memory storate, conservative copying
    R is not sutied to real-time processing of data streams

    Moore's law
    number of transistors on IC would double in approximately 18 months
    roughly interpreted as speed of processor
    density of circuits is now incredible (sub-micron geometries)
    density of memory has exploded (solid state drive)
    but cannot speed up clock rate (related to dissipation of energy)
    modern computing architectures evolving quickly
    algorithms designed around how to move data
    to use effectively, want to spread out the calculation

    goal: distribute work across multiple cores
    divide and conquer: map-reduce, also known as hadoop
    use threads, but have to prepare them
    can use snow, mpi, to farm out jobs

    big volume data in R
    read "R Data Import/Export" http://cran.r-project.org/doc/manuals/r-release/R-data.html
    archive.ics.uci.edu/ml/machine-learning-databases/00216
    4.5 Gb size

    next time: linear models,extractors,contrasts



    2014-10-31

    Linear Models
    QR decomposition
    see notes
    log(BodyWt) as response for brain weight data
    methods for qr objects
    note Q1 and Q2 are orthogonal, which implies directly that resid and fitted are orthogonal
    decomposing into orthogonal subspaces
    Fisher with poor eyesight spent evenings thinking rather than reading

    statistics is not a formula, instead it refers to the model

    note: Householder usually yields negative intercept, due to reflection

    style: extract pieces from model rather than going back to original data
    slides show how to extract RSS, coefficients, etc.
    very useful for simulations with same predictors (even if shuffled)

    model.frame and model.response: caution on missing data
    model.frame removes missing values and applied functions/transformations
    model.response only pulls out response for non-missing cases

    relation of linear algebra (Math 340) to numerical linear algebra
    never evaluate inverses except R1 if interested in (X'X)^-1
    computational rank--tolerances "close" to zero

    basic linear algebra subroutines
    LAPACK benchmark
    Revolution R Open (http://www.revolutionanalytics.com/revolution-r-open) has accelerated BLAS using multi-threading
    but does not affect LS calculations due to rank deficiencies with factors (more later)

    Categorical covariates
    degrees of freedom: remove 1 for intercept
    JEdward Deming: burning the toast and then scraping it--dummy variables
    xtable package by David Dahl
    ```{r nm, results="asis", echo=FALSE}
    options(xtable.type="HTML")
    xtable(fm2)
    oldclass <- class(fm2)
    class(fm2) <- "lm"
    xtable(fm2)
    class(fm2) <- oldclass
    ```
    first call gives ANOVA table; second call gives coefficient table

    Model matrix for factor spray
    coef = difference of levels with first level, which is a contrast
    orthogonal contrasts, orthogonal polynomials
    contr.treatment and contr.poly are most often used
    contr.SAS matches SAS
    contr.sum(2) for 2-level factorial designs
    Box, Hunter and Hunter book: http://www.wiley.com/WileyCDA/WileyTitle/productCd-0471718130.html
    details of 2^3 model matrix and design matrix



    2014-11-07

    questions on homework
    facet wrap

    ch 9: multi-factor experiments
    9.1 anova
    formula ".~." is old formula, for instance in update()
    battery separator data
    options(contrasts = c("contr.treatment","contr.helmert"))
    summary(fm1 <- aov(y ~ time * temp * silica, separate))
    notice 3-way interaction is highly significant
    heredity principle: retain all parents of higher order terms
    model.matrix(fm1) gives you encoding
    contrast choice gives you orthogonal matrix
        more stable
        each coefficient is independent
    followup: looking at subsets (temp == "high")

    blocking factors
    gl() generate levels
    ftable(xtabs()) useful to flatten tables
    blocking factor--op--always goes in first

    unreplicated multi-factor design
    have to give up something, usually highest order interactions

    9.2 2^k factorial designs
    saturated model if use all interactions--no d.f. for error
    QQ-plot: outliers suggest significant effects
    normal plot has challenges with sign of signals
    half-normal is more stable: distribution is chi = square root of chi-square
        should go through the origin
        look for points above line through origin

    9,3 fractional factorial design
    run only part of the experiment (save money and time)
    but be careful how you lay it out (plan ahead)
    control what main effects and interactions are aliased (completely confounding)
    see notes for more details--this is material for Stat 424 for instance

    ch 10 regression models
    10,1 inference for a regression line
    timetemp data: ancova
    are the lines different?
    are they parallel?
    is there a non-negligible slope?
    Venables: analysis of variance is really about comparing models, not terms in models

    10.2 other regression models
    note I(x^2) to create second-order numeric interaction
    look at Rmd code to see details
    confidence intervals confint()
    predict() to get prediction values and confidence intervals
    design is according to variables
    model.matrix is derived from design

    continuous and categorical variates
    back to timetemp data
    factor coefficient typeOEM is important: repaired vs OEM
    change in slope measured by typeOEM:temp



    2014-11-14

    SimSpeed.Rmd for today

    case study with large simulation of student

    good packages to study:
    datatable package
    dplyr and magrittr packages by Hadley Wickham

    using alr4 packages
    why not attach package?
    keeps workspace cleaner
    use "LazyData" in DESCRIPTION file for package
    then only loads what you need
    if that is not done, then
    data("ufc", package="alr4")
    will explicitly load "ufc" without other stuff in package

    str(ufc)
    library(ggplot2)
    ## clean up data
    qplot(Species, Dbh, data=ufc,geom="boxplot",xlab="Tree Species",
        ylab="Diameter at breast height (mm)") + coord_flip()
    ## reorder in meaningful way
    qplot(reorder(Species,Dbh), Dbh, data=ufc,geom="boxplot",xlab="Tree Species",
        ylab="Diameter at breast height (mm)") + coord_flip()
    ## could add "+ scale_y_log10()"
    ## meaningful scatterplot
    qplot(Dbh, Height, data=ufc,geom="point",
        xlab="Diameter at breast height (mm)",
    ylab="Tree height (dm)") +
    scale_y_log10() + scale_x_log10() +
    facet_wrap(~ Species)
    ## note some species are rare--drop them?
    ## fit model for one species
    ufcwc <- within(subset(ufc, Species == "WC"), Species <- NULL)
    m1 <- lm(Height ~ 1 + Dbh, data = ufcwc)
    options(show.signif.stars = FALSE)
    summary(m1)
    ## be sure to do reality check--look at fit
    qplot(Dbh, Height, data=ufcwc) + geom_smooth(method="lm")
    qplot(Dbh, Height, data=ufcwc) + geom_smooth()
    ## poor fit on linear scale suggests log-log fit
    summary(m2 <- lm(log(Height) ~ 1 + log(Dbh), data = ufcwc))
    ## residual plot
    plot(m2, which=1)

    reduced <- droplevels(subset(ufc, Species %in% c("DF","GF","WC")))
    str(reduced)
    summary(m3 <- lm(log(Height) ~ 1 + Species + log(Dbh), data = reduced))
    anova(m3)
    ## and also model with interaction (replace "+" by "*")
    -------------------------------------------
    Simulation Speed handout

    ## pull out R code
    library(knitr)
    purl("SimSpeed.Rmd")
    ## then march through the SimSpeed.R code
    system.time(resRepl <- replicate(N, mean(rexp(n))))
    ## replicate statistic mean() N times with sample size n
    qplot(resRep) + geom_density()

    caution on loops: set result vector before you do the loop
    don't append
    resloop1 <- numeric(N)
    system.time(for(i in 1:N) resLoop1[i] <- mean(rexp(n)))
    ## don't do
    resloop1 <- numeric()

    another approach: tradeoff space vs speed
    str(MM <- matrix(rexp(n*N), nr = n)
    system.time(resColMeans <- colMeans(matrix(rexp(n*N), nr = n)))
    very fast, but creates large matrix

    another way: meta-programming using apply()
    apply function mean() over 2nd index
    resApply(MM, 1, mean)

    force garbage collection: gc()
    do this before any systematic timing to reduce variability

    family of apply meta-functions



    2014-11-21

    case study of analysis

    lessons
        use profiling capabilities (based on functions)
            things take a long time in areas of code you don't expect
            local environments within functions are removed
        think (and write) in terms of vectors
        be aware of column major ordering: work down columns in nested loops
            for (k) for (j) for (i) value[i,j,k]
            vast differences in speed for different areas of memory
            avoid creating vectors by appending in loops
        careful about naming objects: readability, searchability
        always set.seed() for simulations
            makes strange behavior repeatable

    start with 2000 4x4 matrices
    generate new set of 4x5 matrices by adding a column
    evaluate a probability (need all matrices available)
    then shift columns over and drop the last
    then iterate this whole process

    lists vs arrays
        array is homogeneous, all elements of same type, easier to access
        list is heterogeneous, need set of (indirect) pointers to different types

    chain <- array(NA, c(4,4,2000))
    ## NB: NA is by default a floating point number
    ## advantage of NA: find out which values are not set (by sum(is.na(...)))

    vectorize runif(n) rather than for(i in 1:n) runif(1)
    rfr <- function(n) -1/log(runif(n))
    chain <- array(rfr(4*4*2000), c(4,4,2000))
    in this case, loop does not cost, but sometimes it does

    caution: your guess of where code spends time may be way off
    rdirichlet(): scalar returns vector, vector returns matrix
    cbind()
    both these functions can be quite slow

    environments
        function call creates an environment
        environment removed at exit

    gtools package: dirichlet distribution stuff among other

    rep(0,n) is slower than numeric(n)
    watch out for 1:n when n=0 is {1,0}
    consider seq_len(n)

    function advice
        pass in numeric arguments
        figure out dimensions inside (no need to pass)
        create temporary objects inside (will be removed with local env)
        vectorize where you can
        short code (with documentation) on whole object often easier to figure out
        R is a functional language
        unit testing: "trust but verify" (RM Nixon)

    arrays and indexing operator
        very flexible
        again, work on whole object if you can

    compiler package can "byte compile" functions
        may get 30% speed increase
        
    functional programming: apply function to an object
        LISP structure sitting under R
        functional vs mechanistic
        divide and conquer
        modern statistical ideas concern patterns and processes, which are functions
        organizing code by functions can help reveal/communicate methods

    Timing
    set.seed() ## make repeatable
    system.time(myfun(args))
    profiling to measure where code bogs down
        call stack written out
        Rprof() ## turn on
        myfun(args)
        Rprof(NULL) ## turn off
        summaryRprof()

    know several ways to use indices into arrays
    diag() can take long time
    for [i,j,k] can use an array as index
    help("[")

    lst[1] vs lst[[1]] for list: what do you get



    2014-12-05

    http://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/

    install.packages("devtools")
    install.packages("roxygen2")

    github and bitbucket as code repositories

    library(devtools)
    install_github("klutometris/roxygen")

    Roxygen 
    emacs ESS widget
    M-x ess-roxy-update-entry create header
    ##' @title name of function
    ##' @param
    ##' @return a modified variable
    ##' @export if function is to be exported

    create package withing Rstudio
    new project -> new R package -> add source files
    x create git repository
    x use packrat with this project (snapshot of depends packages)
    DESCRIPTION
        License: GPL2 usually
        GPL3 related to FFF & Apple Xtools
            other possible licenses
    NAMESPACE
    Read-and-delete-me: read it for instructions

    now that you have a package
    devtools::document()
        takes @arguments directly out of code file using roxygen
        keeps document information in one file (with code)
        updates NAMESPACE and man pages

    script in source as example
    ##' @examples
    ##' L <- 4
    ...
    NULL

    ==================

    build tag under upper right Rstudio window
    Build & Reload: try to build package
    Check: check for errors and all sorts of stuff

    design philosophy
    go from a file to a package to a git repository
    all content built into signngle file
    always write examples
    separate area for tests: do functions work together
        testthat by Hadley Wickham (watch out for approximate equal floating point)
        and produce result you think they should
    devtools::test tests all test_that in a package 

    =======================
    cran.rstudio.com
    R Manuals
        R Data Import/Export
        Writing R Extension
    complete references but intimidating
    documents CRAN standards

    =========================
    Rsave datasets
    extra directories saved in installed package
        inst directory
            special data for tests
            raw source before manipulation

    =============
    r-pkgs.had.co.nz/intro.html
    R packages by Hadley Wickham
    nicely written, compatible with Rstudio
    see also his book
    jekyll: fancy web pages?

    =================
    philosophy
    long file or many short files, say ordered by type of function
    simulations all in one place
    update from one set of values to another

    ===================
    efficiencies
    compile code into byte code
    LazyCode
    LazyData

    ===============
    philosophy on proprietary notebooks
    need license
    v. open source

    transfer of "program culture" training across packages



    2014-12-12

    Special Topics Suggested by Students

    publication, tables, graphics
        LaTeX: Rmd -> Rnw
        Rmd = R + markdown
        Rnw = R + LaTeX
        beamer
        xtable package for tables ready for LaTeX
            special LaTeX packages for extra features
        graphics
            avoid base R graphics
            ggplot2 preferred these days
            think about design of plots
    everyone looks at figures, tables are for obligated stuff
    parallel processing
    examples of reports
    exploring R functions
        read.csv: type name and look at what it is (but comments stripped)
        cd /unsup/R-devel/src/library
        cd base
        ls -la
        you will see man, R, inst, demo folders
        cd R
        look at individual *.R files
        or look in utils for readtable.R
        .Internal or .Primitive or .Call go to compiled C code
            not easy to look at these (such as exp())
            see R journal for Uwe Ligges article on how to find these
            http://stackoverflow.com/questions/14035506/how-to-see-the-source-code-of-r-internal-or-primitive-function

    writing R functions
        adv-r.had.co.nz Hadley Wickham
        think in terms of the whole object
        
    alternative languages
        Julia, Python, Matlab

    characteristics of R (mid 1980s design)
        interpreted, vectorized, functional semantics
        each function evaluation traces through code
        don't modify arguments -> do a lot of copying
        storage allocation and garbage collection are important
        garbage collector
    global stop mark sweep
            generational garbage collector
            reference counting for localized garbage collecting
    Ed Deming: bruning the toast and then scraping it
        homo-iconic
            everything is (internally) a vector
            there are no scalars
            running an R loop is potentially expensive
            updating is expensive as well
    Matlab/Octave
        Matlab: proprietary with many nice GUI features
        Octave: open source implementation (bug for bug compatibility)
            developed by John Eaton, UW Chem Engr
            community has developed but is not flourishing
        everything is a matrix; vectorization
    R API and Rcpp
        API: interface for other languages (C, Fortran)
            has to be in R format, etc.
        Rcpp: Dirk Eddelbuettel and Romain Francois http://www.rcpp.org
            http://cran.r-project.org/web/packages/Rcpp/vignettes/Rcpp-package.pdf
            template meta-programming, but complicated (seamless?)
    Python: general purpose programming language
        used extensively in bioinformatics
        scripting language, can be used as a filter between applications
        object oriented in C++/Java sense: methods associated with a data type
        many libraries / packages
        technical computing requires add-ons to python
        byte compiler and derivative languages
    Julia http://julialang.org from MIT
        recently developed (2012)
        uses modern CS tools (just in time JIT compiler)
        most successful JIT: javascript and Google's V8 engine
        LLVM low level virtual machine project
            U Chicago and Argonne Nat Lab
            open source compiler technology, highly modular
        youtube EuroSciPy 2014 Steven Johnson talk
    http://www.youtube.com/watch?v=jhlVHoeB05A
        wide variety of data types
        function based, uses multiple dispatches
            dispatch on signature of input formats (think R S3 and S4 methods)
            multiple dispatches consider several arguments
        see Bates presentations under github account
        powerful, flexible language where the future lies

