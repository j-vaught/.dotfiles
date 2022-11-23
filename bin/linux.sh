#!/usr/bin/bash

var1="Linux"
var2=$(uname) 
if [[ "$var2" == "$var1" ]]; then #if statement
    echo "System is linux." # prints linux system
else
    echo "Error 1. Not a Linux system">linuxsetup.log # throws error
    exit #exits program
fi # exits if statement
mkdir -p ~/.TRASH # creates a new directory
[ ! -d ~/.vimrc ] || mv ~/.vimrc ~/.bup_vimrc # renames a folder and moves it
echo "Log 2. Changed name of .vimrc to .bup_vimrc">>linuxsetup.log #send log to logfile
cat ~/.dotfiles/etc/vimrc > ~/.vimrc #redirects file contents to another file
echo "source ∼/.dotfiles/etc/bashrc_custom" >> ~/.bashrc #adds text to end of file

