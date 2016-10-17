""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"        _       _         _           
"     __| | ___ | |___   _(_)_ __ ___  
"    / _` |/ _ \| __\ \ / / | '_ ` _ \ 
"   | (_| | (_) | |_ \ V /| | | | | | |
"    \__,_|\___/ \__| \_/ |_|_| |_| |_|
"                                      
"   
" By Yugal Jindle:
"       Twitter: @YugalJindle
"       Github: https://github.com/yugaljindle
"       LinkedIn: http://www.linkedin.com/in/yugaljindle
"       Stackoverflow: http://stackoverflow.com/users/731963/yugal-jindle
"
" Github Repository: https://github.com/yugaljindle/dotvim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Initialize 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup Vim
set shell=bash\ --noprofile\ --norc
set nocompatible

" Setup Vundle the first time
let isVundle=0
let readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    let isVundle=1
endif
if exists('dotvim')
    let isVundle=1
endif
" Initiate Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Vundle Plugin List
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mhinz/vim-signify'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Raimondi/delimitMate'
Plugin 'easymotion/vim-easymotion'
Plugin 'tomtom/tcomment_vim'
Plugin 'airblade/vim-rooter'
Plugin 'plasticboy/vim-markdown'
Plugin 'Yggdroot/indentLine'
Plugin 'gcmt/taboo.vim'
Plugin 'szw/vim-maximizer'
Plugin 'mhinz/vim-startify'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'Valloric/MatchTagAlways'
Plugin 'nelstrom/vim-visual-star-search'
call vundle#end()
" Install plugins the first time
if isVundle==1
    :PluginInstall
    :qa!
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Customizations
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
filetype plugin indent on
" Tabs
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set shiftround
" Indents
set autoindent
set smartindent
" Search
set hlsearch
set ignorecase
set smartcase
set incsearch
" Split orientation
set splitbelow
set splitright
" Color overides
hi LineNr ctermfg=15
hi LineNr ctermbg=235
" Standard status line
set statusline=
set statusline +=%F%m%r%h%w%<\         "full path
set statusline +=%h%=[type=%Y]\        "file type
set statusline +=%h%=[%p%%]\           "file %
set statusline +=%h%=%l%*              "curr line
set statusline +=%h/%L%*               "tot  lines
set statusline +=%h%=\ [col=%c]\       "column number
set laststatus=2
" Wild menu
set wildmenu
set wildmode=full
" Others
set wrap
set number
set showcmd
set autoread
set gdefault
set linebreak
set cursorline
set noswapfile
set modeline
set modelines=5
set scrolloff=3
set showbreak=.\ 
set nrformats-=octal
set pastetoggle=<f2>
set backspace=indent,eol,start
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Extra settings for capable terminals
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if &term=~"xterm" || &term=~"xterm-256color" || &term=~"screen" || has("gui_running")
    set mouse=a
    set ttyfast
    set t_Co=256
    colorscheme railscasts
    " Soothing diff colorscheme
    if has("gui_running")
        hi Normal guifg=#e8e8d3 guibg=#151515
        " Diff colors
        hi DiffAdd guifg=#d2ebbe guibg=#437019
        hi DiffChange guibg=#2b5b77
        hi DiffDelete guifg=#40000a guibg=#700009
        hi DiffText gui=reverse guifg=#8fbfdc guibg=#000000
    else
        hi Normal ctermfg=188 ctermbg=233
        " Diff colors
        hi DiffAdd ctermfg=193 ctermbg=22
        hi DiffChange ctermfg=none ctermbg=24
        hi DiffDelete ctermfg=16 ctermbg=52
        hi DiffText cterm=reverse ctermfg=81 ctermbg=16
    endif
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Leader bindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
let g:mapleader = ","
" Stop hls
nmap <silent> <leader>/ :nohlsearch<cr>
" Quickly edit/reload the vimrc file
nmap <leader>ev :tabnew $MYVIMRC<cr>
nmap <leader>sv :so $MYVIMRC<cr>
" Moving split windows
noremap <leader>h <c-w>H
noremap <leader>j <c-w>J
noremap <leader>k <c-w>K
noremap <leader>l <c-w>L
" Create empty splits
noremap <leader>ss :new<cr>
noremap <leader>vv :vnew<cr>
" Move split to new tab
nnoremap <leader>t <c-W>T

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key bindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Wrap movements
noremap j gj
noremap k gk
noremap <down> gj
noremap <up> gk
" Tab switch 
nnoremap th :tabfirst<cr>
nnoremap tj :tabnext<cr>
nnoremap tk :tabprev<cr>
nnoremap tl :tablast<cr>
nnoremap tt :tabedit<space>
nnoremap td :tabclose<cr>
nnoremap t1 :tabn 1<cr>
nnoremap t2 :tabn 2<cr>
nnoremap t3 :tabn 3<cr>
nnoremap t4 :tabn 4<cr>
nnoremap t5 :tabn 5<cr>
nnoremap t6 :tabn 6<cr>
nnoremap t7 :tabn 7<cr>
nnoremap t8 :tabn 8<cr>
nnoremap t9 :tabn 9<cr>
" Save & Quit
cab W w
nmap W :w<cr>
cab Q q
nmap Q :q<cr>
cab WQ wq
nmap <cr> :w<cr>
" Save with ctrl-s (Gvim only)
noremap <c-s> :w!<cr>
inoremap <c-s> <c-o>:w!<cr>
" Sudo save
cmap w!! %!sudo tee > /dev/null %
" Jump to start & end of line
noremap H ^
noremap L $
" Split navigation
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <tab> <c-w>w
nnoremap <s-tab> <c-w>W
" (alt/ctrl)-(i/I) to <esc>
inoremap i <esc>
noremap  i <esc>
snoremap i <esc>
inoremap I <esc>
noremap  I <esc>
snoremap I <esc>
inoremap <m-i> <esc>
noremap  <m-i> <esc>
snoremap <m-i> <esc>
inoremap <m-I> <esc>
noremap  <m-I> <esc>
snoremap <m-I> <esc>
" Indent with Tab & Shift-Tab
vnoremap <tab> >gv
vnoremap <s-tab> <gv
" Re-select visual block after indent
vnoremap < <gv
vnoremap > >gv
" Screen navigation (insert mode)
inoremap <c-h> <left>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>
inoremap <c-f> <c-o><c-f>
inoremap <c-b> <c-o><c-b>
" Move current line vertically (GVim only)
nnoremap <silent> <m-j> :m+<cr>
nnoremap <silent> <m-k> :m-2<cr>
inoremap <silent> <m-j> <c-o>:m+<cr>
inoremap <silent> <m-k> <c-o>:m-2<cr>
vnoremap <silent> <m-j> :m'>+<cr>gv
vnoremap <silent> <m-k> :m-2<cr>gv
" Standard ctrl-c and ctrl-v functionality [ Additional clipboard ]
vnoremap <c-c> "+ygv
vnoremap <c-x> "+x
vnoremap <c-v> c<esc>"+p
inoremap <c-v> <f2><c-r>+<f2>
noremap <leader>y "+y
noremap <leader>p "+p
" Map <Space> to /(search) and Ctrl-<Space> to ?(search backwards)
map <space> /
map <c-space> ?
" Toggle Folding
nnoremap - zc " Close fold
nnoremap = zo " Open fold
nnoremap _ zM " Close all folds
nnoremap + zR " Open all folds
vnoremap - zf " Create fold selection
" Revert to last saved state
noremap <silent>! :edit!<cr>
" Y behave like other capitals
map Y y$
" Selection shortcuts
vnoremap ` $h
nnoremap ` <s-v>
" Buffer navigation
noremap <leader><space> :bn<cr>
noremap <leader><bs> :bd!<cr>
" Regular visual selection
nmap <s-up> V
nmap <s-down> V
vmap <s-up> k
vmap <s-down> j

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Auto Commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set nopaste on leaving insert mode
autocmd InsertLeave * set nopaste
" Resize Vsplits on window resize
autocmd VimResized * exe "normal! \<c-w>="
" Open all folds to begin with
autocmd BufRead * normal zR

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Source '~/.vim/plugin.vimrc' for plugin customizations
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/plugin.vimrc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Source '~/.vimrc.local' for local customizations
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(glob("~/.vimrc.local")) 
    source ~/.vimrc.local
endif
