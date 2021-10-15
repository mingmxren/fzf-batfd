(($ + commands[fzf])) || return
(($ + commands[fzf - tmux])) || return

if [ $+commands[bat] -eq 1 ]; then
    _FZF_PREVIEW='bat --color always {}'
else
    _FZF_PREVIEW='cat {}'
fi

if [ $+commands[fd] -eq 1]; then
    export FZF_DEFAULT_COMMAND="fd -t f"
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
fi

export FZF_DEFAULT_OPTS="--reverse --border --preview '$_FZF_PREVIEW'"

unset _FZF_PREVIEW
