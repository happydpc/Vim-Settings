" ----- Neovim Settings -----
" Last Updated on 2019. 09. 14.

" ----- UI -----
set autochdir
set background=dark
set mouse=a
set splitbelow
set splitright
set termguicolors

" ----- File -----
set encoding=utf-8
set fileencoding=utf-8
set history=1000
set nobackup
set noswapfile
set nowritebackup
set undodir=$HOME/.cache/nvim/undo
set undofile

" ----- Editor -----
set autoindent
set breakindent
set cindent
set completeopt=menu,menuone,preview,noselect,noinsert
set expandtab
set hlsearch
set list
set listchars=extends:›,nbsp:·,precedes:‹,tab:»\ ,trail:·
set number
set ruler
set shiftwidth=4
set showbreak=\ \ \ \ 
set showmatch
set smartindent
set tabstop=4
set wrap
syntax on

" ----- Plugins -----
source $HOME/.config/nvim/plugins.vim

" ----- Keybindings -----
source $HOME/.config/nvim/keybindings.vim
