""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    ____  _             _       
"   |  _ \| |_   _  __ _(_)_ __  
"   | |_) | | | | |/ _` | | '_ \ 
"   |  __/| | |_| | (_| | | | | |
"   |_|   |_|\__,_|\__, |_|_| |_|
"                  |___/         
"   
"     ____          _                  _          _   _                 
"    / ___|   _ ___| |_ ___  _ __ ___ (_)______ _| |_(_) ___  _ __  ___ 
"   | |  | | | / __| __/ _ \| '_ ` _ \| |_  / _` | __| |/ _ \| '_ \/ __|
"   | |__| |_| \__ \ || (_) | | | | | | |/ / (_| | |_| | (_) | | | \__ \
"    \____\__,_|___/\__\___/|_| |_| |_|_/___\__,_|\__|_|\___/|_| |_|___/
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTreeTab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <leader>. :NERDTreeTabsToggle<cr>
let NERDTreeMapOpenInTab='<c-t>'
let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_open_on_console_startup=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Startify
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:startify_custom_header = [
    \ '   __     ___             ____            _     _                         _  ', 
    \ '   \ \   / (_)_ __ ___   |  _ \  __ _ ___| |__ | |__   ___   __ _ _ __ __| | ',
    \ '    \ \ / /| | `_ ` _ \  | | | |/ _` / __| `_ \| `_ \ / _ \ / _` | `__/ _` | ',
    \ '     \ V / | | | | | | | | |_| | (_| \__ \ | | | |_) | (_) | (_| | | | (_| | ',
    \ '      \_/  |_|_| |_| |_| |____/ \__,_|___/_| |_|_.__/ \___/ \__,_|_|  \__,_| ',
    \ '', ''
\ ]
let g:startify_custom_footer = [
    \ "",
    \ "============================================================================"
\ ]
let g:startify_change_to_dir=0
au FileType startify setlocal buftype=
let g:startify_skiplist = [
    \ 'COMMIT_EDITMSG',
    \ $VIMRUNTIME .'/doc',
    \ '\.DS_Store'
    \ ]
let g:startify_bookmarks = ['~/.vimrc']
let g:startify_list_order = [
    \ ['   Sessions'], 'sessions',
    \ ['   Bookmarks'], 'bookmarks',
    \ ['   Recent files'], 'files',
    \ ['   Recent files in current directory'], 'dir'
    \ ]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GitGutter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap cm <Plug>GitGutterNextHunk
nmap mc <Plug>GitGutterPrevHunk
let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_modified_removed = '~-'
highlight GitGutterDelete guifg=#ff0000 guibg=NONE ctermfg=1 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyMotion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_leader_key = ';'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tComment
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GVim only
nnoremap <silent> <m-/> :TComment<cr>
vnoremap <silent> <m-/> :TCommentMaybeInline<cr>gv
inoremap <silent> <m-/> <c-o>:TComment<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=50
let g:ctrlp_by_filename=1
let g:ctrlp_working_path_mode=''
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|bower_components$\|node_modules$\|tmp$',
  \ 'file': '\.so$\|\.pyc$\|\.exe$\|\.dat$'
  \ }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => IndentLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_color_term=239
let g:indentLine_faster=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Taboo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:taboo_tab_format=' [%N]:%f%m'
let g:taboo_renamed_tab_format=' [%N]:[%f]%m'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Maximizer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:maximizer_default_mapping_key='<f11>'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='laederon'
let g:airline_left_sep=''
let g:airline_right_sep=''
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.branch = '⎇'
let g:airline#extensions#whitespace#enabled=0
