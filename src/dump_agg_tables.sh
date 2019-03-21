#!/bin/bash

cpus=$( cat /proc/cpuinfo | grep processor | wc -l )
date=$( date --iso-8601 )
datadir=/home/stats-sync/data/${date}_dump_agg_tables
mkdir -p $datadir


echo    "##############################################"
echo -n "Dumping aggregation tables"


# dump tables
tables="-t agg_ndim_day_all_tags -t agg_ndim_day_netobject_tags -t asns -t taxonomy -t types -t identifier"
pg_dump -F d $tables  -j $cpus -f $datadir eventdb

echo ". Done."
echo
