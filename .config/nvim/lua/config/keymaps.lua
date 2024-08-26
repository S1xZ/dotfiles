-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
LazyVim.toggle.map("<leader>uH", LazyVim.toggle("cursorline", { name = "Cursorline" }))
