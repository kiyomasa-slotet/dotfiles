#.bash_profile

## variables
PATH="/Applications/MacVim.app/Contents/MacOS:$PATH"

## EXPORT
export PATH=/usr/local/bin:$PATH
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

## pyenv
export PYENV ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

## Hide machine name
PS1="\W $"

## w3m bookmark
alias whn='w3m https://news.ycombinator.com/'
alias wimg='w3m http://img.2chan.net/b/futaba.htm'

## Git Commands
alias ga='git add .'
alias gc='git commit -m '
alias gl='git log --graph --decorate --oneline'
alias gd='git diff'
alias gb='git branch'
alias gs='git status'
alias gm='git push origin master'
alias gg='git push origin gh-pages'

## custam commands
alias cl='clear'
alias lsa='ls -a'

## ffmpeg
alias temp='ffmpeg -ss 00:00:00.000 -i Untitled.mov -pix_fmt rgb8 -r 12 -vf scale=480:-1 output.gif'

## Change Dir
alias c.='cd ../'
alias c..='cd ../../'
alias c...='cd ../../../'

## convert .MOV to .gif
function Anime() {
  ffmpeg -i Untitled.mov -pix_fmt rgb24 -r 12 -vf scale=500:-1 output.gif
  convert -layers Optimize output.gif output_optimized.gif
  rm Untitled.mov output.gif
}
## 寝る　
## TODO: convert設定弄りとメイキングドラマとかその辺の調整
