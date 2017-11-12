#!/bin/bash

cd $HOME/Desktop;
read -p "select gif setting: " num
case $num in
  1) ffmpeg -ss 00:00:00 -i *.mp4 -vf "transpose=2" output.mp4
    ;;
  2) ffmpeg -ss 00:00:00 -i Untitled.mov -vf fps=24,scale=320:180 cut.mov
    ;;
  3) ffmpeg -ss 00:00:00 -i Untitled.mov -vf fps=9,scale=506:278 cut.mov
    ;;
esac
echo "done"
open output.mp4