setopt auto_cd
setopt cd_able_vars
setopt correct
setopt prompt_subst

bindkey "^["	  vi-cmd-mode

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.history

zstyle ':completion:*' menu select=0
autoload -U compinit
compinit
