#!/bin/bash
# .pngファイルの圧縮、容量削減用

find . -name '*.png' -exec pngquant --ext .png --force --speed 1 {} \;
jpegoptim --strip-all --max=80 *.jpg