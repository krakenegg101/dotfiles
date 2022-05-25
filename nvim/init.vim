" Config files
source ~/.config/nvim/plug.vim
source ~/.config/nvim/config/coc.vim
luafile ~/.config/nvim/lua/treesitter.lua
autocmd BufNewFile *.cpp 0r ~/.config/nvim/templates/template.cpp
autocmd BufNewFile *.java 0r ~/.config/nvim/templates/template.java
autocmd BufNewFile *.c 0r ~/.config/nvim/templates/template.c


set noshowmode
let python_highlight_all=1
syntax on
set conceallevel=2
set textwidth=0
set exrc
set clipboard=unnamed
set signcolumn=yes
set ai
set si
set nu
set backspace=2
set noswapfile
set nobackup
set nowritebackup
set expandtab
set nohlsearch
set scrolloff=2
set nowrap
set belloff=all
set tabstop=2 shiftwidth=2 softtabstop=2
set smarttab
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

" Run files
if has('nvim')
  autocmd filetype java nnoremap <F5> :w <bar> :terminal java % <CR>
  autocm filetype java nnoremap <F3> :w <bar> :terminal javac % <CR>
  autocmd filetype java nnoremap <F4> :w <bar> :terminal java %:r <CR>
  autocmd filetype python nnoremap <F5> :w <bar> :terminal python % <CR>
endif

if has('gui_running') || has('vim')
  autocmd filetype python nnoremap <F5> :w <bar> :!python % <CR>
  autocmd filetype java nnoremap <F5> :w <bar> :!java % <CR>
  autocmd filetype java nnoremap <F3> :w <bar> :!javac % <CR>
  autocmd filetype java nnoremap <F4> :w <bar> :!java %:r <CR>
endif

" no more arrow keys
map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>

" Nerd Tree
map <leader>n :NERDTreeFocus<CR>
map <C-n> :NERDTree<CR>
map <C-t> :NERDTreeToggle<CR>

" Esape using ii
imap ii <Esc>
vmap ii <Esc>

" speed up navigating and resizing splits
map <A-j> <C-W><C-J>
map <A-k> <C-W><C-K>
map <A-l> <C-W><C-L>
map <A-h> <C-W><C-H>
map <lt> <C-W><lt>
map > <C-W>>
map - <C-W>-
map + <C-W>+

" Traditional keybinds
map <C-z> <Undo>
map <C-s> :w <CR>
map <C-y> u


" Changes / to \ and vice versa
nnoremap <silent> <Leader>/ :let tmp=@/<Bar>s:\\:/:ge<Bar>let @/=tmp<Bar>noh<CR>
nnoremap <silent> <Leader><Bslash> :let tmp=@/<Bar>s:/:\\:ge<Bar>let @/=tmp<Bar>noh<CR>

set termguicolors
colorscheme dracula
let g:netrw_liststyle = 3
let g:airline_powerline_fonts = 1

" For nvim only
if has('nvim')
"  highlight Normal guibg=none
"  highlight NonText guibg=none
  autocmd TermOpen * startinsert
endif
