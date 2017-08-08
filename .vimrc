syntax enable

set number
set wrap
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set backspace=indent,eol,start
set showmatch
set backup
set backupdir=~/.vim/backup
set autoread
set encoding=utf-8
set ignorecase
set wrapscan
set ttyfast
set ambiwidth=double
set ruler
set clipboard=unnamed

" auto insert '}' and ']'
" I prefer write ')' by myself
imap { {}<LEFT>
imap [ []<LEFT>

" restore last cursor position
if has("autocmd")
  autocmd BufReadPost *
  \ if line("'\'") > 0 && line ("'\'") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
endif
