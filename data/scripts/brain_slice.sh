#!/bin/bash
set -x

#学習用です
#実用向きではありません

id=$(remove_ext $1)
z=$(fslval $id dim3)

num=1
while [ $num -le $z ]
do 
  slicer $id -z -${num} ${id}_tmp_${num}.png
  num=$(( num + 1 ))
done

