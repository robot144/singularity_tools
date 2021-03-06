#! /bin/bash

export package="geoserver"

if [ ! -d build ];then
	mkdir build
fi

pushd build

# download from index https://cloud.sylabs.io/library
singularity pull "${package}.sif" "library://robot144/default/${package}:latest"

# extract script
singularity exec "${package}.sif" cp /geoserver_runscripts/geoserver.sh .

popd
