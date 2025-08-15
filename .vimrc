call plug#begin()

Plug 'itchyny/lightline.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

Plug 'rose-pine/vim'
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

set scrolloff=999

set incsearch
set nohlsearch

set clipboard=unnamedplus

set termguicolors
set background=dark
let g:everforest_background="medium"
let g:everforest_enable_italic="true"
let g:everforest_transparent_background=0
let g:everforest_ui_contrast="high"
let g:everforest_diagnostic_text_highlight=1
let g:everforest_diagnostic_line_highlight=1
let g:everforest_diagnostic_virtual_text="highlighted"
colorscheme everforest

let g:lightline = { 'colorscheme': 'everforest' }

let g:netrw_liststyle=3
let g:netrw_banner=0
