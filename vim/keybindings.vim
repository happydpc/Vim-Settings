""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Keybindings
" Last Updated on 2019. 10. 05.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Default
set backspace=indent,eol,start
let mapleader=','
nmap <leader>[ <C-w>h
nmap <leader>] <C-w>l
nmap <leader><CR> :let @/=''<CR>
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
" --> majutsushi/tagbar
nmap <leader>t :TagbarToggle<CR>

" --> neoclide/coc.nvim
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <leader>x <Plug>(coc-cursors-operator)
nmap <silent> <C-c> <Plug>(coc-cursors-position)
nmap <silent> <C-d> <Plug>(coc-cursors-word)
xmap <silent> <C-d> <Plug>(coc-cursors-range)

nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)

xmap <leader>f <Plug>(coc-format-selected)

" --> scrooloose/nerdtree
nmap <leader>n :NERDTreeToggle<CR>

" --> Shougo/neosnippet.vim
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
