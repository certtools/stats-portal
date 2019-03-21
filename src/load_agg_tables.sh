#!/bin/bash

##################33
# general vars
date=$( date --iso-8601 )
datadir=/home/stats-sync/data/${date}_dump_agg_tables

target=stats.cert.at
tables=$( cat tables.txt )
aggtables=$( cat agg_tables.txt )
ssh="ssh -T -i /home/stats-sync/.ssh/id_ecdsa"

### Assumtion: the eventDB already exists on $target

echo    "##############################################"
echo    "Loading aggregation tables"



#####
# first clear up old tables: drop
echo -n "# Dropping all old database tables: "
for tbl in $tables; do
	echo -n "$tbl, "
	$ssh $target "psql -c 'drop table $tbl' eventdb"
	$ssh $target "psql -c 'drop table if exists ${tbl}_tsdb' eventdb"
done
echo ". Done."
echo


# set up timescaleDB
echo -n "# Setting up timescaleDB: "
$ssh $target "psql -c 'CREATE EXTENSION IF NOT EXISTS timescaledb CASCADE' eventdb"
echo ". Done."
echo

# restore tables and load in all the data
echo -n "# Loading aggretation tables and DB..."
$ssh $target "pg_restore -j 2 -F d -d eventdb $datadir"
echo ". Done."
echo

# timescale-ize these tables. This is pretty inefficient and needs a lot of HDD space. But hey, do it once per night...
echo -n "# Converting aggregation tables to timescaleDB.... "
for table in $aggtables; do
	echo -n "$table "
	# first get rid of NULL date rows
	$ssh $target "psql -c 'delete from $table where "date" is null' eventdb"
	$ssh $target "psql -c 'CREATE TABLE ${table}_tsdb (LIKE ${table} INCLUDING DEFAULTS INCLUDING CONSTRAINTS EXCLUDING INDEXES)' eventdb"
	$ssh $target "psql -c 'SELECT create_hypertable('\'${table}_tsdb\'', '\'date\'')' eventdb"		# don't ask why the quoting works
	$ssh $target "psql -c 'INSERT INTO ${table}_tsdb SELECT * from $table' eventdb"
	$ssh $target "psql -c 'drop table ${table}' eventdb"
	$ssh $target "psql -c 'alter table ${table}_tsdb rename to $table' eventdb"
done
echo ". Done."
echo

echo -n "# Creating indexes..."
for table in $aggtables; do
	sed "s/@@table@@/$table/g" < make_indices.sql | $ssh $target "psql eventdb "
done
echo ". Done."
echo


echo -n "# Fix perms for all tables..."
for tbl in $tables; do
	$ssh $target "psql -c 'grant connect on database eventdb to statsro' eventdb"
	$ssh $target "psql -c 'grant select on table $tbl to statsro' eventdb"
done
echo ". Done."
echo


