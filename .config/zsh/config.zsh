#!/bin/sh


##### Sets up dotfiles #####

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# Prevents showing untracked files in the $HOME directory when running `dotfiles status`
dotfiles config --local status.showUntrackedFiles no


##### Antigen plugin manager for zsh #####

if [ ! -f $HOME/antigen.zsh ]; then
    curl -L git.io/antigen > $HOME/antigen.zsh
fi

source $HOME/antigen.zsh

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen theme romkatv/powerlevel10k

antigen apply
