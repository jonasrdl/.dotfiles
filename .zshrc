export ZSH="/home/jonas/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

PROMPT="%{$fg[white]%}[%{$fg[green]%}%n%{$fg[white]%}@%{$fg[white]%}%m %{$fg[white]%}%1~]$ "
