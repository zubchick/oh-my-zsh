get_color() {
    RETVAL=$?
    local color
    if [[ $RETVAL -ne 0 ]]; then color="red"; else color="green"; fi
    echo $color
}

PROMPT='%{$fg_bold[$(get_color)]%}%T %{$fg[blue]%}%3~ %{$reset_color%}'
RPROMPT='%{$fg[green]%}%p $(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg_no_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[blue]%})"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[yellow]%}★%{$fg_bold[blue]%})"
