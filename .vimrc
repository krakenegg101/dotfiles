" My vim config in my Windows pc

call plug#begin("~/vimfiles/autoload/plugged")
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdcommenter'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

syntax on
set exrc
set clipboard=unnamed
" Block cursor
set guicursor=
set ai
set si
" Line Numbers
set nu
" Fixes weird backspace not working in insert
set backspace=2
" No backup files
set noswapfile
" No backup files
set nobackup
set nowritebackup
" Replace tabs with space
set expandtab
" No highlighted words in search
set nohlsearch
" Scrolls 2 lines before
set scrolloff=4
" No text wrap
set nowrap
" Searches while typing
set incsearch
" No error bells
set belloff=all
" Tab length
set tabstop=8 shiftwidth=2 softtabstop=2
set smarttab
set go-=L
set go-=m
set go-=M
set go-=l
set go-=r
set go=c

autocmd filetype java nnoremap <F5> :w <bar> :!javac % <bar> :!java %:r <CR>
autocmd filetype python nnoremap <F5> :w <bar> :!python % <CR>
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++11 -O2 -Wall % -o %:r && %:r.exe <CR>
nnoremap <C-s> :w <CR>
nnoremap <C-i> :Goyo <CR>

autocmd BufNewFile *.cpp 0r ~\vimfiles\templates\template.cpp

" no more arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

set termguicolors
colorscheme dracula

set guifont=Source\ Code\ Pro:h16
