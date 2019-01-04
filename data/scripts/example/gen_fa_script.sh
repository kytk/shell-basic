#!/bin/bash
set -x

if [ $# -lt 1 ]; then
  echo "Error! No file is specified!"
  echo "Usage: $0 files"
  exit 1
fi

for f in "$@"
do
  dmri=$(remove_ext $f)
  #eddy current correction
  eddy_correct $dmri ${dmri}_ecc 0
  #generate mask
  bet ${dmri}_ecc ${dmri}_brain -f 0.72 -m
  #generate FA
  dtifit --data=${dmri}     		\
         --out=$dmri			\
         --mask=${dmri}_brain_mask	\
	 --bvecs=${dmri}.bvec		\
	 --bvals=${dmri}.bval
done
