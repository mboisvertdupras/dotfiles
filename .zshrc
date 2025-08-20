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
export PATH="/usr/local/opt/php@8.2/sbin:$PATH"
export PATH="/usr/local/opt/php@8.2/bin:$PATH"
export XDEBUG_CONFIG="idekey=VSCODE"

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
alias nvf='neovide --fork'
alias dcd="docker-compose down"
alias dcu="docker-compose up -d"

# AI Tools
alias acc='aider --no-attribute-author --no-attribute-committer --cache-prompts --no-stream --restore-chat-history --model gemini/gemini-2.5-pro-preview-03-25'
alias arc='aider --architect --model openrouter/deepseek/deepseek-r1 --editor-model anthropic/claude-3-7-sonnet-20250219 --cache-prompts --restore-chat-history --no-attribute-author --no-attribute-committer --notifications'

###################
# Shell Extensions
###################

# ZSH plugins
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Starship prompt
eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"

if [ -f "$HOME/.secrets" ]; then
    source "$HOME/.secrets"
fi

alias claude="/Users/marc/.claude/local/claude"
# opencode
export PATH=/Users/marc/.opencode/bin:$PATH
