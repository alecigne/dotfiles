export ZSH=$HOME/.oh-my-zsh
# ZSH_THEME="agnoster"
ZSH_THEME=powerlevel10k/powerlevel10k

plugins=(
    git
    zsh-syntax-highlighting
    # zsh-autosuggestions
    # zsh-autocomplete
)

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

# Do not use cowsay with Ansible :)
export ANSIBLE_NOCOWS=1

########
# Kube #
########

if command -v kubectl >/dev/null 2>&1; then
  # pods

  alias k='kubectl -n microservices '
  alias kgp='k get pods'
  alias kgpg='k get pods | grep -i '
  alias kdp='k describe pods'

  function kgpa {
    kgp -l app=${1}
  }

  # logs

  alias kl='k logs'
  alias klf='k logs --follow'

  function kla {
    k logs -l app=${1}
  }

  function klaf {
    k logs --follow -l app=${1}
  }

  # config

  alias kc='k config'
  alias kcu='k config use-context'
  alias kcupreprod='k config use-context aks-preprod'
  alias kcuprod='k config use-context aks-prod'
  alias kcurec='k config use-context aks-rec'

  # forwarding

  function kf {
    sudo -E kubefwd svc -l "app in (${1})" -n microservices
  }
fi

