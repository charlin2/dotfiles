export PS1="\[\033[38;5;76m\]\u \[\033[0m\]\W\$ "

alias ls='ls -la --color=auto'
alias ff='fastfetch'
alias vim='nvim'
alias python='python3'
alias pip='pip3'

if [[ $- == *i* && -z "$NVIM" && -z "$VIM_TERMINAL" ]]; then
  fastfetch
fi
