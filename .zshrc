export ZSH=".oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
         git
         )

source $ZSH/oh-my-zsh.sh

PROMPT="%{$fg[white]%}[%{$fg[blue]%}%n%{$fg[white]%}@%{$fg[blue]%}%m %{$fg[white]%}%1~]$ "


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
