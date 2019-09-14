" ----- Neovim Plugins -----
" Last Updated on 2019. 09. 14.

" ----- Plugin Manager -----
set nocompatible
call plug#begin('~/.local/share/nvim/plugged')
    Plug 'Chiel92/vim-autoformat'
    Plug 'Raimondi/delimitmate'
    Plug 'Shougo/neco-syntax'
    Plug 'Shougo/neco-vim'
    Plug 'Shougo/neoinclude.vim'
    Plug 'Shougo/neosnippet-snippets'
    Plug 'Shougo/neosnippet.vim'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'airblade/vim-gitgutter'
    Plug 'alvan/vim-closetag'
    Plug 'ap/vim-css-color'
    Plug 'ayu-theme/ayu-vim'
    Plug 'chrisbra/csv.vim'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'elzr/vim-json'
    Plug 'godlygeek/tabular'
    Plug 'honza/vim-snippets'
    Plug 'junegunn/gv.vim'
    Plug 'kyouryuukunn/asyncomplete-neoinclude.vim'
    Plug 'lervag/vimtex'
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'majutsushi/tagbar'
    Plug 'mattn/emmet-vim'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'othree/html5.vim'
    Plug 'pbrisbin/vim-mkdir'
    Plug 'plasticboy/vim-markdown'
    Plug 'prabirshrestha/async.vim'
    Plug 'prabirshrestha/asyncomplete-buffer.vim'
    Plug 'prabirshrestha/asyncomplete-emoji.vim'
    Plug 'prabirshrestha/asyncomplete-file.vim'
    Plug 'prabirshrestha/asyncomplete-flow.vim'
    Plug 'prabirshrestha/asyncomplete-gocode.vim'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'
    Plug 'prabirshrestha/asyncomplete-necosyntax.vim'
    Plug 'prabirshrestha/asyncomplete-necovim.vim'
    Plug 'prabirshrestha/asyncomplete-neosnippet.vim'
    Plug 'prabirshrestha/asyncomplete-omni.vim'
    Plug 'prabirshrestha/asyncomplete-tags.vim'
    Plug 'prabirshrestha/asyncomplete-tscompletejob.vim'
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'prettier/vim-prettier', {'do': 'yarn install', 'branch': 'release/1.x', 'for': ['css', 'html', 'javascript', 'json', 'markdown']}
    Plug 'runoshun/tscompletejob'
    Plug 'ryanolsonx/vim-lsp-javascript'
    Plug 'ryanolsonx/vim-lsp-python'
    Plug 'scrooloose/nerdtree'
    Plug 'thomasfaingnaert/vim-lsp-neosnippet'
    Plug 'thomasfaingnaert/vim-lsp-snippets'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()

" ----- Chiel92/vim-autoformat -----
let g:formatdef_clangformat='"clang-format -style=\"{BasedOnStyle: LLVM, IndentWidth: 4}\""'

" ----- Raimondi/delimitMate -----
autocmd FileType html let delimitMate_autoclose=0

" ----- ayu-theme/ayu-vim -----
let ayucolor='mirage'
colorscheme ayu

" ----- ctrlpvim/ctrlp.vim -----
let g:ctrlp_custom_ignore='\v[\/]\.(git|hg|svn)$'
let g:ctrlp_switch_buffer='et'

" ----- nathanaelkane/vim-indent-guides -----
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1

" ----- othree/html5.vim -----
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" ----- plasticboy/vim-markdown -----
"let g:vim_markdown_auto_insert_bullets=0
let g:vim_markdown_fenced_languages=['bash=sh', 'c++=cpp', 'csharp=cs', 'ini=dosini', 'viml=vim']
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_new_list_item_indent=2
let g:vim_markdown_no_default_key_mappings=1

" ----- prabirshrestha/asyncomplete.vim -----
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
autocmd User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
    \'name': 'buffer',
    \'completor': function('asyncomplete#sources#buffer#completor'),
    \'config': {'max_buffer_size': 5000000},
    \'whitelist': ['*'],
    \'blacklist': ['go']
\}))
autocmd User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#emoji#get_source_options({
    \'name': 'emoji',
    \'completor': function('asyncomplete#sources#emoji#completor'),
    \'whitelist': ['*']
\}))
autocmd User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    \'name': 'file',
    \'completor': function('asyncomplete#sources#file#completor'),
    \'priority': 10,
    \'whitelist': ['*']
\}))
autocmd User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#gocode#get_source_options({
    \'name': 'gocode',
    \'completor': function('asyncomplete#sources#gocode#completor'),
    \'config': {'gocode_path': expand('~/.go/bin/gocode')},
    \'whitelist': ['go']
\}))
autocmd User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#neoinclude#get_source_options({
    \ 'name': 'neoinclude',
    \ 'whitelist': ['cpp'],
    \ 'refresh_pattern': '\(<\|"\|/\)$',
    \ 'completor': function('asyncomplete#sources#neoinclude#completor'),
    \ }))
autocmd User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#neosnippet#get_source_options({
    \'name': 'neosnippet',
    \'completor': function('asyncomplete#sources#neosnippet#completor'),
    \'whitelist': ['*']
\}))
autocmd User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#necosyntax#get_source_options({
    \'name': 'necosyntax',
    \'completor': function('asyncomplete#sources#necosyntax#completor'),
    \'whitelist': ['*']
\}))
autocmd User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#necovim#get_source_options({
    \'name': 'necovim',
    \'completor': function('asyncomplete#sources#necovim#completor'),
    \'whitelist': ['vim']
\}))
autocmd User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#omni#get_source_options({
    \'name': 'omni',
    \'completor': function('asyncomplete#sources#omni#completor'),
    \'whitelist': ['*'],
    \'blacklist': ['c', 'cpp', 'html']
\}))
autocmd User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#tags#get_source_options({
    \'name': 'tags',
    \'completor': function('asyncomplete#sources#tags#completor'),
    \'config': {'max_file_size': 50000000},
    \'whitelist': ['c']
\}))
autocmd User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#tscompletejob#get_source_options({
    \'name': 'tscompletejob',
    \'completor': function('asyncomplete#sources#tscompletejob#completor'),
    \'whitelist': ['typescript']
\}))

" ----- prabirshrestha/vim-lsp -----
if executable('ccls')
   autocmd User lsp_setup call lsp#register_server({
        \'name': 'ccls',
        \'cmd': {server_info->['ccls']},
        \'initialization_options': {'cache': {'directory': '.ccls_cache' }},
        \'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
        \'whitelist': ['c', 'cc', 'cpp', 'objc', 'objcpp']
    \})
   autocmd BufWritePre *.c LspDocumentFormatSync
   autocmd BufWritePre *.cc LspDocumentFormatSync
   autocmd BufWritePre *.cpp LspDocumentFormatSync
endif
if executable('css-languageserver')
    autocmd User lsp_setup call lsp#register_server({
        \'name': 'css-languageserver',
        \'cmd': {server_info->[&shell, &shellcmdflag, 'css-languageserver --stdio']},
        \'whitelist': ['css', 'less', 'sass']
    \})
endif
if executable('gopls')
    autocmd User lsp_setup call lsp#register_server({
        \'name': 'gopls',
        \'cmd': {server_info->['gopls', '-mode', 'stdio']},
        \'whitelist': ['go']
    \})
    autocmd BufWritePre *.go LspDocumentFormatSync
endif
if executable('pyls')
    autocmd BufWritePre *.py LspDocumentFormatSync
endif

" ----- scrooloose/nerdtree -----
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" ----- vim-airline/vim-airline -----
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tagbar#enabled=1
let g:airline_powerline_fonts=1
let g:airline_theme='ayu_mirage'

" ----- added by hwyncho -----
function! Format()
    if index(['css', 'html', 'javascript', 'json', 'markdown'], &filetype) > -1
        Prettier
    elseif &filetype == 'sh'
        Autoformat
    else
        LspDocumentFormatSync
    endif
endfunction
:command Format :call Format()
