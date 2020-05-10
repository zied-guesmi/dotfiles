export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ohmyzsh
export ZSH="${XDG_CONFIG_HOME}/oh-my-zsh"
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_VCS_FOREGROUND='red'
POWERLEVEL9K_VCS_BACKGROUND='white'
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    colored-man-pages docker docker-compose git nvm sdk
    # vscode
    zsh-autosuggestions zsh-syntax-highlighting
)

source ${ZSH}/oh-my-zsh.sh
[[ ! -f "${XDG_CONFIG_HOME}/p10k.zsh" ]] || source "${XDG_CONFIG_HOME}/p10k.zsh"

# aliases
[ -f ~/dotfiles/.aliases ] && source ~/dotfiles/.aliases

IEXECDEV=${HOME}/iexecdev/iexec-deploy/core-dev/dot.bash_aliases
[ -f ${IEXECDEV} ] && source ${IEXECDEV}

# sdkman
export SDKMAN_DIR="${XDG_CONFIG_HOME}/sdkman"
[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"

# nvm
export NVM_DIR="${XDG_CONFIG_HOME}/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

# fzf
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"
# TODO vim plugin

# z
Z_DIR="${XDG_CONFIG_HOME}/z"
[ -s "$NVM_DIR/z.sh" ] && source "$NVM_DIR/z.sh"
