## Professional Skills for Data Science

These materials are for statisticians at all levels who want to learn
more about modern network and computing tools for statistics. The course
for Fall 2015 is: Stat 627 Professional Skills for Data Science (1-2 cr,
Thursdays 1-2:15pm, 1010 MSC). [This is NOT the Stat 327 "Data Analysis
with R" course.] This is recommended for all new graduate students. It
will emphasize training in best practices with R, focusing on how to
organize your work (using Rstudio), how to build excellent graphics
(using ggplot2) and how to document your work (using R markdown), among
other things. This is being led by Brian Yandell and Doug Bates in Fall
2015; see [moodle
site](https://ay15-16.moodle.wisc.edu/prod/local/wiscservices/login/index.php),
[Stat 627 Syllabus](/~yandell/data_science/Stat627Syllabus.pdf) and
[Jenny Bryan's Stat 545 at UBC](http://stat545-ubc.github.io). The
course covers

-   installation of the RStudio application on personal computers and
    use of RStudio on departmental computers.
-   Representation of data in R, including factors and data frames.
-   Manipulation and display of data in R.
-   Visualization of data with the ggplot2 package for R.
-   The "R Markdown" language for literate programming and reproducible
    research.
-   The R formula language and its use for fitting linear models and
    generalized linear models.
-   Contrast specifications for factors and their impact on
    interpretation of coefficient estimates.

The raw material for Fall 2014 was at https://github.com/dmbates/stat692
with more material in [Yandell's Stat 692
Notes](/network-skills/stat692-notes) related to Bates's talks.

* * * * *

Much of the material below was added for Fall 2013. We used the
following network tools to deliver information:
[drupal](/network-skills) (open access web pages--this page);
[box](https://uwmadison.app.box.com/files/0/f/1134810127/Stat_692_Network_Skills_for_Statisticians)
(drop box for collaboration); and
[moodle](https://courses.moodle.wisc.edu/prod/course/view.php?id=1758)
(course collaboration environment).

Resource Topics and Useful Links
--------------------------------

-   [Communication & Writing](#communicate)
-   [Visualization & Graphics](#visual)
-   [UW-Madison Network Information](#network)
-   [Linux Operating System & bash Shell](#linux)
-   [R Language Tips & Tricks](/network-skills/learnR)
-   [Going Beyond R](#beyondR)
-   [High Throughput & High Performance Computing](/reproducible#high)
    (distribute work across multiple processors)
-   [Reproducible Research](/reproducible) (workflows, exact
    reproduction of work)
-   [Big Data](/bigdata) (going beyond the laptop)
-   [Analytics](/analytics) (discovery & communication of patterns in
    data)
-   [Online Courses](/online) (learning & teaching tools)
-   [Data Repositories](#data)

We are in the age of [big data](/bigdata), when it is not enough to
think of what you can do with the computer on your desk or lap. Further,
statistics as a field is being transformed by [analytics](/analytics),
the process of discovery and communication of meaningful patterns in
data. Today, statisticians of all flavors--from the most pragmatic to
the most theoretical--need a variety of computational tools, and we need
access to vast resources across computer networks. While many of us work
in closed shops, behind proprietary walls, the world of open source is
core to sharing methods and information. Thus, it is important to
understand the power and role of the [linux](http://www.linux.org)
operating system and of the [R](http://www.r-project.org) language.
However, these only the beginning. While we focus on computational
skills, communication is key to the field of statistics, and to science
in general. And visualization is at the core of communicating complex
ideas, providing a window of insight into the world of data. Today, much
communication is online, and we must learn how to leverage online data
and network tools to advance in the field, and to do our work
effectively.

* * * * *

### Communication & Writing

Many of the links above have communication resources.

-   Communication Skills (giving professional talks)
    -   [Brad Efron's 13
        Rules](http://www-stat.stanford.edu/~ckirby/brad/other/2013ThirteenRules.pdf)
    -   [Guidelines for Preparing Effective Presentations (Biometrics
        ENAR Section)](http://www.enar.org/presentationguidelines.cfm)
    -   [James Gee's 14 Principles of Good
        Teaching](http://www.jamespaulgee.com/node/74) & [Good
        Learning](http://mason.gmu.edu/~lsmithg/jamespaulgee2print.html)
    -   [Making Data Meaningful Guides(UN Econ Commission for
        Europe)](http://www.unece.org/stats/documents/writing/)
    -   [Presentation Tips
        (About.com)](http://entrepreneurs.about.com/cs/marketing/a/presentingstats.htm)
    -   [Tips for Effective Presentation (Accu
        Conference)](http://www.accuconference.com/resources/effective-presentations.aspx)
    -   [Statistical Presentation Guidelines (Nat U
        Singapore)](http://blog.nus.edu.sg/dsap/2010/12/15/statistical-presentation-guidelines/)
    -   [Presenting Statistics on Web Sites (John Maslin,
        Geowise)](http://www.slideshare.net/scareymonster/presenting-statistics-on-web-sites)
    -   [Guidelines for Statistical Analysis and Data Presentation
        (Ecological Society of
        America)](http://esapubs.org/esapubs/statistics.htm)
    -   [Creativity and Learning: A Conversation with Lynda Barry
        (lynda.com)](http://www.lynda.com/Business-Illustration-tutorials/Creativity-Learning-Conversation-Lynda-Barry/136654-2.html)
    -   The Care and Feeding of [the
        Biostatistician](http://simplystatistics.org/2013/10/08/the-care-and-feeding-of-the-biostatistician/)
        & [the Scientist
        Collaborator](http://simplystatistics.org/2013/10/09/the-care-and-feeding-of-your-scientist-collaborator/)
        (Elizabeth Matsui & Roger Peng)
    -   [Biologist Talks to Statistician
        (video)](http://www.youtube.com/watch?v=Hz1fyhVOjr4)
    -   [Communicating Statistical Findings to Consulting Clients
        Operating in a Decisionmaking Climate: Best and Worst Practices
        (Ghement Stat Cons)](http://www.ghement.ca/jsm2014.html)
    -   [ASA Statistical Consulting
        Section](http://www.amstat.org/sections/cnsl)
-   Technical Writing:
    -   [LaTeX](/network-skills/latex) has for years been the standard
        for writing beautiful math expressions and with the advent of
        versions like pdflatex, xelatex and lualatex it is very
        convenient to produce PDF files. The big drawback to PDF is that
        the formatting is fixed in the file - you can't "reflow" the
        text. HTML and epub formats allow reflowing of text so that you
        can easily read a document on a tablet or even a smartphone.
        However, you usually lose the beautiful math formatting.
    -   [MathJax.org](http://mathjax.org) provides a way of
        incorporating high-quality math expressions in HTML for reading
        in a browser. The Rmd translator built into RStudio allows the
        use of MathJax markup, which is essentially the same as LaTeX
        expressions. MathJax is also available in IPython notebooks and
        IJulia notebooks. These are interactive web documents but can be
        converted to static HTML pages. Doug Bates created [Mathjax
        static HTML for the MixedModels.jl Julia
        package](http://dmbates.github.io/MixedModels.jl/). Wes Brooks
        included [MathJax typesetting in a blog written in Markdown and
        served via
        Django](http://somesquares.org/blog/2013/4/integrating-mathjax-and-markdown-django).
-   [UW Writing Center](http://www.writing.wisc.edu/)

* * * * *

### Visualization & Graphics

Visualization is the key to quick insights with data.

-   [Visualization with R](/network-skills/learnR#graph)
-   Dynamic Graphics
    -   [Shiny](http://shinyapps.io)
        -   [UW Statistics Shiny Apps](http://www.stat.wisc.edu/shiny/)
        -   [Doug Bates' Normal Density Shiny
            App](https://bates.shinyapps.io/normalDensity)
    -   [d3: Data-Driven Documents](http://d3js.org)
        -   [Interactive Graphics With D3 (Karl
            Broman)](http://www.biostat.wisc.edu/~kbroman/presentations/InteractiveGraphs3/)
        -   [Kepler's Tally of Planets (Jonathan Corum, NY
            Times)](http://www.nytimes.com/interactive/science/space/keplers-tally-of-planets.html?smid=tw-share&_r=0)
        -   [Data to Insight (IN U)](http://d2i.indiana.edu/)
        -   [D3 Graphics
            Gallery](https://github.com/mbostock/d3/wiki/Gallery) &
            [Tutorials](https://github.com/mbostock/d3/wiki/Tutorials)
        -   [Interactive Data Visualization for the Web (Scott
            Murray)](http://alignedleft.com/tutorials/d3/)
        -   [d3-cartogram](https://github.com/shawnbot/d3-cartogram)
-   [UW CS Graphics Group (Michael Gleischer, Kevin
    Ponto)](http://graphics.cs.wisc.edu/)
-   [UW Living Environments Laboratory (the CAVE) (Patti Brennan, Kevin
    Ponto)](http://wid.wisc.edu/research/lel/)
-   [How to Display Data
    Badly](http://www.biostat.wisc.edu/~kbroman/presentations/graphs_uwpath2012.pptx)
    & [Top 10 Worst
    Graphs](http://www.biostat.wisc.edu/~kbroman/topten_worstgraphs/)
    ([Karl Broman](http://www.biostat.wisc.edu/~kbroman/presentations))
-   [Edward Tufte](http://www.edwardtufte.com/tufte/) & [Evils of
    PowerPoint](http://www.thejuryexpert.com/2011/11/a-necessary-evil-edward-tufte-and-making-the-best-of-powerpoint/)
-   [Gapminder](http://www.gapminder.org/) | [Six Simple Techniques for
    Presenting Data (Hans
    Rosling)](http://sixminutes.dlugan.com/six-simple-techniques-for-presenting-data-hans-rosling-ted-2006/)
-   [Informative Presentation of Tables, Graphs and Statistics (U
    Reading Stat Service
    Ctr)](http://www.reading.ac.uk/ssc/n/resources/Docs/PresentationOfTablesGraphsAndStatistics.pdf)
-   [Exploratory & Graphical Methods of Data Analysis Using SAS (Michael
    Friendly)](http://www.datavis.ca/courses/eda/)
-   [Google N-Grams](https://books.google.com/ngrams)
-   [BabyName Wizard: Voyager (Laura
    Wattenberg)](http://www.babynamewizard.com/voyager#)
-   [Fernanda Viegas Visualization
    Projects](http://fernandaviegas.com/projects.html)
-   [ImageJ](http://rsbweb.nih.gov/ij/) |
    [igraph](http://igraph.sourceforge.net/) |
    [Cytoscape](http://www.cytoscape.org/)
-   [Nature Visualization & Science
    Forum](http://network.nature.com/groups/scivis) |
    [Cartograms](http://en.wikipedia.org/wiki/Cartogram) | [Information
    Aesthetics](http://infosthetics.com/) | [Visual
    Complexity](http://www.visualcomplexity.com/)
-   [Science & NSF 2013 Visualization
    Challenge](http://m.sciencemag.org/content/343/6171/600.full)
-   [NY Times Labs Project
    Cascade](http://nytlabs.com/projects/cascade.html)
-   [PhotoSynth](https://photosynth.net/) ([Blaise Aguera Ted
    Talk](http://www.ted.com/talks/blaise_aguera_y_arcas_demos_photosynth))
    | [Community Photo
    Collections](http://grail.cs.washington.edu/projects/cpc/) ([Build
    Rome in a Day](http://grail.cs.washington.edu/rome/))

* * * * *

### UW-Madison Network Information

Statistics is a department embedded in the UW infrastructure. Much of
our system, including stat.wisc.edu email and backup, is coordinated
with the Computer Systems Lab (CSL), but the wiring and wireless
infrastructure is maintained by the campus. As such, it is important to
learn about our system, the CSL system, and the campus systems.

-   [Statistics Computer Lab](http://www.stat.wisc.edu/computing-lab)
    ([Documentation](http://research.cs.wisc.edu/twiki/bin/view/StatDocs))
    -   [How to Execute Long Running Jobs
        Remotely](http://www.stat.wisc.edu/search/node/long%20running)
-   [Computer Systems Lab (CSL)
    Documentation](http://research.cs.wisc.edu/twiki/bin/view/CSDocs)
-   [UW Library Resources](https://www.stat.wisc.edu/library-resources)
-   [UW DoIT Software Information](http://www.doit.wisc.edu/software/)
-   [UW DoIT Network Services](http://www.doit.wisc.edu/network/)
    ([Knowledge Base](https://kb.wisc.edu/ns/))
-   Remote Computing
    -   [Calendars](http://www.doit.wisc.edu/calendaring/)
    -   Email: [WiscMail](http://www.doit.wisc.edu/wiscmail/) & [CSL
        Email
        FAQs](http://research.cs.wisc.edu/twiki/bin/view/CSDocs/EmailFAQs)
    -   [UW-Madison Box](https://kb.wisc.edu/page.php?id=27827)
    -   UW Access to [Google Apps](http://www.doit.wisc.edu/googleapps)
        & [Google
        Drive](http://www.doit.wisc.edu/uw-google-service-expands-with-google-drive/)
    -   Instruction Tools: [Moodle](http://moodle.wisc.edu) &
        [Learn@UW/Desire2Learn](https://learnuw.wisc.edu/toolbox/d2l.html)
    -   [UW Kalpurna
        Mediaspace](http://www.doit.wisc.edu/news/create-share-videos-photos/)
-   [CIO Information Security](http://www.cio.wisc.edu/security.aspx)
    -   [IT Guides for Students, Faculty &
        Staff](http://www.cio.wisc.edu/security-students-faculty-staff.aspx)
    -   [Protect Yourself: Secure Your
        Computer](http://www.cio.wisc.edu/security-secure.aspx)
    -   [UW Virtual Private Network
        (WiscVPN)](http://www.doit.wisc.edu/network/vpn/)
    -   [UW Tech Partners](http://www.doit.wisc.edu/techpartners/)
    -   [UW IT Policies](http://www.cio.wisc.edu/policies.aspx)
-   [UW Advanced Computing Infrastructure (ACI)](http://aci.wisc.edu)
    -   [Center for High Throughput Computing
        (CHTC)](http://chtc.cs.wisc.edu/) &
        [HTCondor](http://research.cs.wisc.edu/htcondor/)
    -   [Simulation Based Engineering Lab](http://sbel.wisc.edu/)
    -   [Other UW Infrastructure Links](/infrastructure)
-   [SpeedTest.net: Test Your WiFi Connection](http://www.speedtest.net)
-   [Visualizing Global Internet
    Performance](http://www.akamai.com/html/technology/visualizing_akamai.html)

* * * * *

### Linux Operating System & bash Shell

Linux is the "operating system", the system that organizes work done on
many computers, including the main UW Statistics machines. When you type
instructions, or commands, on Linux, you do this with a "shell", which
has a language structure worth learning. The primary shell for linux is
the Bourne again shell (bash), written by Brian Fox and named humorously
after the designer of the first unix shell, Steve Bourne.

-   [Bourne Again Shell (bash)
    (wikipedia)](http://en.wikipedia.org/wiki/Bash_(Unix_shell))
-   [Bourne Again Shell (bash) Manual
    (gnu.org)](https://www.gnu.org/software/bash/manual)
-   [Usenix Article on bash (Chet
    Ramey)](http://tiswww.case.edu/php/chet/bash/article.pdf)

-   [Linux.org](http://www.linux.org) ([Beginner
    Tutorials](http://www.linux.org/forums/beginner-tutorials.53/))
-   [Wikipedia History of Linux](http://en.wikipedia.org/wiki/Linux)
-   [WikiBooks Linux Guide](http://en.wikibooks.org/wiki/Linux_Guide)
-   [Intro to Linux](http://www.tldp.org/LDP/intro-linux/html/) ([Linux
    Documentation Project Guides](http://www.tldp.org/guides.html))
-   [TechRadar Beginner's Guide to
    Linux](http://www.techradar.com/us/news/software/operating-systems/beginner-s-guide-to-linux-where-to-start-1066778)
-   [LifeHacker Getting Started with
    Linux](http://lifehacker.com/5778882/getting-started-with-linux-the-complete-guide)
-   [Ultimate Linux Newbie Guide](http://linuxnewbieguide.org)
-   [U Surrey Unix/Linux Tutorial for
    Beginners](http://www.ee.surrey.ac.uk/Teaching/Unix/)
-   [Linux.com Linux User
    Guides](http://www.linux.com/learn/new-user-guides)
-   [SourceForge Linux Guide](http://linuxguide.sourceforge.net)
-   Linux Youtube Videos
    -   [The Origins of Linux (Linus
        Torvalds)](http://www.youtube.com/watch?v=WVTWCPoUt8w)
    -   [Basic Linux Tasks](http://www.youtube.com/watch?v=OnSUX2otYos)

* * * * *

### Going Beyond R

R is one of many languages and other electronic tools of value to
staticians.

-   [R Language Tips & Tricks](/network-skills/learnR)
-   [Statistical Computing Courses by Karl
    Broman](http://www.biostat.wisc.edu/~kbroman/teaching/)
    -   [Tools for Reproducible Research
        (2014)](http://kbroman.github.io/Tools4RR/)
    -   [Notes for a Statistical Programming Course
        (2012)](http://kbroman.wordpress.com/2012/05/25/a-course-in-statistical-programming/)
    -   [Advanced Statistical Computing (Karl Broman 2001
        Course)](http://www.biostat.wisc.edu/~kbroman/teaching/statcomp)
-   [UW ACI Data- and Software-Carpentry
    Workshops](http://aci.wisc.edu/data-carpentry-and-software-carpentry-workshops/)
    ([Software-Carpentry.org](http://software-carpentry.org) &
    [Data-Carpentry.org](http://www.datacarpentry.org))
-   [Statistical Computing](http://www.stat.cmu.edu/~cshalizi/statcomp/)
    & [Advanced Data Analysis](http://www.stat.cmu.edu/~cshalizi/uADA/)
    (Cosma Shalizi)
-   [Statistical Computing Software (Mark Irwin,
    2005)](http://www.markirwin.net/stat135/)
-   [Julia Language (distribute-enabled language that is similar to,
    faster than, younger than R)](http://julialang.org/)
    -   [Julia: a new language for technical computing (Revolution
        Analytics)](http://blog.revolutionanalytics.com/2012/04/julia-a-new-language-for-technical-computing.html)
    -   [Doug Bates's empirical CDF in Rcpp &
        Julia](https://github.com/dmbates/ecdfExample)
    -   [Gist regarding handling large data sets for genome-wide
        association studies using Julia vs R (Doug
        Bates)](https://gist.github.com/dmbates/5681368)
    -   [Julia Workshop (Doub
        Bates)](http://nbviewer.ipython.org/github/dmbates/JuliaWorkshop/tree/master/)
    -   [Julia Language
        Documentation](http://media.readthedocs.org/pdf/julia/latest/julia.pdf)
-   [GitHub](http://github.org)
    -   [How GitHub uses GitHub to Build
        GitHub](https://speakerdeck.com/holman/how-github-uses-github-to-build-github)
    -   [GitHub Tutorial (Karl
        Broman)](http://kbroman.github.io/github_tutorial)
-   [GNU Make Tutorial (Karl
    Broman)](http://kbroman.github.io/minimal_make)
-   [Information on SAS](/~yandell/software/sas/)
-   [Software Packages & Languages
    Information](/~yandell/software/software.html)
-   See also [Reproducible Research](/reproducible)
-   [StackOverflow Tags](http://stackoverflow.com/tags)
-   [ElasticSearch](https://www.elastic.co/products/elasticsearch)

* * * * *

### Data Repositories

We have a local directory [/p/stat/Data](file:///p/stat/Data) with data
sets from Devore's "Engineering Statistics" (Devore, used in Statistics
312), Box, Hunter & Hunter's "Statistics for Experimenters" (BHH, used
in Statistics 424), and Milliken & Johnson's "Analysis of Messy Data"
(MJ); see also [Yandell's "Practical Data
Analysis"](http://www.stat.wisc.edu/~yandell/pda). The Devore directory
has both portable Minitab worksheets and system specific worksheets.
Useful to consult [StatLib](http://lib.stat.cmu.edu/) or the [Virtual
Library: Statistics](http://www.stat.ufl.edu/vlib/statistics.html) for
the official lists of datasets maintained by the statistics community.
Also, the [Internet Scout
Toolkit](http://scout.cs.wisc.edu/scout/toolkit/) is an excellent source
for datasets from many disciplines and organizations.

-   [Data Stories Podcasts](http://datastori.es)
-   [Chance
    Database](https://www.dartmouth.edu/~chance/teaching_aids/data.html)
-   [Virtual Library:
    Statistics](http://www.stat.ufl.edu/vlib/statistics.html): [Data
    Sources](http://www.scs.unr.edu/~cbmr/research/data.html)
-   [e-MATH, American Mathematical Society](http://e-math.ams.org/)
-   [Fachinformationszentrum Karlsruhe
    (FIZ)](http://www.zblmath.fiz-karlsruhe.de/), home of Zentralblatt
    and the MATH Database
-   [Statistics Society of Canada](http://www.ssc.ca/) Case Studies
    [1997](http://cs.dal.ca/~bsmith/casestud.html) &
    [1999](http://icarus.math.mcmaster.ca/peter/sora/case_studies_99/)
-   [StatLib](http://lib.stat.cmu.edu/): [Data and Story Library
    (DASL)](http://lib.stat.cmu.edu/DASL/)
-   [SSC 2009 Case
    Studies](http://www.ssc.ca/documents/case_studies/2009/index_e.html)
-   [U WI Medical School List of Data
    Resources](http://www.biostat.wisc.edu/infolink/research/research.html)
-   [WI Federal Research Data Center](http://rdc.wisc.edu/): [Public
    Access Data Products &
    Tools](http://www.census.gov/ces/dataproducts/public_data.html)
-   [NY City Open Data](https://nycopendata.socrata.com) | [I Quant
    NY](http://iquantny.tumblr.com)
-   [US Dept Education College Scorecard
    Data](https://collegescorecard.ed.gov/data/)
-   [UN Data Revolution](http://www.undatarevolution.org/) |
    [](http://data.un.org)
-   [World Bank Data](http://data.worldbank.org) ([Data
    Catalog](http://datacatalog.worldbank.org))
-   [Google Flu Tracker](http://www.google.org/flutrends/about/)
-   [Consortium for International Earth Science Information Network
    (CIESIN)](http://www.ciesin.org/)
-   [Gapminder](http://www.gapminder.org):
    [Data](http://www.gapminder.org/data/) &
    [Documentation](http://www.gapminder.org/data/documentation/)
-   [Environmental Organization WebDirectory:
    Databases](http://www.webdirectory.com/Databases/)
-   [Bristol Centre for Computing in the Social Sciences
    (BizEd)](http://bizednet.bris.ac.uk:8080/dataserv/datahome.htm)
-   [Christmas Bird Counts](http://www.nmt.edu/~shipman/z/cbc/)
-   [Analyzing Baseball Data with
    R](https://github.com/maxtoki/baseball_R)
-   [Yahoo! Datasets](https://webscope.sandbox.yahoo.com)
-   [last.fm Music
    Data](http://labrosa.ee.columbia.edu/millionsong/lastfm) | [Group
    Lens (Movie Lens)
    Datasets](http://grouplens.org/datasets/movielens/)
-   ML: [Machine Learning Datasets](http://mldata.org/) | [Kaggle Data
    Competitions](http://www.kaggle.com/) | [KD Nuggets Dataset
    List](http://www.kdnuggets.com/datasets/index.html) | [KDD
    Cup](http://www.kdd.org) | [HetRec
    Datasets](http://ir.ii.uam.es/hetrec2011//datasets.html) | [UCI
    Machine Learning Repository](http://archive.ics.uci.edu/ml/)

