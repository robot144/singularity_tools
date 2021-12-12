#! /bin/bash

./build/cdo.sh info sample_data/20211127101001-JPL-L2P_GHRSST-SSTskin-MODIS_A-N-v02.0-fv01.0.nc

./build/ncdump.sh -h sample_data/20211127101001-JPL-L2P_GHRSST-SSTskin-MODIS_A-N-v02.0-fv01.0.nc

./build/grib_ls.sh sample_data/gfs.t12z.pgrb2.0p25.f000_10u.grb2

# needs to be able to show graphics
#./build/ncview.sh  sample_data/20211127101001-JPL-L2P_GHRSST-SSTskin-MODIS_A-N-v02.0-fv01.0.nc
