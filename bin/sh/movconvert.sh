#!/bin/bash
#動画圧縮 mov to mp4
#1が高画質
#2が低画質

if [ -z "$1" ]
then
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "$1 does not exist"
    exit 2
fi

echo "Choose convert mode.\n 1: local - crf18, keep scale.\n 2: devlog - crf 24, reduce scale."

read str

if [ $str -eq 1 ]; then
	ffmpeg -i $1 -crf 18 output.mp4
	NOW="`date +%Y%m%d_%H%M%S`"
	USER_NAME=`logname`
	mv output.mp4 /Users/$USER_NAME/Desktop/captures/$NOW.mp4
fi

if [ $str -eq 2 ]; then
	ffmpeg -i $1 -crf 24 -vf scale=-2:720 output.mp4
	NOW="`date +%Y%m%d_%H%M%S`"
	USER_NAME=`logname`
	mv output.mp4 /Users/$USER_NAME/Desktop/captures/$NOW.mp4
fi
