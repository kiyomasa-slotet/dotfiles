# ~/.bashrc

## aliases
if [ -f .bash_aliases ]; then
  . ~/dotfiles/.bash_aliases
fi

#-------------------------------------------------------------
# convert mp4 to mp3
#-------------------------------------------------------------
alias mp4tomp3="find . -type f -name "*.mp4" -print0 | perl -pe 's/\.mp4\0/\0/g' | xargs -0 -I% ffmpeg -i %.mp4 -acodec libmp3lame -ab 256k %.mp3"

#-------------------------------------------------------------
# convert .MOV to .gif

# scale 16:9
# 640:360
# 480:270
# 400:225
# 320:180
#-------------------------------------------------------------
convertSetting_0="0"
convertSetting_1="1"
convertSetting_2="2"
convertSetting_3="3"
convertSetting_4="4"
convertSetting_5="5"
convertSetting_6="6"

function Anime() {
  cd $HOME/Desktop;
  rm *.gif;
  case $1 in
    "$convertSetting_0" ) ffmpeg -ss 00:00:00 -i Untitled.mov -vf fps=16,scale=640:360 cut.mov;
      ffmpeg -i cut.mov -vf palettegen palette.png;
      ffmpeg -i cut.mov -i palette.png -filter_complex paletteuse out0.gif;;
    "$convertSetting_1" ) ffmpeg -ss 00:00:00 -i Untitled.mov -vf fps=12,scale=640:360 cut.mov;
      ffmpeg -i cut.mov -vf palettegen palette.png;
      ffmpeg -i cut.mov -i palette.png -filter_complex paletteuse out1.gif;;
    "$convertSetting_2" ) ffmpeg -ss 00:00:00 -i Untitled.mov -vf fps=12,scale=480:270 cut.mov;
      ffmpeg -i cut.mov -vf palettegen palette.png;
      ffmpeg -i cut.mov -i palette.png -filter_complex paletteuse out2.gif;;
    "$convertSetting_3" ) ffmpeg -ss 00:00:00 -i Untitled.mov -vf fps=12,scale=320:180 cut.mov;
      ffmpeg -i cut.mov -vf palettegen palette.png;
      ffmpeg -i cut.mov -i palette.png -filter_complex paletteuse out3.gif;;
    "$convertSetting_4" ) ffmpeg -ss 00:00:00 -i Untitled.mov -vf fps=6,scale=320:180 cut.mov;
      ffmpeg -i cut.mov -vf palettegen palette.png;
      ffmpeg -i cut.mov -i palette.png -filter_complex paletteuse out4.gif;;
    "$convertSetting_5" ) ffmpeg -ss 00:00:00 -i Untitled.mov -vf fps=24,scale=320:180 cut.mov;
      ffmpeg -i cut.mov -vf palettegen palette.png;
      ffmpeg -i cut.mov -i palette.png -filter_complex paletteuse out5.gif;;
    "$convertSetting_6" ) ffmpeg -ss 00:00:00 -i Untitled.mov -vf fps=12,scale=400:300 cut.mov;
      ffmpeg -i cut.mov -vf palettegen palette.png;
      ffmpeg -i cut.mov -i palette.png -filter_complex paletteuse out6.gif;;
  esac
  rm cut.mov palette.png;
  echo "done"
}

#-------------------------------------------------------------
# deleate .DS_Store
#-------------------------------------------------------------
function deleateDsStore(){
   find $1 \( -name '.DS_Store' -o -name 'Thumbs.db' \) -delete -print;
}