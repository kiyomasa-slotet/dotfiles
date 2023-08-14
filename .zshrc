export PS1="%1~ %t %#
"

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi

# custam commands
alias cl="clear"
alias la='ls -a'
alias ll='ls -lart'
alias reload='source .zshrc'

# move dir
alias c.="cd ../"
alias c..="cd ../../"
alias c...="cd ../../../"

# sh commands
alias deploy="sh deploy.sh"
alias MOVtoMP4="/usr/local/bin/convertMOVtoMP4.sh"

# Git Commands
alias ga="git add ."
alias gc="git commit -m "
alias gl="git log --graph --decorate --oneline"
alias gd="git diff"
alias gb="git branch"
alias gs="git status"
alias gp="git push origin main"
alias gpg="git push origin gh-pages"
