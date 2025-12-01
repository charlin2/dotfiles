alias ls='ls --color=auto'
alias ff='fastfetch'

if [[ $- == *i* && -z "$NVIM" && -z "$VIM_TERMINAL" ]]; then
    fastfetch
fi

