#!/bin/bash

db=eventdb

echo    "##############################################"
echo -n "Making aggregation tables"

# calculate supporting data tables from eventdb: asns, etc..
psql $db < make_supporting_data_tables.sql


# make aggregation tables
# ... 
psql $db < make_agg_tables.sql

echo ". Done."
echo
