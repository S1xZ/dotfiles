-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local discipline = (require("S1xZer.discipline"))
discipline.cowboy()

local keymaps = vim.keymap
local opts = { noremap = true, silent = true }

LazyVim.toggle.map("<leader>uH", LazyVim.toggle("cursorline", { name = "Cursorline" }))
