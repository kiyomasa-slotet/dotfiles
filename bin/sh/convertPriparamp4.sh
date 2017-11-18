#!/bin/bash

timestamp=$(date +%s)
echo $timestamp

cd $HOME/Desktop
# ffmpeg -i input.mov -c:v libvpx -crf 10 -b:v 1M -c:a libvorbis -vf fps=30,scale=630:1120 $timestamp.webm

ffmpeg -i Untitled.mp4 -vcodec libx264 -crf 30 -vf transpose=2,fps=30,scale=450:800 -acodec copy aaa2.mp4

echo "done"

<< COMMENTOUT
===========================
   mp4 encode options
===========================

-preset pracebo

サウンド無圧縮
-acodec copy




===========================
    to mp4 scripts
===========================

** ほぼ無圧縮 **
ffmpeg -i test2.mp4 -vcodec libx264 -vf "transpose=2" out5.mp4
** それなりに圧縮 **
ffmpeg -i Untitled.mp4 -vcodec libx264 -vf "transpose=2" out5.mp4


===========================
   ENCODE SETTING MEMO
===========================

SIZE:
 - 16:9
 - 450:800
 - 540:960
 - 1120:630
   and more...

SOUND:          NEED TO MORE SOUND VOLUME
* encode
-acodec libopus -b:a 80k
-acodec libopus -b:a 128k

* do not encode
-acodec copy



===========================
         TODO
===========================

 - make capture(random time?)
 - 何より先にindexページレイアウト作成だ、シンプルなもので構わない





COMMENTOUT