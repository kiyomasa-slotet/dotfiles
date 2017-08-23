# ~/.bash_profile

## variables
PATH="/Applications/MacVim.app/Contents/MacOS:$PATH"

## EXPORT
export PATH=/usr/local/bin:$PATH
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

## .bashrc
if [ -f /etc/bashrc ]; then
  . ~/dotfiles/.bash_aliases
fi

## pyenv
export PYENV ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

## Hide machine name
PS1="\W $"

## convert mp4 to mp3
alias mp4tomp3="find . -type f -name "*.mp4" -print0 | perl -pe 's/\.mp4\0/\0/g' | xargs -0 -I% ffmpeg -i %.mp4 -acodec libmp3lame -ab 256k %.mp3"

## convert .MOV to .gif
## need more sophisticated

convertSetting01="hoge"
convertSetting02="fuga"

function MovToGif() {
  case $1 in
    "$convertSetting01" ) ffmpeg -i Untitled.mov -pix_fmt rgb8 -r 6 -vf scale=120:-1 output0.gif;
     convert -contrast -layers Optimize output0.gif output_opt0.gif;;
    "$convertSetting02" ) ffmpeg -i Untitled.mov -pix_fmt rgb8 -r 16 -vf scale=480:-1 output1.gif;
     convert -contrast -layers Optimize output1.gif output_opt1.gif;;
  esac
  echo "done"
}

## ffmpeg -i Untitled.mov -pix_fmt rgb8 -r 6 -vf scale=480:-1 output0.gif convert -contrast -layers Optimize output0.gif output_opt0.gif

function Test() {
  echo $1
  if [ $1 = 1 ]; then
  echo "same"
  else
  echo "null"
  fi
}

## 寝る　
## TODO: convert設定弄りとメイキングドラマとかその辺の調整
