#!/bin/bash

olddate=$( date --iso-8601 -d '3 days ago')
olddatadir="/home/stats-sync/data/${olddate}_dump_agg_tables"

echo    "##############################################"
echo -n "Cleaning up on eventdb server"

# delete old stuff
rm -r $olddatadir

echo ". Done."
echo
