# .vim

### Description
Just enough **vim customizations** to enable **IDE style** or even better **productive workflow** in vim.

### Installation

```
# Backup '.vim' and '.vimrc' if already present
mv ~/.vim ~/.vim_bak
mv ~/.vimrc ~/.vimrc_bak

# Create new '.vim'
cd ~
mkdir .vim
cd .vim
git clone https://github.com/yugal/dotvim.git .
git submodule init
git submodule update

# Add symlink
ln -s ~/.vim/vimrc ~/.vimrc
```

### Adding new packages/plugins ([Pathogen](https://github.com/tpope/vim-pathogen) style)
```
# Vim will auto detect packages available inside the bundle directory
cd ~/.vim
git submodule add https://xyz.com/path/to/git/repository.git bundle/package-name

# Vim will auto detect vim-scripts available inside the plugin directory
cp myplugin.vim ~/.vim/plugin/
```

# Feature Highlights:

### Productive Workflow with :

1. Sublime style **ctrl-p** project-wide **fuzzy file search** with [ctrlp](https://github.com/kien/ctrlp.vim.git)
2. **IDE** style file tree with [NERDTree](https://github.com/scrooloose/nerdtree.git) and [NERDTree Tabs](https://github.com/jistr/vim-nerdtree-tabs.git) to explore files in the project
    * Press **,.** to toggle **NERDTree** explorer across tabs.
3. Sublime style **multiple cursors** for editing multiple lines at once with [multiple-cursors](https://github.com/terryma/vim-multiple-cursors.git)
4. **IDE** style **GIT diff** as [gitgutter](https://github.com/airblade/vim-gitgutter.git)
    * Jump to **next** diff with **vn**
    * Jump to **prev** diff with **nv**
5. **Snippet** completion like **Textmate** with [snipmate](https://github.com/msanders/snipmate.vim)
6. Fast file **navigation** with [easymotion](https://github.com/Lokaltog/vim-easymotion.git)
    * **;w** anchor to words
    * **;j** anchor to lines forward
    * **;k** anchor to lines backward
    * **;f** search for character forward
    * **;F** search for character backward
7. Automatically closes **parenthesis**, **braces**, **brackets**, **quotes** as you type with [delimitMate](https://github.com/Raimondi/delimitMate.git)
8. Tab completion of words inside of a search '**/**' with [SearchComplete](http://www.vim.org/scripts/script.php?script_id=474)
9. Enhanced auto-completion with [neocomplcache](https://github.com/Shougo/neocomplcache.vim.git)
10. Easily toggle comments with [tcomment](https://github.com/tomtom/tcomment_vim.git)
    * **ctrl-/ ctrl-/** to toggle current/selected lines

### Time Saving keyboard mappings

1. Save with **shift+w** (**W**) and Quit with **shift-q** (**Q**)
2. Press **alt-i** or **alt-I** **insert/visual mode** to change to **Command mode**
3. Press **,/** to exit search highlight after a search with **/**
4. Press **shift-h** ( **H** ) to jump to line beginning and **shift-l** ( **L** ) to jump to line ending.
5. Press **F2** in **insert mode** to toggle **paste**
6. Easy **tab navigation** with :
    * **th** -> First tab
    * **tj** -> Next tab
    * **tk** -> Previous tab
    * **tl** -> Last tab
    * **tt** -> New tab
    * **td** -> Close current tab
7. Easy **split navigation** in **command mode** with :
    * **Ctrl-h** -> Move left
    * **Ctrl-j** -> Move down
    * **Ctrl-k** -> Move up
    * **Ctrl-l** -> Move right
8. Move cursor with-in **insert mode** without arrow-keys:
    * **Ctrl-h** -> Move cursor left
    * **Ctrl-j** -> Move cursor down
    * **Ctrl-k** -> Move cursor up
    * **Ctrl-l** -> Move cursor right
9. Move **current/selected lines** vertically (**Gvim** Only) :
    * **Alt-j** -> Move line/selection down
    * **Alt-k** -> Move line/selection up
10. **Indent** & **Un-Indent** with **tab** & **shift-tab** respectively
11. Press **:w!!** to save with **sudo** ( Useful for system files )
12. Press **Enter** to **:** in command mode
13. Press **,y** (**yank** to register) and **,p** (**paste** from register)

### Misc.

* Syntax highlighting for **nginx** configuration ( missing in the standard vim install )

# Author
| [![twitter/yugal1988](https://www.gravatar.com/avatar/19c28676f977300166c0f35f41a9aae0?s=90)](http://twitter.com/yugal1988 "Follow @yugal1988 on Twitter") |
|---|
| [Yugal Jindle](http://stackoverflow.com/users/731963/yugal-jindle "Stackoverflow !") |
| [![linkedin.com/in/yugal1988](http://s.c.lnkd.licdn.com/scds/common/u/img/webpromo/btn_in_20x15.png) Profile](http://www.linkedin.com/in/yugal1988 "Connect on LinkedIn") |

