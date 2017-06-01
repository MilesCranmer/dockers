Dockerfiles
===========

This is assortment of dockerfiles, images, scripts, and other things
that I find useful.

Example
-------

Converting latex to rich text format:

.. code::
    
    docker_cmd latex2rtf latex2rtf myfile.tex

This command pulls from `mcranmer/dockers:latex2rtf`, runs it,
then executes the `latex2rtf` command inside the container
on the linked file `myfile.tex`, which creates an rtf file.

Or, if you want to build a solid build
system on top the nvidia/cuda image, add to your dockerfile:

.. code::
    
    FROM mcranmer/dockers:cuda-buildpack

Which gives you everything in the buildpack-deps:xenial
image on top of an nvidia/cuda base container.

I'm also
keeping some dockerfiles for notoriously
difficult to built astronomy software packages.

Other scripts
-------------

I have two incuded shell scripts (Linux and OS X) which
automatically set up a X11 for some container, so you can launch a GUI
from inside it and interact. You probably need to fiddle with 
the environment of the container (e.g., `ENV DISPLAY :0`) to
get it to work.

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
  
  - This should give you a relatively complete
    build environment in Ubuntu 16.04 on a GPU-enabled machine.


Manual building
===============

To build any, run:

.. code::

    $ docker build -t <image name> -f <filename> .

So, for healpix, this would be:

.. code::

    $ docker build -t healpix -f healpix .

GUI usage:
==========

Linux:

.. code::

    $ ./launch_gui_linux_docker.sh <image> <directory to link> 

Mac (a bit more developed):

.. code::

    $ ./launch_gui_mac_docker.sh <image> <directory to link> <starting command> <container name>

Note that the Mac version requires Xquartz and socat installed.

The default port for both is 8888.
