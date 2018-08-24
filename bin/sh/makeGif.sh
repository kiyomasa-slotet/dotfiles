#!/bin/bash

#-------------------------------------------------------------
# convert .MOV to .gif
# =================================
# *** NEED TO FIX SIZE AND FPS ***
# =================================
# scale 16:9
# 640:360
# 480:270
# 400:225
# 320:180
#-------------------------------------------------------------

#   1) ffmpeg -ss 00:00:00 -i Untitled.mov -vf fps=30,scale=640:360 cut.mov

cd $HOME/Desktop;
rm *.gif;
read -p "select gif setting: " num
case $num in
  1) ffmpeg -ss 00:00:00 -i Untitled.mov -vf fps=30,scale=640:-1: cut.mov
    ;;
  2) ffmpeg -ss 00:00:00 -i Untitled.mov -vf fps=60,scale=640:360 cut.mov
    ;;
  3) ffmpeg -ss 00:00:00 -i Untitled.mov -vf fps=9,scale=506:278 cut.mov
    ;;
  4) ffmpeg -ss 00:00:00 -i Untitled.mov -vf fps=30,scale=400:1 cut.mov
    ;;
esac
ffmpeg -i cut.mov -vf palettegen palette.png;
ffmpeg -i cut.mov -i palette.png -filter_complex paletteuse out.gif;
rm cut.mov palette.png;
open -a 'Brave' out.gif;
echo "done"