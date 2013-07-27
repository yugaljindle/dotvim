"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Disable vi fallback
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Pathogen
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Color Scheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
colorscheme railscasts

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
" Status line
set statusline=
set statusline +=%F%m%r%h%w%<\         "full path
set statusline +=%h%=[type=%Y]\        "file type
set statusline +=%h%=[%p%%]\           "file %
set statusline +=%h%=%l%*              "curr line
set statusline +=%h/%L%*               "tot  lines
set statusline +=%h%=\ [col=%c]\       "column number
set laststatus=2
" Others
set number
set autoread
set cursorline
set pastetoggle=<F2>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Leader bindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
" Stop hls
nmap <silent> <leader>/ :nohlsearch<CR>
" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key bindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab switch 
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap td  :tabclose<CR>
" Sudo save
cmap w!! %!sudo tee > /dev/null %
" Split navigation
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
" Insert mode to Command mode
inoremap jk <Esc>
" Re-select visual block after indent
vnoremap < <gv
vnoremap > >gv

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Auto Commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set nopaste on leaving insert mode
autocmd InsertLeave * set nopaste

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => zzz-Overrides
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc continued in zzz-Overrides.vim
" ( Overrides any settings done by 3rd party plugins )

