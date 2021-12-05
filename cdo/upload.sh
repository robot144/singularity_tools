#! /bin/bash

# needs key-pair (generate first)
singularity sign build/cdo.sif

# needs key at singularity index https://cloud.sylabs.io/library
singularity push build/cdo.sif library://robot144/default/cdo:latest
