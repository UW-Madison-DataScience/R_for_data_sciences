## Scaling up the split-apply-combine paradigm

The [split-apply-combine philosophy for data tables](../curate/data_tables.Rmd) scales up to much larger problems. Sometimes the tables themselves grow too big for one computer (or CPU); other times the tables may be reasonably sized, but the tasks are numerous. This split-apply-combine at scale has been called map-reduce, hadoop and high throughput computing.
The idea is to take a big task; split it into many (1000s or millions) small tasks; send each of those to a separate CPU; and combine the results back together (reduce) once all are completed. These projects typically take 1000s of compute hours, and in some cases millions.

This works best when tasks are "parallel" -- can be done independently of each other, such as separate simulations from the same model system. Unfortunately, some loosely coupled tasks depend on each other and require more complicated arrangements, perhaps even needing high performance computing such as graphical CPUs, or GPUs.

- [MapReduce](https://en.wikipedia.org/wiki/MapReduce)
- [Hadoop](https://hadoop.apache.org/)
- [Berkeley Spark]() | [sparlyr package](https://blog.rstudio.org/2016/09/27/sparklyr-r-interface-for-apache-spark/)
- [HTCondor](https://research.cs.wisc.edu/htcondor/)
- [DeltaRho](http://deltarho.org/)

### High Throughput & High Performance Computing

-   [R/parallel](http://www.rparallel.org/)
-   [Parallel R book (Q. Ethan McCallum, Stephen Weston, 2011, O'Reilly
    Pub.)](http://shop.oreilly.com/product/0636920021421.do)
-   [Vaughan LK, Srinivasasainagendra V (2013) Where in the genome are
    we? A cautionary tale of database use in genomics research. Front.
    Genet. 4:38.](http://dx.doi.org/10.3389/fgene.2013.00038)
-   [Data-Intensive
    Science](http://www.delsaglobal.org/news/publications/item/download/20_b530f9de17aca08b4fcee1d8bd78ea32)
    think-piece from [Data-Enabled Life Science Research
    (DELSA)](http://www.delsaglobal.org/)
-   [Cloud Computing
    (Wikipedia)](http://en.wikipedia.org/wiki/Cloud_computing)
-   [Grid Computing (Wikipedia: see list of national
    projects](http://en.wikipedia.org/wiki/Grid_computing)
-   [Open Science
    Grid](http://www.openscienhttp://en.wikipedia.org/wiki/Cloud_computingxucegrid.org)
-   [HTCondor Project](http://research.cs.wisc.edu/htcondor/) | [Center
    for High Throughput Computing, UW-Madison](http://chtc.cs.wisc.edu/)
-   [IEEE High Performance Computing
    Conference](http://www.hipc.org/hipc2012/index.php)
-   [NVIDIA High Performance
    Computing](http://www.nvidia.com/object/tesla-supercomputing-solutions.html)
-   [Simulation Based Engineering Lab,
    UW-Madison](http://sbel.wisc.edu/)
-   [TurnKeyLinux.org](http://www.turnkeylinux.org/) |
    [OwnCloud.org](http://owncloud.org/)
-   [OpenData Exchange](opendata.stackexchange.com) | [OpenData
    Foundation](opendatafoundation.org)
-   [Algorithms, Machines, People (AMP Lab,
    UC-Berkeley)](http://amplab.cs.berkeley.edu/)
-   [BIGDATA: White House Initiative](http://www.stat.wisc.edu/bigdata)
-   [BackBlaze Online Backup](http://www.backblaze.com) ([BackBlaze
    Storage Pod
    Details](http://blog.backblaze.com/2011/07/20/petabytes-on-a-budget-v2-0revealing-more-secrets/))
-   [Dremel: Interactive Analysis of Web-Scale Datasets
    (Google)](http://research.google.com/pubs/pub36632.html)

