#!/bin/sh
echo "Updating apt packages"
sudo apt update && sudo apt upgrade

echo "Updating oh-my-posh"
oh-my-posh upgrade

echo "Updating brew packages"
brew update && brew upgrade

echo "Updating uv"
uv self update
