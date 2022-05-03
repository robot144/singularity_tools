
# Geoserver for singularity

## Introduction

These scripts automate the generation of a singularity image for geoserver. The image can also be uploaded to make it available conveniently in other places, but the sif-file can also be used separately.

## Concept

The docker version for geoserver can be downloaded directly using:
`singularity pull docker://thinkwhere/geoserver`
However, geoserver (also through tomcat) will try to log and cache files. This does not work well in singularity. As a workaround these folders are now bound from the host system.

## Recipes

To initialize singularity on the Deltares H6c7:
- `module load singularity/3.8.0`

Here are some steps to build and start geoserver:
- `./build.sh` to build the singularty image
- `./run_test.sh` to test with a small dataset
- optionally upload `./upload.sh`

Run geoserver (aasuming build/geserver.sif exists, else build or download first) 
- `./build/geoserver.sh` - This reads the configuration from geoserver_data

To download the singularity image and run geoserver anywhere:
- `singularity pull library://robot144/default/geoserver:latest`
- `singularity exec geoserver.sif cp /geoserver_runscripts/geoserver.sh .`

Alternatively, all the steps have been put in a bash script. Simple run:
- `. download.sh`
- `. ./build/geoserver.sh`

`clean.sh` removes all the generated files. This is useful to clean-up after testing. Be very careful if you worked with any data locally, since it may be removed.
