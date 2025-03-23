#!/bin/bash

# スキャンデータ画像変換用スクリプト
# 使い捨てだが一応残しておく

imgdir=.
multiply=0

if [ $# -gt 1 ]; then
  echo "usage: $0 [ dir ]"
  exit 1;
fi
if [ $# -eq 1 ]; then
  imgdir=$1
fi

while read f; do
  v=$(ffmpeg -i "$f" 2>&1 |grep -E 'Stream|displaymatrix:')
  dim=$(echo $v |grep -E -o '[0-9]{2,}x[0-9]+')
  w=${dim%x*}
  
  if [ $w -gt 5000 ]; then
    multiply=20
  elif [ $w -gt 4500 ]; then
    multiply=22
  elif [ $w -gt 4000 ]; then
    multiply=25
  elif [ $w -gt 3500 ]; then
    multiply=28
  elif [ $w -gt 3000 ]; then
    multiply=33
  elif [ $w -gt 2500 ]; then
    multiply=40
  elif [ $w -gt 2000 ]; then
    multiply=50
  elif [ $w -gt 1500 ]; then
    multiply=66
  elif [ $w -gt 1000 ]; then
    multiply=95
  else
    multiply=110
  fi

  magick $f -colorspace RGB -filter Lanczos -define filter:blur=.9891028367558475 -distort Resize 900x -colorspace sRGB $f
  magick $f -linear-stretch 1x1% $f
  pngquant --ext .png --force --speed 1 $f
  magick $f -strip $f
  echo $f

done < <(find -E "$imgdir" -type f -iregex '.*\.(jpe?g|png|mp4)') 
