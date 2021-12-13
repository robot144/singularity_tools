
# Geoserver for singularity

## Introduction

These scripts automate the generation of a singularity image for geoserver. The image can also be uploaded to make it available conveniently in other places, but the sif-file can also be used separately.

## Concept

The docker version for geoserver can be downloaded directly using:
`singularity pull docker://thinkwhere/geoserver`
However, geoserver will try to

## Recipe

To run singularity on the H6c7:
- `module load singularity/3.8.0`

Here are some steps to build and start geoserver:
- `./build.sh`
- optionally upload `./upload.sh`
- `cp runscipts/geoserver.sh build/`
- `./build/geoserver.sh`

To download the singularity image and run geoserver anywhere:
- `singularity pull library://robot144/default/geoserver:latest`
- `singularity exec geoserver.sif cp /geoserver_runscripts`

Alternatively, all the steps have been put in a bash script. Simple run:
- `. download.sh`
- `. ./runscripts/geoserver.sh`
