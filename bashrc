export PS1="\[\033[38;5;76m\]\u \[\033[0m\]\W\$ "
export EDITOR="nvim"
export VISUAL="$EDITOR"

alias ls='ls -l --color=auto'
alias ff='fastfetch'
alias vim='nvim'
alias python='python3'
alias pip='pip3'
alias grep='grep --color=auto'
alias dot='git add -A; git commit -m "."'

alias k='kubectl'

# if [[ $- == *i* && -z "$NVIM" && -z "$VIM_TERMINAL" ]]; then
#   fastfetch
# fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
