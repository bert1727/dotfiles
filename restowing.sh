#!/bin/bash

DOTFILES_DIR=$(dirname "$0")
cd "$DOTFILES_DIR" || exit

for dir in */; do
	if [ -d "$dir" ]; then
		echo "Restowing $dir..."
		echo "Changes:"
		stow -R -v "$dir"
		echo ""
	fi
done
