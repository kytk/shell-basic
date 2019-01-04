#!/bin/bash
#MRIの横断面の画像一覧を作成するスクリプト
set -x

# 引数がない時はエラーが出るように設定
if [ $# -lt 1 ]; then
  echo "Error! No file is specified!"
  echo "Usage: $0 nifti_file"
  exit 1
fi

# 引数から拡張子を取り除いたものを変数 id として代入
id=$(remove_ext $1)

# $id から niftiのヘッダの dim3 を読み取り、z に代入
z=$(fslval $id dim3)

# 変数 num の初期化、初期値を 1 とする
num=1

# while のはじまり
## $num が $z 以下の時に処理が続くようにする
while [ $num -le $z ]
do 
  #変数 slnum を定義 $num に対して3桁のゼロ埋めを行う 30 -> 030
  slnum=$(printf %03d $num)
  
  # slicer で水平断方向に $num 番目の画像を切り出し、
  # ${id}_tmp_${slnum}.png として保存する
  slicer $id -z -${num} ${id}_tmp_${slnum}.png

  # $num に 1 を足して新たな 変数 num として代入
  num=$(( num+1 ))
done

# (上級) 横8列に画像を配置
# http://www.nemotos.net/?p=1434
inputarg=$(ls ${id}_tmp_???.png | \
awk '{ if (NR%8==1) {print " - " $0} else {print " + " $0} }' | \
tr -d '\n' | sed 's/-//')
pngappend $inputarg ${id}_output.png

# 一時的に吐き出された画像を削除
rm *_tmp_*.png
