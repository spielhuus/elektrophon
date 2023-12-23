---
author: "spielhuus"
categories:
- article
date: 2020-12-01
excerpt: "The elektrophon is developed with a continuous development lifecycle. The circuits for the modules and articles are first simulated with spice. elektron notebooks are used to edit and run the simulations. To run the notebooks you need to install the required software. Here is a list of all the needed software and tools."
hero_image: "arbeitsplatz-hero_landscape.jpg"
hero_mobile: "arbeitsplatz-hero_portrait.jpg"
image": "arbeitsplatz.jpg"
subtitle: "All the necessary applications for developing the elektrophon."
tags:
- grundlage
title: arbeitsplatz
version: 1
---
## Dependencies

The main software to edit the schematic and PCB files is Kicad. Elektron is used to simulate the circuits and automate the build process.

The software used to create the notebooks, schematics and PCB's.

* [KiCad EDA](https://kicad-pcb.org/) Cross Platform and Open Source Electronics Design Automation Suite.
* [ngspice](http://ngspice.sourceforge.net/index.html) Open source spice simulator for electric and electronic circuits.
* [elektron](https://github.com/spielhuus/elektron) Continuous integration and simulation tool for electronics projects.
* [neovim](https://neovim.io/) Editor for the text files.

The notebooks and simulations require some python packages.

* [Matplotlib](https://matplotlib.org/) Comprehensive library for creating static, animated, and interactive visualizations in Python.
* [NumPy](https://numpy.org/) The fundamental package for scientific computing with Python.
* [SymPy](https://www.sympy.org/en/index.html) Python library for symbolic mathematics.
* [SciPy](https://www.scipy.org/) Python-based ecosystem of open-source software for mathematics, science, and engineering.

For the web page additional software is used.

* [Hugo](https://gohugo.io/) Transform your plain text into static websites and blogs.
* [Bulma](https://bulma.io/) Bulma is a free, open source framework that provides ready-to-use frontend components that you can easily combine to build responsive web interfaces.
* [spotlight](https://github.com/nextapps-de/spotlight) Lightbox gallery library
* [$\KaTeX$](https://katex.org/) Fast math typesetting library for the web.

## prepare your system

Some dependencies have to be installed to build the project. The descriptions are for archlinux. You will have to adapt this to your operating system.

{{< highlight shell "linenos=table,linenostart=1" >}}
pacman -Syu --noconfirm base-devel neovim kicad kicad-library python-pip git rust poppler-glib hugo
{{< / highlight >}}

## kicad configuration

In KiCad the libraries have to be added.
The Symbols, Footprints and templates can be found in `$(ELEKTROPHON)/lib/`

# build the site

The Makefile can install the python packages in an virtual environment when the argument `BUILD_DEPS=true` is set.

Build the project and run a webserver:
{{< highlight shell "linenos=table" >}}
cd <path to elektrophon>
make BUILD_DEPS=true serve
{{< / highlight >}}

Makefile targets
* *serve* builds the site and runs a webserver
* *build* builds the site to the public directory.
* *clean* cleans the builds
* *distclean* removes all the generated files. Can be used before a commit to the repository.

# build the site using docker

There is also a docker image to build the site. The advantage is, that no depencencies must be installed.

{{< highlight shell "linenos=table" >}}
docker run -v {PATH TO CONTENT}:/github/workspace \
           -p 1313:1313 -ti --rm \
           ghcr.io/spielhuus/docker-elektrophon:main \
           serve
{{< / highlight >}}
build the web page for deployment:
{{< highlight shell "linenos=table" >}}
docker run -v {PATH TO CONTENT}:/github/workspace \
           -ti --rm ghcr.io/spielhuus/docker-elektrophon:main \
           build
{{< / highlight >}}
Extra parameters can be passed, for example to build a development version of the site.
{{< highlight shell "linenos=table" >}}
docker run -v {PATH TO CONTENT}:/github/workspace \
           -ti --rm ghcr.io/spielhuus/docker-elektrophon:main \
           serve -D
{{< / highlight >}}

# Other python electronics software

* [lcapy](https://github.com/mph-/lcapy) Python package for linear circuit analysis. It uses SymPy for symbolic mathematics.
* [gnucap-python](https://codeberg.org/gnucap/gnucap-python) Python bindings for the [gnucap](http://gnucap.org) package.
* [fastZ](https://github.com/whileman133/fastZ) Lumped-Element Impedance Calculator
