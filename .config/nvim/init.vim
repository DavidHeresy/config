" Use the Pathogen plugin manager.
execute pathogen#infect()

" Configure the user interface.
filetype plugin indent on
set number
set wildmenu
set cursorline
set lazyredraw

" Show matching parenthesis.
set showmatch

" Search while typing and highlight results.
set incsearch
set hlsearch

" Use the Solarized colorscheme.
syntax on
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
let g:airline_theme='solarized_flood'

" Use four spaces for tabs.
set tabstop=4
set shiftwidth=4
set expandtab

" Move fast in a line.
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $

" Move fast in a file.
map J jjjjjjj
map K kkkkkkk
map H (
map L )

" Navigate fast between buffers.


nnoremap no :nohlsearch<CR>

set ruler

" TODO: Configure spell checking.
" TODO: Add command 'NoTRW' to remove trailing whitespace.
" TODO: Checkout the CtrlP plugin.

