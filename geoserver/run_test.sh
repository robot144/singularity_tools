#! /bin/bash

# use some sample data if there is no data yet.
if [ ! -f geoserver_data/global.xml ];then
	tar -xzf sample_data/geoserver_data.tgz geoserver_data/
fi

./build/geoserver.sh
