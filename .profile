#! /usr/bin/env bash
# Author: Tristan Tao
# Purpose: The awesome profile, leggo.

if [ -f ~/.prof_aliases ]; then
	. ~/.prof_aliases
	echo "INFO: loaded alises!"
else
	echo "WARNING: could not load alises"
fi

#export PS1='\u@\h:\w$ '
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '

export HISTFILESIZE=20000
export HISTSIZE=5000
shopt -s histappend
shopt -s checkwinsize
# Combine multiline commands into one in history
shopt -s cmdhist
# Ignore duplicates, ls without options and builtin commands
HISTCONTROL=ignoredups
export HISTIGNORE="&:ls:[bf]g:exit"


export PATH=$PATH:/usr/local/sbin:/usr/local/lib:/opt/local/bin/:/Applications/Xcode.app/Contents/Developer/usr/bin
export PYTHONPATH=/Library/Python/2.7/site-packages/:$PYTHONPATH
export ARCHFLAGS="-arch i386 -arch x86_64"
