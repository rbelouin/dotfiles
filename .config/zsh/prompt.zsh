autoload colors
colors

BLUE="$fg[blue]"
GREEN="$fg[green]"
RED="$fg[red]"
WHITE="$fg[white]"
YELLOW="$fg[yellow]"

if [[ $(id -u) -eq 0 ]]; then
  USER_COLOR=$RED
else
  USER_COLOR=$GREEN
fi

function git_branch {
  git branch --no-color | sed -n 's/^\* //p'
}

function git_status {
  local GIT_STATUS_IGNORED=$(echo $GIT_STATUS_IGNORE_PATHS | tr ':' '\n' | grep -c $PWD)

  if [[ $GIT_STATUS_IGNORED -gt "0" ]]; then
    GIT_MODIFIED="?"
  elif [[ $(git status --porcelain | grep -o "^[ ?][DM?] *" | wc -l | tr -d " ") -gt 0 ]]; then
    GIT_MODIFIED="*"
  else
    GIT_MODIFIED=""
  fi

  if [[ $GIT_STATUS_IGNORED -gt "0" ]]; then
    GIT_SAVED=""
  elif [[ $(git status --porcelain | grep -o '^[ADM] *' | wc -l | tr -d " ") -gt 0 ]]; then
    GIT_SAVED="+"
  else
    GIT_SAVED=""
  fi

  echo -n $GIT_MODIFIED$GIT_SAVED
}

precmd() {
  if [[ $(git_branch 2>/dev/null) == "" ]]; then
    PS1="%{$USER_COLOR%}[%n %{$BLUE%}%1~%{$USER_COLOR%}]%# %{$WHITE%}"
  else
    PS1="%{$USER_COLOR%}[%n %{$BLUE%}%1~%{$YELLOW%}($(git_branch)$(git_status))%{$USER_COLOR%}]%# %{$WHITE%}"
  fi
}
