"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Pathogen
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Color Scheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
let g:molokai_original = 1
colorscheme molokai

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Customizations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
" Tabs
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
" Indents
set autoindent
set smartindent
" Search
set hlsearch
set ignorecase
set smartcase
set incsearch
" Color Overides
hi LineNr ctermfg=15
hi LineNr ctermbg=235
" Others
set autoread
set cursorline
set number
let mapleader = ","
