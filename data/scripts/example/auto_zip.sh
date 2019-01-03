#!/bin/bash
# script to zip directories consecutively

set -x

if [ ! -d archive ]; then
  mkdir archive
fi

for dir in $(ls -F | grep / | sed -e 's:/::' -e '/archive/d')
do
  zip -r ${dir}.zip $dir
  mv ${dir}.zip archive
done

