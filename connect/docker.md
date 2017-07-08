## Docker and Guix

[Docker](https://www.docker.com/) and [Guix](https://www.gnu.org/s/guix) are mechanisms for building and running isolated “containers” of software.
They eliminate “works on my machine” problems when collaborating on code with co-workers; enable running and managing apps side-by-side in isolated containers to get better compute density; and can be used to build agile, updateable software delivery pipelines. 
They offer package management features, support transactional upgrades and roll-backs, and per-user profiles. While Docker is better known, it requires privileged (root) management. Guix works without need for root privilege.

### [Docker](https://www.docker.com/)

- [A hands on introduction to docker](http://angus.readthedocs.io/en/2016/week3/CTB_docker.html) 
- [AntiSMASH](http://antismash.secondarymetabolites.org/)
- Multiplatform
- Requires root permissions to install but not to run(?)

### [GNU Guix](https://www.gnu.org/s/guix)

- Doesn’t require root to install
- Multiplatform
- [Guix Notes (Pjotr Prins)](https://github.com/pjotrp/guix-notes)
- [Reproducible and User-Controlled Software Environments in HPC with Guix (white paper by Ludovic Courtès & Ricardo Wurmus)](https://arxiv.org/abs/1506.02822)
- [GNU Guix in an HPC Environment (Ricardo Wurmus)](http://elephly.net/posts/2015-04-17-gnu-guix.html)
- [Making the Case for adopting GNU Guix for Linux package management (Malcom Cook)](https://github.com/malcook/sce)
- [GNU Guix Reference Manual](https://www.gnu.org/software/guix/manual/)
