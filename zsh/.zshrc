# The following lines were added by compinstall
zstyle :compinstall filename '/home/tom/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

# aliases for dayz
alias vim='nvim'
alias vi='vim'
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -Al'
alias grep='grep --color=auto'
alias zshrc='$EDITOR ~/.zshrc'
alias resource='source ~/.zshrc'

export EDITOR='nvim'

xset r rate 250 45

neofetch
