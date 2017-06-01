Dockerfiles
===========

Assortment of dockerfiles I use. Some of the packages may be otherwise
hard to build, so the dockerfile may save some time. I remove a
Dockerfile if it gets integrated into the master branch for the library
itself.

I also have two incuded shell scripts (Linux and OS X) which
automatically set up a X11 for some container, so you can launch a GUI
from inside it and interact.

List of Docker containers:
==========================

-  spinmob: https://github.com/Spinmob/spinmob
-  ciao: http://cxc.harvard.edu/ciao/
-  cfitsio: https://heasarc.gsfc.nasa.gov/fitsio/fitsio.html
-  healpix: http://healpix.jpl.nasa.gov/
-  wcslib: http://www.atnf.csiro.au/people/mcalabre/WCS/
-  latex2rtf: https://sourceforge.net/projects/latex2rtf/

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
