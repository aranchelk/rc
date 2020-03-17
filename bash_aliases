# Source in bashrc #

# Whitespace #
alias ws-find='find . -type f -exec egrep -l " +$" {} \;'
alias ws-zap='gsed -i -e "s/[ \t]*$//"'
