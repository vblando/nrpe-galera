#!/bin/bash

# copy the check to the nagios plugins dir
echo copying the 3 checks to the nagios plugins dir
echo.
cp -v check_galera_* /usr/lib64/nagios/plugins

echo copying the nrpe config file to the nrpe configs dir
echo.
cp -v mysql_galera.cfg /etc/nrpe.d
