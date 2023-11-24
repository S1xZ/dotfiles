#!/bin/bash

current_date_time=$(date)

# Nvim
cp -r ~/.config/nvim ./nvim

# Kitty
cp -r ~/.config/kitty ./kitty

git add .
git commit -m "config of: $current_date_time"
git push --force
