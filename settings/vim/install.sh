#!/bin/bash

target='~/.vim'
echo "Delete and overwrite directory $target (btw now HOME=$HOME) ? Type uppercase Y to continue, n or no to abort"
read yn
if [[ $yn != "Y" ]] ; then echo "Abort"; exit 1 ; fi
cp -ar _.vim ~/.vim

target='~/.vimrc'
echo "Delete and overwrite $target (btw now HOME=$HOME) ? Type uppercase Y to continue, n or no to abort"
read yn
if [[ $yn != "Y" ]] ; then echo "Abort"; exit 1 ; fi
echo 'source ~/.vim/vimrc' > ~/.vimrc 

echo "Installation done"
