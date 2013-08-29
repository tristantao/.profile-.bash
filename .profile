#! /usr/bin/env bash
# Author: Tristan Tao
# Purpose: for those lazy people who don't want to (can't) type all the commands properly...

alias desk='cd    /Users/ttao/Desktop'
alias down='cd    /Users/ttao/Downloads'


#WARN: This irreversibly changes default behavior, don't forget to change back at some point.
alias watch="watch -n 1 'tail -n $1 $2'"


#ls on steroid
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#some safety wire.
alias mv='mv -i'

#Typos that happen a lot. A lot. A LOT.
alias lll='ll'
alias lk='ll'
alias kk='ll'
alias k='ll'
alias LL='ll'
alias L='l'

alias vu='vi'
alias bi='vi'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias df='df -h'
alias du_nf='du -h nf_*'

#alias diskspace="du -S | sort -n -r |more"
alias ..='cd ..; ll'
alias ...='cd ../..; ll'
alias ....='cd ../../..; ll'
alias .....='cd ../../../..; ll'
alias ......='cd ../../../../..; ll'
alias .......='cd ../../../../../..; ll'
alias ........='cd ../../../../../../..; ll'
alias .........='cd ../../../../../../../..; ll'

alias ,,='..'
alias ,,,='...'
alias ,,,,='....'
