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

function Anime() {
  cd $HOME/Desktop;
  case $1 in
    "$convertSetting_0" ) ffmpeg -ss 00:00:00 -i Untitled.mov -vf fps=6,scale=640:360 cut.mov;
      ffmpeg -i cut.mov -vf palettegen palette.png;
      ffmpeg -i cut.mov -i palette.png -filter_complex paletteuse out.gif;;
    "$convertSetting_1" ) ffmpeg -ss 00:00:00 -i Untitled.mov -vf fps=9,scale=480:270 cut.mov;
      ffmpeg -i cut.mov -vf palettegen palette.png;
      ffmpeg -i cut.mov -i palette.png -filter_complex paletteuse out.gif;;
    "$convertSetting_2" ) ffmpeg -ss 00:00:00 -i Untitled.mov -vf fps=12,scale=320:180 cut.mov;
      ffmpeg -i cut.mov -vf palettegen palette.png;
      ffmpeg -i cut.mov -i palette.png -filter_complex paletteuse out.gif;;
  esac
  rm cut.mov palette.png;
  echo "done"
}