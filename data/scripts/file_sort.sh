#!/bin/bash

#これは学習用です。
#実用向きではありません。

set -x

mkdir HC PT original

sed '/^$/d' $1 | while read id category
do
  cp *${id}* $category
  mv *${id}* original
done

