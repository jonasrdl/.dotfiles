export ZSH="/home/jonas/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
         git
         zsh-autosuggestions
         )

source $ZSH/oh-my-zsh.sh

PROMPT="%{$fg[white]%}[%{$fg[blue]%}%n%{$fg[white]%}@%{$fg[blue]%}%m %{$fg[white]%}%1~]$ "

neofetch
