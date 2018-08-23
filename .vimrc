inoremap jk <esc>
nnoremap J <C-d>
nnoremap K <C-u>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set number
set autoindent
set tabstop=4
set softtabstop=4
set expandtab

set showcmd
set encoding=utf-8
set laststatus=2
set autoindent 
set smartindent

set matchpairs+=<:>

syntax on

nnoremap <C-left> :vertical resize -5<cr>
nnoremap <C-right> :vertical resize +5<cr>
nnoremap <C-up> :resize -5<cr>
nnoremap <C-down> :resize +5<cr>
