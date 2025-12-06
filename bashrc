export PS1="\[\033[38;5;76m\]\u \[\033[0m\]\W\$ "

alias ls='ls -la --color=auto'
alias ff='fastfetch'
alias vim='nvim'

if [[ $- == *i* && -z "$NVIM" && -z "$VIM_TERMINAL" ]]; then
  fastfetch
fi
