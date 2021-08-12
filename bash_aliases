# Source in bashrc #

# Whitespace #
alias ws-find='find . -type f -exec egrep -l " +$" {} \;'
alias ws-zap='gsed -i -e "s/[ \t]*$//"'

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    alias pbcopy='xclip -selection clipboard'
    alias pbpaste='xclip -selection clipboard -o'
fi
