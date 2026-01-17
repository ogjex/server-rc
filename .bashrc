#
# ~/.bashrc for minimalist personal server settings
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# set default editor 
export EDITOR='vim'
export VISUAL='vim'

################# set aliases
# set file listing
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias l.='ls -lah --color=auto'
# set copy to verbose and with overwrite question
alias cp='cp -vi'
# set remove to a false command 
# alias rm='echo "This is not the command you are looking for."; false'
alias remove='rm'
alias rm='rm --preserve-root -iv'
# set move to verbose and with overwrite question
alias mv='mv -vi'
# set grep to have nice colors
alias grep='grep --color=auto'

# color user and hostname yellow
BOLD='\[\e[1m\]'
YELLOW='\[\e[0;33m\]'
YELLOW_BOLD='\[\e[1;33m\]'
RED='\[\e[31m\]'
RESET='\[\e[0m\]'
PS1="${BOLD}${YELLOW}\u@${YELLOW_BOLD}\h: ${RED}\W${RESET}\$ "

#PS1='\e[33;1m\u@\h: \e[31m\W\e[0m\$ '

# set vi mode in bash
#set -o vi

# SHOPTS AUTOSTARTS
shopt -s cdspell
shopt -s autocd
