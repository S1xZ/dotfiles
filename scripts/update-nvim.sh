#!/bin/bash

curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-x86_64.tar.gz
tar xzf nvim-linux-x86_64.tar.gz
rm nvim-linux-x86_64.tar.gz
sudo cp -r ./nvim-linux-x86_64/* /opt/nvim-linux64
rm -rf nvim ./nvim-linux-x86_64
