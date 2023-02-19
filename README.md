# Dotfiles

### Installation

Clone dotfiles into `$HOME/.dotfiles` by running:

```shell
git clone --bare <repo> $HOME/.dotfiles
```

### Setting aliases

Ensure that the following alias is set in `.zshrc`:

```shell
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

### Configure git

Run the following command to prevent showing untracked files in the $HOME directory when running `dotfiles status`:

```shell
dotfiles config --local status.showUntrackedFiles no
```

This command can also be added to your `.zshrc` file after setting your `dotfiles` alias.

### Git commands

Whenever you want to run a git command on the dotfiles repository, simply replace `git <command>` with `dotfiles <command>`.
