export ZSH=".oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
         git
         )

source $ZSH/oh-my-zsh.sh

PROMPT="%n@%m:%{$fg[green]%}%~%{$reset_color%}$ "

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# aliases
alias k="kubectl"
export EDITOR='nvim'
