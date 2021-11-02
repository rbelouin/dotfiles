export EDITOR=nvim
export HISTFILE="$HOME/.history"
export JAVA_HOME=$(/usr/libexec/java_home)

alias c='git --git-dir="$HOME/src/dotfiles/" --work-tree="$HOME"'
alias f='fzf'
alias g='git'
alias e="$EDITOR"

# For some reason, ^T is not properly bound by fzf when the oh-my-zsh environment gets initialized
bindkey '^T' fzf-file-widget
