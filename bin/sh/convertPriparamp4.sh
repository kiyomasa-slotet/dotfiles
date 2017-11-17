#!/bin/bash

timestamp=$(date +%s)
echo $timestamp

cd $HOME/Desktop
ffmpeg -i input.mov -c:v libvpx -crf 10 -b:v 1M -c:a libvorbis -vf fps=30,scale=630:1120 $timestamp.webm

echo "done"
open $timestamp.webm


<< COMMENTOUT

SIZE:
 - 16:9
 - 540:960
 - 1120:630
   and more...

SOUND:
 - acodec libopus -b:a 80k
 - acodec libopus -b:a 128k
   to mono

TODO:
 - make capture(random time?)
 - 何より先にindexページレイアウト作成だ、シンプルなもので構わない





COMMENTOUT