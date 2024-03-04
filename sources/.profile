# Misc tool paths
PATH="$PATH:$HOME/.local/share/JetBrains/Toolbox/scripts"
PATH="$PATH:$HOME/.cargo/bin"
PATH="$PATH:$HOME/.local/share/go/bin"
PATH="/opt/cuda/bin:$PATH"


# Helpful aliases
alias  l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs


# Handy change dir shortcuts
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
alias mkdir='mkdir -p'

# Fixes "Error opening terminal: xterm-kitty" when using the default kitty term to open some programs through ssh
alias ssh='kitten ssh'

# Oxidized
alias find="fd"
alias grep="rg"
alias ps="procs"

alias ghpw="cat ~/Dev/github.txt | wl-copy"

# Compiler flags
CFLAGS="-w -pipe"
CXXFLAGS="-w -pipe"

# Init tools
source /usr/share/nvm/init-nvm.sh

