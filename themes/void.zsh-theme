autoload -Uz colors && colors
autoload -Uz vcs_info

precmd_vcs_info() { vcs_info  }
precmd_functions+=( precmd_vcs_info  )
setopt prompt_subst

export PS1="%{$fg[blue]%}%m%{$reset_color%} @ %{$fg[blue]%}%~%{$reset_color%} "'$vcs_info_msg_0_'$'\n'"%{$fg[blue]%} » %{$reset_color%} "

# show git branch name
zstyle ':vcs_info:git:*' formats '[%b]'
