call pathogen#infect()
call pathogen#helptags()

syntax on
filetype indent on
filetype plugin on

set nocompatible
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs
let g:Powerline_symbols='fancy'

set timeoutlen=300

autocmd FileType tex set textwidth=78 
autocmd FileType tex set wrap
autocmd FileType tex set linebreak

set ruler
set number

" Map ctrl-movement keys to window switching
map <C-up>    <C-w>k
map <C-down>  <C-w>j
map <C-right> <C-w>l
map <C-left>  <C-w>h

map <C-j> :bnext<cr>
map <C-k> :bprevious<cr>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,hs_err*,*~
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.svn$\|outputs\|inputs',
  \ 'file': '\.so$\|\.swp$\|\.zip$\|\.mat$\|^hs_err',
  \ }

colorscheme jellybeans
"set background=light
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
set t_Co=256

if has("gui_running")
  call togglebg#map("<F5>")
  set columns=90
  set lines=50
  set guifont=Inconsolata-dz_for_Powerline:h13
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
nmap <leader>l :set list! list?<CR>
set listchars=tab:▸\ ,eol:¬
"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

"---------------------
"Editing Configuration
"---------------------
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"-------------
"Latex TeX-PDF
"-------------
let g:tex_pdf_map_leader_keys = 0
"----------------
"Config for Vimux
"----------------
map <leader>rp :PromptVimTmuxCommand<CR>
map <leader>rl :RunLastVimTmuxCommand<CR>
map <leader>ri :InspectVimTmuxRunner<CR>
map <leader>rx :CloseVimTmuxPanes<CR>
map <leader>rs :InterruptVimTmuxRunner<CR>

" NERDTree
map <leader>t :NERDTree<CR>

" Fugitive mappings from 
" http://www.michaelxavier.net/posts/2010-03-13-Git-vim-bindings-for-fugitive-vim.html
nmap <leader>gs :Gstatus<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>ga :Gwrite<cr>
nmap <leader>gl :Glog<cr>
nmap <leader>gd :Gdiff<cr>
nmap <leader>gm :Gmove<space>
"Same as git rm %
nmap <leader>gr :Gremove<cr>
"Same as git checkout %
nmap <leader>gu :Gread<cr>
nmap <leader>gp :Git push<cr>

" Annoyances
set visualbell
set noerrorbells

set noswapfile
set nobackup
