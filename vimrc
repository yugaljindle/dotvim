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
" Color overides
hi LineNr ctermfg=15
hi LineNr ctermbg=235
" Others
set autoread
set cursorline
set number
let mapleader = ","
" Tab switch 
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap td  :tabclose<CR>
