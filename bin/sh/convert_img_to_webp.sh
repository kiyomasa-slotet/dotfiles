#!/bin/bash
# カレントディレクトリ内の画像を一括でwebpに変換

for file in `find . -type f -name "*.jpg" -or -name "*.jpeg" -or -name "*.png"`;
do
cwebp $file -o "${file%.*}.webp" >/dev/null 2>&1
done
