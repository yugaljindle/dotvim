# .vim

### Description
vim customizations by **Yugal Jindle**

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

### Adding new packages ([Pathogen](https://github.com/tpope/vim-pathogen) style)
```
# Vim will automatically detect the new package
cd ~/.vim
git submodule add https://xyz.com/path/to/git/repository.git bundle/package-name
```

# Author
| [![twitter/yugal1988](https://www.gravatar.com/avatar/19c28676f977300166c0f35f41a9aae0?s=90)](http://twitter.com/yugal1988 "Follow @yugal1988 on Twitter") |
|---|
| [Yugal Jindle](http://stackoverflow.com/users/731963/yugal-jindle) |

