#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then
  LN_CMD="gln"
else
  LN_CMD="ln"
fi

# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

touch alsdjfsaf

# https://stackoverflow.com/questions/59895/how-to-get-the-source-directory-of-a-bash-script-from-within-the-script-itself
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


echo $(pwd)

# Set up vimrc
${LN_CMD} -sfT rc/vimrc ../.vimrc

# Set up vimrc
if [[ -e "${HOME}/.gitconfig" && "$(cat ~/.gitconfig)" =~ "path = ./rc/gitconfig" ]]; then
    echo "Git config already contains include to rc git config."
else
    echo "Must add include to gitconfig."
    touch ~/.gitconfig
    echo "[include]" >> ~/.gitconfig
    echo "        path = ./rc/gitconfig" >> ~/.gitconfig
fi

# Set up bash aliases
if [[ -e "${HOME}/.bash_profile" && "$(cat ~/.bash_profile)" =~ ". ~/rc/bash_aliases" ]]; then
    echo "bash profile already sources aliaes."
else
    echo "Must add source aliases to bash profile."
    echo ". ~/rc/bash_aliases" >> ~/.bash_profile
fi





