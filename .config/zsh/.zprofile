#!/bin/zsh
#
# .zprofile - Zsh file loaded on login.
#

# Browser
if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER="${BROWSER:-open}"
fi

# Editors
export EDITOR="${EDITOR:-nvim}"
export VISUAL="${VISUAL:-nvim}"
export PAGER="${PAGER:-less}"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

#
# Paths
#

# Add Homebrew to $PATH
if [[ $(uname) == "Darwin" ]]; then
    # Add brew bin folder to path
    eval "$(/opt/homebrew/bin/brew shellenv)"
    # Add Python executables with Homebrew on macOS
    export PATH="$(brew --prefix)/opt/python@3/libexec/bin:$PATH"
fi

# Ensure path arrays do not contain duplicates.
typeset -gU path fpath

# Set the list of directories that zsh searches for commands.
path=(
  $HOME/{,s}bin(N)
  /opt/{homebrew,local}/{,s}bin(N)
  /usr/local/{,s}bin(N)
  $path
)
