# Source antidote
source ${ZDOTDIR:-~}/.antidote/antidote.zsh

# Update antidote and ZSH plugins every time
antidote update

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$HOME/.cache/zsh/history

# Activate starship.rs prompt
eval "$(starship init zsh)"

# Activate Zoxide
eval "$(zoxide init zsh)"

# Active fzf shell integration
eval "$(fzf --zsh)"
