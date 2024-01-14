source /usr/share/zsh/share/antigen.zsh

SHELL=/usr/bin/zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle npm
antigen bundle rust
antigen bundle docker
antigen bundle command-not-found
antigen bundle docker

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions


antigen theme robbyrussell/oh-my-zsh themes/avit

antigen apply
