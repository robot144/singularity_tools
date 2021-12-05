#! /bin/bash
# build singularity image that is defined in def file.

export IMAGENAME="ubuntu_impish"
export SINGBIN=`which singularity`

sudo $SINGBIN build  "${IMAGENAME}.sif" "${IMAGENAME}.def"
