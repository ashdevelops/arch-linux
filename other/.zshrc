export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

neofetch

export PATH=$PATH:"$HOME/.local/share/JetBrains/Toolbox/scripts"
export PATH=$PATH:"$HOME/scripts"
export PATH=$PATH:"$HOME/.local/share/JetBrains/Toolbox/scripts"
export PATH=$PATH:"$HOME/scripts"

alias open='f() { nautilus $1 };f'
