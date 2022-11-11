export ZSH=$HOME/.oh-my-zsh
# ZSH_THEME="agnoster"
ZSH_THEME=powerlevel10k/powerlevel10k

# https://superuser.com/a/459057
__git_files () { 
    _wanted files expl 'local files' _files     
}

plugins=(git)

source $ZSH/oh-my-zsh.sh

prompt_end() {
  if [[ -n $CURRENT_BG ]]; then
    echo -n " %{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR"
  else
    echo -n "%{%k%}"
  fi
  echo -n "%{%f%}"
  CURRENT_BG=''

  # Adds the new line and ➜ as the start character.
  printf "\n ➜";
}

export PATH="$HOME/.cargo/bin:$HOME/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
