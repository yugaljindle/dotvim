" Pathogen :: https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" Color Scheme
set t_Co=256
let g:molokai_original = 1
colorscheme molokai

" Sensible :: git@github.com:tpope/vim-sensible.git [ Handles following : ]
" set autoindent
" set incsearch
" set smarttab
" set autoread

" ###### Genral settings ######
syntax on
" Tabs
set expandtab
set tabstop=4
set shiftwidth=4
" Indents
set smartindent
" Search
set hlsearch
set ignorecase
" Others
set cursorline
