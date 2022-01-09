" This is a .vimrc for my windows setup and also for gVim

call plug#begin("~\vimfiles\autoload\plugged")
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'preservim/nerdcommenter'
Plug 'iamcco/markdown-preview.vim'
call plug#end()

cd ~/Desktop/Code/vimfiles


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
set scrolloff=2
" No text wrap
set nowrap
" Searches while typing
set incsearch
" No error bells
set belloff=all
" Tab length
set tabstop=2 softtabstop=2 shiftwidth=2
set go-=L
set go-=l
set go-=r

autocmd filetype java nnoremap <F4> :w <bar> :!java % <CR>
autocmd filetype python nnoremap <F5> :w <bar> :!python % <CR>
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++11 -O2 -Wall % -o %:r && %:r.exe <CR>
nnoremap <C-s> :w <CR>

autocmd BufNewFile *.cpp 0r ~\vimfiles\templates\template.cpp

" no more arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" set guifont=Courier\ New:h20
set guifont=Fixedsys:h20
