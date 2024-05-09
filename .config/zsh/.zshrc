# Source antidote
source ${ZDOTDIR:-~}/.antidote/antidote.zsh

# Update antidote and ZSH plugins every time
antidote update

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

# Activate starship.rs prompt
eval "$(starship init zsh)"

# Activate Zoxide
eval "$(zoxide init zsh)"

# Active fzf shell integration
eval "$(fzf --zsh)"
