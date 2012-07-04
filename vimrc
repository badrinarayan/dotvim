call pathogen#infect()
call pathogen#helptags()

syntax on
filetype indent on
filetype plugin on

set nocompatible
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs
let g:Powerline_symbols='fancy'

set ruler
set number

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,hs_err*,*~
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.svn$\|outputs\|inputs',
  \ 'file': '\.so$\|\.swp$\|\.zip$\|\.mat$\|^hs_err',
  \ }

colorscheme ir_black
if has("gui_running")
  call togglebg#map("<F5>")
  set columns=90
  set lines=40
  set guifont=Inconsolata-dz_for_Powerline:h14
else
  set mouse=a
  set t_Co=256 "Explicitly tell Vim we are using a terminal that supports 256 colors
end

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

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

"TODO: See if this messes up other stuff
set hidden     "Hides buffer instead of closing them

set pastetoggle=<F2>
"Even Better Solution for handling paste
"Credit http://www.drbunsen.org/text-triumvirate.html#fn:2
noremap <leader>p :set paste<CR>:put *<CR>:set nopaste<CR>
noremap <leader>y "*y
noremap <leader>yy "*Y

inoremap jj <ESC>
nnoremap ; :

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
