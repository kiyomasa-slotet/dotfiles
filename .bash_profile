#.bash_profile

## nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

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
alias w3mhn='w3m https://news.ycombinator.com/'

## Git Commands
alias gl='git log --graph --decorate --oneline'
alias gd='git diff'
alias gb='git branch'
alias gs='git status'
alias gm='git push origin master'
alias gg='git push origin gh-pages'

## Custam commands
alias cl='clear'

## Change Dir
alias c.='cd ../'
alias c..='cd ../../'
alias c...='cd ../../../'
