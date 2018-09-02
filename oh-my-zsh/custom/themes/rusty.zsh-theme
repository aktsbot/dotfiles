# use extended color palette if available.
if [[ "${terminfo[colors]}" -ge 256 ]]; then
    turquoise="%F{73}"
    orange="%F{179}"
    purple="%F{140}"
    red="%F{167}"
    limegreen="%F{107}"
else
    turquoise="%F{cyan}"
    orange="%F{yellow}"
    purple="%F{magenta}"
    red="%F{hotpink}"
    limegreen="%F{green}"
fi

local ret_status="%(?:%{$white%}$ :%{$red%}$ )"

PROMPT=$'
%{$limegreen%}%~%{$reset_color%} $(git_prompt_info)
${ret_status}%f'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$turquoise%} %{$purple%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$turquoise%} %{$orange%}✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$turquoise%}"
