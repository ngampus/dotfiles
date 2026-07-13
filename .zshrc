# Zsh configuration

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
plugins=(git docker kubectl terraform aws gcloud azure fzf zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Starship prompt
eval "$(starship init zsh)"

# Direnv
eval "$(direnv hook zsh)"

# Aliases
alias ll="eza -la --git"
alias lt="eza --tree --level=2"
alias cat="bat"
alias grep="rg"
alias find="fd"
alias k="kubectl"
alias tf="terraform"
alias tg="terragrunt"
alias dc="docker compose"
alias ghpr="gh pr view --web"
alias ghis="gh issue view --web"

# Functions
mkcd() { mkdir -p "$1" && cd "$1"; }
port() { lsof -i :"$1"; }

# Path
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# History
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Kubernetes
export KUBECONFIG="$HOME/.kube/config"
