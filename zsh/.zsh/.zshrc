typeset -aU path
path=(~/.cargo/bin ~/.local/bin ~/bin $path)

HISTFILE="$ZDOTDIR/.zsh_history"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"
ANSIBLE_NOCOWS=1

plugins=(
    git
    zsh-syntax-highlighting
)

source "$ZSH/oh-my-zsh.sh"

# SDKMAN
export SDKMAN_DIR="/home/alc/.sdkman"
[[ -s "/home/alc/.sdkman/bin/sdkman-init.sh" ]] && source "/home/alc/.sdkman/bin/sdkman-init.sh"

# fnm
FNM_PATH="/home/alc/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi
