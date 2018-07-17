# Load autojump
[ -s $(brew --prefix)/etc/profile.d/autojump.sh ] && source $(brew --prefix)/etc/profile.d/autojump.sh

# Setup pyenv and pyenv-virtualenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
