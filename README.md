# .vim

## Description
vim customizations by Yugal Jindle

## Installation

```
cd ~
# Drop '.vim' if already present
rm -rf ~/.vim

# Create new '.vim'
mkdir .vim
cd .vim
git clone https://github.com/yugal/dotvim.git .
git submodule foreach git pull origin master

# Add symlink
ln -s ~/.vim/vimrc ~/.vimrc
```

# Author
| [![twitter/yugal1988](https://www.gravatar.com/avatar/19c28676f977300166c0f35f41a9aae0?s=90)](http://twitter.com/yugal1988 "Follow @yugal1988 on Twitter") |
|---|
| [Yugal Jindle](http://stackoverflow.com/users/731963/yugal-jindle) |

