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

" Change between 2 tab spaces and 4
map <C-4> :set ts=4 sts=4 sw=4<CR>
map <C-2> :set ts=2 sts=2 sw=2<CR>

" Changes / to \ and vice versa
nnoremap <silent> <Leader>/ :let tmp=@/<Bar>s:\\:/:ge<Bar>let @/=tmp<Bar>noh<CR>
nnoremap <silent> <Leader><Bslash> :let tmp=@/<Bar>s:/:\\:ge<Bar>let @/=tmp<Bar>noh<CR>
