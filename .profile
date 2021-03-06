#! /usr/bin/env bash
# Author: Tristan Tao
# Purpose: The awesome profile, leggo.

if [ -f ~/.prof_aliases ]; then
	. ~/.prof_aliases
	echo "INFO: loaded aliases!"
else
	echo "WARNING: could not load alises"
fi

if [ -f ~/.git-completion.bash ]; then
    echo "INFO: loaded git-comp"
    . ~/.git-completion.bash
else
    echo "WARNING: coult not laod git-comp"
fi


export CLICOLOR=1
LS_COLORS="di=31;1:ln=36;1:ex=31;1:*~=31;1:*.html=31;1:*.shtml=37;1"
export LS_COLORS
export LSCOLORS=GxFxCxDxBxegedabagaced

BLACK="\[\033[0;30m\]"
DGRAY="\[\033[1;30m\]"
RED="\[\033[0;31m\]"
LRED="\[\033[1;31m\]"
GREEN="\[\033[0;32m\]"
LGREEN="\[\033[1;32m\]"
BROWN="\[\033[0;33m\]"
YELLOW="\[\033[1;33m\]"
BLUE="\[\033[0;34m\]"
LBLUE="\[\033[1;34m\]"
PURPLE="\[\033[0;35m\]"
LPURPLE="\[\033[1;35m\]"
CYAN="\[\033[0;36m\]"
LCYAN="\[\033[1;36m\]"
LGRAY="\[\033[0;37m\]"
WHITE="\[\033[1;37m\]"
NEUTRAL="\[\033[0m\]"

export BLACK DGRAY RED LRED GREEN LGREEN BROWN YELLOW BLUE
export LBLUE PURPLE LPURPLE CYAN LCYAN LGRAY WHITE NEUTRAL

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#export PS1="$LBLUE[\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]$LBLUE]$NEUTRAL$ "
#export PS1="$LBLUE[\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]$LBLUE]$LRED\$(parse_git_branch)$NEUTRAL$ "
export PS1="$LBLUE[\[\e[0;33m\]\u$NEUTRAL@$GREEN\h$NEUTRAL:$RED\w$LBLUE]$DGRAY\$(parse_git_branch)$NEUTRAL$ "

#echo -ne "\e]4;4;#00BFBF\a" # blue
#export PS1

#PS1="$LBLUE[$LCYAN\u$LBLUE@$LCYAN:\[\e[0;34m\]\w\[\e[0m\]\$LRED\W$NEUTRAL$LBLUE]$NEUTRAL$ "
#PS1="$LBLUE[$LCYAN\u$LBLUE@$LCYAN$FULLHOSTNAME $LRED\W$NEUTRAL$LBLUE]$NEUTRAL$ "

export HISTFILESIZE=20000
export HISTSIZE=5000
shopt -s histappend
shopt -s checkwinsize
# Combine multiline commands into one in history
shopt -s cmdhist
# Ignore duplicates, ls without options and builtin commands
HISTCONTROL=ignoredups
export HISTIGNORE="&:ls:[bf]g:exit"
#export PATH=$PATH:/Users/t-rex-Box/Downloads/storm-0.9.0.1/
#export PATH=$PATH:/Users/t-rex-Box/Downloads/storm-0.9.0.1/lib/
#export PATH=$PATH:/Users/t-rex-Box/Downloads/storm-0.9.0.1/bin/

#export ARCHFLAGS="-arch i386 -arch x86_64"

# added by Anaconda 1.9.0 installer
export PATH="/Users/t-rex-Box/anaconda/bin:/Users/t-rex-Box/anaconda/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PATH="/usr/local/bin/$PATH"

function title {
    echo -ne "\033]0;"$*"\007"
}
