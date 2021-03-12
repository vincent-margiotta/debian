#!/usr/bin/env bash


# Install dotfiles into home directory
TARGET="$HOME"
LINKER=$(which ln)

# Exit 2 unless a dotfile is given
[ "$#" -gt 0 ] || { echo "Please supply a dotfile."; exit 2; }

DOTFILE=$(echo "$1" | sed s/dot-/./ -)

echo Linking "$1" as "$TARGET/$DOTFILE"...
$LINKER -rs $1 $TARGET/$DOTFILE
