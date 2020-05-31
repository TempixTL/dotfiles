filetype plugin on
set number relativenumber
set autoindent
hi CursorLineNr term=bold cterm=bold 

" spaces over tabs for life
set expandtab
set tabstop=2
set shiftwidth=2

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', {'as':'dracula'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

call plug#end()
