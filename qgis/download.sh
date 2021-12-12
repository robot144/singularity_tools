#! /bin/bash

export package="qgis"

pushd build

# download from index https://cloud.sylabs.io/library
singularity pull "${package}.sif" "library://robot144/default/${package}:latest"

# extract scripts
singularity run "${package}.sif"

popd
