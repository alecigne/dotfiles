export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
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

export PATH="$HOME/bin:$PATH"
