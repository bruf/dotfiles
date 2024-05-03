# ZSH theme
ZSH_THEME="robbyrussell"

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode auto      # update automatically without asking

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    1password
    alias-finder
    ansible
    brew
    fd
    fzf
    gh
    git
    golang
    history
    isodate
    jsontools
    kubectl
    macos
    man
    python
    ripgrep
    sudo
    vscode
    web-search
    xcode
    zsh-autosuggestions
    zsh-syntax-highlighting
    you-should-use
)

# Source addition things (e.g. oh-my-zsh, zsh-syntax-highlighting, etc.)
source $ZSH/oh-my-zsh.sh

# Activate starship.rs prompt
eval "$(starship init zsh)"

# Activate Zoxide
eval "$(zoxide init zsh)"

# Changing "ls" to "eza"
alias ls='eza -al --color=always --group-directories-first' # my preferred listing
alias la='eza -a --color=always --group-directories-first'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first'  # long format
alias lt='eza -aT --color=always --group-directories-first' # tree listing

# adding flags
alias df='df -h'               # human-readable sizes
alias free='free -m'           # show sizes in MB
alias grep='grep --color=auto' # colorize output (good for log files)

# bare git repo alias for managing my dotfiles
alias config="$(which git) --git-dir=$HOME/dotfiles --work-tree=$HOME"
