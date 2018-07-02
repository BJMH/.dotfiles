# Brendan's Dotfiles

This contains my dotfiles being used on Arch Linux, which are symlinked to the appropriate places using `stow`, simplifying management with `git`.

## Installing

* Clone this repository into `~/.dotfiles`.
* Run `stow <program>` on any of the dotfiles you wish to use. e.g. `stow bspwm`
* Or, run `bash stowall.sh` to install all.

## Uninstalling 

* Run `stow -Dv <program>` on anything you wish to remove. (`-v` for verbose).

## Updating

If you change any files in `~/.dotfiles`, run `bash stowall.sh` or `stow -R <program>`

## Explanation 

Each directory in `~/.dotfiles` represents a program for which we want to track the configuration files (dotfiles). Calling `stow <dir>` from `~/.dotfiles` creates a symlink of the contents of `~/.dotfiles/<dir>` to the home directory `~/`. 

For example `~/.dotfiles/bash/.bashrc` is linked to `~/.bashrc` when using `stow bash`, and `~/.dotfiles/bspwm/.config/bspwm/bspwmrc` is linked to `~/.config/bspwm/bspwmrc` when using `stow bspwm`.
