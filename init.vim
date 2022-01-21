" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'

call plug#begin("~/vimfiles/autoload/plugged")
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'SidOfc/mkdx'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasr/molokai'
call plug#end()

let g:mkdx#settings     = { 'highlight': { 'enable': 1 },
                        \ 'enter': { 'shift': 1 },
                        \ 'links': { 'external': { 'enable': 1 } },
                        \ 'toc': { 'text': 'Table of Contents', 'update_on_write': 1 },
                        \ 'fold': { 'enable': 1 } }
let g:polyglot_disabled = ['markdown'] " for vim-polyglot users, it loads Plasticboy's markdown
                                       " plugin which unfortunately interferes with mkdx list indentation.

syntax on
set conceallevel=2
set textwidth=0
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
set noshowmode

autocmd filetype python nnoremap <F5> :w <bar> :!python % <CR>
nnoremap <C-s> :w <CR>

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

" no folds
let g:vim_markdown_folding_disabled = 1
" shrink toc if possible
let g:vim_markdown_toc_autofit = 1
" fancy syntax concealment
autocmd FileType markdown set conceallevel=2
" but not for code blocks
let g:vim_markdown_conceal_code_blocks = 0
" yaml frontmatter
let g:vim_markdown_frontmatter = 1
" open Toc
autocmd Filetype markdown nnoremap <silent> <localleader>j :Toch<cr>
" select from TOC and quit
autocmd FileType qf nnoremap <Space> <cr>:only<cr>

function Check()
  let l:line=getline('.')
  let l:curs=winsaveview()
  if l:line=~?'\s*-\s*\[\s*\].*'
      s/\[\s*\]/[.]/
  elseif l:line=~?'\s*-\s*\[\.\].*'
      s/\[.\]/[x]/
  elseif l:line=~?'\s*-\s*\[x\].*'
      s/\[x\]/[ ]/
  endif
  call winrestview(l:curs)
endfunction

autocmd FileType markdown nnoremap <silent> - :call Check()<CR>

set termguicolors
colorscheme molokai