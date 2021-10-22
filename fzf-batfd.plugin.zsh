(($+commands[fzf])) || return
(($+commands[fzf-tmux])) || return

if [ $+commands[bat] -eq 1 ]; then
    _FZF_PREVIEW='if [ -d {} ];then ls -hlrt {};else bat --color always {};fi'
else
    _FZF_PREVIEW='if [ -d {} ];then ls -hlrt {};else cat {};fi'
fi

if [ $+commands[fd] -eq 1 ]; then
    export FZF_DEFAULT_COMMAND="fd -t f"
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
    export FZF_ALT_C_COMMAND="fd -t d"
fi

export FZF_DEFAULT_OPTS="--reverse --border --preview '$_FZF_PREVIEW'"

bindkey "^n" fzf-cd-widget

unset _FZF_PREVIEW
