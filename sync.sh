#!/bin/bash

current_date_time=$(date)

# Nvim
mkdir -p .config/nvim && cp -rf ~/.config/nvim .config

# Kitty
mkdir -p .config/kitty && cp -rf ~/.config/kitty .config

# Zsh
cp ~/.zshrc .

git add .
git commit -m "config of: $current_date_time"
git push --force
