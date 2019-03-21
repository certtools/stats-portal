#!/bin/bash


./make_agg_tables.sh
./dump_agg_tables.sh
./xfer_agg_tables.sh
./load_agg_tables.sh

# rotate old data out

