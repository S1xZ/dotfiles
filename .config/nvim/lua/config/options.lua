-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

-- Disable Mouse
opt.mouse = ""

-- Cursorline
opt.cursorline = true
opt.cursorlineopt = "number"

-- Lang
opt.spelllang = { "en", "cjk", "th" }

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Cs = "\e[4:0m"]])
