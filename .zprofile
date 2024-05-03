if [[ $(uname) == "Darwin" ]]; then
    # Add brew bin folder to path
    eval "$(/opt/homebrew/bin/brew shellenv)"
    # Add Python executables with Homebrew on macOS
    export PATH="$(brew --prefix)/opt/python@3/libexec/bin:$PATH"
fi

# User configuration
export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
