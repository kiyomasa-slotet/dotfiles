#!/bin/bash

timestamp=$(date +%s)
cd $HOME/Desktop

<< SETTINGS
====================================================================================================

-c:v libx264 : エンコーダー指定
-b:v : ビットレート指定、2M ~ 15M
-vf transpose=2,fps=30,scale=1080:1920 : transposeが回転
-af volume=1.5 : デフォルトだと音量が低いので調整

====================================================================================================
SETTINGS

ffmpeg -i *.mp4 -c:v libx264 -b:v 10M -vf transpose=2,fps=30,scale=1080:1920 -af volume=1.5 $timestamp.mp4

echo "$timestamp"
mv $timestamp.mp4 $HOME/Pictures
cd $HOME/Desktop
rm *.mp4
echo "done"


<< COMMENTOUT
===========================
   mp4 encode options
===========================

-preset slow
-preset placebo

サウンド無圧縮
-acodec copy

===========================
   ENCODE SETTING MEMO
===========================

SIZE:
 - 16:9
 - 450:800
 - 540:960
 - 630:1120      70
 - 720:1280      80
 - 900:1600     100
 - 1080:1920
   and more...

===========================
   WebM ENCODE SETTINGS
===========================
ffmpeg -i Untitled.mp4 -c:v libvpx-vp9 -b:v 5M -vf transpose=2,fps=30,scale=630:1120 -acodec libopus -threads 8 $timestamp.webm

ffmpeg -i Untitled.mp4 -c:v libvpx-vp9 -b:v 5M -vf transpose=2,fps=30,scale=1080:1920 -acodec libopus -threads 4 $timestamp.webm

COMMENTOUT