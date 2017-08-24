# ~/.bashrc

#-------------------------------------------------------------
# convert mp4 to mp3
#-------------------------------------------------------------
alias mp4tomp3="find . -type f -name "*.mp4" -print0 | perl -pe 's/\.mp4\0/\0/g' | xargs -0 -I% ffmpeg -i %.mp4 -acodec libmp3lame -ab 256k %.mp3"

#-------------------------------------------------------------
# convert .MOV to .gif
# need more sophisticated
#-------------------------------------------------------------
convertSetting_0="0"
convertSetting_1="1"
convertSetting_2="2"
convertSetting_3="3"
convertSetting_3="4"

function Anime() {
  case $1 in
    "$convertSetting_0" ) ffmpeg -i Untitled.mov -pix_fmt rgb8 -r 6 -vf scale=120:-1 output0.gif;
      convert -layers Optimize output0.gif output_opt0.gif;;
    "$convertSetting_1" ) ffmpeg -i Untitled.mov -pix_fmt rgb8 -r 8 -vf scale=240:-1 output1.gif;
      convert -layers Optimize output1.gif output_opt1.gif;;
    "$convertSetting_2" ) ffmpeg -i Untitled.mov -pix_fmt rgb8 -r 12 -vf scale=400:-1 output2.gif;
      convert -layers Optimize output2.gif output_opt2.gif;;
    "$convertSetting_3" ) ffmpeg -i Untitled.mov -pix_fmt rgb8 -r 9 -vf scale=300:-1 output3.gif;
      convert -layers Optimize output3.gif output_opt3.gif;;
    "$convertSetting_4" ) ffmpeg -i Untitled.mov -pix_fmt rgb8 -r 10 -vf scale=300:-1 output4.gif;
      convert -layers Optimize output4.gif output_opt4.gif;;
  esac
  echo "done"
}

## ffmpeg -i Untitled.mov -pix_fmt rgb8 -r 6 -vf scale=480:-1 output0.gif convert -contrast -layers Optimize output0.gif output_opt0.gif