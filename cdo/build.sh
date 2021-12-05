#! /bin/bash

export IMAGENAME="cdo"
export SINGBIN=`which singularity`

if [ ! -d "build" ];then
	mkdir build
fi

$SINGBIN build --fakeroot "build/${IMAGENAME}.sif" "${IMAGENAME}.def"
