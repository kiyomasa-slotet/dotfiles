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

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

##########################################
# misc
autoload -Uz colors
colors

HISTFILE=~/.zsh_history
HISTSIZE=100
SAVEHIST=100

autoload -Uz compinit
compinit

setopt hist_ignore_all_dups
##########################################
USER_NAME=`logname`

# custam commands
alias cl="clear"
alias la='ls -a'
alias ll='ls -lart'

# move dir
alias c.="cd ../"
alias c..="cd ../../"
alias c...="cd ../../../"


##########################################
# -- move specific working dir
alias cdf='cd /Users/$USER_NAME/Desktop/games/MoonLikeAPearl'
# sh commands
alias deploy="sh /Users/$USER_NAME/git/dotfiles/bin/sh/deploy.sh"
# 動画変換
alias movto8="sh /Users/$USER_NAME/git/dotfiles/bin/sh/movto8.sh"
alias movconvert="sh /Users/$USER_NAME/git/dotfiles/bin/sh/movconvert.sh"
# 画像処理
alias convert_img_to_webp="sh /Users/$USER_NAME/git/dotfiles/bin/sh/convert_img_to_webp.sh"
alias comp_imgfiles="sh /Users/$USER_NAME/git/dotfiles/bin/sh/comp_imgfiles.sh"
##########################################

# Git Commands
alias ga="git add ."
alias gc="git commit -m "
alias gl="git log --graph --decorate --oneline"
alias gd="git diff"
alias gb="git branch"
alias gs="git status"
alias gp="git push origin main"
alias gpg="git push origin gh-pages"

export PATH=$PATH:/Users/kiyomasasato/.spicetify
