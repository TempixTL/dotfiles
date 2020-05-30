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

if [[ -f "/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]]; then
  source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # syntax highlighting
fi

source $ZSH/oh-my-zsh.sh
bindkey -v # vim movement keybings

# user config
export LANG=en_US.UTF-8
export EDITOR='nvim'
if [[ "$OSTYPE" == "linux-gnu" ]]; then # linux only
  export SYSTEMD_EDITOR=$EDITOR
  export CONFIG=$HOME/.config
  alias ls='ls --color=auto'
  alias open='xdg-open'
  alias pbpaste='wl-paste'
  alias pbcopy='wl-copy'

  # attempt to locate dircolors
  if [[ -f "$HOME/.dir-colors/dircolors" ]]; then
    eval `dircolors $HOME/.dir-colors/dircolors`
  elif [[ -f "$HOME/.config/dircolors" ]]; then
    eval `dircolors $HOME/.config/dircolors`
  fi
elif [[ "$OSTYPE" == "darwin"* ]]; then # macos only
  alias ls='ls -G'
fi

alias vim='nvim'
alias vi='vim'
alias la='ls -A'
alias ll='ls -Al'
alias grep='grep --color=auto'
alias zshrc='$EDITOR ~/.zshrc'
alias resource='source ~/.zshrc'

if type jenv > /dev/null; then # if jenv is installed
 export PATH="$HOME/.jenv/bin:$PATH"
 eval "$(jenv init -)"
fi

if type neofetch > /dev/null && [[ "$TERM_PROGRAM" != "vscode" ]]; then
  neofetch # pretty colors
fi
