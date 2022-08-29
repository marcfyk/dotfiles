# Dotfiles

## Setup
```
// set up folder ".dotfiles" 
git init --bare $HOME/.dotfiles
// set "dotfiles" as alias for git when working with dotfiles repository
// where the git folder is in ".dotfiles" folder while the work tree is the home directory
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/.git/ --work-tree=$HOME'
// write alias to zshrc
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/.git/ --work-tree=$HOME'" >> $HOME/.zshrc
// disable showing untracked files in home directory
dotfiles config --local status.showUntrackedFiles no

// set up git remote and add files as usual using "dotfiles" instead of git
dotfiles remote add <name> <uri>
dotfiles checkout <branch>
dotfiles add <file>
dotfiles commit
dotfiles push
```

## Installation
```
// add "dotfiles" to gitignore to avoid recursive tracking of git
echo ".dotfiles" >> .gitignore
// clone dotfiles repository to $HOME/.dotfiles
git clone <repo> $HOME/.dotfiles
// set "dotfiles" as alias for git when working with dotfiles repository
// where the git folder is in ".dotfiles" folder while the work tree is the home directory
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/.git/ --work-tree=$HOME'
// write alias to zshrc
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/.git/ --work-tree=$HOME'" >> $HOME/.zshrc
// checkout actual files in dotfiles to the home directory
dotfiles checkout
```
