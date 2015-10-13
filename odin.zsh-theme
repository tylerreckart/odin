local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

autoload -Uz vcs_info
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '%F{yellow}⚑'   # display this when there are unstaged changes
zstyle ':vcs_info:*' stagedstr '%F{green}✔'  # display this when there are staged changes
zstyle ':vcs_info:*' actionformats \
    '%F{0}%F{0}[%F{0}%b%F{3}|%F{1}%a%c%u%F{0}]%f '
zstyle ':vcs_info:*' formats       \
    '%F{5}%F{5}[%F{5}%b%c%u%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
zstyle ':vcs_info:*' enable git cvs svn

theme_precmd () {
    if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
        zstyle ':vcs_info:*' formats '[%b%B%F{white}] %c%u '
    } else {
        zstyle ':vcs_info:*' formats '[%b%B%F{white}] %F{red}✘ %c%u '
    }
    vcs_info
}

setopt prompt_subst
PROMPT='%{$fg_bold[cyan]%}%m%{$fg_bold[yellow]%}(%*)%{$fg_bold[cyan]%}: %{$fg_bold[cyan]%}%c %{$fg_bold[white]%}${vcs_info_msg_0_}%{$fg_bold[white]%}%{$fg_bold[cyan]%}➜ %{$reset_color%}'

autoload -U add-zsh-hook
add-zsh-hook precmd theme_precmd
