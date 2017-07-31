" THEME
syntax enable
" TODO: set colorscheme

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

" -------------------
"    dein.vim
" -------------------
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/bundle/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})

call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet')

call dein#add('digitaltoad/vim-pug')
call dein#add('othree/html5.vim')
call dein#add('posva/vim-vue')

call dein#end()

filetype plugin indent on
