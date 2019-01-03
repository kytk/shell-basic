#!/bin/sh

#filesorter.sh
#sort files according to the sorting list
#Usage: filesorter.sh sorting_list
#You need to prepare a sorting list beforehand.
#It should be like the following.
# img001  HC
# img002  PT
# img003  HC
# img004  PT
# img005  PT

#Check if the argument is specified.
if [ $# -ne 1 ]; then
	echo "A sorting file should be specified!"
	echo "Usage: $0 sorting_file"
	echo "Sorting file includes ID and Categorized Group"
	echo "example:"
	echo "img001  HC"
	echo "img002  PT"
	echo "img003  HC"
	echo "img004  PT"
	echo "img005  PT"

	exit 1
fi

mkdir original

sed '/^$/d' "$1" | while read id category
do
  if [ ! -d "$category" ]; then
    mkdir "$category"
  fi

  echo "copy $id to $category"
  cp *${id}* "$category"
  echo "move $id to original"
  mv *${id}* original
done

