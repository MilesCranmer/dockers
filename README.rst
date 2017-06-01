Dockerfiles
===========

Assortment of dockerfiles I use. Some of the packages may be otherwise
hard to build, so the dockerfile may save some time. I remove a
Dockerfile if it gets integrated into the master branch for the library
itself.

I also have two incuded shell scripts (Linux and OS X) which
automatically set up a X11 for some container, so you can launch a GUI
from inside it and interact.

**Update**: I am now going to use docker hub to host images for all of these
dockerfiles. To make this work, I am putting a different
Dockerfile on each branch. Then, you will be able to pull
images using, e.g.,  `docker pull mcranmer/dockers:cuda-buildpack`.

List of Docker containers:
==========================

Quick commands
--------------

-  latex2rtf: https://sourceforge.net/projects/latex2rtf/
-  pandoc: http://pandoc.org/

Other libraries
---------------

-  spinmob: https://github.com/Spinmob/spinmob
-  ciao: http://cxc.harvard.edu/ciao/
-  cfitsio: https://heasarc.gsfc.nasa.gov/fitsio/fitsio.html
-  healpix: http://healpix.jpl.nasa.gov/
-  wcslib: http://www.atnf.csiro.au/people/mcalabre/WCS/

Personal images
---------------

- cuda-buildpack: Copy of `buildpack-deps Dockerfile
  <https://github.com/docker-library/buildpack-deps/blob/5589bc25a700d8b22b23af0964b77a75de47607d/xenial/Dockerfile>`_, but
  built on top of `nvidia/cuda
  <https://github.com/NVIDIA/nvidia-docker>`_.

To build any, run:

::

    $ docker build -t <image name> -f <filename> .

So, for healpix, this would be:

::

    $ docker build -t healpix -f healpix .

GUI usage:
==========

Linux:

::

    $ ./launch_gui_linux_docker.sh <image> <directory to link> 

Mac (a bit more developed):

::

    $ ./launch_gui_mac_docker.sh <image> <directory to link> <starting command> <container name>

Note that the Mac version requires Xquartz and socat installed.

The default port for both is 8888.
