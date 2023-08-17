#!/bin/sh

# discordencode - encodes a video file to under 8MiB for Discord
usage () {
    echo "Usage: [USEAUDIO=1] [VPRESET=x264-preset] discordencode input output.mp4"
}
if [ -z "$1" ]
then
    usage
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "$1 does not exist"
    exit 2
fi
# Bitrate math functions
# Bc and ffprobe are a bit arcane
duration_seconds () {
    ffprobe -i "$1" -show_entries format=duration -v quiet -of csv="p=0"
}

subtract_and_truncate () {
    echo "x = $1; scale = 0; x / 1 - $2" | bc -l
}

divide_floats() {
    echo "scale=2; $1 / $2" | bc
}

audioargs="-an"
audiobits=0
if [[ $USEAUDIO ]] && [ "$USEAUDIO" -eq "1" ]
then
    audioargs="-c:a aac -b:a 96k"
    audiobits=96
    echo "Using 96k aac audio"
fi
if [ -z "$VPRESET" ]
then
    VPRESET=veryslow
fi
duration=$(duration_seconds "$1")
echo $1
echo Duration is $duration
kbits=$(subtract_and_truncate $(divide_floats 60630.8 $duration) $audiobits)
echo Video bitrate is $kbits kb/s
set -x
ffmpeg -y -i "$1" -c:v libx264 -preset $VPRESET -threads 0 -b:v ${kbits}k -pass 1 -an -f mp4 /dev/null
ffmpeg -i "$1" -c:v libx264 -preset $VPRESET -threads 0 -b:v ${kbits}k -pass 2 $audioargs output.mp4

NOW="`date +%Y%m%d_%H%M%S`"
USER_NAME=`logname`
mv output.mp4 /Users/$USER_NAME/Desktop/captures/$NOW.mp4
rm ffmpeg2pass-0.log
rm ffmpeg2pass-0.log.mbtree