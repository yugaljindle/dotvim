#!/usr/bin/env bash

# Check for existing configs
if [[ -f $vimrc ]] || [[ -L $vimrc ]] || [[ -e $gvimrc ]] || [[ -L $gvimrc ]]; then
  echo "Error: vimrc/gvimrc already exists"
  exit 1
fi

# Banner
echo "########################"
echo "#       'dotvim'      ##"
echo "########################"
echo -e "\n"

# Setup links
dotvim="$HOME/.vim"
vimrc="$HOME/.vimrc"
vimrc_bak="$HOME/.vimrc_bak"
gvimrc="$HOME/.gvimrc"
gvimrc_bak="$HOME/.gvimrc_bak"
new_vimrc="$HOME/.vim/vimrc"
new_gvimrc="$HOME/.vim/gvimrc"

# Installation
mkdir -p "$dotvim"
git clone https://github.com/yugaljindle/dotvim.git "$dotvim"
vim --cmd 'let dotvim=1'

# Add symlinks
ln -s "$new_vimrc" $vimrc 
ln -s $new_gvimrc $gvimrc

