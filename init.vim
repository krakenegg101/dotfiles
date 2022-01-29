call plug#begin(stdpath('data') . '/plugged')
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasr/molokai'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'overcache/NeoSolarized'
Plug 'uiiaoo/java-syntax.vim'
call plug#end()

syntax on
set conceallevel=2
set textwidth=0
set exrc
set clipboard=unnamed
set ai
set si
set nu
set backspace=2
set noswapfile
set nobackup
set nowritebackup
set expandtab
set nohlsearch
set scrolloff=4
set nowrap
set incsearch
set belloff=all
set tabstop=8 shiftwidth=2 softtabstop=2
set smarttab
set noshowmode
set cursorline

autocmd filetype python nnoremap <F5> :w <bar> :!python % <CR>
nnoremap <C-s> :w <CR>

autocmd BufNewFile *.cpp 0r ~\vimfiles\templates\template.cpp
autocmd BufNewFile *.java 0r ~\vimfiles\templates\template.java

" no more arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>


syntax on
set termguicolors
colorscheme NeoSolarized
highlight link javaIdentifier NONE

let g:airline_theme='solarized'

highlight Normal guibg=none
highlight NonText guibg=none
