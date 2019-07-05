#!/bin/bash

#-------------------------------------------------------------
# convert .MOV to .gif
# =================================
# *** NEED TO FIX SIZE AND FPS ***
# =================================
# scale 14:9
# 500:360
# 480:270
# 400:225
# 314:180
#-------------------------------------------------------------

cd $HOME/Desktop;
DATETIME=`date +%Y%m%d_%H%M`
ffmpeg -i Untitled.mov -filter_complex "[0:v] fps=14,scale=500:-1,split [a][b];[a] palettegen [p];[b][p] paletteuse=dither=none" $DATETIME.gif
mv $DATETIME.gif $HOME/Desktop/captures/gif/
echo "done"