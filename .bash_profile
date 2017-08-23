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
function Anime() {
  ffmpeg -i Untitled.mov -pix_fmt rgb8 -r 8 -vf scale=500:-1 output.gif
  convert -contrast -layers Optimize output.gif output_optimized.gif
  ## rm Untitled.mov output.gif
}
## 寝る　
## TODO: convert設定弄りとメイキングドラマとかその辺の調整
