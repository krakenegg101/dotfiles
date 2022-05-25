call plug#begin(stdpath('data') . '/plugged')
  " Airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Important Plugins
  Plug 'godlygeek/tabular'
  Plug 'jiangmiao/auto-pairs'
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Themes
  Plug 'tomasr/molokai'
  Plug 'overcache/NeoSolarized'
  Plug 'tomasiser/vim-code-dark'
  Plug 'morhetz/gruvbox'
  Plug 'dracula/vim', { 'as': 'dracula' }
  " Icons
  Plug 'ryanoasis/vim-devicons'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'romgrk/barbar.nvim'
  " Multi Cursor
  Plug 'timlentse/vim-multiple-cursors'
  Plug 'tpope/vim-vinegar'
  " Markdown
  Plug 'ixru/nvim-markdown'
  Plug 'iamcco/markdown-preview.nvim'
  " LSP and theming
  if has('nvim')
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  endif
  " Focus Mode 
  Plug 'Pocco81/TrueZen.nvim'
call plug#end()
