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

**Intelligent Workflow**

1. Automatically closes **parenthesis**, **braces**, **brackets**, **quotes** as you type.
2. Tab completion while searching with **/**

**Productivity addons**

1. Sublime style **ctrl-p** project-wide **fuzzy file search** with [ctrlp](https://github.com/kien/ctrlp.vim.git)
2. **IDE** style file tree with [NERDTree](https://github.com/scrooloose/nerdtree.git) and [NERDTree Tabs](https://github.com/jistr/vim-nerdtree-tabs.git) to explore files in the project
    * Press **,.** to toggle **NERDTree** explorer across tabs.
3. Sublime style **multiple cursors** for editing multiple lines at once with [multiple-cursors](https://github.com/terryma/vim-multiple-cursors.git)
4. **IDE** style **GIT diff** as [gitgutter](https://github.com/airblade/vim-gitgutter.git)
    * Jump to **next** diff with **gh**
    * Jump to **prev** diff with **hg**

**Time Saving keyboard mappings**

1. Save with **shift+s** (**S**) and Quit with **shift-q** (**Q**)
2. Press **fj** or **FJ** or **jf** or **JF** in **insert/visual mode** to change to **Command mode**
3. Press **,/** to exit search highlight after a search with **/**
4. Press **F2** in **insert mode** to toggle **paste**
5. Easy **tab navigation** with :
    * **th** -> First tab
    * **tj** -> Next tab
    * **tk** -> Previous tab
    * **tl** -> Last tab
    * **tt** -> New tab
    * **td** -> Close current tab
6. Easy **split navigation** in **command mode** with :
    * **Ctrl-h** -> Move left
    * **Ctrl-j** -> Move down
    * **Ctrl-k** -> Move up
    * **Ctrl-l** -> Move right
7. Move cursor with-in **insert mode** without arrow-keys:
    * **Ctrl-h** -> Move cursor left
    * **Ctrl-j** -> Move cursor down
    * **Ctrl-k** -> Move cursor up
    * **Ctrl-l** -> Move cursor right
8. Press **Enter** to **:** in command mode

**Misc.**

* Syntax highlighting for **nginx** configuration ( missing in the standard vim install )

# Author
| [![twitter/yugal1988](https://www.gravatar.com/avatar/19c28676f977300166c0f35f41a9aae0?s=90)](http://twitter.com/yugal1988 "Follow @yugal1988 on Twitter") |
|---|
| [Yugal Jindle](http://stackoverflow.com/users/731963/yugal-jindle) |

