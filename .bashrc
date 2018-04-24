# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#-----------------------------------------------------------------------------

alias cm='hg commit -m'
alias am='hg amend'
alias ex='hg ex'
alias hd='hg diff'
alias up='hg up'
alias st='hg st'
alias sl='hg sl'
alias ab='/home/engshare/devtools/arcanist/bin/arc build'
alias ap='/home/engshare/devtools/arcanist/bin/arc pull'
alias ad='/home/engshare/devtools/arcanist/bin/arc diff'
alias cont='git rebase --continue'
alias preb='git pull --rebase'
alias so='source ~/.bashrc'
alias grep='grep --color -n'

# Lets you cd to these directories from any directory
# by using the last node only (e.g. 'cd fbmake')
CDPATH='.:~:~/bin'
export CDPATH

# Use /home/ in Linux, and /Users in Mac
BASE_DIR="/Users/$USER"
export BASE_DIR

#Restrict bash history to unique commands, no duplicates
export HISTCONTROL=erasedups

# general
alias eb='vi ~/.bashrc; source ~/.bashrc' # easy way to customize this file
alias ld1='find . -maxdepth 1 -type d -print | sort' # keying *<Tab>< Tab> also works

# customized egrep (add string at the end, e.g. egphp "\WSomething"
alias egcpp='find . -name "*.cpp" -o -name "*.h" | xargs egrep -n --color'
alias egphp='find . -name "*.php" -o -name "*.phpt" | xargs egrep -n --color'

alias tm='tmux attach'
alias ..='cd ..'
alias ll='ls -alG'
alias g='hg'

export EDITOR=vim

# prompt
function prompt {
local BLACK="\[\033[0;30m\]"
local BLACKBOLD="\[\033[1;30m\]"
local RED="\[\033[0;31m\]"
local REDBOLD="\[\033[1;31m\]"
local GREEN="\[\033[0;32m\]"
local GREENBOLD="\[\033[1;32m\]"
local YELLOW="\[\033[0;33m\]"
local YELLOWBOLD="\[\033[1;33m\]"
local BLUE="\[\033[0;34m\]"
local BLUEBOLD="\[\033[1;34m\]"
local PURPLE="\[\033[0;35m\]"
local PURPLEBOLD="\[\033[1;35m\]"
local CYAN="\[\033[0;36m\]"
local CYANBOLD="\[\033[1;36m\]"
local WHITE="\[\033[0;37m\]"
local WHITEBOLD="\[\033[1;37m\]"
export PS1="$BLACKBOLD[\t]\$$GREENBOLD \h\[\033[00m\]:$BLUEBOLD\w\[\033[00m\] \\$ "
}
prompt

export PATH=~/script/:$PATH
export DISPLAY=:0
export FB_UID=743321946

# https://our.intern.facebook.com/intern/dex/command-line-tips-and-efficiency/
HISTSIZE=130000 HISTFILESIZE=-1
#bind '"\e[A"':history-search-backward
#bind '"\e[B"':history-search-forward
# export JAVA_HOME=/usr/local/jdk-7u10-64
# export JAVA_HOME=/usr/local/jdk-8u5-64/

