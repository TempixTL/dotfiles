#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR='vim'
export SYSTEMD_EDITOR=$EDITOR
export CONFIG=$HOME/.config

alias ls='ls --color=auto'
alias la='ls -a'
alias ll='la -al'
alias bashrc='$EDITOR ~/.bashrc'
alias vimrc='$EDITOR ~/.vimrc'
alias i3config='$EDITOR $CONFIG/i3/config'
alias kittyconfig='$EDITOR $CONFIG/kitty/kitty.conf'
alias comptonconfig='$EDITOR $CONFIG/compton/compton.conf'
alias polybarconfig='$EDITOR $CONFIG/polybar/config'
alias resource='source ~/.bashrc'
PS1='[\u@\h \W]\$ '

# Speed up key repeat
xset r rate 250 45

# rice bois
neofetch
