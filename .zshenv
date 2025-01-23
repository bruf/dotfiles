#!/usr/bin/env zsh
#
# .zshenv - Zsh environment file, loaded always.
#

# NOTE: .zshenv needs to live at ~/.zshenv, not in $ZDOTDIR!

# Disable Apple zsh session handling
SHELL_SESSIONS_DISABLE=1

# Set ZDOTDIR if you want to re-home Zsh.
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export ZDOTDIR=${ZDOTDIR:-$XDG_CONFIG_HOME/zsh}

# Set the directory to store zinit and plugins
export ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Browser
if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER="${BROWSER:-open}"
fi

# Editors
export EDITOR="${EDITOR:-nvim}"
export VISUAL="${VISUAL:-code}"
export PAGER="${PAGER:-less}"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# fzf flexoki color scheme
export FZF_DEFAULT_OPTS="
    --color=fg:#B7B5AC,bg:#FFFCF0,hl:#100F0F
    --color=fg+:#B7B5AC,bg+:#F2F0E5,hl+:#100F0F
    --color=border:#AF3029,header:#100F0F,gutter:#FFFCF0
    --color=spinner:#3AA99F,info:#3AA99F,separator:#F2F0E5
    --color=pointer:#D0A215,marker:#D14D41,prompt:#D0A215"

#
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU path fpath

# Set the list of directories that zsh searches for commands.
path=(
  $HOME/{,.,s}bin(N)
  /opt/{homebrew,local}/{,s}bin(N)
  /usr/local/{,s}bin(N)
  $path
)
