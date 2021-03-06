#!/bin/bash

if [ ./`basename $0` != $0 ]; then
    echo Please cd CONFDIR
    exit 1
fi


CONFDIR=`pwd`
LINKFILES='.gitconfig .emacs .emacs.d .screenrc .tmux.conf .zshrc .vimperator .vimperatorrc .zshrc .vimrc'

cd ~/
if [ "$HOME" = "" ]; then
    HOME=`pwd`
fi

for i in $LINKFILES; do
    rm -rf $HOME/$i
    ln -s $CONFDIR/$i $HOME/$i
done

INCLUDE=$1
if [ -z $INCLUDE ]; then
    echo include specific .zshrc.include!!
    echo e.g. \'ln -s $CONFDIR/.zshrc.include.xxx $HOME/.zshrc.include\'
else
    rm $HOME/.zshrc.include
    ln -s $CONFDIR/.zshrc.include.$INCLUDE $HOME/.zshrc.include
fi
