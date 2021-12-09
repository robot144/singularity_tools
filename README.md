# singularity_tools

## Introduction

Installation of some tools on a linux cluster can be awkward, especially if you o not have root rights. Several very usefull packages, like QGIS, have an enormous amount of dependencies. This makes compilation from source a laborious exercise. Recently, administrators of linux clusters and super computers have in some cases made singularity available. Singularity is a container system, like Docker, but one that you can use if you do not have root rights.

This repository aims to make some tools available using singularity. The main focus of the tools is around geophysical fluid models and satellite data. 

More info on singularity:
- [tutorial](https://singularity-tutorial.github.io/)
- [installation of singularity](https://sylabs.io/guides/3.5/admin-guide/installation.html) 

## Installation

There are two ways to work with this repo:
 1.  The first is to clone or download the repo and build your own singularity image files (.sif). 
 2. The other route is to download the compiles images with singularity, eg `singularity pull library://robot144/cdo`

Next you can unpack the runscripts using something like:
 1. `./cdo_latest.sif`
 2. `singularity run cdo_latest.sif`
This will create the runscripts in the same folder as the sif file. 

## Using the tools

For the tools that I use a lot, I like to add them to the search path. What I do, is put my sif files and runscripts in `$HOME/bin`
and add that to the path `export PATH=$PATH:$HOME/bin`. Now you can use cdo like this:
`cdo.sh info myfile.nc`

## Packages

The current list of packages is:
 - __cdo__  : cdo is a tool for working with netcdf and grib files. Other tools are included, such as eccodes, netcdf and nview [cdo tutorial](https://code.mpimet.mpg.de/projects/cdo/wiki/Tutorial)
 - __qgis__ : qgis is an interactive package for geographical data. [QGIS tutorial](https://www.qgistutorials.com/en/)
 - __geoserver__: geoserver is a server for GIS data [geoserver](http://geoserver.org/)
