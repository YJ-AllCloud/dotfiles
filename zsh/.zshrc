export ZSH=~/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"

# Powerline
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir root_indicator)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs vcs)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='081'
POWERLEVEL9K_DIR_HOME_BACKGROUND='081'

POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND='240'
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND="081"

plugins=(git z sublime command-not-found docker docker-compose kubectl zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/plugins/antigen.zsh
alias tf='terraform'

# Kubernetes
alias kb='kubectl'
alias kbx='kubectx'
alias kdel='kubectl delete -f'
alias klog='kubectl logs'
alias kply='kubectl apply -f'
alias kpods='kubectl get pods'
alias knodes='kubectl get nodes'
alias allspc='--all-namespaces'

# Docker
alias dokcer='docker'
alias doeckr='docker'
alias docer='docker'
alias doker='docker'
alias docke='docker'
alias docekr='docker'
alias dockr='docker'
alias dkr='docker'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias dimg='docker images'
alias dexec='docker exec -it'
alias dlogs='docker logs'

# Change directory and list directory
cdl() { cd "$1" && ls -l; }
