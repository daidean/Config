#!/usr/bin/bash

SCRIPT_DIR=$(pwd)/$(dirname $0)
BASHRC_PATH=~/.bashrc
BASHRC_PATH_BK=~/.bashrc.$(date +%Y%m%d%H%M%S).bk
BASH_LOGOUT_PATH=~/.bash_logout
BASH_LOGOUT_PATH_BK=~/.bash_logout.$(date +%Y%m%d%H%M%S).bk
PROFILE_PATH=~/.profile
PROFILE_PATH_BK=~/.profile.$(date +%Y%m%d%H%M%S).bk

if [ -f $BASHRC_PATH ]; then
	cp $BASHRC_PATH $BASHRC_PATH_BK
fi

if [ -f $BASH_LOGOUT_PATH ]; then
	cp $BASH_LOGOUT_PATH $BASH_LOGOUT_PATH_BK
fi

if [ -f $PROFILE_PATH ]; then
	cp $PROFILE_PATH $PROFILE_PATH_BK
fi

cp $SCRIPT_DIR/bashrc $BASHRC_PATH
cp $SCRIPT_DIR/bash_logout $BASH_LOGOUT_PATH
cp $SCRIPT_DIR/profile $PROFILE_PATH
