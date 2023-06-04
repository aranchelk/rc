# Source in bashrc #

# Whitespace #
alias ws-find='find . -type f -exec egrep -l " +$" {} \;'
alias ws-zap='gsed -i -e "s/[ \t]*$//"'

#alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"

alias dc="docker-compose"

frw () {
    egrep -Rl "\w${1}\w" . | xargs gsed -i "s/\w${1}\w/\w${2}\w/g"
}

alias mvi="open -a MacVim.app $1"
