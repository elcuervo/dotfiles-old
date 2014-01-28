#!/usr/bin/env bash

rm ~/.gitconfig && ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
rm ~/.gitignore_global && ln -s ~/.dotfiles/git/gitignore_global ~/.gitignore_global
