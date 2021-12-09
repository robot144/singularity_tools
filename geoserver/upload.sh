#! /bin/bash

# needs key-pair (generate first)
singularity sign build/geoserver.sif

# needs key at singularity index https://cloud.sylabs.io/library
singularity push build/geoserver.sif library://robot144/default/geoserver:latest
