#!/bin/bash

#
# ZSH configuration
#

# install `exa` for `ls` replacement
cargo install exa

mkdir -p ~/.zsh-plugins/
cd ~/.zsh-plugins/
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh-plugins/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh-plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-plugins/zsh-syntax-highlighting
