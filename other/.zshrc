HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

ZSH_THEME="robbyrussell"

plugins=(git)

neofetch

export PATH=$PATH:"$HOME/.local/share/JetBrains/Toolbox/scripts"
export PATH=$PATH:"$HOME/scripts"
export PATH=$PATH:"$HOME/.local/share/JetBrains/Toolbox/scripts"
export PATH=$PATH:"$HOME/scripts"

alias open='f() { nautilus $1 };f'
