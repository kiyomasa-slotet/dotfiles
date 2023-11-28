export PS1="%1~ %t %#
"

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh"
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && . "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"

##########################################
# misc
autoload -Uz colors
colors

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

autoload -Uz compinit
compinit

setopt hist_ignore_all_dups
##########################################
USER_NAME=`logname`

# custam commands
alias cl="clear"
alias la='ls -a'
alias ll='ls -lart'
alias reload='source .zshrc'

# move dir
alias c.="cd ../"
alias c..="cd ../../"
alias c...="cd ../../../"

# -- move specific working dir
alias cdf='cd /Users/$USER_NAME/games/FakePlasticTrees'

# sh commands
alias deploy="sh /Users/$USER_NAME/git/dotfiles/bin/sh/deploy.sh"
#alias MOVtoMP4="sh /Users/$USER_NAME/git/dotfiles/bin/sh/convertMOVtoMP4.sh"
alias cvtMOVtoMP4="sh /Users/$USER_NAME/git/dotfiles/bin/sh/convert_mov_to_mp4.sh"

# co

# Git Commands
alias ga="git add ."
alias gc="git commit -m "
alias gl="git log --graph --decorate --oneline"
alias gd="git diff"
alias gb="git branch"
alias gs="git status"
alias gp="git push origin main"
alias gpg="git push origin gh-pages"
