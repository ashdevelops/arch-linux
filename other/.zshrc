export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

echo ""

QUOTE=$(curl -s 'https://api.quotable.io/random?author=Socrates|Epictetus|Sigmund-Freud|Plato|Marcus-Aurelius')
QUOTE_AUTHOR=$(echo $QUOTE | jq -r '.author')
QUOTE_CONTENT=$(echo $QUOTE | jq -r '.content')

neofetch --ascii "$(cowsay -W 30 "$QUOTE_CONTENT 

- $QUOTE_AUTHOR")"

export PATH=$PATH:"$HOME/.local/share/JetBrains/Toolbox/scripts"
export PATH=$PATH:"$HOME/scripts"
export PATH=$PATH:"$HOME/.local/share/JetBrains/Toolbox/scripts"
export PATH=$PATH:"$HOME/scripts"

alias open='f() { nautilus $1 };f'
