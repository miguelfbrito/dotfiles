set nocompatible

inoremap jk <Esc>
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
hi MatchParen ctermfg=red ctermbg=black  guifg=red guibg=black 
syntax on

nnoremap <C-left> :vertical resize +5<cr>
nnoremap <C-right> :vertical resize -5<cr>
nnoremap <C-up> :resize -5<cr>
nnoremap <C-down> :resize +5<cr>

" Downloads plug.vim
"if empty(glob('~/.vim/autoload/plug.vim'))
"  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"    autocmd VimEnter * PlugInstall | source $MYVIMRC
"endif
"
"call plug#begin()
"
"" Automatically install missing plugins on startup
"if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
"   autocmd VimEnter * PlugInstall | q
"   endif
"
"Plug 'valloric/youcompleteme'
"Plug 'jszakmeister/vim-togglecursor'
"Plug 'scrooloose/nerdtree'
"Plug 'tpope/vim-surround'
"Plug 'mattn/emmet-vim'
"Plug 'flazz/vim-colorschemes'
"call plug#end()
