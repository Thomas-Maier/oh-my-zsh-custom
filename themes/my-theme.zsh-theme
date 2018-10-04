
local ret_status="%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜%s%?)"

# mark if root
# if [ $(whoami) = "root" ]
# then
#     prompttext='root@%m'
# else
#     prompttext='%m'
# fi
prompttext='%n@%m'

PROMPT='${ret_status}%{$fg_bold[green]%}%p ${dist_info} %{$fg[green]%}${prompttext} $(git_prompt_info)%{$fg_bold[blue]%} %{$fg[red]%}%(!.#.»)%{$reset_color%} '

RPROMPT='%F%{$fg_bold[blue]%}%~%f % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}±%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="⚡"