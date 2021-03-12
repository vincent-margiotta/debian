#!/usr/bin/env bash

# Clone & Install Vundle/Plugins
command -v git || { echo "Install: git"; return; }
VUNDLE_HOME="$HOME/.vim/bundle/Vundle.vim"
VUNDLE_REPO="https://github.com/VundleVim/Vundle.vim.git"
mkdir -p "$VUNDLE_HOME"
command git clone "$VUNDLE_REPO" "$VUNDLE_HOME"
command -v vim || { echo "Install: vim"; return; }
command vim -u "$HOME/.vimrc-vundle" +PluginInstall +qall
