#! /bin/bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

singularity exec ${SCRIPT_DIR}/cdo.sif nccopy $@
