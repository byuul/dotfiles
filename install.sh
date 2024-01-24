#!/usr/bin/env bash
set -e

export PATH=/opt/homebrew/bin:$PATH

GREEN="\033[32m"
RED="\033[31m"

export PATH=/opt/homebrew/bin:$PATH

# install oh-my-zsh
if [ -d "$HOME/.oh-my-zsh" ]; then
  echo "Oh My ZSH already installed"
else
  echo "Download and install Oh My ZSH"
  echo 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'
fi
