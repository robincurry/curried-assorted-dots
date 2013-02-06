function zle-line-init zle-keymap-select {
  zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

bindkey -v

# if mode indicator wasn't setup by theme, define default
if [[ "$VI_MODE_INSERT_INDICATOR" == "" ]]; then
  VI_MODE_INSERT_INDICATOR="%{$fg_bold[green]%}<I%{$fg[green]%}>%{$reset_color%}"
fi
if [[ "$VI_MODE_NORMAL_INDICATOR" == "" ]]; then
  VI_MODE_NORMAL_INDICATOR="%{$fg_bold[yellow]%}<C%{$fg[yellow]%}>%{$reset_color%}"
fi

function vi_mode_prompt_info() {
  if [[ "$KEYMAP" == "" ]]; then
    echo "$VI_MODE_INSERT_INDICATOR"
  else
    echo "${${KEYMAP/vicmd/$VI_MODE_NORMAL_INDICATOR}/(main|viins)/$VI_MODE_INSERT_INDICATOR}"
  fi
}

# define right prompt, if it wasn't defined by a theme
if [[ "$RPS1" == "" && "$RPROMPT" == "" ]]; then
  RPS1='$(vi_mode_prompt_info)'
fi
