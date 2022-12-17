#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PATH for rust packages
export PATH=$PATH:/home/ef/.cargo/bin

# set italian keyboard 
setxkbmap it

# Show a random pokemon every time a terminal window is open
krabby random

# nnn
alias nnn=/home/ef/scripts/nnn-4.7/./nnn

# alias p for pacman
alias p='doas pacman'

alias ls='exa'
alias ll='exa -lh'
# PS1='[\u@\h \W]\$ '

# to exit in the selected folder in ranger
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
