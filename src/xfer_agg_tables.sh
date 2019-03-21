#!/bin/bash

date=$( date --iso-8601 )
olddate=$( date --iso-8601 -d '3 days ago')

datadir="/home/stats-sync/data/${date}_dump_agg_tables"
olddatadir="/home/stats-sync/data/${olddate}_dump_agg_tables"

target=stats.cert.at
scptarget=${target}:data/

echo    "##############################################"
echo -n "Xfering aggregation tables"


scp -rqp -i /home/stats-sync/.ssh/id_ecdsa $datadir $scptarget
# delete old stuff
ssh  -T -i /home/stats-sync/.ssh/id_ecdsa $target "rm -r $olddatadir"

echo ". Done."
echo
