#!/usr/bin/env bash
set -e

export PATH=/opt/homebrew/bin:$PATH

RESET="\033[0m"
GREEN="\033[32m"
RED="\033[31m"

function __message {
    echo -e $GREEN$*$RESET
}

# brew install only if it's not installed
function brew_install {
    if brew ls $1 > /dev/null; then
        __message 'DONE' $1
    else
        brew install $1
    fi
}

# npm install only if it's not installed
function npm_install {
    if npm ls -g --depth=0 $1 > /dev/null; then
        __message 'DONE' $1
    else
        npm install -g $1
    fi
}

export PATH=/opt/homebrew/bin:$PATH

# install oh-my-zsh
if [ -d "$HOME/.oh-my-zsh" ]; then
  echo "Oh My ZSH already installed"
else
  echo "Download and install Oh My ZSH"
  echo 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'
fi

# brew install
brew_install yarn
brew_install zsh
brew_install wget
brew_install node
brew_install yarn


# npm install
npm_install eslint
npm_install eslint-plugin-react
npm_install prettier
npm_install typescript