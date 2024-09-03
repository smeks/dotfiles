#DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$UID/bus

# Misc tool paths
PATH="$PATH:$HOME/.local/share/JetBrains/Toolbox/scripts"
PATH="$PATH:$HOME/.cargo/bin"
PATH="$PATH:$HOME/.local/share/go/bin"
PATH="$PATH:$HOME/.local/bin"


# Helpful aliases
alias ls='exa -1   --icons=auto' # short list
alias lt='exa -lha --icons=auto --sort=time --group-directories-first' # long list all
alias ll='exa -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='exa -lhD --icons=auto' # long list dirs


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

# Init tools
#source /usr/share/nvm/init-nvm.sh

#export LIBVA_DRIVER_NAME=amdgpu
#export VDPAU_DRIVER=amdgpu

# AI Keys
export GROQ_API_KEY=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

#export NIX_CONFIG="experimental-features = nix-command flakes"
#alias nfind='nix search nixpkgs '


