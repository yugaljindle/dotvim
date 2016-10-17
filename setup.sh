#!/usr/bin/env bash

# Banner
echo "########################"
echo "#       'dotvim'      ##"
echo "########################"
echo -e "\n"

# Setup links
vimrc="$HOME/.vimrc"
vimrc_bak="$HOME/.vimrc_bak"
gvimrc="$HOME/.gvimrc"
gvimrc_bak="$HOME/.gvimrc_bak"
new_vimrc="$HOME/.vim/vimrc"
new_gvimrc="$HOME/.vim/gvimrc"

read -p "Create symlinks for .vimrc & .gvimrc? [Y/n]: " answer
if [[ $answer =~ [Yy] ]] || [[ -z $answer ]]; then
    ## Backup if already present
    if [[ -f $vimrc ]] || [[ -L $vimrc ]]; then
        echo -e "$vimrc already exists"
        echo -e "Backing up $vimrc as $vimrc_bak"
        mv $vimrc $vimrc_bak
    fi
    if [[ -e $gvimrc ]] || [[ -L $gvimrc ]]; then
        echo -e "$gvimrc already exists"
        echo -e "Backing up $gvimrc as $gvimrc_bak"
        mv $gvimrc $gvimrc_bak
    fi
    ## Add symlinks
    ln -s "$new_vimrc" $vimrc 
    ln -s $new_gvimrc $gvimrc
fi

# Setup vim
vim --cmd 'let dotvim=1'

