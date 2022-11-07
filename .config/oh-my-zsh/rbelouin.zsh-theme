# rbelouin.zsh-theme
# using color theme from https://github.com/catppuccin/catppuccin

local BASE="#24273a"
local BLUE="#8aadf4"
local SAPPHIRE="#7dc4e4"
local SURFACE_1="#494d64"
local RED="#ed8796"

# primary prompt: dashed separator, directory and vcs info
PS1="%F{$SURFACE_1}\${(l.\$COLUMNS..-.)}%{$reset_color%}
%F{$BASE}%(!.%K{$RED}.%K{$BLUE})  %1d %(!.%F{$RED}.%F{$BLUE})\$(git_prompt_info)%K{$BASE}%{$reset_color%} "
PS2="%F{$RED}\ %{$reset_color%}"

# right prompt: return code, virtualenv and context (user@host)
RPS1="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
RPS1+=" %F{$SURFACE_1}%n@%m%{$reset_color%}"

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="%K{$SAPPHIRE} %F{$BASE} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_SUFFIX=" %F{$SAPPHIRE}"
