call pathogen#infect()
call pathogen#helptags()

set nocompatible

set background=light
set ruler
set number

syntax on
set guifont=Consolas:h13

set ts=2
set sts=2
set sw=2
set et

set autoindent
set copyindent

let mapleader=","

"-------------
" Search Fixes
"-------------
set ignorecase "ignore case while searching
set smartcase  "ignore case if search pattern is all lowercase
set incsearch
set hlsearch
"Turn off highlighting
noremap <leader><space> :noh<cr> 
set gdefault " /g by default
nnoremap / /\v
vnoremap / /\v

set hidden     "Hides buffer instead of closing them

set pastetoggle=<F2>

"------------------
"Showing invisibles
"------------------
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬
"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set visualbell
set noerrorbells
