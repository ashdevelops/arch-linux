neofetch

export ZSH="$HOME/.oh-my-zsh"

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

ZSH_THEME="random"

plugins=(git)

export PATH=$PATH:"$HOME/.local/share/JetBrains/Toolbox/scripts"
export PATH=$PATH:"$HOME/scripts"
export PATH=$PATH:"$HOME/.local/share/JetBrains/Toolbox/scripts"
export PATH=$PATH:"$HOME/scripts"

alias open='f() { thunar $1 };f'

echo ""
