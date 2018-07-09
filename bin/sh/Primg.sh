#!/bin/bash

timestamp=$(date +%s)

mkdir $HOME/Desktop/pripara/$timestamp
find $HOME/Desktop/ -name "*).png" -exec rm {} \;

mv $HOME/Desktop/*.png $HOME/Desktop/pripara/$timestamp
cd $HOME/Desktop/pripara/$timestamp

IFS_bak=$IFS
IFS=$'\n'
for file in *.png
do
    convert $file -crop 985x1750+8+48 $file
done
IFS=$IFS_bak