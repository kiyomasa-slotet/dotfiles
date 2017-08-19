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

## nodenv
## TODO: remove node.js from machine
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

## Hide machine name
PS1="\W $"

## w3m bookmark
alias whn='w3m https://news.ycombinator.com/'
alias wimg='w3m http://img.2chan.net/b/futaba.htm'

## Git Commands
alias gl='git log --graph --decorate --oneline'
alias gd='git diff'
alias gb='git branch'
alias gs='git status'
alias ga='git add .'
alias gm='git push origin master'
alias gg='git push origin gh-pages'

## Custam commands
alias cl='clear'

## ffmpeg
alias temp='ffmpeg -ss 00:00:00.000 -i Untitled.mov -pix_fmt rgb8 -r 12 -vf scale=480:-1 output.gif'




## Change Dir
alias c.='cd ../'
alias c..='cd ../../'
alias c...='cd ../../../'
