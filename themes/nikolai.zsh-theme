local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
#PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'
#PROMPT='${ret_status}%{$fg_bold[green]%}%p ${dist_info} %{$fg[cyan]%}%m %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

# mark if root
if [ $(whoami) = "root" ]
then
    prompttext='root@%m'
else
    prompttext='%m'
fi

PROMPT='${ret_status}%{$fg_bold[green]%}%p ${dist_info} %{$fg[cyan]%}${prompttext} %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

# like walters
#RPROMPT='%F{${1:-green}}%~%f'
RPROMPT='%F%{$fg_bold[green]%}%~%f % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"