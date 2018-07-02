#! /bin/sh

# ~/.dotfiles/stowall.sh: Stow all packages

SCRIPT_DEBUG=true
#SCRIPT_DEBUG=false

if $SCRIPT_DEBUG; then echo "Stowing all files"; fi

cd ~/.dotfiles
for files in ~/.dotfiles/*; do
  if [ -d ${files} ]; then
    stow -R $(basename $files)
    if $SCRIPT_DEBUG; then echo "$(basename $files) stowed."; fi
  fi
done
cd - > /dev/null
