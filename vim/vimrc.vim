""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Settings
" Last Updated on 2019. 10. 05.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UI
set background=dark
set termguicolors

set splitbelow
set splitright

set mouse=a
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => File
set encoding=utf-8
set fileencoding=utf-8

set nobackup
set noswapfile
set nowritebackup

set history=1000

set undodir=$HOME/.cache/vim/undo
set undofile
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editor
set list
set listchars=extends:›,nbsp:·,precedes:‹,tab:»\ ,trail:·

set hlsearch
set number
set ruler
set showbreak=\ \ \ \ 
set showmatch
syntax on

set autoindent
set breakindent
set cindent
set smartindent

set expandtab
set shiftwidth=4
set tabstop=4
set wrap

set completeopt=menu,menuone,preview,noselect,noinsert
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
source $HOME/.vim/plugins.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Keybindings
source $HOME/.vim/keybindings.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
