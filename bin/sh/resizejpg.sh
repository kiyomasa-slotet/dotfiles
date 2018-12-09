#!/bin/bash

echo 'resizing jpg files...'

for file in *.jpg; do
    filename=( `echo $file | tr -s '.' ' '` )
    convert $file -resize '600>' ${filename[0]}-tmp.${filename[1]}
    size=`identify -ping -format "%[fx:w]x%[fx:h]" ${filename[0]}-tmp.${filename[1]}`
    mv ${filename[0]}-tmp.${filename[1]} ${filename[0]}-${size}.${filename[1]}
done

echo 'done'