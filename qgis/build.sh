#! /bin/bash

export IMAGENAME="qgis"
export SINGBIN=`which singularity`

if [ ! -d "build" ];then
	mkdir build
fi

$SINGBIN build --fakeroot "build/${IMAGENAME}.sif" "${IMAGENAME}.def"
