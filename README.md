# Dotfiles

## Installation

Clone dotfiles into `$HOME/.dotfiles` by running
`git clone --bare <repo> $HOME/.dotfiles`

## Setting aliases

Ensure that `dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`
is set in `.zshrc`.

## Configure git

Run `dotfiles config --local status.showUntrackedFiles no` to prevent showing
untracked files in the $HOME directory when running `git status`.

## Pulling updates from remote dotfiles

Run `dotfiles checkout` or `dotfiles pull`

## Initial Setup

For a first time set up of dotfiles, run `git init --bare $HOME/.dotfiles` in
your $HOME directory.


Repeat the steps of setting up aliases and configuring git.


Add remote by running `dotfiles remote add <name> <uri>`


Checkout a branch (such as `master` or `main`)

Add files and commit them as with a typical work tree tracked by git, but using
`dotfiles` instead of `git`

