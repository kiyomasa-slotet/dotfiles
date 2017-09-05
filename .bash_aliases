# ~/.bash_aliases

# w3m bookmark
alias w3mhn='w3m https://news.ycombinator.com/'
alias w3mimg='w3m http://img.2chan.net/b/futaba.htm'

# Git Commands
alias ga='git add .'
alias gc='git commit -m '
alias gcc="git commit -m 'hoge'"
alias gl='git log --graph --decorate --oneline'
alias gd='git diff'
alias gb='git branch'
alias gs='git status'
alias gm='git push origin master'

function gg() {
  cd $HOME/git/kiyomasasato.com;
  git add .;
  git commit -m 'hoge';
  git push origin master;
  echo "wp"
}

# custam commands
alias cl='clear'
alias la='ls -a'

# move dir
alias c.='cd ../'
alias c..='cd ../../'
alias c...='cd ../../../'