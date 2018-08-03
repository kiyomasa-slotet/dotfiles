# ~/.bashrc

## aliases
if [ -f .bash_aliases ]; then
  . ~/dotfiles/.bash_aliases
fi

#-------------------------------------------------------------
# convert mp4 to mp3
#-------------------------------------------------------------
alias mp4tomp3="find . -type f -name "*.mp4" -print0 | perl -pe 's/\.mp4\0/\0/g' | xargs -0 -I% ffmpeg -i %.mp4 -acodec libmp3lame -ab 256k %.mp3"

#-------------------------------------------------------------
# deleate .DS_Store
#-------------------------------------------------------------
function deleateDsStore(){
   find $1 \( -name '.DS_Store' -o -name 'Thumbs.db' \) -delete -print;
}
