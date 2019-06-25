set nocompatible
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set clipboard=unnamedplus


map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <F2> :NERDTreeToggle<CR>

nnoremap H gT
nnoremap L gt


call plug#begin('~/.vim/plugged')

" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" GUI
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'w0rp/ale'

" Other useful stuff
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'

" Language support
Plug 'vim-python/python-syntax'

call plug#end()


" Search settings
set hlsearch
set ignorecase
set incsearch
set smartcase

" GUI settings
colorscheme gruvbox
let &colorcolumn=join(range(120,999),",")
set listchars+=space:·
set mouse=a
set number
set relativenumber

let g:lightline = {
    \ 'colorscheme': 'jellybeans', 
    \ 'active': {
    \   'left': [ [ 'mode' ], 
    \             [ 'filename', 'modified' ] ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ] ]
    \ }
    \ }

syntax enable
let g:python_highlight_all=1

if has("autocmd")
    filetype on

    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
endif

set laststatus=2
