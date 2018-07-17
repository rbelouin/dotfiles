setopt auto_cd
setopt cd_able_vars
setopt correct
setopt prompt_subst

bindkey "^["	  vi-cmd-mode
bindkey "^[[A"  fzf-history-widget
bindkey '^P'    up-line-or-history
bindkey '^N'    down-line-or-history

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.history

zstyle ':completion:*' menu select=0
autoload -U compinit
compinit
