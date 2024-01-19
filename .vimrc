call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

Plug 'elixir-editors/vim-elixir'

Plug 'fatih/vim-go'

Plug 'ionide/Ionide-vim'

Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/seoul256.vim'
Plug 'sainnhe/everforest'

call plug#end()

syntax on
set re=0

filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

set cursorline

set noerrorbells

set noswapfile
set nobackup
set hidden

set splitright
set splitbelow

set relativenumber
set number

set scrolloff=8

set incsearch
set nohlsearch

set clipboard=unnamedplus

set termguicolors
colorscheme everforest
set background=dark

let g:lightline = {'colorscheme': 'everforest' }

let g:netrw_liststyle=3
let g:netrw_banner=0
