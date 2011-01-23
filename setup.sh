#!/bin/bash

CONFDIR=`pwd`
LINKFILES='.gitconfig .emacs .emacs.d .screenrc .tmux.conf .zshrc .vimperator .vimperatorrc .zshrc .zshrc.include .vimrc'

cd ~/
if [ "$HOME" = "" ]; then
    HOME=`pwd`
fi

for i in $LINKFILES; do
    rm -rf $HOME/$i
    ln -s $CONFDIR/$i $HOME/$i
done

echo include specific .zshrc.include!!
echo e.g. \'ln -s $CONFDIR/.zshrc.include.xxx $HOME/.zshrc.include\'