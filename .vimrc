inoremap jk <esc>
nnoremap J <C-d>
nnoremap K <C-u>
nnoremap H gT
nnoremap L gt

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set number
set autoindent
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

set showcmd
set encoding=utf-8
set laststatus=2
set autoindent 
set smartindent
set clipboard=unnamed

set matchpairs+=<:>

syntax on

nnoremap <C-left> :vertical resize +5<cr>
nnoremap <C-right> :vertical resize -5<cr>
nnoremap <C-up> :resize -5<cr>
nnoremap <C-down> :resize +5<cr>

call plug#begin()
Plug 'valloric/youcompleteme'
Plug 'jszakmeister/vim-togglecursor'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'flazz/vim-colorschemes'
call plug#end()

" NERDTree
