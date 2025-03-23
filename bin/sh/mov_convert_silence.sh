#!/bin/bash

#webm to silence mp4 file


for f in *.mp4; do ffmpeg -i "$f" -an "$f.mp4"; done

for f in *.webm do ffmpeg -i "$f" -an -c:v copy -c:a copy "$f.mp4"; done
ffmpeg -i input.webm -c:v copy -c:a copy output.mp4

for f in *.webm; do ffmpeg -i "$f" "${f%.WEBM}.mp4"; done


