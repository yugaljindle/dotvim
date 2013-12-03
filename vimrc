""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"        _       _         _           
"     __| | ___ | |___   _(_)_ __ ___  
"    / _` |/ _ \| __\ \ / / | '_ ` _ \ 
"   | (_| | (_) | |_ \ V /| | | | | | |
"    \__,_|\___/ \__| \_/ |_|_| |_| |_|
"                                      
"   
" By Yugal Jindle:
"       Twitter: @yugal1988
"       Github: https://github.com/yugal
"       LinkedIn: http://www.linkedin.com/in/yugal1988
"       Stackoverflow: http://stackoverflow.com/users/731963/yugal-jindle
"
" Github Repository: https://github.com/yugal/dotvim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Initialize
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable vi fallback
set nocompatible
" Initiate Pathogen
execute pathogen#infect()
execute pathogen#helptags()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Customizations
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
" Standard status line
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
set showcmd
set autoread
set cursorline
set noswapfile
set pastetoggle=<f2>
" Capable terminals only
if &term=~"xterm" || &term=~"screen" || has("gui_running")
    set mouse=a
    set ttyfast
    set t_Co=256
    colorscheme railscasts
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Leader bindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key bindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
nmap W :w<cr>
nmap Q :q<cr>
noremap <c-s> :w!<cr>
inoremap <c-s> <c-o>:w!<cr>
" Sudo save
cmap w!! %!sudo tee > /dev/null %
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
" Standard ctrl-c and ctrl-v functionality
vmap <c-c> "+ygv
vmap <c-x> "+x
vmap <c-v> c<esc>"+p
imap <c-v> <f2><c-r>+<f2>
" Map <Space> to /(search) and Ctrl-<Space> to ?(search backwards)
map <space> /
map <c-space> ?
" Toggle Folding
noremap - zc " Close fold
noremap = zo " Open fold
noremap _ zM " Close all folds
noremap + zR " Open all folds
" Revert to last saved state
noremap <silent>! :edit!<cr>
" Y behave like other capitals
map Y y$

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Auto Commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set nopaste on leaving insert mode
autocmd InsertLeave * set nopaste
" Resize Vsplits on window resize
au VimResized * exe "normal! \<c-w>="

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Source '~/.vimrc.local' for local customizations
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(glob("~/.vimrc.local")) 
    source ~/.vimrc.local
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Customizations
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTreeTab
nmap <silent> <leader>. :NERDTreeTabsToggle<cr>
let NERDTreeMapOpenInTab='<c-t>'
let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_open_on_console_startup=0
" Startify
let g:startify_change_to_dir=0
au FileType startify setlocal buftype=
" GitGutter
nmap cm <Plug>GitGutterNextHunk
nmap mc <Plug>GitGutterPrevHunk
let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_modified_removed = '~-'
highlight GitGutterDelete guifg=#ff0000 guibg=NONE ctermfg=1 ctermbg=NONE
" EasyMotion
let g:EasyMotion_leader_key = ';'
" tComment (GVim only) 
nnoremap <silent> <m-/> :TComment<cr>
vnoremap <silent> <m-/> :TCommentMaybeInline<cr>gv
inoremap <silent> <m-/> <c-o>:TComment<cr>
" Neocomplcache
let g:neocomplcache_enable_at_startup = 1
" CtrlP
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=50
let g:ctrlp_by_filename=1
let g:ctrlp_working_path_mode=''
" IndentLine
let g:indentLine_color_term=239
let g:indentLine_faster=1
" Taboo
let g:taboo_tab_format=' [%N]:%f%m'
let g:taboo_renamed_tab_format=' [%N]:[%f]%m'
" Maximizer
let g:maximizer_default_mapping_key='<F11>'
" Airline
let g:airline_theme='laederon'
let g:airline_left_sep=''
let g:airline_right_sep=''
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.branch = '⎇'
let g:airline#extensions#whitespace#enabled=0
