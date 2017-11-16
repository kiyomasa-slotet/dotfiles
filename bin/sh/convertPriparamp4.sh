#!/bin/bash

cd $HOME/Desktop
ffmpeg -ss 00:00:00 -i Untitled.MOV -vf fps=24,scale=540:960 output.mp4
echo "done"
open output.mp4