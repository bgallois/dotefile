# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
#export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200
test -s ~/.alias && . ~/.alias || true
force_color_prompt=yes
PS1="\[\e[41m\]\u\[\e[m\]\[\]\[\e[44;31m\]\[\e[37;44m\]\[\] \w \[\e[34;40m\]\[\e[0m\]\[\[\]"
set -o vi
export GPG_TTY=$(tty)
export LS_COLORS="di=0:ln=35:so=32:pi=33:ex=31:bd=34;"
alias ls='ls --color=auto'
export EDITOR=vim
export VISUAL=vim
