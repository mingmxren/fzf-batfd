# (( $+commands[fzf] )) || return
# (( $+commands[fzf-tmux] )) || return

# (( $+commands[bat] )) && FZF_FINDER_CAT='bat --color always {}' || FZF_FINDER_CAT='cat {}'

# if [[ -z $FZF_FINDER_PAGER ]]; then
#     (( $+commands[bat] )) && FZF_FINDER_PAGER='bat' || FZF_FINDER_PAGER='less'
# fi

# fzf-finder-find() { 
#     (( $+commands[fd] )) && \
#     $commands[fd] -t f || find * -type f -not -path './.git/*\'
# }


# export FZF_DEFAULT_OPTS="--reverse --border --preview '$FZF_FINDER_CAT' --inline-info"
# export FZF_DEFAULT_COMMAND=fzf-finder-find
# export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export HELLO_WORLD="Hello"