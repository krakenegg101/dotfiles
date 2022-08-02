" leader key
let mapleader=";"

" Config files
source ~/.config/nvim/plug.vim
source ~/.config/nvim/config/coc.vim
source ~/.config/nvim/coderun.vim
source ~/.config/nvim/keybinds.vim
luafile ~/.config/nvim/lua/treesitter.lua
autocmd BufNewFile *.cpp 0r ~/.config/nvim/templates/template.cpp
autocmd BufNewFile *.java 0r ~/.config/nvim/templates/template.java
autocmd BufNewFile *.c 0r ~/.config/nvim/templates/template.c

" not needed thanks to plugin
set noshowmode
let python_highlight_all=1
" syntax coloring
syntax on
set conceallevel=2
set textwidth=0
set exrc
set clipboard=unnamed
set backspace=2
" column on side
set signcolumn=yes
" column 80 \"some units\" away
set colorcolumn=80
" indenting
set autoindent
set smartindent
" line numbers
set nu
set rnu
" file history
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
" searches while typing
set incsearch
" no highlighting
set nohlsearch
set scrolloff=8
" text won't wrap
set nowrap
"no bell
set belloff=all
" tabs
set tabstop=2 shiftwidth=2 softtabstop=2
set smarttab
set expandtab
" use mouse
set mouse+=a
" set cursorline

" For gui-based vim (gVim)
if has('gui_running')
  set guioptions-=m  "  menu bar
  set guioptions-=T  "  toolbar
  set guioptions-=r  "  scrollbar
  set guioptions-=L  "  left scrollbar 
  set guifont=Hack\ NF:h16
endif

" theming
set termguicolors
colorscheme dracula
let g:netrw_liststyle = 3
let g:airline_powerline_fonts = 0

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" For nvim only
if has('nvim')
"  hi Normal guibg=NONE ctermbg=NONE
"  highlight Normal guibg=none
"  highlight NonText guibg=none
  autocmd TermOpen * startinsert
endif
