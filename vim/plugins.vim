" ----- Vim Plugins -----
" Last Updated on 2019. 10. 05.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Manager
set nocompatible
call plug#begin('~/.vim/plugged')
    " --> UI
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'majutsushi/tagbar'
    Plug 'scrooloose/nerdtree'
    Plug 'tomasr/molokai'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-airline/vim-airline'

    " --> File
    Plug 'ap/vim-css-color'
    Plug 'chrisbra/csv.vim'
    Plug 'pbrisbin/vim-mkdir'

    " --> Editor
    Plug 'alvan/vim-closetag'
    Plug 'mattn/emmet-vim'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'Raimondi/delimitmate'
    Plug 'tpope/vim-surround'

    " --> Git
    Plug 'Xuyuanp/nerdtree-git-plugin'

    " --> Snippets
    Plug 'Shougo/neosnippet-snippets'
    Plug 'Shougo/neosnippet.vim'

    " --> Formatters
    Plug 'Chiel92/vim-autoformat'

    " --> Tools
    Plug 'Shougo/neco-vim'
    Plug 'Shougo/neoinclude.vim'

    " --> LSP and Intellisense
    Plug 'jsfaint/coc-neoinclude'
    Plug 'neoclide/coc-neco'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UI
" --> ctrlpvim/ctrlp.vim
let g:ctrlp_custom_ignore='\v[\/]\.(git|hg|svn)$'
let g:ctrlp_switch_buffer='et'

" --> majutsushi/tagbar
let g:tagbar_type_markdown={
    \'ctagstype' : 'markdown',
    \'kinds' : [
        \'h:Heading_L1',
        \'i:Heading_L2',
        \'k:Heading_L3'
    \]
\}

" --> scrooloose/nerdtree
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" --> tomasr/molokai
let g:molokai_original=1
" let g:rehash256=1
colorscheme molokai

" --> vim-airline/vim-airline
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tagbar#enabled=1
let g:airline_powerline_fonts=1
let g:airline_theme='molokai'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editor
" --> nathanaelkane/vim-indent-guides
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1

" --> Raimondi/delimitMate
autocmd FileType html let delimitMate_autoclose=0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Formatters
" --> Chiel92/vim-autoformat
let g:formatdef_clangformat='"clang-format -style=\"{BasedOnStyle: LLVM, IndentWidth: 4}\""'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => LSP and Intellisense
" --> neoclide/conc.nvim
set signcolumn=yes

autocmd FileType json syntax match Comment +\/\/.\+$+
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

let g:coc_snippet_next='<TAB>'
let g:coc_snippet_prev='<S-TAB>'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => added by hwyncho
function! MyCocInstallExtensions()
    CocInstall coc-css
    CocInstall coc-emmet
    CocInstall coc-emoji
    CocInstall coc-git
    CocInstall coc-gocode
    CocInstall coc-highlight
    CocInstall coc-html
    CocInstall coc-java
    CocInstall coc-json
    CocInstall coc-lists
    CocInstall coc-marketplace
    CocInstall coc-neosnippet
    CocInstall coc-python
    CocInstall coc-snippets
    CocInstall coc-svg
    CocInstall coc-syntax
    CocInstall coc-texlab
    CocInstall coc-tsserver
    CocInstall coc-vimlsp
    CocInstall coc-vimtex
    CocInstall coc-xml
    CocInstall coc-yaml
    CocInstall coc-yank
endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
