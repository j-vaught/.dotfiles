#!/usr/bin/bash

rm -f -- ~/.vimrc #removes vimrc
grep -v "source ∼/.dotfiles/bashrc_custom" ~/.bashrc > temp && mv temp ~/.bashrc #remove line from file
rm -r -- ~/.TRASH #removes trash folder
