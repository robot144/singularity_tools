#! /bin/bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

if [ ! -d geoserver_data ];then
	mkdir geoserver_data
fi
if [ ! -d temp ];then
	mkdir temp
fi
if [ ! -d logs ];then
	mkdir logs
fi


# start server
echo "Starting geoserver"
echo "Connect to web magement interface using:"
echo "firefox http://localhost:8080/geoserver"
echo "or firefox http://my.server.com:8080/geoserver"
echo ""
echo "Default login admin geoserver"
echo "Change on ANY server accessible from the outside"
echo ""
echo "Connect to WMS or WFS using:"
echo "http://localhost:8080/geoserver/geonode/wms?"
echo ""
echo "Log will appear in terminal"
echo "Press enter to start serer"
read tempvar

singularity run --bind temp:/usr/local/tomcat/temp,geoserver_data:/usr/local/tomcat/webapps/geoserver/data,work:/usr/local/tomcat/work,logs:/usr/local/tomcat/logs  ${SCRIPT_DIR}/geoserver.sif
