# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

###################
# Path Configuration
###################
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/marc/.local/bin:$PATH"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

###################
# Development Tools
###################

# PHP & Composer
export PATH=~/.composer/vendor/bin:$PATH

# Node.js Package Managers
# Bun
export BUN_INSTALL="/Users/marc/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "/Users/marc/.bun/_bun" ] && source "/Users/marc/.bun/_bun"

# pnpm
export PNPM_HOME="/Users/marc/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Volta (Node.js version manager)
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# Default Editor
export EDITOR=nvim
# 
# Tunnelto
export TUNNELTO_INSTALL="/Users/marc/.tunnelto"
export PATH="$TUNNELTO_INSTALL/bin:$PATH"

###################
# Shell Configuration
###################
# Remove mail checking
MAILCHECK=0
unset MAILCHECK

# GPG
export GPG_TTY=$(tty)
if command -v gpgconf >/dev/null 2>&1; then
    gpgconf --launch gpg-agent >/dev/null 2>&1
fi
if command -v gpg-connect-agent >/dev/null 2>&1; then
    gpg-connect-agent updatestartuptty /bye >/dev/null
fi

# Disable Bun Agent Rules
export BUN_AGENT_RULE_DISABLED=true

###################
# Aliases
###################
# Navigation
alias sites='cd ~/Sites'
alias cd='z'
alias lzd='lazydocker'
alias yz='yazi'

# Development
alias art='php artisan'
alias lg='lazygit'
alias vim='nvim'
alias dcd="docker-compose down"
alias dcu="docker-compose up -d"

###################
# Shell Extensions
###################

# ZSH plugins
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Zoxide
eval "$(zoxide init zsh)"

if [ -f "$HOME/.secrets" ]; then
    source "$HOME/.secrets"
fi

# opencode
export PATH=/Users/marc/.opencode/bin:$PATH
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
