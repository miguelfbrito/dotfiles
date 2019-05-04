" vim-gnome package to get ubuntu support for clipboard copy

set nocompatible

let mapleader='\<Space>'

inoremap jk <Esc>
nnoremap J <C-d>
nnoremap K <C-u>
nnoremap H gT
nnoremap L gt

" save on <c-s>
nmap <c-s> :w<cr>
imap <c-s> <esc>:w<cr>a
vnoremap <c-s> <Esc>:w<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set number relativenumber
set autoindent
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

set showcmd
set encoding=utf-8
set laststatus=2
set autoindent 
set smartindent
set clipboard=unnamedplus

set ttymouse=xterm2
set mouse=a

set matchpairs+=<:>
hi MatchParen ctermfg=red ctermbg=black  guifg=red guibg=black 
syntax on

nnoremap <C-left> :vertical resize +5<cr>
nnoremap <C-right> :vertical resize -5<cr>
nnoremap <C-up> :resize -5<cr>
nnoremap <C-down> :resize +5<cr>

cnoremap sudow w !sudo tee % > /dev/null
