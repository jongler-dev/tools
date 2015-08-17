" .vimrc is under:
"     Unix: ~/.vimrc
"     Windows: C:\Users\MyLogin\.vimrc
" Also see http://superuser.com/questions/280331/vim-not-loading-vimrc-file-when-launched-from-git-bash

" add this file to your home dir or replace/embedd this with exsisting .vimrc

syntax on     " syntax highlight is on

":hi Comment ctermfg=LightBlue
:hi Comment ctermfg=cyan

set number     " show line numbers
"set mouse=a    " enable mouse support

" backspace
set backspace=indent,eol,start " make backspace work like most other apps

" tab
set expandtab   " insert space instead of tab
set tabstop=4   " replace tab with 4 spaces

" indentation
set autoindent    " keep indentation from previous line
set expandtab     " Use softtabstop spaces instead of tab characters for indentation
set shiftwidth=4  " Indent by 4 spaces when using >>, <<, == etc.
set softtabstop=4 " Indent by 4 spaces when pressing TAB

" search
set incsearch  " incremental search
set hls        " highlight all search results
set ignorecase " case insensitive search
set smartcase  " /The finds only "The", but not "the" or "THE"

" swap between colon and semi colon
nore ; :
nore : ;

" consider using the following:
"set showmatch                   " automatically show matching brackets. works like it does in bbedit.
"set vb                          " turn on the "visual bell" - which is much quieter than the "audio blink"
"set ruler                       " show the cursor position all the time
"set background=dark             " Use colours that work well on a dark background (Console is usually black)
