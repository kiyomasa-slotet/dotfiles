# ~/.bashrc

if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

#-------------------------------------------------------------
# Alias definitions.
#-------------------------------------------------------------
if [ -f ~/.bash_aliases ]; then
  . ~/dotfiles/.bash_aliases  # dotfiles周りの設定をもう一度見直す必要がある
fi