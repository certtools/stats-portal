#!/bin/bash

olddate=$( date --iso-8601 -d '3 days ago')
olddatadir="/home/stats-sync/data/${olddate}_dump_agg_tables"

# delete old stuff
rm -rf $olddatadir
