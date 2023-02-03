call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

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
set laststatus=2

set colorcolumn=80

set splitright
set splitbelow

set number

set incsearch

set termguicolors
colorscheme everforest
set background=dark

let g:airline_theme='everforest'
let g:airline_powerline_fonts=1

let g:netrw_liststyle=3
let g:netrw_banner=0

