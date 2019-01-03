#!/bin/bash
# script to unzip zip files consecutively and move zip files to archive directory

set -x

if [ ! -d archive ]; then
  mkdir archive
fi

for f in *.zip
do
  unzip $f
  mv $f archive
done
 
