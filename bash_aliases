# Source in bashrc #

# Whitespace #
alias ws-find='find . -type f -exec egrep -l " +$" {} \;'
alias ws-zap='gsed -i -e "s/[ \t]*$//"'

alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"

alias dc="docker-compose"

alias sshpw="ssh -o PasswordAuthentication=yes -o PreferredAuthentications=keyboard-interactive,password -o PubkeyAuthentication=no"

frw () {
    egrep -Rl "\w${1}\w" . | xargs gsed -i "s/\w${1}\w/\w${2}\w/g"
}

alias mvi="open -a MacVim.app $1"

alias trim="sed 's/^[ \t]*//;s/[ \t]*$//'"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    alias pbcopy='xclip -selection clipboard'
    alias pbpaste='xclip -selection clipboard -o'
fi

#alias docker-kill-all='docker kill $(docker ps -q)'
alias docker-kill-all='docker ps -q | grep -q . && docker kill $(docker ps -q)'

# Terraform
alias terraform-purge-state='terraform state list | xargs -I {} terraform state rm {}'
