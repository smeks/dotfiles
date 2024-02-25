bindkey -v

eval "$(sheldon source)"

# ohmyzsh
export ZSH="$HOME/.local/share/sheldon/repos/github.com/ohmyzsh/ohmyzsh"
export ZSH_COMPDUMP="$HOME/.cache/zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source ~/.dotfiles/sources/.p10k.zsh

# shell agnostic user config
source ~/.dotfiles/sources/.profile


