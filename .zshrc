## oh-my-zsh
ZSH_THEME=""
plugins=(
  zsh-autosuggestions
)
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## Random aliases
alias ffc='code $(find ~/dev -maxdepth 2 -type d -print | fzf)'
alias ffv='vim $(find . -maxdepth 2 -type d -print | fzf)'
alias fdd='cd $(find ~/dev -maxdepth 1 -type d -print | fzf)'
alias fd='cd $(ls -d */ | fzf)'
alias l='eza --long'
alias ls='eza'
alias la='eza -al'
alias docker-registry-start='docker run -d --restart=always -p 5000:5000 --name registry-mirror -v /private/var/lib/registry:/var/lib/registry registry:2 /var/lib/registry/config.yml'

## Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

## Prompt config
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

## case insensitive completion
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

## nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias nvm="unalias nvm; [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"; nvm $@"

## GO configs
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
