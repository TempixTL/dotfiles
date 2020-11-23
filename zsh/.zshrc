export PATH=$HOME/bin:/usr/local/bin:$PATH

# omz config
export ZSH="$HOME/.config/oh-my-zsh"
export ZSH_COMPDUMP="$HOME/.cache/zsh/zcompdump-$ZSH_VERSION"
export HISTFILE="$HOME/.cache/zsh/.zsh_history"
ZSH_THEME="robbyrussell"
DISABLE_UPDATE_PROMPT="true" # auto update without prompt
export UPDATE_ZSH_DAYS=30
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
bindkey -v # vim movement keybings

# os-specific config
export LANG=en_US.UTF-8
export EDITOR="nvim"
if [[ "$OSTYPE" == "linux-gnu" ]]; then # linux only
  export SYSTEMD_EDITOR="$EDITOR"
  export CONFIG="$HOME/.config"
  alias ls="ls --color=auto"
  alias open="xdg-open"
  alias pbpaste="wl-paste"
  alias pbcopy="wl-copy"

  # attempt to locate dircolors
  if [[ -f "$HOME/.dir-colors/dircolors" ]]; then
    eval `dircolors $HOME/.dir-colors/dircolors`
  elif [[ -f "$HOME/.config/dircolors" ]]; then
    eval `dircolors $HOME/.config/dircolors`
  fi
elif [[ "$OSTYPE" == "darwin"* ]]; then # macos only
  alias ls="ls -G"
fi

# aliases
exists() {
  command -v "$1" &> /dev/null
}

alias sudo="sudo "
if exists vim; then alias vi="vim"; fi
if exists nvim; then alias vim="nvim"; fi
alias la="ls -A"
alias ll="ls -Al"
alias grep="grep --color=auto"
alias zshrc="$EDITOR ~/.zshrc"
alias vimrc="$EDITOR ~/.vimrc"
alias resource="source ~/.zshrc"

# functions

mkcd() {
  # makes a directory structure and cd's into it
  if [ $# -ne 1 ]; then
    echo "usage: $0 dir"
    exit 1
  fi

  dir="$1"
  mkdir -p "$dir" && \
  cd "$dir" && \
  pwd
}

# other

if exists neofetch && [[ "$TERM_PROGRAM" != "vscode" ]]; then
  neofetch # pretty colors
fi

unset -f exists
