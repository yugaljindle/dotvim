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
filetype plugin on
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
set clipboard=unnamedplus

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Centralize backups, swapfiles and undo history
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Leader bindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
" Stop hls
nmap <silent> <leader>/ :nohlsearch<CR>
" Quickly edit/reload the vimrc file
nmap <leader>ev :tabnew $MYVIMRC<CR>
nmap <leader>sv :so $MYVIMRC<CR>

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
" Save & Quit
nmap W :w!<CR>
nmap Q :q!<CR>
" Sudo save
cmap W! %!sudo tee > /dev/null %
" Enter <cr> to :
nnoremap <cr> :
" Jump to start & end of line
noremap H ^
noremap L $
" Split navigation
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
" Insert/Visual mode to Command mode
inoremap vn <esc>
vnoremap vn <esc>
inoremap nv <esc>
vnoremap nv <esc>
inoremap VN <esc>
vnoremap VN <esc>
inoremap NV <esc>
vnoremap NV <esc>
nnoremap vn <nop>
nnoremap nv <nop>
nnoremap VN <nop>
nnoremap NV <nop>
" Indent WIth Tab & Shift-Tab
nnoremap <tab> >>_
nnoremap <s-tab> <<_
inoremap <s-tab> <c-d>
vnoremap <tab> >gv
vnoremap <s-tab> <gv
" Re-select visual block after indent
vnoremap < <gv
vnoremap > >gv
" Screen navigation (insert mode)
inoremap <c-f> <c-o><c-f>
inoremap <c-b> <c-o><c-b>
" Move current line vertically
nnoremap <silent> <c-J> :m+<CR>
nnoremap <silent> <c-K> :m-2<CR>
inoremap <silent> <c-J> <c-o>:m+<CR>
inoremap <silent> <c-K> <c-o>:m-2<CR>
vnoremap <silent> <c-J> :m'>+<CR>gv
vnoremap <silent> <c-K> :m-2<CR>gv
" Yank to register & paste from register
noremap <leader>y "zy
noremap <leader>p "zp

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Auto Commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set nopaste on leaving insert mode
autocmd InsertLeave * set nopaste

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Source '~/.vimrc.local' for local customizations
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(glob("~/.vimrc.local")) 
    source ~/.vimrc.local
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Customizations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTreeTab
nmap <silent> <leader>. :NERDTreeTabsToggle<CR>
" GitGutter
nmap cm <Plug>GitGutterNextHunk
nmap mc <Plug>GitGutterPrevHunk
let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_modified_removed = '~-'
highlight GitGutterDelete guifg=#ff0000 guibg=NONE ctermfg=1 ctermbg=NONE
" EasyMotion
let g:EasyMotion_leader_key = ';'
" Neocomplcache
let g:neocomplcache_enable_at_startup = 1
