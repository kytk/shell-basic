#!/bin/bash
#set -x

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
  #extract b0 image
  fslroi ${dmri}_ecc ${dmri}_b0 0 1
  #generate mask
  bet ${dmri}_b0 ${dmri}_brain -f 0.3 -m
  #generate FA
  dtifit --data=${dmri}_ecc    		\
         --out=$dmri			\
         --mask=${dmri}_brain_mask	\
	 --bvecs=${dmri}.bvec		\
	 --bvals=${dmri}.bval
done
