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

cd $HOME/Desktop;
rm *.gif;
read -p "select gif setting: " num
case $num in
  1) ffmpeg -ss 00:00:00 -i Untitled.mov -vf fps=24,scale=400:220 cut.mov
    ;;
  2) ffmpeg -ss 00:00:00 -i Untitled.mov -vf fps=24,scale=320:180 cut.mov
    ;;
  3) ffmpeg -ss 00:00:00 -i Untitled.mov -vf fps=9,scale=506:278 cut.mov
    ;;
esac
ffmpeg -i cut.mov -vf palettegen palette.png;
ffmpeg -i cut.mov -i palette.png -filter_complex paletteuse out.gif;
rm cut.mov palette.png;
open -a 'Brave' out.gif;
echo "done"