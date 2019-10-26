filetype plugin on
set number relativenumber
set autoindent

" Spaces over tabs for life
set expandtab
set tabstop=2
set shiftwidth=2

" Smol visual change
hi CursorLineNr term=bold cterm=bold 

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

call plug#end()
