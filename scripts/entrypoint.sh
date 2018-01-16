#!/usr/bin/env bash

# --------------------------------------------------------------------------------------------------
# run directly
# ------------------------------------------
cd work/
echo "Listing work"
ls -a

cd ..
ls -a

cd ..
echo "Listing parent"
ls -a

cd ..
echo "Parent again"


export PYTHONPATH=`pwd`

python ./src/download_data.py