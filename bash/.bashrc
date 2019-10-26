# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR='vim'

if [[ "$OSTYPE" == "linux-gnu" ]]; then
  # Execute only on linux systems
  export SYSTEMD_EDITOR=$EDITOR
  export CONFIG=$HOME/.config
  alias ls='ls --color=auto'
  alias i3config='$EDITOR $CONFIG/i3/config'
  alias kittyconfig='$EDITOR $CONFIG/kitty/kitty.conf'
  alias comptonconfig='$EDITOR $CONFIG/compton/compton.conf'
  alias polybarconfig='$EDITOR $CONFIG/polybar/config'
  alias pbcopy='xclip -i -selection clipboard'
  alias pbpaste='xclip -o -selection clipboard'

  # Speed up key repeat
  xset r rate 250 45
elif [[ "$OSTYPE" == "darwin"* ]]; then
  # Execute only on macOS systems
  alias ls='ls -G'
fi

alias la='ls -A'
alias ll='la -Al'
alias grep='grep --color=auto'
alias bashrc='$EDITOR ~/.bashrc'
alias vimrc='$EDITOR ~/.vimrc'
alias resource='source ~/.bashrc'

[[ -d "$HOME/bin" ]] && PATH="$HOME/bin:$PATH"

# Bash prompt
PS1='\u@\h:\W\$ '

# rice bois
neofetch
