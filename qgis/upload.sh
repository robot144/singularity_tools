#! /bin/bash

# needs key-pair (generate first)
singularity sign build/qgis.sif

# needs key at singularity index https://cloud.sylabs.io/library
singularity push build/qgis.sif library://robot144/default/qgis:latest
