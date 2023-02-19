alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# Prevents showing untracked files in the $HOME directory when running `dotfiles status`
dotfiles config --local status.showUntrackedFiles no
