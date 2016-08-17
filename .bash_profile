## nvm (node version manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

## Hide machine name
PS1="\W $"

## vim aliases
## alias vi='env LANG=ja_JP.UTF-8' /Applications/

## Git Commands
alias gl='git log --graph --decorate --oneline'
alias gd='git diff'
alias gb='git branch'
alias gs='git status'

## Change Dir
alias c.='cd ../'
alias c..='cd ../../'
alias c...='cd ../../../'
