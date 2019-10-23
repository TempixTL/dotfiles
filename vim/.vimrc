" Relative line numbers
set number relativenumber

" Indentation is important!
set autoindent

" Spaces over tabs for life
set expandtab
set tabstop=2
set shiftwidth=2

" Smol visual changes
hi CursorLineNr term=bold cterm=bold 

" vim-plug
call plug#begin()

Plug 'dracula/vim'

call plug#end()
