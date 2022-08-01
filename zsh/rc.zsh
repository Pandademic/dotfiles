# my highly personal zshrc:

# GENERAL

HISTFILE=~/shell_history
HISTSIZE=100
SAVEHIST=100

# OPTIONS

setopt autocd # gotta love that autocd!
unsetopt beep

# COMPLETION

zstyle :compinstall filename '/home/atha/.zshrc'

autoload -Uz compinit

compinit

# PLUGINS 
source ~/.antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

# ALIASES

alias cat="bat"
alias find="fd"
alias -g grep = "rg"
alias ls = "exa -al"
alias du = "du -all --human-readable --one-file-system --max-depth=1"
