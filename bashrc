export PS1="\[\033[38;5;76m\]\u \[\033[0m\]\W\$ "
export EDITOR="nvim"
export VISUAL="$EDITOR"

alias ls='ls -l --color=auto'
alias ff='fastfetch'
alias vim='nvim'
alias python='python3'
alias pip='pip3'
alias grep='grep --color=auto'
alias dot='git commit -a -m "."'

if [[ $- == *i* && -z "$NVIM" && -z "$VIM_TERMINAL" ]]; then
  fastfetch
fi
