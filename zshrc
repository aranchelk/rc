bindkey -v                                                                                                                                                              
if [[ -e /opt/homebrew/bin/brew ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
 
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
 
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
source ~/.rvm/scripts/rvm
 
setopt noautomenu
setopt nomenucomplete
setopt interactivecomments

. ~/rc/bash_aliases

bindkey "^R" history-incremental-search-backward
