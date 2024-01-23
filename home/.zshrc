HISTFILE=~/.cache/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
unsetopt nomatch
bindkey -v
zstyle :compinstall filename ~/.zshrc
autoload -Uz compinit
compinit

source ~/.profile
eval "$(starship init zsh)"
source /usr/share/nvm/init-nvm.sh


# Load Angular CLI autocompletion.
source <(ng completion script)
