#!/usr/bin/bash

SCRIPT_DIR=$(pwd)/$(dirname $0)
VIMRC_PATH=~/.vimrc
VIMRC_PATH_BK=~/.vimrc.$(date +%Y%m%d%H%M%S).bk
PLUG_PATH=~/.vim/autoload/plug.vim
PLUG_PATH_BK=~/.vim/autoload/plug.vim.$(date +%Y%m%d%H%M%S).bk

if [ -f $VIMRC_PATH ]; then
	cp $VIMRC_PATH $VIMRC_PATH_BK
fi

if [ -f $PLUG_PATH ]; then
	cp $PLUG_PATH $PLUG_PATH_BK
fi

cp $SCRIPT_DIR/vimrc $VIMRC_PATH
cp $SCRIPT_DIR/plug.vim $PLUG_PATH
