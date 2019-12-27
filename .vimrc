" Ubuntu Setup: vim-gnome package to get ubuntu support for clipboard copy
"
"

set nocompatible
filetype plugin indent on
syntax on 

let mapleader="\<Space>"

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
" Execute shell script
map <C-x> :! sh ./% <CR>

set number relativenumber
set autoindent
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

set showcmd
set encoding=utf-8
set laststatus=2
set autoindent 
set smartindent
set clipboard=unnamedplus
set ignorecase
set linebreak

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

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Automatically install missing plugins on startup
if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
    autocmd VimEnter * PlugInstall | q
endif

" Plugins
Plug 'junegunn/fzf', {'dir': '~/.fzf/', 'do': './install -all'}
Plug 'junegunn/fzf.vim'
Plug 'vimwiki/vimwiki'
Plug 'itchyny/calendar.vim'
Plug 'lervag/vimtex'
Plug 'scrooloose/nerdtree'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'

" snippets
" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'


call plug#end()

" Vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_folding = 'expr'

" Calendar
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" UltiSnips
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" fzf
"
nnoremap <C-p> :Files<CR>
inoremap <C-p> <Esc>:Files<CR>
