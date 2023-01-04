#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PATH for rust and python packages
export PATH=$PATH:/home/ef/.cargo/bin
export PATH=$PATH:/home/ef/.local/bin

# Show a random pokemon every time a terminal window is open
krabby random

# alias p for pacman
alias p='doas pacman'

alias ls='exa -1 --icons'
alias ll='exa -lh --icons'
alias lt='exa --tree --level=2 --icons'

# prompt
PS1='\e[1;36m\]\e[1;97m\]\w\e[1;36m\]\e[1;32m\]\n \e[0;37m\] '

# to exit in the selected folder in ranger
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias rng='ranger'

# function to copy all $HOME-myrepo-dotfiles-linux in the repo

function copy-dotfiles(){
  cp -r $HOME/.config/i3/ $HOME/myrepo/dotfiles-linux/.config/
  cp -r $HOME/.config/nvim/ $HOME/myrepo/dotfiles-linux/.config/
  cp -r $HOME/.config/polybar/ $HOME/myrepo/dotfiles-linux/.config/
  cp -r $HOME/.config/rofi/ $HOME/myrepo/dotfiles-linux/.config/
  cp -r $HOME/.config/window_titles.yml $HOME/myrepo/dotfiles-linux/.config/
  cp -r $HOME/.bashrc $HOME/myrepo/dotfiles-linux/
  cp -r $HOME/.bash_profile $HOME/myrepo/dotfiles-linux/
  cp -r $HOME/.xinitrc $HOME/myrepo/dotfiles-linux/
  cp -r $HOME/.Xresources $HOME/myrepo/dotfiles-linux/
}
