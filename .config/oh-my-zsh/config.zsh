export EDITOR=nvim
export GPG_TTY="$(tty)"
export HISTFILE="$HOME/.history"
export JAVA_HOME=$(/usr/libexec/java_home)

PATH="$PATH:$HOME/.cargo/bin"

alias c='git --git-dir="$HOME/src/personal/dotfiles.git/" --work-tree="$HOME"'
alias f='fzf'
alias g='git'
alias e="$EDITOR"

# For some reason, ^R and ^T are not properly bound by fzf when the oh-my-zsh environment gets initialized
bindkey '^R' fzf-history-widget
bindkey '^T' fzf-file-widget
