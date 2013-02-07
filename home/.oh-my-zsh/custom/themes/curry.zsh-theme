# ------------------------------------------------------------------------
# Curry oh-my-zsh theme
# Copied from Juan G. Hurtado oh-my-zsh theme
# (Needs Git plugin for current_branch method)
# ------------------------------------------------------------------------

# Color shortcuts
RED=$fg[red]
YELLOW=$fg[yellow]
GREEN=$fg[green]
WHITE=$fg[white]
BLUE=$fg[blue]
RED_BOLD=$fg_bold[red]
YELLOW_BOLD=$fg_bold[yellow]
GREEN_BOLD=$fg_bold[green]
WHITE_BOLD=$fg_bold[white]
BLUE_BOLD=$fg_bold[blue]
RESET_COLOR=$reset_color

# Format for git_prompt_info()
ZSH_THEME_GIT_PROMPT_PREFIX=" on "
ZSH_THEME_GIT_PROMPT_SUFFIX=""

# Format for parse_git_dirty()
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$RED%}(*)"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Format for git_prompt_status()
#ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$RED%}unmerged"
#ZSH_THEME_GIT_PROMPT_DELETED=" %{$RED%}deleted"
#ZSH_THEME_GIT_PROMPT_RENAMED=" %{$YELLOW%}renamed"
#ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$YELLOW%}modified"
#ZSH_THEME_GIT_PROMPT_ADDED=" %{$GREEN%}added"
#ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$WHITE%}untracked"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[cyan]%} ▴"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ❞"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%} ✭"

# Format for git_prompt_ahead()
ZSH_THEME_GIT_PROMPT_AHEAD=" %{$RED%}(!)"

# Format for git_prompt_long_sha() and git_prompt_short_sha()
ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" %{$WHITE%}["
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$WHITE%}]"

# Prompt format

# Shows little symbol '±' if you're currently at a git repo and '$' all other times
function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    echo '$'
}
local smiley="%(?,%{$fg_bold[green]%}☺%{$reset_color%},%{$fg[red]%}☹%{$reset_color%})"

PROMPT='
%{$fg[magenta]%}%n%{$WHITE%}%~%u %{$YELLOW_BOLD%}$(current_branch)$(parse_git_dirty)$(git_prompt_ahead)%{$RESET_COLOR%}
$(vi_mode_prompt_info) %{$RESET_COLOR%}$(prompt_char) '
RPROMPT='$(git_prompt_short_sha)$(git_prompt_status)%{$RESET_COLOR%}  $(~/.rvm/bin/rvm-prompt) %{$RESET_COLOR%}%h %* ${smiley}'
