set nocompatible
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

let mapleader=','


map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>nt :NERDTreeToggle<CR>

" copy to clipboard
noremap <leader>y "+y
noremap <leader>p "+p

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
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'vim-python/python-syntax'
Plug 'ycm-core/YouCompleteMe'
Plug 'cespare/vim-toml'

call plug#end()

" YCM configs
let g:ycm_autoclose_preview_window_after_insertion=1
nnoremap <leader>h :YcmCompleter GetDoc<CR>
nnoremap <C-]> :YcmCompleter GoTo<CR>

" FZF configs
map <leader>fg :GitFiles<CR>
map <leader>fa :Ag<CR>
map <leader>fb :Buffer<CR>

let g:fzf_layout = { 
    \ 'window': {
    \   'width': 0.9,
    \   'height': 0.6,
    \   'border': 'sharp' }
    \ }


" Search settings
set hlsearch
set ignorecase
set incsearch
set smartcase

" GUI settings
set termguicolors
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
    \             [ 'relativepath', 'modified' ] ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ] ]
    \ }
    \ }

syntax enable
let g:python_highlight_all=1
let g:rustfmt_autosave=1

if has("autocmd")
    filetype on

    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
endif

set laststatus=2

