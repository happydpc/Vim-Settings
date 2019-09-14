" ----- Neovim Keybindings -----
" Last Updated on 2019. 09. 14.

" ----- Default -----
let mapleader=','
nmap <leader>[ <C-w>h
nmap <leader>] <C-w>l
nmap <leader><CR> :let @/=''<CR>
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>

" ----- Shougo/neosnippet.vim -----
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" ---- airblade/vim-gitgutter -----
nmap <leader>g :GitGutterToggle<CR>

" ----- majutsushi/tagbar -----
nmap <leader>t :TagbarToggle<CR>

" ----- prabirshrestha/asyncomplete.vim -----
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
imap <C-Space> <Plug>(asyncomplete_force_refresh)

" ----- othree/html5.vim -----
autocmd FileType html imap <C-n> <C-x><C-o>

" ----- scrooloose/nerdtree -----
nmap <leader>n :NERDTreeToggle<CR>

" ----- added by hwyncho -----
nmap <leader>f :Format<CR>
