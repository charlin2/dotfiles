export PS1="\W \$"

alias ls='ls -la --color=auto'
alias ff='fastfetch'

if [[ $- == *i* && -z "$NVIM" && -z "$VIM_TERMINAL" ]]; then
    fastfetch
fi

